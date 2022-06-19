.class public Lcom/millennialmedia/internal/video/MMVideoView;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;,
        Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;,
        Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;,
        Lcom/millennialmedia/internal/video/MMVideoView$MediaController;,
        Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;
    }
.end annotation


# static fields
.field private static final COMPLETED:I = 0x6

.field private static final ERROR:I = 0x7

.field private static final IDLE:I = 0x0

.field private static final MEDIA_ERROR_EXTRA_AUDIO_NO_INIT:I = -0x13

.field private static final MEDIA_ERROR_STATE_EXCEPTION:I = -0x26

.field private static final PARTNER_CODE:Ljava/lang/String; = "millennialmedianativeapp775281030677"

.field private static final PAUSED:I = 0x5

.field private static final PLAYING:I = 0x4

.field private static final PREPARED:I = 0x2

.field private static final PREPARING:I = 0x1

.field private static final PROGRESS_POLLING_INTERVAL:I = 0x64

.field private static final READY_TO_PLAY:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile checkedIncrement:I

.field private volatile currentState:I

.field private mediaController:Lcom/millennialmedia/internal/video/MMVideoView$MediaController;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private moatFactory:Lbf1;

.field private moatIdentifiers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private muted:Z

.field private nativeVideoTracker:Lgf1;

.field private progressRunnable:Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;

.field private seekToMilliseconds:I

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private surfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

.field private surfaceView:Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;

.field private volatile targetState:I

.field private uri:Landroid/net/Uri;

.field private videoHeight:I

.field private videoViewListener:Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

.field private videoWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/video/MMVideoView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZLjava/util/Map;Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;",
            ")V"
        }
    .end annotation

    new-instance v0, Landroid/content/MutableContextWrapper;

    invoke-direct {v0, p1}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->seekToMilliseconds:I

    iput p1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->currentState:I

    iput p1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->checkedIncrement:I

    new-instance p1, Lcom/millennialmedia/internal/video/MMVideoView$1;

    invoke-direct {p1, p0}, Lcom/millennialmedia/internal/video/MMVideoView$1;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;)V

    iput-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->surfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    if-nez p4, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->moatIdentifiers:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iput-object p4, p0, Lcom/millennialmedia/internal/video/MMVideoView;->moatIdentifiers:Ljava/util/Map;

    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/content/MutableContextWrapper;

    iput-boolean p3, p0, Lcom/millennialmedia/internal/video/MMVideoView;->muted:Z

    iput-object p5, p0, Lcom/millennialmedia/internal/video/MMVideoView;->videoViewListener:Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

    if-eqz p2, :cond_1

    const/4 p2, 0x4

    iput p2, p0, Lcom/millennialmedia/internal/video/MMVideoView;->targetState:I

    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x106000c

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance p2, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;

    invoke-direct {p2, p0, p1}, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/millennialmedia/internal/video/MMVideoView;->surfaceView:Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;

    invoke-virtual {p2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object p2, p0, Lcom/millennialmedia/internal/video/MMVideoView;->surfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->surfaceView:Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 p2, 0x3

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->setType(I)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0xd

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object p2, p0, Lcom/millennialmedia/internal/video/MMVideoView;->surfaceView:Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;

    invoke-virtual {p0, p2, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/millennialmedia/internal/video/MMVideoView;)I
    .locals 0

    iget p0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->videoWidth:I

    return p0
.end method

.method public static synthetic access$1000(Lcom/millennialmedia/internal/video/MMVideoView;)Lcom/millennialmedia/internal/video/MMVideoView$MediaController;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaController:Lcom/millennialmedia/internal/video/MMVideoView$MediaController;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/millennialmedia/internal/video/MMVideoView;)I
    .locals 0

    iget p0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->checkedIncrement:I

    return p0
.end method

.method public static synthetic access$1102(Lcom/millennialmedia/internal/video/MMVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->checkedIncrement:I

    return p1
.end method

.method public static synthetic access$1200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/video/MMVideoView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$1300(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->startOnUiThread()V

    return-void
.end method

.method public static synthetic access$200(Lcom/millennialmedia/internal/video/MMVideoView;)I
    .locals 0

    iget p0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->videoHeight:I

    return p0
.end method

.method public static synthetic access$300(Lcom/millennialmedia/internal/video/MMVideoView;)Landroid/view/SurfaceHolder;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->surfaceHolder:Landroid/view/SurfaceHolder;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/millennialmedia/internal/video/MMVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->surfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/millennialmedia/internal/video/MMVideoView;)I
    .locals 0

    iget p0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->currentState:I

    return p0
.end method

.method public static synthetic access$402(Lcom/millennialmedia/internal/video/MMVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->currentState:I

    return p1
.end method

.method public static synthetic access$500(Lcom/millennialmedia/internal/video/MMVideoView;)I
    .locals 0

    iget p0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->targetState:I

    return p0
.end method

.method public static synthetic access$502(Lcom/millennialmedia/internal/video/MMVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->targetState:I

    return p1
.end method

.method public static synthetic access$600(Lcom/millennialmedia/internal/video/MMVideoView;)Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->videoViewListener:Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/millennialmedia/internal/video/MMVideoView;)Landroid/media/MediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->setAudioFocus()V

    return-void
.end method

.method private isInPlaybackState()Z
    .locals 3

    iget v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->currentState:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->currentState:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->currentState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->currentState:I

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private releaseAudioFocus()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method private resetProgressRunnable()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->progressRunnable:Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;->resetCheckedPosition()V

    :cond_0
    return-void
.end method

.method private setAudioFocus()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-boolean v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->muted:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v2, v1, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :goto_0
    return-void
.end method

.method private startOnUiThread()V
    .locals 4

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->currentState:I

    if-eq v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->muted:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->mute()V

    :cond_0
    iget v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->seekToMilliseconds:I

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->seekToMilliseconds:I

    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->moatIdentifiers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->moatFactory:Lbf1;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/millennialmedia/internal/video/MMVideoView;->nativeVideoTracker:Lgf1;

    if-nez v2, :cond_2

    const-string v2, "millennialmedianativeapp775281030677"

    invoke-virtual {v0, v2}, Lbf1;->b(Ljava/lang/String;)Lgf1;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->nativeVideoTracker:Lgf1;

    iget-object v2, p0, Lcom/millennialmedia/internal/video/MMVideoView;->moatIdentifiers:Ljava/util/Map;

    iget-object v3, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v2, v3, p0}, Lgf1;->d(Ljava/util/Map;Landroid/media/MediaPlayer;Landroid/view/View;)Z

    sget-object v0, Lcom/millennialmedia/internal/video/MMVideoView;->TAG:Ljava/lang/String;

    const-string v2, "Moat video tracking enabled."

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iput v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->currentState:I

    iput v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->targetState:I

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->videoViewListener:Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/millennialmedia/internal/video/MMVideoView$4;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/MMVideoView$4;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :cond_3
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaController:Lcom/millennialmedia/internal/video/MMVideoView$MediaController;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/millennialmedia/internal/video/MMVideoView$5;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/MMVideoView$5;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :cond_4
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->startProgressRunnable()V

    goto :goto_0

    :cond_5
    iput v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->targetState:I

    :goto_0
    return-void
.end method

.method private startProgressRunnable()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->progressRunnable:Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;Lcom/millennialmedia/internal/video/MMVideoView$1;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->progressRunnable:Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->progressRunnable:Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;->start()V

    return-void
.end method

.method private stopProgressRunnable()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->progressRunnable:Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->progressRunnable:Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;

    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 2

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iget v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->checkedIncrement:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getDuration()I
    .locals 2

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->isInPlaybackState()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->currentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    return v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public mute()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->muted:Z

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->setAudioFocus()V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->videoViewListener:Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/millennialmedia/internal/video/MMVideoView$9;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/MMVideoView$9;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaController:Lcom/millennialmedia/internal/video/MMVideoView$MediaController;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/millennialmedia/internal/video/MMVideoView$10;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/MMVideoView$10;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->setAudioFocus()V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->moatIdentifiers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->getActivityForView(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lbf1;->a(Landroid/app/Activity;)Lbf1;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->moatFactory:Lbf1;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/millennialmedia/internal/video/MMVideoView;->TAG:Ljava/lang/String;

    const-string v1, "Cannot determine the activity context. Moat video tracking disabled."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/millennialmedia/internal/video/MMVideoView;->TAG:Ljava/lang/String;

    const-string v1, "Moat ad identifiers were not provided. Moat video tracking disabled."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    iget-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->videoViewListener:Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/millennialmedia/internal/video/MMVideoView$20;

    invoke-direct {p1, p0, p2}, Lcom/millennialmedia/internal/video/MMVideoView$20;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;I)V

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    const/4 p1, 0x6

    iput p1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->currentState:I

    iput p1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->targetState:I

    iget-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->nativeVideoTracker:Lgf1;

    if-eqz p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "type"

    const-string v1, "AdVideoComplete"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->nativeVideoTracker:Lgf1;

    invoke-interface {v0, p1}, Lgf1;->b(Ljava/util/Map;)V

    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->stopProgressRunnable()V

    iget-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->videoViewListener:Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

    if-eqz p1, :cond_1

    new-instance p1, Lcom/millennialmedia/internal/video/MMVideoView$13;

    invoke-direct {p1, p0}, Lcom/millennialmedia/internal/video/MMVideoView$13;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;)V

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :cond_1
    iget-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaController:Lcom/millennialmedia/internal/video/MMVideoView$MediaController;

    if-eqz p1, :cond_2

    new-instance p1, Lcom/millennialmedia/internal/video/MMVideoView$14;

    invoke-direct {p1, p0}, Lcom/millennialmedia/internal/video/MMVideoView$14;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;)V

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->releaseAudioFocus()V

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    const/16 v0, -0x13

    if-eq p3, v0, :cond_1

    :cond_0
    const/16 v0, -0x26

    if-ne p2, v0, :cond_3

    :cond_1
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/millennialmedia/internal/video/MMVideoView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring acceptable media error: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return p1

    :cond_3
    const/4 p2, 0x7

    iput p2, p0, Lcom/millennialmedia/internal/video/MMVideoView;->currentState:I

    iget-object p2, p0, Lcom/millennialmedia/internal/video/MMVideoView;->videoViewListener:Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

    if-eqz p2, :cond_4

    new-instance p2, Lcom/millennialmedia/internal/video/MMVideoView$15;

    invoke-direct {p2, p0}, Lcom/millennialmedia/internal/video/MMVideoView$15;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;)V

    invoke-static {p2}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :cond_4
    return p1
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->setAudioFocus()V

    const/4 p1, 0x3

    iput p1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->currentState:I

    iget p1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->targetState:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->videoViewListener:Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/millennialmedia/internal/video/MMVideoView$16;

    invoke-direct {p1, p0}, Lcom/millennialmedia/internal/video/MMVideoView$16;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;)V

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->start()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->videoViewListener:Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

    if-eqz p1, :cond_3

    new-instance p1, Lcom/millennialmedia/internal/video/MMVideoView$17;

    invoke-direct {p1, p0}, Lcom/millennialmedia/internal/video/MMVideoView$17;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    iput p1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->currentState:I

    iget-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->videoViewListener:Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

    if-eqz p1, :cond_3

    new-instance p1, Lcom/millennialmedia/internal/video/MMVideoView$18;

    invoke-direct {p1, p0}, Lcom/millennialmedia/internal/video/MMVideoView$18;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;)V

    :goto_0
    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaController:Lcom/millennialmedia/internal/video/MMVideoView$MediaController;

    if-eqz p1, :cond_4

    new-instance p1, Lcom/millennialmedia/internal/video/MMVideoView$19;

    invoke-direct {p1, p0}, Lcom/millennialmedia/internal/video/MMVideoView$19;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;)V

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    check-cast p1, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;->targetState:I

    iput v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->targetState:I

    iget v0, p1, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;->currentPosition:I

    iput v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->seekToMilliseconds:I

    iget-boolean v0, p1, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;->muted:Z

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->muted:Z

    iget v0, p1, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;->currentState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget p1, p1, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;->targetState:I

    if-ne p1, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->start()V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;-><init>(Landroid/os/Parcelable;)V

    iget v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->currentState:I

    iput v1, v0, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;->currentState:I

    iget v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->targetState:I

    iput v1, v0, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;->targetState:I

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->getCurrentPosition()I

    move-result v1

    iput v1, v0, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;->currentPosition:I

    iget-boolean v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->muted:Z

    iput-boolean v1, v0, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;->muted:Z

    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 0

    iget-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->videoViewListener:Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/millennialmedia/internal/video/MMVideoView$21;

    invoke-direct {p1, p0}, Lcom/millennialmedia/internal/video/MMVideoView$21;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;)V

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaController:Lcom/millennialmedia/internal/video/MMVideoView$MediaController;

    if-eqz p1, :cond_1

    new-instance p1, Lcom/millennialmedia/internal/video/MMVideoView$22;

    invoke-direct {p1, p0}, Lcom/millennialmedia/internal/video/MMVideoView$22;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;)V

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    iput p2, p0, Lcom/millennialmedia/internal/video/MMVideoView;->videoWidth:I

    iput p3, p0, Lcom/millennialmedia/internal/video/MMVideoView;->videoHeight:I

    iget-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2, p3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->videoViewListener:Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/millennialmedia/internal/video/MMVideoView$7;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/MMVideoView$7;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaController:Lcom/millennialmedia/internal/video/MMVideoView$MediaController;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/millennialmedia/internal/video/MMVideoView$8;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/MMVideoView$8;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :cond_1
    const/4 v0, 0x5

    iput v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->currentState:I

    iput v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->targetState:I

    :cond_2
    return-void
.end method

.method public release()V
    .locals 2

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->stopProgressRunnable()V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->currentState:I

    :cond_0
    return-void
.end method

.method public restart()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->uri:Landroid/net/Uri;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/millennialmedia/internal/video/MMVideoView;->setVideoURI(Landroid/net/Uri;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/internal/video/MMVideoView;->seekTo(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->start()V

    return-void
.end method

.method public seekTo(I)V
    .locals 1

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->resetProgressRunnable()V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->seekToMilliseconds:I

    return-void
.end method

.method public setMediaController(Lcom/millennialmedia/internal/video/MMVideoView$MediaController;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaController:Lcom/millennialmedia/internal/video/MMVideoView$MediaController;

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/millennialmedia/internal/video/MMVideoView;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 3

    iput-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->uri:Landroid/net/Uri;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->release()V

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->currentState:I

    iget-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/millennialmedia/internal/video/MMVideoView;->TAG:Ljava/lang/String;

    const-string v1, "An error occurred preparing the VideoPlayer."

    invoke-static {v0, v1, p1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x7

    iput p1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->currentState:I

    iput p1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->targetState:I

    iget-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->videoViewListener:Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

    if-eqz p1, :cond_2

    new-instance p1, Lcom/millennialmedia/internal/video/MMVideoView$2;

    invoke-direct {p1, p0}, Lcom/millennialmedia/internal/video/MMVideoView$2;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;)V

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setVideoViewListener(Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->videoViewListener:Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

    return-void
.end method

.method public start()V
    .locals 1

    new-instance v0, Lcom/millennialmedia/internal/video/MMVideoView$3;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/MMVideoView$3;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stop()V
    .locals 2

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->releaseAudioFocus()V

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->currentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->videoViewListener:Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/millennialmedia/internal/video/MMVideoView$6;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/MMVideoView$6;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->currentState:I

    iput v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->targetState:I

    :cond_2
    return-void
.end method

.method public unmute()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->muted:Z

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->setAudioFocus()V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->videoViewListener:Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/millennialmedia/internal/video/MMVideoView$11;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/MMVideoView$11;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaController:Lcom/millennialmedia/internal/video/MMVideoView$MediaController;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/millennialmedia/internal/video/MMVideoView$12;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/MMVideoView$12;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public videoSkipped()V
    .locals 3

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->nativeVideoTracker:Lgf1;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    const-string v2, "AdSkipped"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->nativeVideoTracker:Lgf1;

    invoke-interface {v1, v0}, Lgf1;->b(Ljava/util/Map;)V

    :cond_0
    return-void
.end method
