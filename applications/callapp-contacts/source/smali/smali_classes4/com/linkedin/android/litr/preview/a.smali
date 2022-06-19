.class final Lcom/linkedin/android/litr/preview/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# static fields
.field private static final h:Z


# instance fields
.field private final a:[I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/linkedin/android/litr/preview/a;->h:Z

    return-void
.end method

.method constructor <init>()V
    .locals 11

    .line 54
    sget-boolean v0, Lcom/linkedin/android/litr/preview/a;->h:Z

    const/4 v1, 0x5

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    const/16 v4, 0x8

    goto :goto_0

    :cond_0
    const/4 v4, 0x5

    :goto_0
    if-eqz v0, :cond_1

    const/16 v5, 0x8

    goto :goto_1

    :cond_1
    const/4 v3, 0x6

    const/4 v5, 0x6

    :goto_1
    if-eqz v0, :cond_2

    const/16 v6, 0x8

    goto :goto_2

    :cond_2
    const/4 v6, 0x5

    :goto_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x2

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/linkedin/android/litr/preview/a;-><init>(IIIIIII)V

    return-void
.end method

.method constructor <init>(IIIIIII)V
    .locals 7

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xd

    new-array v1, v0, [I

    const/16 v2, 0x3024

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput p1, v1, v2

    const/16 v2, 0x3023

    const/4 v4, 0x2

    aput v2, v1, v4

    const/4 v2, 0x3

    aput p2, v1, v2

    const/16 v2, 0x3022

    const/4 v5, 0x4

    aput v2, v1, v5

    const/4 v2, 0x5

    aput p3, v1, v2

    const/4 v2, 0x6

    const/16 v6, 0x3021

    aput v6, v1, v2

    const/4 v2, 0x7

    aput p4, v1, v2

    const/16 v2, 0x8

    const/16 v6, 0x3025

    aput v6, v1, v2

    const/16 v2, 0x9

    aput p5, v1, v2

    const/16 v2, 0xa

    const/16 v6, 0x3026

    aput v6, v1, v2

    const/16 v2, 0xb

    aput p6, v1, v2

    const/16 v2, 0xc

    const/16 v6, 0x3038

    aput v6, v1, v2

    if-eq p7, v4, :cond_0

    goto :goto_0

    :cond_0
    const/16 p7, 0xf

    new-array p7, p7, [I

    .line 1099
    invoke-static {v1, v3, p7, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x3040

    aput v1, p7, v2

    aput v5, p7, v0

    const/16 v0, 0xe

    aput v6, p7, v0

    move-object v1, p7

    .line 73
    :goto_0
    iput-object v1, p0, Lcom/linkedin/android/litr/preview/a;->a:[I

    .line 82
    iput p1, p0, Lcom/linkedin/android/litr/preview/a;->b:I

    .line 83
    iput p2, p0, Lcom/linkedin/android/litr/preview/a;->c:I

    .line 84
    iput p3, p0, Lcom/linkedin/android/litr/preview/a;->d:I

    .line 85
    iput p4, p0, Lcom/linkedin/android/litr/preview/a;->e:I

    .line 86
    iput p5, p0, Lcom/linkedin/android/litr/preview/a;->f:I

    .line 87
    iput p6, p0, Lcom/linkedin/android/litr/preview/a;->g:I

    return-void
.end method

.method private static a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 149
    invoke-interface {p0, p1, p2, p3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    .line 150
    aget p0, v0, p1

    return p0

    :cond_0
    return p1
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 8

    .line 131
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p3, v1

    const/16 v3, 0x3025

    .line 132
    invoke-static {p1, p2, v2, v3}, Lcom/linkedin/android/litr/preview/a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v3

    const/16 v4, 0x3026

    .line 133
    invoke-static {p1, p2, v2, v4}, Lcom/linkedin/android/litr/preview/a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v4

    .line 134
    iget v5, p0, Lcom/linkedin/android/litr/preview/a;->f:I

    if-lt v3, v5, :cond_0

    iget v3, p0, Lcom/linkedin/android/litr/preview/a;->g:I

    if-lt v4, v3, :cond_0

    const/16 v3, 0x3024

    .line 135
    invoke-static {p1, p2, v2, v3}, Lcom/linkedin/android/litr/preview/a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v3

    const/16 v4, 0x3023

    .line 136
    invoke-static {p1, p2, v2, v4}, Lcom/linkedin/android/litr/preview/a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v4

    const/16 v5, 0x3022

    .line 137
    invoke-static {p1, p2, v2, v5}, Lcom/linkedin/android/litr/preview/a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v5

    const/16 v6, 0x3021

    .line 138
    invoke-static {p1, p2, v2, v6}, Lcom/linkedin/android/litr/preview/a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v6

    .line 139
    iget v7, p0, Lcom/linkedin/android/litr/preview/a;->b:I

    if-ne v3, v7, :cond_0

    iget v3, p0, Lcom/linkedin/android/litr/preview/a;->c:I

    if-ne v4, v3, :cond_0

    iget v3, p0, Lcom/linkedin/android/litr/preview/a;->d:I

    if-ne v5, v3, :cond_0

    iget v3, p0, Lcom/linkedin/android/litr/preview/a;->e:I

    if-ne v6, v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 8

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 111
    iget-object v3, p0, Lcom/linkedin/android/litr/preview/a;->a:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 114
    aget v5, v0, v1

    if-lez v5, :cond_2

    .line 119
    new-array v7, v5, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 120
    iget-object v3, p0, Lcom/linkedin/android/litr/preview/a;->a:[I

    move-object v1, p1

    move-object v2, p2

    move-object v4, v7

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    invoke-direct {p0, p1, p2, v7}, Lcom/linkedin/android/litr/preview/a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 125
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No config chosen"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 121
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "eglChooseConfig#2 failed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 116
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No configs match configSpec"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "eglChooseConfig failed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
