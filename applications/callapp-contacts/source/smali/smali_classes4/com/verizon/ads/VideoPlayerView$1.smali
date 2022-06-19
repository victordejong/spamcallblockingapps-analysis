.class Lcom/verizon/ads/VideoPlayerView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/VideoPlayerView;->bindPlayer(Lcom/verizon/ads/VideoPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/VideoPlayerView;


# direct methods
.method constructor <init>(Lcom/verizon/ads/VideoPlayerView;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/verizon/ads/VideoPlayerView$1;->a:Lcom/verizon/ads/VideoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/verizon/ads/VideoPlayerView$1;->a:Lcom/verizon/ads/VideoPlayerView;

    invoke-virtual {v0}, Lcom/verizon/ads/VideoPlayerView;->requestLayout()V

    return-void
.end method

.method private synthetic a(F)V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/verizon/ads/VideoPlayerView$1;->a:Lcom/verizon/ads/VideoPlayerView;

    invoke-static {v0}, Lcom/verizon/ads/VideoPlayerView;->a(Lcom/verizon/ads/VideoPlayerView;)Landroid/widget/ToggleButton;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/verizon/ads/VideoPlayerView$1;->a:Lcom/verizon/ads/VideoPlayerView;

    invoke-static {v0}, Lcom/verizon/ads/VideoPlayerView;->a(Lcom/verizon/ads/VideoPlayerView;)Landroid/widget/ToggleButton;

    move-result-object v0

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method private static synthetic a(Lcom/verizon/ads/VideoPlayerView;)V
    .locals 0

    .line 155
    invoke-static {p0}, Lcom/verizon/ads/VideoPlayerView;->b(Lcom/verizon/ads/VideoPlayerView;)V

    return-void
.end method

.method private static synthetic b(Lcom/verizon/ads/VideoPlayerView;)V
    .locals 0

    .line 145
    invoke-static {p0}, Lcom/verizon/ads/VideoPlayerView;->c(Lcom/verizon/ads/VideoPlayerView;)V

    return-void
.end method

.method private static synthetic c(Lcom/verizon/ads/VideoPlayerView;)V
    .locals 0

    .line 144
    invoke-static {p0}, Lcom/verizon/ads/VideoPlayerView;->b(Lcom/verizon/ads/VideoPlayerView;)V

    return-void
.end method

.method private static synthetic d(Lcom/verizon/ads/VideoPlayerView;)V
    .locals 0

    .line 143
    invoke-static {p0}, Lcom/verizon/ads/VideoPlayerView;->d(Lcom/verizon/ads/VideoPlayerView;)V

    return-void
.end method

.method public static synthetic lambda$GBjaBclR8_t0Ac_9GiOFuJ05kcc(Lcom/verizon/ads/VideoPlayerView;)V
    .locals 0

    invoke-static {p0}, Lcom/verizon/ads/VideoPlayerView$1;->c(Lcom/verizon/ads/VideoPlayerView;)V

    return-void
.end method

.method public static synthetic lambda$s33IMpXdavdA2FAjOW-2QtTPWn8(Lcom/verizon/ads/VideoPlayerView$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/verizon/ads/VideoPlayerView$1;->a()V

    return-void
.end method

.method public static synthetic lambda$wADx25B9ZFPX-DkCwge9fgXzIVg(Lcom/verizon/ads/VideoPlayerView;)V
    .locals 0

    invoke-static {p0}, Lcom/verizon/ads/VideoPlayerView$1;->a(Lcom/verizon/ads/VideoPlayerView;)V

    return-void
.end method

.method public static synthetic lambda$y1evjaWshzpaujZANcqcugClLwE(Lcom/verizon/ads/VideoPlayerView;)V
    .locals 0

    invoke-static {p0}, Lcom/verizon/ads/VideoPlayerView$1;->d(Lcom/verizon/ads/VideoPlayerView;)V

    return-void
.end method

.method public static synthetic lambda$yX2rrSA3gapETKhrixFOCyKMSNs(Lcom/verizon/ads/VideoPlayerView$1;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/verizon/ads/VideoPlayerView$1;->a(F)V

    return-void
.end method

.method public static synthetic lambda$zY296W1DvB0TRk7X9SPJm-XGBmM(Lcom/verizon/ads/VideoPlayerView;)V
    .locals 0

    invoke-static {p0}, Lcom/verizon/ads/VideoPlayerView$1;->b(Lcom/verizon/ads/VideoPlayerView;)V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/verizon/ads/VideoPlayer;)V
    .locals 0

    return-void
.end method

.method public onComplete(Lcom/verizon/ads/VideoPlayer;)V
    .locals 1

    .line 155
    iget-object p1, p0, Lcom/verizon/ads/VideoPlayerView$1;->a:Lcom/verizon/ads/VideoPlayerView;

    new-instance v0, Lcom/verizon/ads/-$$Lambda$VideoPlayerView$1$wADx25B9ZFPX-DkCwge9fgXzIVg;

    invoke-direct {v0, p1}, Lcom/verizon/ads/-$$Lambda$VideoPlayerView$1$wADx25B9ZFPX-DkCwge9fgXzIVg;-><init>(Lcom/verizon/ads/VideoPlayerView;)V

    invoke-static {v0}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Lcom/verizon/ads/VideoPlayer;)V
    .locals 0

    return-void
.end method

.method public onLoaded(Lcom/verizon/ads/VideoPlayer;)V
    .locals 0

    return-void
.end method

.method public onPaused(Lcom/verizon/ads/VideoPlayer;)V
    .locals 0

    return-void
.end method

.method public onPlay(Lcom/verizon/ads/VideoPlayer;)V
    .locals 1

    .line 143
    iget-object p1, p0, Lcom/verizon/ads/VideoPlayerView$1;->a:Lcom/verizon/ads/VideoPlayerView;

    new-instance v0, Lcom/verizon/ads/-$$Lambda$VideoPlayerView$1$y1evjaWshzpaujZANcqcugClLwE;

    invoke-direct {v0, p1}, Lcom/verizon/ads/-$$Lambda$VideoPlayerView$1$y1evjaWshzpaujZANcqcugClLwE;-><init>(Lcom/verizon/ads/VideoPlayerView;)V

    invoke-static {v0}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 144
    iget-object p1, p0, Lcom/verizon/ads/VideoPlayerView$1;->a:Lcom/verizon/ads/VideoPlayerView;

    new-instance v0, Lcom/verizon/ads/-$$Lambda$VideoPlayerView$1$GBjaBclR8_t0Ac_9GiOFuJ05kcc;

    invoke-direct {v0, p1}, Lcom/verizon/ads/-$$Lambda$VideoPlayerView$1$GBjaBclR8_t0Ac_9GiOFuJ05kcc;-><init>(Lcom/verizon/ads/VideoPlayerView;)V

    invoke-static {v0}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 145
    iget-object p1, p0, Lcom/verizon/ads/VideoPlayerView$1;->a:Lcom/verizon/ads/VideoPlayerView;

    new-instance v0, Lcom/verizon/ads/-$$Lambda$VideoPlayerView$1$zY296W1DvB0TRk7X9SPJm-XGBmM;

    invoke-direct {v0, p1}, Lcom/verizon/ads/-$$Lambda$VideoPlayerView$1$zY296W1DvB0TRk7X9SPJm-XGBmM;-><init>(Lcom/verizon/ads/VideoPlayerView;)V

    invoke-static {v0}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProgress(Lcom/verizon/ads/VideoPlayer;I)V
    .locals 0

    return-void
.end method

.method public onReady(Lcom/verizon/ads/VideoPlayer;)V
    .locals 0

    return-void
.end method

.method public onSeekCompleted(Lcom/verizon/ads/VideoPlayer;)V
    .locals 0

    return-void
.end method

.method public onUnloaded(Lcom/verizon/ads/VideoPlayer;)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 0

    .line 189
    new-instance p1, Lcom/verizon/ads/-$$Lambda$VideoPlayerView$1$s33IMpXdavdA2FAjOW-2QtTPWn8;

    invoke-direct {p1, p0}, Lcom/verizon/ads/-$$Lambda$VideoPlayerView$1$s33IMpXdavdA2FAjOW-2QtTPWn8;-><init>(Lcom/verizon/ads/VideoPlayerView$1;)V

    invoke-static {p1}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onVolumeChanged(Lcom/verizon/ads/VideoPlayer;F)V
    .locals 0

    .line 175
    new-instance p1, Lcom/verizon/ads/-$$Lambda$VideoPlayerView$1$yX2rrSA3gapETKhrixFOCyKMSNs;

    invoke-direct {p1, p0, p2}, Lcom/verizon/ads/-$$Lambda$VideoPlayerView$1$yX2rrSA3gapETKhrixFOCyKMSNs;-><init>(Lcom/verizon/ads/VideoPlayerView$1;F)V

    invoke-static {p1}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
