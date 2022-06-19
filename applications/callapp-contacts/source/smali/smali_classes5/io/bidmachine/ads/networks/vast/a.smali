.class Lio/bidmachine/ads/networks/vast/a;
.super Lio/bidmachine/unified/UnifiedFullscreenAd;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private vastListener:Lio/bidmachine/ads/networks/vast/b;

.field private vastRequest:Lcom/explorestack/iab/vast/VastRequest;

.field private final videoType:Lcom/explorestack/iab/vast/VideoType;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/explorestack/iab/vast/VideoType;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lio/bidmachine/unified/UnifiedFullscreenAd;-><init>()V

    .line 28
    iput-object p1, p0, Lio/bidmachine/ads/networks/vast/a;->videoType:Lcom/explorestack/iab/vast/VideoType;

    return-void
.end method


# virtual methods
.method public bridge synthetic load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdCallback;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 18
    check-cast p2, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    check-cast p3, Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bidmachine/ads/networks/vast/a;->load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;)V

    return-void
.end method

.method public load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 36
    new-instance p3, Lio/bidmachine/ads/networks/vast/c;

    invoke-direct {p3, p4}, Lio/bidmachine/ads/networks/vast/c;-><init>(Lio/bidmachine/unified/UnifiedMediationParams;)V

    .line 37
    invoke-virtual {p3, p2}, Lio/bidmachine/ads/networks/vast/c;->isValid(Lio/bidmachine/unified/UnifiedAdCallback;)Z

    move-result p4

    if-nez p4, :cond_0

    return-void

    .line 42
    :cond_0
    new-instance p4, Lio/bidmachine/ads/networks/vast/b;

    invoke-direct {p4, p2}, Lio/bidmachine/ads/networks/vast/b;-><init>(Lio/bidmachine/unified/UnifiedFullscreenAdCallback;)V

    iput-object p4, p0, Lio/bidmachine/ads/networks/vast/a;->vastListener:Lio/bidmachine/ads/networks/vast/b;

    .line 43
    invoke-static {}, Lcom/explorestack/iab/vast/VastRequest;->newBuilder()Lcom/explorestack/iab/vast/VastRequest$Builder;

    move-result-object p2

    const/4 p4, 0x1

    .line 44
    invoke-virtual {p2, p4}, Lcom/explorestack/iab/vast/VastRequest$Builder;->setPreCache(Z)Lcom/explorestack/iab/vast/VastRequest$Builder;

    move-result-object p2

    iget p4, p3, Lio/bidmachine/ads/networks/vast/c;->skipOffset:I

    .line 45
    invoke-virtual {p2, p4}, Lcom/explorestack/iab/vast/VastRequest$Builder;->setVideoCloseTime(I)Lcom/explorestack/iab/vast/VastRequest$Builder;

    move-result-object p2

    iget p4, p3, Lio/bidmachine/ads/networks/vast/c;->companionSkipOffset:I

    .line 46
    invoke-virtual {p2, p4}, Lcom/explorestack/iab/vast/VastRequest$Builder;->setCompanionCloseTime(I)Lcom/explorestack/iab/vast/VastRequest$Builder;

    move-result-object p2

    iget-boolean p4, p3, Lio/bidmachine/ads/networks/vast/c;->useNativeClose:Z

    .line 47
    invoke-virtual {p2, p4}, Lcom/explorestack/iab/vast/VastRequest$Builder;->forceUseNativeCloseTime(Z)Lcom/explorestack/iab/vast/VastRequest$Builder;

    move-result-object p2

    .line 48
    invoke-virtual {p2}, Lcom/explorestack/iab/vast/VastRequest$Builder;->build()Lcom/explorestack/iab/vast/VastRequest;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/ads/networks/vast/a;->vastRequest:Lcom/explorestack/iab/vast/VastRequest;

    .line 50
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p3, p3, Lio/bidmachine/ads/networks/vast/c;->creativeAdm:Ljava/lang/String;

    iget-object p4, p0, Lio/bidmachine/ads/networks/vast/a;->vastListener:Lio/bidmachine/ads/networks/vast/b;

    invoke-virtual {p2, p1, p3, p4}, Lcom/explorestack/iab/vast/VastRequest;->loadVideoWithData(Landroid/content/Context;Ljava/lang/String;Lcom/explorestack/iab/vast/VastRequestListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 66
    iget-object v0, p0, Lio/bidmachine/ads/networks/vast/a;->vastRequest:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lio/bidmachine/ads/networks/vast/a;->vastRequest:Lcom/explorestack/iab/vast/VastRequest;

    :cond_0
    return-void
.end method

.method public show(Landroid/content/Context;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;)V
    .locals 2

    .line 57
    iget-object v0, p0, Lio/bidmachine/ads/networks/vast/a;->vastRequest:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->checkFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object p2, p0, Lio/bidmachine/ads/networks/vast/a;->vastRequest:Lcom/explorestack/iab/vast/VastRequest;

    iget-object v0, p0, Lio/bidmachine/ads/networks/vast/a;->videoType:Lcom/explorestack/iab/vast/VideoType;

    iget-object v1, p0, Lio/bidmachine/ads/networks/vast/a;->vastListener:Lio/bidmachine/ads/networks/vast/b;

    invoke-virtual {p2, p1, v0, v1}, Lcom/explorestack/iab/vast/VastRequest;->display(Landroid/content/Context;Lcom/explorestack/iab/vast/VideoType;Lcom/explorestack/iab/vast/VastActivityListener;)V

    return-void

    .line 60
    :cond_0
    sget-object p1, Lio/bidmachine/utils/BMError;->NotLoaded:Lio/bidmachine/utils/BMError;

    invoke-interface {p2, p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    return-void
.end method
