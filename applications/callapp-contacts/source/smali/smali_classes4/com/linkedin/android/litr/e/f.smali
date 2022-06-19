.class public final Lcom/linkedin/android/litr/e/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/opengl/EGLDisplay;

.field public b:Landroid/opengl/EGLContext;

.field public c:Landroid/opengl/EGLSurface;

.field public d:Landroid/view/Surface;


# direct methods
.method constructor <init>(Landroid/view/Surface;)V
    .locals 11

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/linkedin/android/litr/e/f;->a:Landroid/opengl/EGLDisplay;

    .line 42
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/linkedin/android/litr/e/f;->b:Landroid/opengl/EGLContext;

    .line 43
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/linkedin/android/litr/e/f;->c:Landroid/opengl/EGLSurface;

    .line 48
    iput-object p1, p0, Lcom/linkedin/android/litr/e/f;->d:Landroid/view/Surface;

    const/4 p1, 0x0

    .line 1088
    invoke-static {p1}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/linkedin/android/litr/e/f;->a:Landroid/opengl/EGLDisplay;

    .line 1089
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_5

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1093
    iget-object v1, p0, Lcom/linkedin/android/litr/e/f;->a:Landroid/opengl/EGLDisplay;

    const/4 v2, 0x1

    invoke-static {v1, v0, p1, v0, v2}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xb

    new-array v4, v0, [I

    .line 1100
    fill-array-data v4, :array_0

    new-array v0, v2, [Landroid/opengl/EGLConfig;

    new-array v9, v2, [I

    .line 1110
    iget-object v3, p0, Lcom/linkedin/android/litr/e/f;->a:Landroid/opengl/EGLDisplay;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object v6, v0

    invoke-static/range {v3 .. v10}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 1118
    fill-array-data v1, :array_1

    .line 1122
    iget-object v3, p0, Lcom/linkedin/android/litr/e/f;->a:Landroid/opengl/EGLDisplay;

    aget-object v4, v0, p1

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v3, v4, v5, v1, p1}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/linkedin/android/litr/e/f;->b:Landroid/opengl/EGLContext;

    const-string v1, "eglCreateContext"

    .line 1127
    invoke-static {v1}, Lcom/linkedin/android/litr/e/f;->a(Ljava/lang/String;)V

    .line 1128
    iget-object v1, p0, Lcom/linkedin/android/litr/e/f;->b:Landroid/opengl/EGLContext;

    if-eqz v1, :cond_2

    new-array v1, v2, [I

    const/16 v2, 0x3038

    aput v2, v1, p1

    .line 1136
    iget-object v2, p0, Lcom/linkedin/android/litr/e/f;->a:Landroid/opengl/EGLDisplay;

    aget-object v0, v0, p1

    iget-object v3, p0, Lcom/linkedin/android/litr/e/f;->d:Landroid/view/Surface;

    invoke-static {v2, v0, v3, v1, p1}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/linkedin/android/litr/e/f;->c:Landroid/opengl/EGLSurface;

    const-string p1, "eglCreateWindowSurface"

    .line 1141
    invoke-static {p1}, Lcom/linkedin/android/litr/e/f;->a(Ljava/lang/String;)V

    .line 1142
    iget-object p1, p0, Lcom/linkedin/android/litr/e/f;->c:Landroid/opengl/EGLSurface;

    if-eqz p1, :cond_1

    .line 1151
    iget-object v0, p0, Lcom/linkedin/android/litr/e/f;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/linkedin/android/litr/e/f;->b:Landroid/opengl/EGLContext;

    invoke-static {v0, p1, p1, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1152
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "eglMakeCurrent failed"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1143
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "surface was null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1129
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "null context"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1114
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "unable to find RGB888+recordable ES2 EGL config"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 p1, 0x0

    .line 1094
    iput-object p1, p0, Lcom/linkedin/android/litr/e/f;->a:Landroid/opengl/EGLDisplay;

    .line 1095
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "unable to initialize EGL14"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1090
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "unable to get EGL14 display"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3040
        0x4
        0x3142
        0x1
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private static a(Ljava/lang/String;)V
    .locals 3

    .line 158
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-ne v0, v1, :cond_0

    return-void

    .line 159
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": EGL error: 0x"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
