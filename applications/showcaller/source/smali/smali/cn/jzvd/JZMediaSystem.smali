.class public Lcn/jzvd/JZMediaSystem;
.super Lcn/jzvd/u;
.source "JZMediaSystem.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# instance fields
.field public mediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Lcn/jzvd/Jzvd;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/jzvd/u;-><init>(Lcn/jzvd/Jzvd;)V

    return-void
.end method

.method private synthetic lambda$onBufferingUpdate$8(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/jzvd/u;->jzvd:Lcn/jzvd/Jzvd;

    invoke-virtual {v0, p1}, Lcn/jzvd/Jzvd;->setBufferProgress(I)V

    return-void
.end method

.method private synthetic lambda$onCompletion$7()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/jzvd/u;->jzvd:Lcn/jzvd/Jzvd;

    invoke-virtual {v0}, Lcn/jzvd/Jzvd;->y()V

    return-void
.end method

.method private synthetic lambda$onError$10(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/jzvd/u;->jzvd:Lcn/jzvd/Jzvd;

    invoke-virtual {v0, p1, p2}, Lcn/jzvd/Jzvd;->z(II)V

    return-void
.end method

.method private synthetic lambda$onInfo$11(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/jzvd/u;->jzvd:Lcn/jzvd/Jzvd;

    invoke-virtual {v0, p1, p2}, Lcn/jzvd/Jzvd;->A(II)V

    return-void
.end method

.method private synthetic lambda$onPrepared$6()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/jzvd/u;->jzvd:Lcn/jzvd/Jzvd;

    invoke-virtual {v0}, Lcn/jzvd/Jzvd;->B()V

    return-void
.end method

.method private synthetic lambda$onSeekComplete$9()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/jzvd/u;->jzvd:Lcn/jzvd/Jzvd;

    invoke-virtual {v0}, Lcn/jzvd/Jzvd;->D()V

    return-void
.end method

.method private synthetic lambda$onVideoSizeChanged$12(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/jzvd/u;->jzvd:Lcn/jzvd/Jzvd;

    invoke-virtual {v0, p1, p2}, Lcn/jzvd/Jzvd;->K(II)V

    return-void
.end method

.method private synthetic lambda$pause$2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/jzvd/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    return-void
.end method

.method private synthetic lambda$prepare$0()V
    .locals 7

    .line 1
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcn/jzvd/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    .line 2
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 3
    iget-object v0, p0, Lcn/jzvd/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcn/jzvd/u;->jzvd:Lcn/jzvd/Jzvd;

    iget-object v1, v1, Lcn/jzvd/Jzvd;->q:Lcn/jzvd/t;

    iget-boolean v1, v1, Lcn/jzvd/t;->e:Z

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 4
    iget-object v0, p0, Lcn/jzvd/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 5
    iget-object v0, p0, Lcn/jzvd/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 6
    iget-object v0, p0, Lcn/jzvd/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 7
    iget-object v0, p0, Lcn/jzvd/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 8
    iget-object v0, p0, Lcn/jzvd/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 9
    iget-object v0, p0, Lcn/jzvd/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 10
    iget-object v0, p0, Lcn/jzvd/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 11
    iget-object v0, p0, Lcn/jzvd/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 12
    const-class v0, Landroid/media/MediaPlayer;

    const-string v2, "setDataSource"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    .line 13
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/util/Map;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 14
    iget-object v2, p0, Lcn/jzvd/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcn/jzvd/u;->jzvd:Lcn/jzvd/Jzvd;

    iget-object v4, v4, Lcn/jzvd/Jzvd;->q:Lcn/jzvd/t;

    invoke-virtual {v4}, Lcn/jzvd/t;->c()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcn/jzvd/u;->jzvd:Lcn/jzvd/Jzvd;

    iget-object v4, v4, Lcn/jzvd/Jzvd;->q:Lcn/jzvd/t;

    iget-object v4, v4, Lcn/jzvd/t;->d:Ljava/util/HashMap;

    aput-object v4, v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lcn/jzvd/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 16
    iget-object v0, p0, Lcn/jzvd/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Landroid/view/Surface;

    sget-object v2, Lcn/jzvd/u;->SAVED_SURFACE:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic lambda$release$4(Landroid/media/MediaPlayer;Landroid/os/HandlerThread;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 2
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V

    .line 3
    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method private synthetic lambda$seekTo$3(J)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/jzvd/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    long-to-int p2, p1

    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$setVolume$5(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/jzvd/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$start$1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/jzvd/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/jzvd/JZMediaSystem;->lambda$onBufferingUpdate$8(I)V

    return-void
.end method

.method public synthetic b()V
    .locals 0

    invoke-direct {p0}, Lcn/jzvd/JZMediaSystem;->lambda$onCompletion$7()V

    return-void
.end method

.method public synthetic c(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/jzvd/JZMediaSystem;->lambda$onError$10(II)V

    return-void
.end method

.method public synthetic d(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/jzvd/JZMediaSystem;->lambda$onInfo$11(II)V

    return-void
.end method

.method public synthetic e()V
    .locals 0

    invoke-direct {p0}, Lcn/jzvd/JZMediaSystem;->lambda$onPrepared$6()V

    return-void
.end method

.method public synthetic f()V
    .locals 0

    invoke-direct {p0}, Lcn/jzvd/JZMediaSystem;->lambda$onSeekComplete$9()V

    return-void
.end method

.method public synthetic g(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/jzvd/JZMediaSystem;->lambda$onVideoSizeChanged$12(II)V

    return-void
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/jzvd/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/jzvd/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public synthetic h()V
    .locals 0

    invoke-direct {p0}, Lcn/jzvd/JZMediaSystem;->lambda$pause$2()V

    return-void
.end method

.method public synthetic i()V
    .locals 0

    invoke-direct {p0}, Lcn/jzvd/JZMediaSystem;->lambda$prepare$0()V

    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/jzvd/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public synthetic j(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/jzvd/JZMediaSystem;->lambda$seekTo$3(J)V

    return-void
.end method

.method public synthetic k(FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/jzvd/JZMediaSystem;->lambda$setVolume$5(FF)V

    return-void
.end method

.method public synthetic l()V
    .locals 0

    invoke-direct {p0}, Lcn/jzvd/JZMediaSystem;->lambda$start$1()V

    return-void
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/jzvd/u;->handler:Landroid/os/Handler;

    new-instance v0, Lcn/jzvd/b;

    invoke-direct {v0, p0, p2}, Lcn/jzvd/b;-><init>(Lcn/jzvd/JZMediaSystem;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/jzvd/u;->handler:Landroid/os/Handler;

    new-instance v0, Lcn/jzvd/h;

    invoke-direct {v0, p0}, Lcn/jzvd/h;-><init>(Lcn/jzvd/JZMediaSystem;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/jzvd/u;->handler:Landroid/os/Handler;

    new-instance v0, Lcn/jzvd/e;

    invoke-direct {v0, p0, p2, p3}, Lcn/jzvd/e;-><init>(Lcn/jzvd/JZMediaSystem;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/jzvd/u;->handler:Landroid/os/Handler;

    new-instance v0, Lcn/jzvd/g;

    invoke-direct {v0, p0, p2, p3}, Lcn/jzvd/g;-><init>(Lcn/jzvd/JZMediaSystem;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/jzvd/u;->handler:Landroid/os/Handler;

    new-instance v0, Lcn/jzvd/i;

    invoke-direct {v0, p0}, Lcn/jzvd/i;-><init>(Lcn/jzvd/JZMediaSystem;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/jzvd/u;->handler:Landroid/os/Handler;

    new-instance v0, Lcn/jzvd/a;

    invoke-direct {v0, p0}, Lcn/jzvd/a;-><init>(Lcn/jzvd/JZMediaSystem;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    sget-object p2, Lcn/jzvd/u;->SAVED_SURFACE:Landroid/graphics/SurfaceTexture;

    if-nez p2, :cond_0

    .line 2
    sput-object p1, Lcn/jzvd/u;->SAVED_SURFACE:Landroid/graphics/SurfaceTexture;

    .line 3
    invoke-virtual {p0}, Lcn/jzvd/JZMediaSystem;->prepare()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcn/jzvd/u;->jzvd:Lcn/jzvd/Jzvd;

    iget-object p1, p1, Lcn/jzvd/Jzvd;->I:Lcn/jzvd/JZTextureView;

    invoke-virtual {p1, p2}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    :goto_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/jzvd/u;->handler:Landroid/os/Handler;

    new-instance v0, Lcn/jzvd/k;

    invoke-direct {v0, p0, p2, p3}, Lcn/jzvd/k;-><init>(Lcn/jzvd/JZMediaSystem;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public pause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/jzvd/u;->mMediaHandler:Landroid/os/Handler;

    new-instance v1, Lcn/jzvd/f;

    invoke-direct {v1, p0}, Lcn/jzvd/f;-><init>(Lcn/jzvd/JZMediaSystem;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public prepare()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/jzvd/JZMediaSystem;->release()V

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "JZVD"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/jzvd/u;->mMediaHandlerThread:Landroid/os/HandlerThread;

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/jzvd/u;->mMediaHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/jzvd/u;->mMediaHandler:Landroid/os/Handler;

    .line 5
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/jzvd/u;->handler:Landroid/os/Handler;

    .line 6
    iget-object v0, p0, Lcn/jzvd/u;->mMediaHandler:Landroid/os/Handler;

    new-instance v1, Lcn/jzvd/j;

    invoke-direct {v1, p0}, Lcn/jzvd/j;-><init>(Lcn/jzvd/JZMediaSystem;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public release()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/jzvd/u;->mMediaHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/jzvd/u;->mMediaHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcn/jzvd/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 2
    new-instance v3, Lcn/jzvd/c;

    invoke-direct {v3, v2, v1}, Lcn/jzvd/c;-><init>(Landroid/media/MediaPlayer;Landroid/os/HandlerThread;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/jzvd/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method public seekTo(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/jzvd/u;->mMediaHandler:Landroid/os/Handler;

    new-instance v1, Lcn/jzvd/l;

    invoke-direct {v1, p0, p1, p2}, Lcn/jzvd/l;-><init>(Lcn/jzvd/JZMediaSystem;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/jzvd/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    .line 3
    iget-object p1, p0, Lcn/jzvd/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/jzvd/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setVolume(FF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/jzvd/u;->mMediaHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Lcn/jzvd/d;

    invoke-direct {v1, p0, p1, p2}, Lcn/jzvd/d;-><init>(Lcn/jzvd/JZMediaSystem;FF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/jzvd/u;->mMediaHandler:Landroid/os/Handler;

    new-instance v1, Lcn/jzvd/m;

    invoke-direct {v1, p0}, Lcn/jzvd/m;-><init>(Lcn/jzvd/JZMediaSystem;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
