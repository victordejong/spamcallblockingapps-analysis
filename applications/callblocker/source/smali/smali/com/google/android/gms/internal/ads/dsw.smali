.class final Lcom/google/android/gms/internal/ads/dsw;
.super Landroid/os/HandlerThread;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final a:[I

.field private b:Lcom/google/android/gms/internal/ads/cnz;

.field private c:Landroid/graphics/SurfaceTexture;

.field private d:Ljava/lang/Error;

.field private e:Ljava/lang/RuntimeException;

.field private f:Lcom/google/android/gms/internal/ads/dsu;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    const-string/jumbo v0, "dummySurface"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dsw;->a:[I

    .line 3
    return-void
.end method


# virtual methods
.method public final a(Z)Lcom/google/android/gms/internal/ads/dsu;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dsw;->start()V

    .line 5
    new-instance v2, Lcom/google/android/gms/internal/ads/cnz;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dsw;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/google/android/gms/internal/ads/cnz;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/dsw;->b:Lcom/google/android/gms/internal/ads/cnz;

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dsw;->b:Lcom/google/android/gms/internal/ads/cnz;

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Lcom/google/android/gms/internal/ads/cnz;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 9
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dsw;->f:Lcom/google/android/gms/internal/ads/dsu;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dsw;->e:Ljava/lang/RuntimeException;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dsw;->d:Ljava/lang/Error;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 10
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 13
    :catch_0
    move-exception v0

    move v0, v1

    .line 14
    goto :goto_1

    :cond_0
    move v2, v0

    .line 8
    goto :goto_0

    .line 15
    :cond_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsw;->e:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_3

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsw;->e:Ljava/lang/RuntimeException;

    throw v0

    .line 15
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 20
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsw;->d:Ljava/lang/Error;

    if-eqz v0, :cond_4

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsw;->d:Ljava/lang/Error;

    throw v0

    .line 22
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsw;->f:Lcom/google/android/gms/internal/ads/dsu;

    return-object v0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsw;->b:Lcom/google/android/gms/internal/ads/cnz;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->sendEmptyMessage(I)Z

    .line 24
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 27
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 97
    :goto_0
    return v8

    .line 28
    :pswitch_0
    :try_start_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    move v10, v8

    .line 29
    :goto_1
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    move v1, v8

    :goto_2
    const-string/jumbo v2, "eglGetDisplay failed"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/drz;->b(ZLjava/lang/Object;)V

    .line 31
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 32
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v1, v3}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v1

    .line 33
    const-string/jumbo v2, "eglInitialize failed"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/drz;->b(ZLjava/lang/Object;)V

    .line 34
    const/16 v1, 0x11

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 35
    const/4 v2, 0x1

    new-array v3, v2, [Landroid/opengl/EGLConfig;

    .line 36
    const/4 v2, 0x1

    new-array v6, v2, [I

    .line 37
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v1

    .line 38
    if-eqz v1, :cond_2

    const/4 v1, 0x0

    aget v1, v6, v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    aget-object v1, v3, v1

    if-eqz v1, :cond_2

    move v1, v8

    :goto_3
    const-string/jumbo v2, "eglChooseConfig failed"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/drz;->b(ZLjava/lang/Object;)V

    .line 39
    const/4 v1, 0x0

    aget-object v2, v3, v1

    .line 40
    if-eqz v10, :cond_3

    .line 41
    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    .line 43
    :goto_4
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v1, v4}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v3

    .line 44
    if-eqz v3, :cond_4

    move v1, v8

    :goto_5
    const-string/jumbo v4, "eglCreateContext failed"

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/drz;->b(ZLjava/lang/Object;)V

    .line 45
    if-eqz v10, :cond_5

    .line 46
    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    .line 48
    :goto_6
    const/4 v4, 0x0

    invoke-static {v0, v2, v1, v4}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v2

    .line 49
    if-eqz v2, :cond_6

    move v1, v8

    :goto_7
    const-string/jumbo v4, "eglCreatePbufferSurface failed"

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/drz;->b(ZLjava/lang/Object;)V

    .line 50
    invoke-static {v0, v2, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    .line 51
    const-string/jumbo v1, "eglMakeCurrent failed"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/drz;->b(ZLjava/lang/Object;)V

    .line 52
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dsw;->a:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 53
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dsw;->a:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dsw;->c:Landroid/graphics/SurfaceTexture;

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsw;->c:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 55
    new-instance v0, Lcom/google/android/gms/internal/ads/dsu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dsw;->c:Landroid/graphics/SurfaceTexture;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v10, v2}, Lcom/google/android/gms/internal/ads/dsu;-><init>(Lcom/google/android/gms/internal/ads/dsw;Landroid/graphics/SurfaceTexture;ZLcom/google/android/gms/internal/ads/dst;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dsw;->f:Lcom/google/android/gms/internal/ads/dsu;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 56
    monitor-enter p0

    .line 57
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 58
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    move v10, v9

    .line 28
    goto/16 :goto_1

    :cond_1
    move v1, v9

    .line 30
    goto/16 :goto_2

    :cond_2
    move v1, v9

    .line 38
    goto :goto_3

    .line 42
    :cond_3
    const/4 v1, 0x3

    :try_start_2
    new-array v1, v1, [I

    fill-array-data v1, :array_3

    goto :goto_4

    :cond_4
    move v1, v9

    .line 44
    goto :goto_5

    .line 47
    :cond_5
    const/4 v1, 0x5

    new-array v1, v1, [I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    fill-array-data v1, :array_4

    goto :goto_6

    :cond_6
    move v1, v9

    .line 49
    goto :goto_7

    .line 59
    :catch_0
    move-exception v0

    .line 60
    :try_start_3
    const-string/jumbo v1, "DummySurface"

    const-string/jumbo v2, "Failed to initialize dummy surface"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dsw;->e:Ljava/lang/RuntimeException;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 62
    monitor-enter p0

    .line 63
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 64
    monitor-exit p0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 65
    :catch_1
    move-exception v0

    .line 66
    :try_start_5
    const-string/jumbo v1, "DummySurface"

    const-string/jumbo v2, "Failed to initialize dummy surface"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dsw;->d:Ljava/lang/Error;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 68
    monitor-enter p0

    .line 69
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 70
    monitor-exit p0

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 71
    :catchall_3
    move-exception v0

    monitor-enter p0

    .line 72
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 73
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 74
    throw v0

    .line 73
    :catchall_4
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    .line 76
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsw;->c:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    goto/16 :goto_0

    .line 79
    :pswitch_2
    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsw;->c:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 80
    const/4 v0, 0x0

    :try_start_a
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dsw;->f:Lcom/google/android/gms/internal/ads/dsu;

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dsw;->c:Landroid/graphics/SurfaceTexture;

    .line 82
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dsw;->a:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 88
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dsw;->quit()Z

    goto/16 :goto_0

    .line 84
    :catchall_5
    move-exception v0

    const/4 v1, 0x0

    :try_start_b
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dsw;->f:Lcom/google/android/gms/internal/ads/dsu;

    .line 85
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dsw;->c:Landroid/graphics/SurfaceTexture;

    .line 86
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dsw;->a:[I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 87
    throw v0
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 90
    :catch_2
    move-exception v0

    .line 91
    :try_start_c
    const-string/jumbo v1, "DummySurface"

    const-string/jumbo v2, "Failed to release dummy surface"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 92
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dsw;->quit()Z

    goto/16 :goto_0

    .line 94
    :catchall_6
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dsw;->quit()Z

    .line 95
    throw v0

    .line 27
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 34
    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x0
        0x3027
        0x3038
        0x3033
        0x4
        0x3038
    .end array-data

    .line 41
    :array_1
    .array-data 4
        0x3098
        0x2
        0x32c0
        0x1
        0x3038
    .end array-data

    .line 46
    :array_2
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x32c0
        0x1
        0x3038
    .end array-data

    .line 42
    :array_3
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data

    .line 47
    :array_4
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x3038
    .end array-data
.end method

.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsw;->b:Lcom/google/android/gms/internal/ads/cnz;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->sendEmptyMessage(I)Z

    .line 26
    return-void
.end method
