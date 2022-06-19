.class final Lcom/mopub/mobileads/VastVideoViewController$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/VastVideoViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "com/mopub/mobileads/VastVideoViewController$createVideoView$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/player/MediaPlayer;

.field final synthetic b:Lcom/mopub/mobileads/VastVideoViewController;

.field final synthetic c:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer;Lcom/mopub/mobileads/VastVideoViewController;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$d;->a:Landroidx/media2/player/MediaPlayer;

    iput-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController$d;->b:Lcom/mopub/mobileads/VastVideoViewController;

    iput-object p3, p0, Lcom/mopub/mobileads/VastVideoViewController$d;->c:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 367
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$d;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$getExternalViewabilitySessionManager$p(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/common/ExternalViewabilitySessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController$d;->a:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v1}, Landroidx/media2/player/MediaPlayer;->f()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mopub/common/ExternalViewabilitySessionManager;->onVideoPrepared(J)V

    .line 368
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$d;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$adjustSkipOffset(Lcom/mopub/mobileads/VastVideoViewController;)V

    .line 369
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$d;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewController;->getMediaPlayer()Landroidx/media2/player/MediaPlayer;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroidx/media2/player/MediaPlayer;->b(F)Lcom/google/common/util/concurrent/a;

    .line 370
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$d;->b:Lcom/mopub/mobileads/VastVideoViewController;

    .line 1081
    iget-object v0, v0, Lcom/mopub/mobileads/BaseVideoViewController;->b:Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    .line 370
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController$d;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v1}, Lcom/mopub/mobileads/VastVideoViewController;->access$getVastCompanionAdConfigs$p(Lcom/mopub/mobileads/VastVideoViewController;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController$d;->a:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v2}, Landroidx/media2/player/MediaPlayer;->f()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-interface {v0, v1, v3}, Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;->onCompanionAdsReady(Ljava/util/Set;I)V

    .line 372
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$d;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewController;->getProgressBarWidget()Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    move-result-object v0

    .line 373
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController$d;->a:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v1}, Landroidx/media2/player/MediaPlayer;->f()J

    move-result-wide v1

    long-to-int v2, v1

    .line 374
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController$d;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoViewController;->getShowCloseButtonDelay()I

    move-result v1

    .line 372
    invoke-virtual {v0, v2, v1}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->calibrateAndMakeVisible(II)V

    .line 376
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$d;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewController;->getRadialCountdownWidget()Lcom/mopub/mobileads/RadialCountdownWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController$d;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoViewController;->getShowCloseButtonDelay()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/RadialCountdownWidget;->calibrateAndMakeVisible(I)V

    .line 377
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$d;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewController;->getRadialCountdownWidget()Lcom/mopub/mobileads/RadialCountdownWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController$d;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoViewController;->getShowCloseButtonDelay()I

    move-result v1

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController$d;->a:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v2}, Landroidx/media2/player/MediaPlayer;->e()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v0, v1, v3}, Lcom/mopub/mobileads/RadialCountdownWidget;->updateCountdownProgress(II)V

    .line 378
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$d;->b:Lcom/mopub/mobileads/VastVideoViewController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoViewController;->setCalibrationDone(Z)V

    return-void
.end method
