.class public Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/video/player/POBVideoPlayer;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$POBVideoPlayerListener;,
        Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;,
        Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;
    }
.end annotation


# static fields
.field static final m:[Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;


# instance fields
.field private a:Landroid/view/SurfaceView;

.field private b:Landroid/media/MediaPlayer;

.field private c:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$POBVideoPlayerListener;

.field private d:Ljava/util/Timer;

.field private e:Lcom/pubmatic/sdk/video/player/POBPlayerController;

.field private f:Z

.field private g:Z

.field private h:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

.field private i:Z

.field private j:I

.field private k:Ljava/util/Timer;

.field private l:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;->values()[Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;

    move-result-object v0

    sput-object v0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->m:[Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x2710

    iput p1, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->j:I

    new-instance p1, Landroid/view/SurfaceView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->a:Landroid/view/SurfaceView;

    invoke-direct {p0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->b()V

    sget-object p1, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;->a:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    iput-object p1, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->h:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;)Landroid/media/MediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->b:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method private a()V
    .locals 2

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->b:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->i:Z

    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->setVideoSize(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    const-string v0, "POBVideoPlayerView"

    invoke-direct {p0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->a()V

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->f()V

    iget-object p1, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->b:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->i()V

    sget-object v3, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;->g:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    invoke-direct {p0, v3}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->setPlayerState(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->c:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$POBVideoPlayerListener;

    if-eqz v0, :cond_0

    goto :goto_0

    :catch_1
    move-exception p1

    const/16 v2, -0x3ec

    :try_start_2
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->i()V

    sget-object v3, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;->g:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    invoke-direct {p0, v3}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->setPlayerState(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->c:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$POBVideoPlayerListener;

    if-eqz v0, :cond_0

    :goto_0
    invoke-interface {v0, v2, p1}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$POBVideoPlayerListener;->onFailure(ILjava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :goto_2
    throw p1
.end method

.method private a(I)Z
    .locals 5

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->h:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    sget-object v1, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;->g:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    if-eq v0, v1, :cond_6

    invoke-direct {p0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->i()V

    sget-object v0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;->g:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->setPlayerState(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;)V

    const/16 v0, -0x3f2

    const/4 v1, -0x1

    if-eq p1, v0, :cond_4

    const/16 v0, -0x3ef

    if-eq p1, v0, :cond_3

    const/16 v0, -0x3ec

    if-eq p1, v0, :cond_2

    const/16 v0, -0x6e

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    const-string v0, "MEDIA_ERROR_UNKNOWN"

    goto :goto_0

    :cond_0
    const-string v0, "MEDIA_FILE_TIMEOUT_ERROR"

    goto :goto_0

    :cond_1
    const-string v0, "MEDIA_ERROR_TIMED_OUT"

    goto :goto_0

    :cond_2
    const-string v0, "MEDIA_ERROR_IO"

    goto :goto_0

    :cond_3
    const-string v0, "MEDIA_ERROR_MALFORMED"

    goto :goto_0

    :cond_4
    const-string v0, "MEDIA_ERROR_UNSUPPORTED"

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "errorCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", errorMsg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "POBVideoPlayerView"

    invoke-static {v4, v2, v3}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->c:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$POBVideoPlayerListener;

    if-eqz v2, :cond_6

    if-eq p1, v1, :cond_5

    const/4 p1, -0x2

    :cond_5
    invoke-interface {v2, p1, v0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$POBVideoPlayerListener;->onFailure(ILjava/lang/String;)V

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic a(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->a(I)Z

    move-result p0

    return p0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->a:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->a:Landroid/view/SurfaceView;

    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method static synthetic b(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->d()V

    return-void
.end method

.method static synthetic c(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;)Lcom/pubmatic/sdk/video/player/POBPlayerController;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->e:Lcom/pubmatic/sdk/video/player/POBPlayerController;

    return-object p0
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->e:Lcom/pubmatic/sdk/video/player/POBPlayerController;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$POBVideoPlayerListener;->onStart()V

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->c:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$POBVideoPlayerListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$POBVideoPlayerListener;->onStart()V

    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;)Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$POBVideoPlayerListener;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->c:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$POBVideoPlayerListener;

    return-object p0
.end method

.method private d()V
    .locals 1

    new-instance v0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$d;

    invoke-direct {v0, p0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$d;-><init>(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;)V

    invoke-static {v0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private e()V
    .locals 4

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->l:Ljava/util/Timer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->l:Ljava/util/Timer;

    new-instance v1, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$b;

    invoke-direct {v1, p0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$b;-><init>(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;)V

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 4

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->k:Ljava/util/Timer;

    new-instance v1, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$a;

    invoke-direct {v1, p0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$a;-><init>(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;)V

    iget v2, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->j:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private g()V
    .locals 6

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->d:Ljava/util/Timer;

    new-instance v1, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$c;

    invoke-direct {v1, p0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$c;-><init>(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->l:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->l:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private i()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->k:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->k:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private j()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->d:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->d:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private setPlayerState(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->h:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    return-void
.end method

.method private setVideoSize(Landroid/media/MediaPlayer;)V
    .locals 6

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v2, p1

    int-to-float v3, v1

    div-float v4, v2, v3

    iget-object v5, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->a:Landroid/view/SurfaceView;

    invoke-virtual {v5}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    cmpl-float v4, v0, v4

    if-lez v4, :cond_0

    iput p1, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-float/2addr v2, v0

    float-to-int p1, v2

    iput p1, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    mul-float v0, v0, v3

    float-to-int p1, v0

    iput p1, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    iget-object p1, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->a:Landroid/view/SurfaceView;

    invoke-virtual {p1, v5}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->stop()V

    invoke-direct {p0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->i()V

    invoke-direct {p0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->h()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->b:Landroid/media/MediaPlayer;

    iput-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->c:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$POBVideoPlayerListener;

    iput-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->e:Lcom/pubmatic/sdk/video/player/POBPlayerController;

    return-void
.end method

.method public getControllerView()Lcom/pubmatic/sdk/video/player/POBPlayerController;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->e:Lcom/pubmatic/sdk/video/player/POBPlayerController;

    return-object v0
.end method

.method public getMediaDuration()I
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPlayerState()Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->h:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    return-object v0
.end method

.method public isMute()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->g:Z

    return v0
.end method

.method public load(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->a(Ljava/lang/String;)V

    return-void
.end method

.method public mute()V
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->c:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$POBVideoPlayerListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$POBVideoPlayerListener;->onMute(Z)V

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->g:Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "POBVideoPlayerView"

    const-string v2, "Media player is null"

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->i()V

    iget-object p1, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->c:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$POBVideoPlayerListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$POBVideoPlayerListener;->onBufferUpdate(I)V

    :cond_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    sget-object p1, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;->f:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->setPlayerState(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->c:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$POBVideoPlayerListener;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->getMediaDuration()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$POBVideoPlayerListener;->onProgressUpdate(I)V

    iget-object p1, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->c:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$POBVideoPlayerListener;

    invoke-interface {p1}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$POBVideoPlayerListener;->onCompletion()V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "POBVideoPlayerView"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$e;

    invoke-direct {p1, p0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$e;-><init>(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;)V

    const-wide/16 v0, 0x5

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    invoke-direct {p0, p3}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->a(I)Z

    move-result p1

    return p1
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onInfo what: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", extra:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "POBVideoPlayerView"

    invoke-static {v2, p1, v1}, Lcom/pubmatic/sdk/common/log/PMLog;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    iget-boolean p1, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->i:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->c()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->i:Z

    return p1

    :cond_0
    const/16 p1, 0x2bd

    if-ne p2, p1, :cond_1

    invoke-direct {p0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->e()V

    goto :goto_0

    :cond_1
    const/16 p1, 0x2be

    if-ne p2, p1, :cond_2

    invoke-direct {p0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->h()V

    goto :goto_0

    :cond_2
    const/16 p1, -0x3ec

    if-ne p3, p1, :cond_3

    invoke-direct {p0, p3}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->a(I)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    invoke-direct {p0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->i()V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->c:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$POBVideoPlayerListener;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    sget-object p1, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;->b:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->setPlayerState(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->c:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$POBVideoPlayerListener;

    invoke-interface {p1, p0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$POBVideoPlayerListener;->onReadyToPlay(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;)V

    :cond_1
    return-void
.end method

.method public pause()V
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->h:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    sget-object v1, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;->g:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    sget-object v0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;->d:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->setPlayerState(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->c:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$POBVideoPlayerListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$POBVideoPlayerListener;->onPause()V

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->e:Lcom/pubmatic/sdk/video/player/POBPlayerController;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$POBVideoPlayerListener;->onPause()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mediaPlayer :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "POBVideoPlayerView"

    invoke-static {v2, v0, v1}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public play()V
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->h:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    sget-object v2, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;->g:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->c:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$POBVideoPlayerListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->h:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    sget-object v2, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;->d:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$POBVideoPlayerListener;->onResume()V

    :cond_0
    sget-object v0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;->c:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->setPlayerState(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mediaPlayer :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "POBVideoPlayerView"

    invoke-static {v2, v0, v1}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public playOnMute(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->g:Z

    return-void
.end method

.method public setAutoPlayOnForeground(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->f:Z

    return-void
.end method

.method public setControllerView(Lcom/pubmatic/sdk/video/player/POBPlayerController;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->e:Lcom/pubmatic/sdk/video/player/POBPlayerController;

    invoke-virtual {p1, p0}, Lcom/pubmatic/sdk/video/player/POBPlayerController;->setVideoPlayerEvents(Lcom/pubmatic/sdk/video/player/POBVideoPlayer;)V

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setListener(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$POBVideoPlayerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->c:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$POBVideoPlayerListener;

    return-void
.end method

.method public setPrepareTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->j:I

    return-void
.end method

.method public stop()V
    .locals 1

    invoke-direct {p0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->j()V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    sget-object v0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;->e:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->setPlayerState(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;)V

    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->h:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    sget-object v2, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;->g:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    if-eq v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->setVideoSize(Landroid/media/MediaPlayer;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->b:Landroid/media/MediaPlayer;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    invoke-direct {p0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->g()V

    iget-boolean p1, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->f:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->h:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    sget-object v0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;->f:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->play()V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    invoke-direct {p0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->j()V

    iget-object p1, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->h:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    sget-object v0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;->g:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->pause()V

    :cond_0
    iget-object p1, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->b:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_1
    return-void
.end method

.method public unMute()V
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->c:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$POBVideoPlayerListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$POBVideoPlayerListener;->onMute(Z)V

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->g:Z

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0

    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "POBVideoPlayerView"

    const-string v2, "Media player is null"

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
