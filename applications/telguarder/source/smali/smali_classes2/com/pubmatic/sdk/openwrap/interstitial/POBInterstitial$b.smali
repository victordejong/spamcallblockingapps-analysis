.class Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/common/base/POBBidderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pubmatic/sdk/common/base/POBBidderListener<",
        "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;


# direct methods
.method private constructor <init>(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$b;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$b;-><init>(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)V

    return-void
.end method


# virtual methods
.method public onBidsFailed(Lcom/pubmatic/sdk/common/base/POBBidding;Lcom/pubmatic/sdk/common/POBError;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/common/base/POBBidding<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;",
            "Lcom/pubmatic/sdk/common/POBError;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBidsFailed : errorMessage= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/pubmatic/sdk/common/POBError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "POBInterstitial"

    invoke-static {v3, v0, v2}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$b;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-interface {p1}, Lcom/pubmatic/sdk/common/base/POBBidding;->getBidderResults()Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;Ljava/util/Map;)Ljava/util/Map;

    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$b;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {p1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->h(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$b;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {p1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->g(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;Lcom/pubmatic/sdk/common/POBError;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$b;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {p1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->i(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/openwrap/core/POBBidEventListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$b;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    sget-object v0, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->BID_FAILED:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    invoke-static {p1, v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;Lcom/pubmatic/sdk/common/POBDataType$POBAdState;)Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/pubmatic/sdk/common/POBError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    const-string v0, "Notifying error through bid event delegate - %s"

    invoke-static {v3, v0, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$b;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {p1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->i(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/openwrap/core/POBBidEventListener;

    move-result-object p1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$b;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-interface {p1, v0, p2}, Lcom/pubmatic/sdk/openwrap/core/POBBidEventListener;->onBidFailed(Lcom/pubmatic/sdk/openwrap/core/POBBidEvent;Lcom/pubmatic/sdk/common/POBError;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$b;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {p1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->t(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEvent;

    move-result-object p1

    instance-of p1, p1, Lcom/pubmatic/sdk/openwrap/interstitial/POBDefaultInterstitialEventHandler;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$b;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {p1, p2}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;Lcom/pubmatic/sdk/common/POBError;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$b;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;Lcom/pubmatic/sdk/openwrap/core/POBBid;)V

    :goto_0
    return-void
.end method

.method public onBidsFetched(Lcom/pubmatic/sdk/common/base/POBBidding;Lcom/pubmatic/sdk/common/models/POBAdResponse;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/common/base/POBBidding<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;",
            "Lcom/pubmatic/sdk/common/models/POBAdResponse<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$b;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->f(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$b;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-interface {p1}, Lcom/pubmatic/sdk/common/base/POBBidding;->getBidderResults()Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;Ljava/util/Map;)Ljava/util/Map;

    invoke-virtual {p2}, Lcom/pubmatic/sdk/common/models/POBAdResponse;->getWinningBid()Lcom/pubmatic/sdk/common/base/POBAdDescriptor;

    move-result-object p1

    check-cast p1, Lcom/pubmatic/sdk/openwrap/core/POBBid;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;

    invoke-direct {p1, p2}, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;-><init>(Lcom/pubmatic/sdk/common/models/POBAdResponse;)V

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;->updateWithRefreshIntervalAndExpiryTimeout(Z)Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$b;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;->build()Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;Lcom/pubmatic/sdk/common/models/POBAdResponse;)Lcom/pubmatic/sdk/common/models/POBAdResponse;

    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$b;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {p1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->s(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/models/POBAdResponse;->getWinningBid()Lcom/pubmatic/sdk/common/base/POBAdDescriptor;

    move-result-object p1

    check-cast p1, Lcom/pubmatic/sdk/openwrap/core/POBBid;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v1, "POBInterstitial"

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getImpressionId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getPrice()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "onBidsFetched : ImpressionId=%s, BidPrice=%s"

    invoke-static {v1, v4, v3}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v3, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$b;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v3}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->h(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)V

    invoke-virtual {p2}, Lcom/pubmatic/sdk/common/models/POBAdResponse;->isSendAllBidsEnabled()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$b;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    new-instance v3, Lcom/pubmatic/sdk/common/POBError;

    const/16 v4, 0xbb9

    const-string v5, "Bid loss due to client side auction."

    invoke-direct {v3, v4, v5}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    iget-object v4, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$b;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v4}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->g(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Ljava/util/Map;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;Lcom/pubmatic/sdk/common/POBError;Ljava/util/Map;)V

    :cond_2
    iget-object p2, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$b;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {p2}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->i(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/openwrap/core/POBBidEventListener;

    move-result-object p2

    if-eqz p2, :cond_4

    new-array p2, v2, [Ljava/lang/Object;

    const-string v3, "Sharing bid through bidEventListener"

    invoke-static {v1, v3, p2}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getStatus()I

    move-result p2

    if-ne p2, v0, :cond_3

    iget-object p2, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$b;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    sget-object v0, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->BID_RECEIVED:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    invoke-static {p2, v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;Lcom/pubmatic/sdk/common/POBDataType$POBAdState;)Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    iget-object p2, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$b;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {p2}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->i(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/openwrap/core/POBBidEventListener;

    move-result-object p2

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$b;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-interface {p2, v0, p1}, Lcom/pubmatic/sdk/openwrap/core/POBBidEventListener;->onBidReceived(Lcom/pubmatic/sdk/openwrap/core/POBBidEvent;Lcom/pubmatic/sdk/openwrap/core/POBBid;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$b;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    sget-object p2, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->BID_FAILED:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    invoke-static {p1, p2}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;Lcom/pubmatic/sdk/common/POBDataType$POBAdState;)Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    new-instance p1, Lcom/pubmatic/sdk/common/POBError;

    const/16 p2, 0x3ea

    const-string v3, "No ads available"

    invoke-direct {p1, p2, v3}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/POBError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v2

    const-string v0, "Notifying error through bid event delegate - %s"

    invoke-static {v1, v0, p2}, Lcom/pubmatic/sdk/common/log/PMLog;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$b;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {p2}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->i(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/openwrap/core/POBBidEventListener;

    move-result-object p2

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$b;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-interface {p2, v0, p1}, Lcom/pubmatic/sdk/openwrap/core/POBBidEventListener;->onBidFailed(Lcom/pubmatic/sdk/openwrap/core/POBBidEvent;Lcom/pubmatic/sdk/common/POBError;)V

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$b;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {p2, p1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;Lcom/pubmatic/sdk/openwrap/core/POBBid;)V

    :cond_5
    :goto_1
    return-void
.end method
