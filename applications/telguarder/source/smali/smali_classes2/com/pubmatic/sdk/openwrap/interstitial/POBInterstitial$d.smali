.class Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/common/ui/POBInterstitialRendererListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;


# direct methods
.method private constructor <init>(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$d;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$d;-><init>(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$d;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$d;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->t(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBaseEvent;->trackClick()V

    return-void
.end method

.method public onAdExpired()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$d;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->e(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)V

    return-void
.end method

.method public onAdInteractionStarted()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$d;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->b(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$d;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->s(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->getWinningBid(Lcom/pubmatic/sdk/common/models/POBAdResponse;)Lcom/pubmatic/sdk/openwrap/core/POBBid;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$d;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->t(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBaseEvent;->trackImpression()V

    :cond_0
    return-void
.end method

.method public onAdInteractionStopped()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$d;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->c(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)V

    return-void
.end method

.method public onAdRender(Lcom/pubmatic/sdk/common/base/POBAdDescriptor;)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " : ******** onAdRender() ********"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "POBInterstitial"

    invoke-static {v1, p1, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$d;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {p1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->r(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$d;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {p1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->s(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object p1

    invoke-static {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->getWinningBid(Lcom/pubmatic/sdk/common/models/POBAdResponse;)Lcom/pubmatic/sdk/openwrap/core/POBBid;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->isVideo()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$d;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {p1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->t(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEvent;

    move-result-object p1

    invoke-interface {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBaseEvent;->trackImpression()V

    :cond_0
    return-void
.end method

.method public onAdRenderingFailed(Lcom/pubmatic/sdk/common/POBError;)V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$d;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->s(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->getWinningBid(Lcom/pubmatic/sdk/common/models/POBAdResponse;)Lcom/pubmatic/sdk/openwrap/core/POBBid;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$d;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v1, v0, p1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;Lcom/pubmatic/sdk/openwrap/core/POBBid;Lcom/pubmatic/sdk/common/POBError;)V

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$d;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v0, p1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;Lcom/pubmatic/sdk/common/POBError;)V

    return-void
.end method

.method public onAdUnload()V
    .locals 0

    return-void
.end method

.method public onLeavingApplication()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$d;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->d(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$d;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->t(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBaseEvent;->trackClick()V

    return-void
.end method

.method public onReadyToExecuteTrackers()V
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$d;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->s(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->getWinningBid(Lcom/pubmatic/sdk/common/models/POBAdResponse;)Lcom/pubmatic/sdk/openwrap/core/POBBid;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$d;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->n(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$d;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->s(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$d;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->f(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$d;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->g(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$d;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->n(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getPartnerId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$d;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->f(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;Lcom/pubmatic/sdk/openwrap/core/POBRequest;)Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;

    move-result-object v1

    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$d;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v2}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->s(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;->executeTracker(Lcom/pubmatic/sdk/common/models/POBAdResponse;Lcom/pubmatic/sdk/common/models/POBPartnerInfo;)V

    :cond_0
    return-void
.end method
