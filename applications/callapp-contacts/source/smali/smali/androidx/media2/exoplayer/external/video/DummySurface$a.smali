.class final Landroidx/media2/exoplayer/external/video/DummySurface$a;
.super Landroid/os/HandlerThread;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/video/DummySurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroid/os/Handler;

.field private b:Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;

.field private c:Ljava/lang/Error;

.field private d:Ljava/lang/RuntimeException;

.field private e:Landroidx/media2/exoplayer/external/video/DummySurface;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "dummySurface"

    .line 172
    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(I)Landroidx/media2/exoplayer/external/video/DummySurface;
    .locals 3

    .line 176
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/DummySurface$a;->start()V

    .line 177
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/DummySurface$a;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/video/DummySurface$a;->a:Landroid/os/Handler;

    .line 178
    new-instance v1, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;

    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Landroidx/media2/exoplayer/external/video/DummySurface$a;->b:Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;

    .line 180
    monitor-enter p0

    .line 181
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/DummySurface$a;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 182
    :goto_0
    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/DummySurface$a;->e:Landroidx/media2/exoplayer/external/video/DummySurface;

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/DummySurface$a;->d:Ljava/lang/RuntimeException;

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/DummySurface$a;->c:Ljava/lang/Error;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 184
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x1

    goto :goto_0

    .line 189
    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    .line 192
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 194
    :cond_1
    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/DummySurface$a;->d:Ljava/lang/RuntimeException;

    if-nez p1, :cond_3

    .line 196
    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/DummySurface$a;->c:Ljava/lang/Error;

    if-nez p1, :cond_2

    .line 199
    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/DummySurface$a;->e:Landroidx/media2/exoplayer/external/video/DummySurface;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/video/DummySurface;

    return-object p1

    .line 197
    :cond_2
    throw p1

    .line 195
    :cond_3
    throw p1

    :catchall_0
    move-exception p1

    .line 189
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 210
    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v6, :cond_c

    if-eq v2, v3, :cond_0

    return v6

    .line 3249
    :cond_0
    :try_start_0
    iget-object v0, v1, Landroidx/media2/exoplayer/external/video/DummySurface$a;->b:Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3250
    iget-object v2, v1, Landroidx/media2/exoplayer/external/video/DummySurface$a;->b:Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;

    .line 4144
    iget-object v0, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->b:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v3, 0x13

    .line 4146
    :try_start_1
    iget-object v0, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->g:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 4147
    iget-object v0, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->g:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 4148
    iget-object v0, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->c:[I

    invoke-static {v6, v0, v5}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4151
    :cond_1
    :try_start_2
    iget-object v0, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->d:Landroid/opengl/EGLDisplay;

    if-eqz v0, :cond_2

    iget-object v0, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->d:Landroid/opengl/EGLDisplay;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v0, v5}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4152
    iget-object v0, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->d:Landroid/opengl/EGLDisplay;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v7, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v5, v5, v7}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 4155
    :cond_2
    iget-object v0, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->f:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_3

    iget-object v0, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->f:Landroid/opengl/EGLSurface;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v5}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4156
    iget-object v0, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->d:Landroid/opengl/EGLDisplay;

    iget-object v5, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->f:Landroid/opengl/EGLSurface;

    invoke-static {v0, v5}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 4158
    :cond_3
    iget-object v0, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->e:Landroid/opengl/EGLContext;

    if-eqz v0, :cond_4

    .line 4159
    iget-object v0, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->d:Landroid/opengl/EGLDisplay;

    iget-object v5, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->e:Landroid/opengl/EGLContext;

    invoke-static {v0, v5}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 4162
    :cond_4
    sget v0, Landroidx/media2/exoplayer/external/util/ac;->a:I

    if-lt v0, v3, :cond_5

    .line 4163
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 4165
    :cond_5
    iget-object v0, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->d:Landroid/opengl/EGLDisplay;

    if-eqz v0, :cond_6

    iget-object v0, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->d:Landroid/opengl/EGLDisplay;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v0, v3}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 4168
    iget-object v0, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->d:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 4170
    :cond_6
    iput-object v4, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->d:Landroid/opengl/EGLDisplay;

    .line 4171
    iput-object v4, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->e:Landroid/opengl/EGLContext;

    .line 4172
    iput-object v4, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->f:Landroid/opengl/EGLSurface;

    .line 4173
    iput-object v4, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->g:Landroid/graphics/SurfaceTexture;

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4151
    iget-object v5, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->d:Landroid/opengl/EGLDisplay;

    if-eqz v5, :cond_7

    iget-object v5, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->d:Landroid/opengl/EGLDisplay;

    sget-object v7, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v5, v7}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 4152
    iget-object v5, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->d:Landroid/opengl/EGLDisplay;

    sget-object v7, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v8, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v5, v7, v7, v8}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 4155
    :cond_7
    iget-object v5, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->f:Landroid/opengl/EGLSurface;

    if-eqz v5, :cond_8

    iget-object v5, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->f:Landroid/opengl/EGLSurface;

    sget-object v7, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-virtual {v5, v7}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 4156
    iget-object v5, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->d:Landroid/opengl/EGLDisplay;

    iget-object v7, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->f:Landroid/opengl/EGLSurface;

    invoke-static {v5, v7}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 4158
    :cond_8
    iget-object v5, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->e:Landroid/opengl/EGLContext;

    if-eqz v5, :cond_9

    .line 4159
    iget-object v5, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->d:Landroid/opengl/EGLDisplay;

    iget-object v7, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->e:Landroid/opengl/EGLContext;

    invoke-static {v5, v7}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 4162
    :cond_9
    sget v5, Landroidx/media2/exoplayer/external/util/ac;->a:I

    if-lt v5, v3, :cond_a

    .line 4163
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 4165
    :cond_a
    iget-object v3, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->d:Landroid/opengl/EGLDisplay;

    if-eqz v3, :cond_b

    iget-object v3, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->d:Landroid/opengl/EGLDisplay;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v3, v5}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 4168
    iget-object v3, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->d:Landroid/opengl/EGLDisplay;

    invoke-static {v3}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 4170
    :cond_b
    iput-object v4, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->d:Landroid/opengl/EGLDisplay;

    .line 4171
    iput-object v4, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->e:Landroid/opengl/EGLContext;

    .line 4172
    iput-object v4, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->f:Landroid/opengl/EGLSurface;

    .line 4173
    iput-object v4, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->g:Landroid/graphics/SurfaceTexture;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_3
    const-string v2, "DummySurface"

    const-string v3, "Failed to release dummy surface"

    .line 230
    invoke-static {v2, v3, v0}, Landroidx/media2/exoplayer/external/util/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 232
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/video/DummySurface$a;->quit()Z

    return v6

    :catchall_2
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/video/DummySurface$a;->quit()Z

    throw v0

    .line 213
    :cond_c
    :try_start_4
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 1241
    iget-object v2, v1, Landroidx/media2/exoplayer/external/video/DummySurface$a;->b:Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1242
    iget-object v2, v1, Landroidx/media2/exoplayer/external/video/DummySurface$a;->b:Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;

    .line 2213
    invoke-static {v5}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v7

    if-eqz v7, :cond_18

    new-array v8, v3, [I

    .line 2220
    invoke-static {v7, v8, v5, v8, v6}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 2132
    iput-object v7, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->d:Landroid/opengl/EGLDisplay;

    .line 2133
    iget-object v9, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->d:Landroid/opengl/EGLDisplay;

    new-array v7, v6, [Landroid/opengl/EGLConfig;

    new-array v8, v6, [I

    .line 2230
    sget-object v10, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->a:[I

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v16, 0x0

    move-object v12, v7

    move-object v15, v8

    .line 2231
    invoke-static/range {v9 .. v16}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v9

    const/4 v10, 0x3

    if-eqz v9, :cond_16

    .line 2240
    aget v11, v8, v5

    if-lez v11, :cond_16

    aget-object v11, v7, v5

    if-eqz v11, :cond_16

    .line 2247
    aget-object v7, v7, v5

    .line 2134
    iget-object v8, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->d:Landroid/opengl/EGLDisplay;

    const/16 v9, 0x32c0

    const/16 v11, 0x3098

    const/4 v12, 0x4

    const/4 v13, 0x5

    const/16 v14, 0x3038

    if-nez v0, :cond_d

    new-array v15, v10, [I

    aput v11, v15, v5

    aput v3, v15, v6

    aput v14, v15, v3

    goto :goto_1

    :cond_d
    new-array v15, v13, [I

    aput v11, v15, v5

    aput v3, v15, v6

    aput v9, v15, v3

    aput v6, v15, v10

    aput v14, v15, v12

    .line 2265
    :goto_1
    sget-object v11, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 2266
    invoke-static {v8, v7, v11, v15, v5}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v8

    if-eqz v8, :cond_15

    .line 2134
    iput-object v8, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->e:Landroid/opengl/EGLContext;

    .line 2135
    iget-object v8, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->d:Landroid/opengl/EGLDisplay;

    iget-object v11, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->e:Landroid/opengl/EGLContext;

    if-ne v0, v6, :cond_e

    .line 2278
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    goto :goto_3

    :cond_e
    const/16 v15, 0x3056

    const/16 v16, 0x3057

    if-ne v0, v3, :cond_f

    const/4 v4, 0x7

    new-array v4, v4, [I

    aput v16, v4, v5

    aput v6, v4, v6

    aput v15, v4, v3

    aput v6, v4, v10

    aput v9, v4, v12

    aput v6, v4, v13

    const/4 v3, 0x6

    aput v14, v4, v3

    goto :goto_2

    :cond_f
    new-array v4, v13, [I

    aput v16, v4, v5

    aput v6, v4, v6

    aput v15, v4, v3

    aput v6, v4, v10

    aput v14, v4, v12

    .line 2302
    :goto_2
    invoke-static {v8, v7, v4, v5}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 2309
    :goto_3
    invoke-static {v8, v3, v3, v11}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 2135
    iput-object v3, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->f:Landroid/opengl/EGLSurface;

    .line 2136
    iget-object v3, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->c:[I

    .line 2317
    invoke-static {v6, v3, v5}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const/4 v3, 0x0

    .line 3052
    :goto_4
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v4

    if-eqz v4, :cond_11

    const-string v7, "GlUtil"

    const-string v8, "glError "

    .line 3053
    invoke-static {v3}, Landroid/opengl/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_10

    invoke-virtual {v8, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_10
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_5
    invoke-static {v7, v3}, Landroidx/media2/exoplayer/external/util/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    goto :goto_4

    .line 2137
    :cond_11
    new-instance v3, Landroid/graphics/SurfaceTexture;

    iget-object v4, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->c:[I

    aget v4, v4, v5

    invoke-direct {v3, v4}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v3, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->g:Landroid/graphics/SurfaceTexture;

    .line 2138
    iget-object v3, v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->g:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 1243
    new-instance v2, Landroidx/media2/exoplayer/external/video/DummySurface;

    iget-object v3, v1, Landroidx/media2/exoplayer/external/video/DummySurface$a;->b:Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;

    .line 3181
    iget-object v3, v3, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->g:Landroid/graphics/SurfaceTexture;

    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/SurfaceTexture;

    const/4 v4, 0x0

    if-eqz v0, :cond_12

    const/4 v5, 0x1

    .line 1245
    :cond_12
    invoke-direct {v2, v1, v3, v5, v4}, Landroidx/media2/exoplayer/external/video/DummySurface;-><init>(Landroidx/media2/exoplayer/external/video/DummySurface$a;Landroid/graphics/SurfaceTexture;ZLandroidx/media2/exoplayer/external/video/DummySurface$1;)V

    iput-object v2, v1, Landroidx/media2/exoplayer/external/video/DummySurface$a;->e:Landroidx/media2/exoplayer/external/video/DummySurface;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 221
    monitor-enter p0

    .line 222
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 223
    monitor-exit p0

    goto :goto_6

    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    .line 2311
    :cond_13
    :try_start_6
    new-instance v0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$GlException;

    const-string v2, "eglMakeCurrent failed"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$GlException;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$1;)V

    throw v0

    .line 2304
    :cond_14
    new-instance v0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$GlException;

    const-string v2, "eglCreatePbufferSurface failed"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$GlException;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$1;)V

    throw v0

    .line 2269
    :cond_15
    new-instance v0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$GlException;

    const-string v2, "eglCreateContext failed"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$GlException;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$1;)V

    throw v0

    .line 2241
    :cond_16
    new-instance v0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$GlException;

    const-string v2, "eglChooseConfig failed: success=%b, numConfigs[0]=%d, configs[0]=%s"

    new-array v4, v10, [Ljava/lang/Object;

    .line 2244
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v4, v5

    aget v8, v8, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v6

    aget-object v5, v7, v5

    aput-object v5, v4, v3

    .line 2242
    invoke-static {v2, v4}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$GlException;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$1;)V

    throw v0

    .line 2222
    :cond_17
    new-instance v0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$GlException;

    const-string v2, "eglInitialize failed"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$GlException;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$1;)V

    throw v0

    .line 2215
    :cond_18
    new-instance v0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$GlException;

    const-string v2, "eglGetDisplay failed"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$GlException;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$1;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v0

    goto :goto_7

    :catch_0
    move-exception v0

    :try_start_7
    const-string v2, "DummySurface"

    const-string v3, "Failed to initialize dummy surface"

    .line 218
    invoke-static {v2, v3, v0}, Landroidx/media2/exoplayer/external/util/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 219
    iput-object v0, v1, Landroidx/media2/exoplayer/external/video/DummySurface$a;->c:Ljava/lang/Error;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 221
    monitor-enter p0

    .line 222
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 223
    monitor-exit p0

    goto :goto_6

    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw v0

    :catch_1
    move-exception v0

    :try_start_9
    const-string v2, "DummySurface"

    const-string v3, "Failed to initialize dummy surface"

    .line 215
    invoke-static {v2, v3, v0}, Landroidx/media2/exoplayer/external/util/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 216
    iput-object v0, v1, Landroidx/media2/exoplayer/external/video/DummySurface$a;->d:Ljava/lang/RuntimeException;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 221
    monitor-enter p0

    .line 222
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 223
    monitor-exit p0

    :goto_6
    return v6

    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    throw v0

    .line 221
    :goto_7
    monitor-enter p0

    .line 222
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 223
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    throw v0

    :catchall_7
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    throw v0
.end method
