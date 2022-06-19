.class Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$MediaPlayerListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaPlayerListener"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)V
    .locals 1

    .line 715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 717
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$MediaPlayerListener;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private static synthetic a(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)V
    .locals 2

    .line 825
    invoke-static {p0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->h(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;

    .line 826
    invoke-interface {v1, p0}, Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;->onSeekCompleted(Lcom/verizon/ads/VideoPlayer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static synthetic a(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;I)V
    .locals 2

    .line 736
    invoke-static {p0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->h(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;

    .line 737
    invoke-interface {v1, p0, p1}, Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;->onProgress(Lcom/verizon/ads/VideoPlayer;I)V

    .line 738
    invoke-interface {v1, p0}, Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;->onComplete(Lcom/verizon/ads/VideoPlayer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static synthetic a(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;II)V
    .locals 1

    .line 862
    invoke-static {p0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->h(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;

    .line 863
    invoke-interface {v0, p1, p2}, Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;->onVideoSizeChanged(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static synthetic b(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)V
    .locals 2

    .line 807
    invoke-static {p0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->h(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;

    .line 808
    invoke-interface {v1, p0}, Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;->onLoaded(Lcom/verizon/ads/VideoPlayer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static synthetic c(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)V
    .locals 2

    .line 792
    invoke-static {p0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->h(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;

    .line 793
    invoke-interface {v1, p0}, Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;->onLoaded(Lcom/verizon/ads/VideoPlayer;)V

    .line 794
    invoke-interface {v1, p0}, Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;->onReady(Lcom/verizon/ads/VideoPlayer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static synthetic d(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)V
    .locals 2

    .line 767
    invoke-static {p0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->h(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;

    .line 768
    invoke-interface {v1, p0}, Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;->onError(Lcom/verizon/ads/VideoPlayer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic lambda$3SFT8JjvZMBn8qlQBm0pwcMdofk(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)V
    .locals 0

    invoke-static {p0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$MediaPlayerListener;->a(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)V

    return-void
.end method

.method public static synthetic lambda$5svjq7vkOWmvpCmS7Okq5N39vco(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)V
    .locals 0

    invoke-static {p0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$MediaPlayerListener;->b(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)V

    return-void
.end method

.method public static synthetic lambda$BK25P9UnYi2gKGS1LuWz5QMbmVs(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)V
    .locals 0

    invoke-static {p0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$MediaPlayerListener;->c(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)V

    return-void
.end method

.method public static synthetic lambda$FW3CWWex3MEG60hbOnJmF-G3PWc(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)V
    .locals 0

    invoke-static {p0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$MediaPlayerListener;->d(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)V

    return-void
.end method

.method public static synthetic lambda$FpVLBjIKBYTrgI9aITJvwiuyapo(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$MediaPlayerListener;->a(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;II)V

    return-void
.end method

.method public static synthetic lambda$OWhVoC-wcCaaUPpRBzSIV_8D7is(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$MediaPlayerListener;->a(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;I)V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 724
    iget-object p1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$MediaPlayerListener;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;

    if-eqz p1, :cond_0

    const/4 v0, 0x6

    .line 727
    invoke-static {p1, v0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;I)I

    .line 728
    invoke-static {p1}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->d(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)I

    .line 730
    invoke-static {p1}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->e(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$ProgressHandler;

    move-result-object v0

    const/4 v1, 0x2

    .line 1989
    invoke-virtual {v0, v1}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$ProgressHandler;->sendEmptyMessage(I)Z

    .line 732
    invoke-virtual {p1}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->getDuration()I

    move-result v0

    .line 734
    new-instance v1, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$MediaPlayerListener$OWhVoC-wcCaaUPpRBzSIV_8D7is;

    invoke-direct {v1, p1, v0}, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$MediaPlayerListener$OWhVoC-wcCaaUPpRBzSIV_8D7is;-><init>(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;I)V

    invoke-virtual {p1, v1}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    .line 749
    iget-object p1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$MediaPlayerListener;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    if-ne p2, v0, :cond_0

    const/16 v1, -0x13

    if-eq p3, v1, :cond_1

    :cond_0
    const/16 v1, -0x26

    if-ne p2, v1, :cond_3

    :cond_1
    const/4 p1, 0x3

    .line 756
    invoke-static {p1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 757
    invoke-static {}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a()Lcom/verizon/ads/Logger;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v0

    const-string p2, "Ignoring acceptable media error: (%d, %d)"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_2
    return v0

    :cond_3
    const/4 p2, 0x7

    .line 763
    invoke-static {p1, p2}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;I)I

    .line 765
    new-instance p2, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$MediaPlayerListener$FW3CWWex3MEG60hbOnJmF-G3PWc;

    invoke-direct {p2, p1}, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$MediaPlayerListener$FW3CWWex3MEG60hbOnJmF-G3PWc;-><init>(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)V

    invoke-virtual {p1, p2}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a(Ljava/lang/Runnable;)V

    :cond_4
    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    const/4 v0, 0x1

    .line 781
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 783
    iget-object p1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$MediaPlayerListener;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;

    if-eqz p1, :cond_1

    .line 786
    invoke-static {p1}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->f(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->f(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    invoke-virtual {p1}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->setAudioFocus()V

    const/4 v0, 0x3

    .line 788
    invoke-static {p1, v0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;I)I

    .line 790
    new-instance v0, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$MediaPlayerListener$BK25P9UnYi2gKGS1LuWz5QMbmVs;

    invoke-direct {v0, p1}, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$MediaPlayerListener$BK25P9UnYi2gKGS1LuWz5QMbmVs;-><init>(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)V

    invoke-virtual {p1, v0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a(Ljava/lang/Runnable;)V

    .line 798
    invoke-static {p1}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->b(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 799
    invoke-virtual {p1}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->play()V

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 803
    invoke-static {p1, v0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;I)I

    .line 805
    new-instance v0, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$MediaPlayerListener$5svjq7vkOWmvpCmS7Okq5N39vco;

    invoke-direct {v0, p1}, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$MediaPlayerListener$5svjq7vkOWmvpCmS7Okq5N39vco;-><init>(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)V

    invoke-virtual {p1, v0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 819
    iget-object p1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$MediaPlayerListener;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;

    if-eqz p1, :cond_0

    .line 823
    new-instance v0, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$MediaPlayerListener$3SFT8JjvZMBn8qlQBm0pwcMdofk;

    invoke-direct {v0, p1}, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$MediaPlayerListener$3SFT8JjvZMBn8qlQBm0pwcMdofk;-><init>(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)V

    invoke-virtual {p1, v0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1

    .line 846
    iget-object p1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$MediaPlayerListener;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    .line 852
    invoke-static {p1, p2}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->b(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;I)I

    .line 853
    invoke-static {p1, p3}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->c(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;I)I

    .line 855
    invoke-static {p1}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->g(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 857
    invoke-virtual {v0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 860
    :cond_0
    new-instance v0, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$MediaPlayerListener$FpVLBjIKBYTrgI9aITJvwiuyapo;

    invoke-direct {v0, p1, p2, p3}, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$MediaPlayerListener$FpVLBjIKBYTrgI9aITJvwiuyapo;-><init>(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;II)V

    invoke-virtual {p1, v0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
