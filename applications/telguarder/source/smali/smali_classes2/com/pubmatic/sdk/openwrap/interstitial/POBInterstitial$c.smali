.class Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;


# direct methods
.method private constructor <init>(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;-><init>(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)V

    return-void
.end method

.method private a()V
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "POBInterstitial"

    const-string v2, "PartnerBidWin"

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->s(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->getWinningBid(Lcom/pubmatic/sdk/common/models/POBAdResponse;)Lcom/pubmatic/sdk/openwrap/core/POBBid;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->setHasWon(Z)V

    invoke-virtual {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->hasWon()Z

    move-result v1

    invoke-virtual {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getPartnerName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pubmatic/sdk/common/utility/POBUtils;->logBidWinningStatus(ZLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getPartnerName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v2}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->t(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEvent;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEvent;->getRenderer(Ljava/lang/String;)Lcom/pubmatic/sdk/common/ui/POBInterstitialRendering;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;Lcom/pubmatic/sdk/common/ui/POBInterstitialRendering;)Lcom/pubmatic/sdk/common/ui/POBInterstitialRendering;

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->k(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/common/ui/POBInterstitialRendering;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getPartnerServices()Lcom/pubmatic/sdk/common/base/POBBiddingPartnerService;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v2}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->n(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v2}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->n(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getPartnerId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v3}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->l(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Landroid/content/Context;

    move-result-object v4

    invoke-interface {v1, v4, v2}, Lcom/pubmatic/sdk/common/base/POBBiddingPartnerService;->getInterstitialRenderer(Landroid/content/Context;Lcom/pubmatic/sdk/common/models/POBPartnerInfo;)Lcom/pubmatic/sdk/common/ui/POBInterstitialRendering;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;Lcom/pubmatic/sdk/common/ui/POBInterstitialRendering;)Lcom/pubmatic/sdk/common/ui/POBInterstitialRendering;

    :cond_0
    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->k(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/common/ui/POBInterstitialRendering;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v1, v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->b(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;Lcom/pubmatic/sdk/openwrap/core/POBBid;)Lcom/pubmatic/sdk/common/ui/POBInterstitialRendering;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;Lcom/pubmatic/sdk/common/ui/POBInterstitialRendering;)Lcom/pubmatic/sdk/common/ui/POBInterstitialRendering;

    :cond_1
    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->k(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/common/ui/POBInterstitialRendering;

    move-result-object v1

    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v2}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->m(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/common/ui/POBInterstitialRendererListener;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/pubmatic/sdk/common/ui/POBInterstitialRendering;->setAdRendererListener(Lcom/pubmatic/sdk/common/ui/POBInterstitialRendererListener;)V

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->k(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/common/ui/POBInterstitialRendering;

    move-result-object v1

    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v2}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->o(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/common/ui/POBVideoAdEventListener;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/pubmatic/sdk/common/ui/POBInterstitialRendering;->setVideoAdEventListener(Lcom/pubmatic/sdk/common/ui/POBVideoAdEventListener;)V

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->k(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/common/ui/POBInterstitialRendering;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/pubmatic/sdk/common/ui/POBInterstitialRendering;->renderAd(Lcom/pubmatic/sdk/common/base/POBAdDescriptor;)V

    :cond_2
    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->s(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->s(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/models/POBAdResponse;->isSendAllBidsEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->g(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    new-instance v1, Lcom/pubmatic/sdk/common/POBError;

    const/16 v2, 0xbba

    const-string v3, "Bid loss due to server side auction."

    invoke-direct {v1, v2, v3}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v2}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->g(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;Lcom/pubmatic/sdk/common/POBError;Ljava/util/Map;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public getBidsProvider()Lcom/pubmatic/sdk/common/base/POBBidsProvider;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->s(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object v0

    return-object v0
.end method

.method public getCustomData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->j(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public onAdClick()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)V

    return-void
.end method

.method public onAdClosed()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->c(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)V

    return-void
.end method

.method public onAdLeftApplication()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->d(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)V

    return-void
.end method

.method public onAdOpened()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->b(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)V

    return-void
.end method

.method public onAdServerWin()V
    .locals 3

    new-instance v0, Lcom/pubmatic/sdk/common/POBError;

    const/16 v1, 0xbba

    const-string v2, "Bid loss due to server side auction."

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->s(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->s(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/models/POBAdResponse;->isSendAllBidsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->g(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->g(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;Lcom/pubmatic/sdk/common/POBError;Ljava/util/Map;)V

    :cond_0
    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->s(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object v1

    invoke-static {v1}, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->getWinningBid(Lcom/pubmatic/sdk/common/models/POBAdResponse;)Lcom/pubmatic/sdk/openwrap/core/POBBid;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v2, v1, v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;Lcom/pubmatic/sdk/openwrap/core/POBBid;Lcom/pubmatic/sdk/common/POBError;)V

    invoke-virtual {v1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->hasWon()Z

    move-result v0

    invoke-virtual {v1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getPartnerName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/common/utility/POBUtils;->logBidWinningStatus(ZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "POBInterstitial"

    const-string v2, "AdServerWin"

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    sget-object v1, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->AD_SERVER_READY:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;Lcom/pubmatic/sdk/common/POBDataType$POBAdState;)Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->r(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)V

    return-void
.end method

.method public onFailed(Lcom/pubmatic/sdk/common/POBError;)V
    .locals 3

    new-instance v0, Lcom/pubmatic/sdk/common/POBError;

    const/16 v1, 0x3f2

    const-string v2, "Ad server notified failure."

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->s(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->s(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/models/POBAdResponse;->isSendAllBidsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->g(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->g(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;Lcom/pubmatic/sdk/common/POBError;Ljava/util/Map;)V

    :cond_0
    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->s(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object v1

    invoke-static {v1}, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->getWinningBid(Lcom/pubmatic/sdk/common/models/POBAdResponse;)Lcom/pubmatic/sdk/openwrap/core/POBBid;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v2, v1, v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;Lcom/pubmatic/sdk/openwrap/core/POBBid;Lcom/pubmatic/sdk/common/POBError;)V

    :cond_1
    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v0, p1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;Lcom/pubmatic/sdk/common/POBError;)V

    return-void
.end method

.method public onOpenWrapPartnerWin()V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;->a()V

    return-void
.end method

.method public onOpenWrapPartnerWin(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->s(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->s(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pubmatic/sdk/common/models/POBAdResponse;->getBid(Ljava/lang/String;)Lcom/pubmatic/sdk/common/base/POBAdDescriptor;

    move-result-object p1

    check-cast p1, Lcom/pubmatic/sdk/openwrap/core/POBBid;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->s(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;-><init>(Lcom/pubmatic/sdk/common/models/POBAdResponse;)V

    invoke-virtual {v0, p1}, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;->updateWinningBid(Lcom/pubmatic/sdk/common/base/POBAdDescriptor;)Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;->build()Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;Lcom/pubmatic/sdk/common/models/POBAdResponse;)Lcom/pubmatic/sdk/common/models/POBAdResponse;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "POBInterstitial"

    const-string v1, "bidId is invalid in onOpenWrapPartnerWin(), rendering the client-side winning bid"

    invoke-static {v0, v1, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;->a()V

    return-void
.end method
