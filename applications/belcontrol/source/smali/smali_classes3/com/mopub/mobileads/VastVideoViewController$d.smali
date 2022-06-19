.class public final Lcom/mopub/mobileads/VastVideoViewController$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VastVideoViewController;->p(Landroid/content/Context;I)Landroidx/media2/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lev;

.field public final synthetic b:Lcom/mopub/mobileads/VastVideoViewController;

.field public final synthetic c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lev;Lcom/mopub/mobileads/VastVideoViewController;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$d;->a:Lev;

    iput-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController$d;->b:Lcom/mopub/mobileads/VastVideoViewController;

    iput-object p3, p0, Lcom/mopub/mobileads/VastVideoViewController$d;->c:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$d;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$getExternalViewabilitySessionManager$p(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/common/ExternalViewabilitySessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController$d;->a:Lev;

    invoke-virtual {v1}, Lev;->m()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mopub/common/ExternalViewabilitySessionManager;->onVideoPrepared(J)V

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$d;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$adjustSkipOffset(Lcom/mopub/mobileads/VastVideoViewController;)V

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$d;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewController;->getMediaPlayer()Lev;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lev;->w0(F)Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$d;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$getVastCompanionAdConfig$p(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$d;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoConfig;->getDiskMediaFileUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController$d;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoViewController;->getBlurredLastVideoFrameImageView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/mopub/mobileads/VastVideoViewController;->prepareBlurredLastVideoFrame(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$d;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewController;->getProgressBarWidget()Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController$d;->a:Lev;

    invoke-virtual {v1}, Lev;->m()J

    move-result-wide v1

    long-to-int v2, v1

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController$d;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoViewController;->getShowCloseButtonDelay()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->calibrateAndMakeVisible(II)V

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$d;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewController;->getRadialCountdownWidget()Lcom/mopub/mobileads/RadialCountdownWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController$d;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoViewController;->getShowCloseButtonDelay()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/RadialCountdownWidget;->calibrateAndMakeVisible(I)V

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$d;->b:Lcom/mopub/mobileads/VastVideoViewController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoViewController;->setCalibrationDone(Z)V

    return-void
.end method
