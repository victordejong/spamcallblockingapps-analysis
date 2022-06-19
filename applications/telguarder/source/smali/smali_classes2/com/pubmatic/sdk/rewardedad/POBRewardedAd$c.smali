.class Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/rewardedad/POBRewardedAdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;


# direct methods
.method private constructor <init>(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$c;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$c;-><init>(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)V

    return-void
.end method

.method private a()V
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "POBRewardedAd"

    const-string v2, "PartnerBidWin"

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$c;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-static {v0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->g(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->getWinningBid(Lcom/pubmatic/sdk/common/models/POBAdResponse;)Lcom/pubmatic/sdk/openwrap/core/POBBid;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$c;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-static {v1}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->i(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)Lcom/pubmatic/sdk/rewardedad/POBRewardedAdEvent;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->setHasWon(Z)V

    invoke-virtual {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->hasWon()Z

    move-result v1

    invoke-virtual {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getPartnerName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pubmatic/sdk/common/utility/POBUtils;->logBidWinningStatus(ZLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getPartnerName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$c;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-static {v2}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->i(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)Lcom/pubmatic/sdk/rewardedad/POBRewardedAdEvent;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAdEvent;->getRenderer(Ljava/lang/String;)Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRendering;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->a(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRendering;)Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRendering;

    iget-object v1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$c;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-static {v1}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->e(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRendering;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$c;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-static {v1, v0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->b(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;Lcom/pubmatic/sdk/openwrap/core/POBBid;)Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRendering;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->a(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRendering;)Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRendering;

    :cond_0
    iget-object v1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$c;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-static {v1}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->e(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRendering;

    move-result-object v1

    new-instance v2, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$d;

    iget-object v3, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$c;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$d;-><init>(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$a;)V

    invoke-interface {v1, v2}, Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRendering;->setAdRendererListener(Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRendererListener;)V

    iget-object v1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$c;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-static {v1}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->e(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRendering;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRendering;->renderAd(Lcom/pubmatic/sdk/common/base/POBAdDescriptor;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onAdClick()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$c;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-static {v0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->l(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)V

    return-void
.end method

.method public onAdClosed()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$c;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-static {v0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->j(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)V

    return-void
.end method

.method public onAdLeftApplication()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$c;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-static {v0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->a(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)V

    return-void
.end method

.method public onAdOpened()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$c;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-static {v0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->h(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)V

    return-void
.end method

.method public onAdServerWin()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "POBRewardedAd"

    const-string v3, "AdServerWin"

    invoke-static {v2, v3, v1}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$c;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-static {v1}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->g(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object v1

    invoke-static {v1}, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->getWinningBid(Lcom/pubmatic/sdk/common/models/POBAdResponse;)Lcom/pubmatic/sdk/openwrap/core/POBBid;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->hasWon()Z

    move-result v0

    invoke-virtual {v1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getPartnerName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/common/utility/POBUtils;->logBidWinningStatus(ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$c;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    sget-object v1, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->AD_SERVER_READY:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->a(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;Lcom/pubmatic/sdk/common/POBDataType$POBAdState;)Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$c;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-static {v0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->k(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)V

    return-void
.end method

.method public onFailed(Lcom/pubmatic/sdk/common/POBError;)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$c;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-static {v0, p1}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->a(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;Lcom/pubmatic/sdk/common/POBError;)V

    return-void
.end method

.method public onOpenWrapPartnerWin(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$c;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-static {v0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->g(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$c;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-static {v0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->g(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pubmatic/sdk/common/models/POBAdResponse;->getBid(Ljava/lang/String;)Lcom/pubmatic/sdk/common/base/POBAdDescriptor;

    move-result-object p1

    check-cast p1, Lcom/pubmatic/sdk/openwrap/core/POBBid;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;

    iget-object v1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$c;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-static {v1}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->g(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;-><init>(Lcom/pubmatic/sdk/common/models/POBAdResponse;)V

    invoke-virtual {v0, p1}, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;->updateWinningBid(Lcom/pubmatic/sdk/common/base/POBAdDescriptor;)Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;

    iget-object p1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$c;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;->build()Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->a(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;Lcom/pubmatic/sdk/common/models/POBAdResponse;)Lcom/pubmatic/sdk/common/models/POBAdResponse;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "POBRewardedAd"

    const-string v1, "bidId is invalid in onOpenWrapPartnerWin(), rendering the client-side winning bid"

    invoke-static {v0, v1, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$c;->a()V

    return-void
.end method
