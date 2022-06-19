.class Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/common/base/POBAdRendererListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;


# direct methods
.method private constructor <init>(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$f;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$f;-><init>(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)V

    return-void
.end method


# virtual methods
.method public onAdExpired()V
    .locals 0

    return-void
.end method

.method public onAdInteractionStarted()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$f;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->a(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$f;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->r(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)Lcom/pubmatic/sdk/openwrap/banner/POBBannerEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBaseEvent;->trackClick()V

    return-void
.end method

.method public onAdInteractionStopped()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$f;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->b(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)V

    return-void
.end method

.method public onAdReadyToRefresh(I)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$f;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {v0, p1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->a(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;I)V

    return-void
.end method

.method public onAdRender(Landroid/view/View;Lcom/pubmatic/sdk/common/base/POBAdDescriptor;)V
    .locals 2

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "POBBannerView"

    const-string v1, "onAdRender()"

    invoke-static {v0, v1, p2}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$f;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {p2}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->q(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object p2

    invoke-static {p2}, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->getWinningBid(Lcom/pubmatic/sdk/common/models/POBAdResponse;)Lcom/pubmatic/sdk/openwrap/core/POBBid;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$f;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->m(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$f;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getNetworkHandler(Landroid/content/Context;)Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$f;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {v1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->m(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/pubmatic/sdk/openwrap/core/POBBidderTrackingUtil;->notifyBidderBidWin(Lcom/pubmatic/sdk/common/network/POBNetworkHandler;Lcom/pubmatic/sdk/openwrap/core/POBBid;Ljava/util/Map;)V

    :cond_0
    iget-object p2, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$f;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->a(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;Z)Z

    iget-object p2, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$f;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {p2, p1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->a(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;Landroid/view/View;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$f;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {p1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->r(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)Lcom/pubmatic/sdk/openwrap/banner/POBBannerEvent;

    move-result-object p1

    invoke-interface {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBaseEvent;->trackImpression()V

    return-void
.end method

.method public onAdRenderingFailed(Lcom/pubmatic/sdk/common/POBError;)V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$f;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->q(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->getWinningBid(Lcom/pubmatic/sdk/common/models/POBAdResponse;)Lcom/pubmatic/sdk/openwrap/core/POBBid;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$f;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {v1, v0, p1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->a(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;Lcom/pubmatic/sdk/openwrap/core/POBBid;Lcom/pubmatic/sdk/common/POBError;)V

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$f;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {v0, p1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->a(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;Lcom/pubmatic/sdk/common/POBError;)V

    return-void
.end method

.method public onAdUnload()V
    .locals 0

    return-void
.end method

.method public onLeavingApplication()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$f;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->c(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$f;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->r(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)Lcom/pubmatic/sdk/openwrap/banner/POBBannerEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBaseEvent;->trackClick()V

    return-void
.end method

.method public onReadyToExecuteTrackers()V
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$f;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->q(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->getWinningBid(Lcom/pubmatic/sdk/common/models/POBAdResponse;)Lcom/pubmatic/sdk/openwrap/core/POBBid;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$f;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {v1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->m(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$f;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {v1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->q(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$f;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {v1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->d(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$f;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {v1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->e(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$f;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {v1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->m(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getPartnerId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$f;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {v1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->d(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->a(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;Lcom/pubmatic/sdk/openwrap/core/POBRequest;)Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;

    move-result-object v1

    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$f;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {v2}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->q(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;->executeTracker(Lcom/pubmatic/sdk/common/models/POBAdResponse;Lcom/pubmatic/sdk/common/models/POBPartnerInfo;)V

    :cond_0
    return-void
.end method

.method public onRenderAdClick()V
    .locals 0

    return-void
.end method
