function varargout = untitled(varargin)
% UNTITLED MATLAB code for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED.M with the given input arguments.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 10-May-2021 20:59:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)

% Choose default command line output for untitled
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(hObject,'value',1)
set(handles.radiobutton2,'value',0)
set(handles.radiobutton3,'value',0)
set(handles.radiobutton4,'value',0)

gambar=handles.gambar;
R=handles.R;
G=handles.G;
B=handles.B;
axes(handles.axes1)
imshow(gambar)
title('Citra RGB')
axes(handles.axes2)
h=histogram(R,256);
h.FaceColor='r';
h.EdgeColor='r';
xlim([0,255])
grid on
hold on
h=histogram(B,256);
h.FaceColor='b';
h.EdgeColor='b';
xlim([0,255])
grid on
h=histogram(G,256);
h.FaceColor='g';
h.EdgeColor='g';
xlim([0,255])
grid on
hold on
title('histogram')

% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(hObject,'value',1)
set(handles.radiobutton1,'value',0)
set(handles.radiobutton3,'value',0)
set(handles.radiobutton4,'value',0)

R=handles.R;
G=handles.G;
B=handles.B;
axes(handles.axes1)
Red=cat(3,R,G*0,B*0);
imshow(Red)
title('Warna Merah')
axes(handles.axes2)
h=histogram(R,256);
h.FaceColor='r';
h.EdgeColor='r';
xlim([0,255])
grid on
title('histogram')
% Hint: get(hObject,'Value') returns toggle state of radiobutton5



% Hint: get(hObject,'Value') returns toggle state of radiobutton2


% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(hObject,'value',1)
set(handles.radiobutton1,'value',0)
set(handles.radiobutton2,'value',0)
set(handles.radiobutton4,'value',0)

R=handles.R;
G=handles.G;
B=handles.B;

axes(handles.axes1)
blue=cat(3,R*0,G*0,B);
imshow(blue)
title('Warna Biru')

axes(handles.axes2)
h=histogram(B,256);
h.FaceColor='b';
h.EdgeColor='b';
xlim([0,255])
grid on
title('Histogram')

% Hint: get(hObject,'Value') returns toggle state of radiobutton3


% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(hObject,'value',1)
set(handles.radiobutton1,'value',0)
set(handles.radiobutton2,'value',0)
set(handles.radiobutton3,'value',0)

R=handles.R;
G=handles.G;
B=handles.B;

axes(handles.axes1)
green=cat(3,R*0,G,B*0);
imshow(green)
title('hijau')

axes(handles.axes2)
h=histogram(G,256);
h.FaceColor='g';
h.EdgeColor='g';
xlim([0,255])
grid on
title('Histogram')

% Hint: get(hObject,'Value') returns toggle state of radiobutton4


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename, pathname] = uigetfile({'*.jpg','*.png'});
if ~isequal(filename,0)
    gambar=imread(fullfile(pathname,filename));
    axes(handles.axes1);
    imshow(gambar);
    title('Citra RGB');
    R = gambar(:,:,1);
    G = gambar(:,:,2);
    B = gambar(:,:,3);
else
    return
end
handles.gambar=gambar;
handles.R=R;
handles.G=G;
handles.B=B;
guidata(hObject,handles)
