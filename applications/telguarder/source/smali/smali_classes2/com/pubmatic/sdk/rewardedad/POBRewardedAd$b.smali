.class Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/common/base/POBBidderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;
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
.field final synthetic a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;


# direct methods
.method private constructor <init>(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$b;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$b;-><init>(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)V

    return-void
.end method


# virtual methods
.method public onBidsFailed(Lcom/pubmatic/sdk/common/base/POBBidding;Lcom/pubmatic/sdk/common/POBError;)V
    .locals 3
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

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/pubmatic/sdk/common/POBError;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "POBRewardedAd"

    const-string v2, "onBidsFailed : errorMessage= %s"

    invoke-static {v0, v2, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$b;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-static {p1}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->d(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)Lcom/pubmatic/sdk/openwrap/core/POBBidEventListener;

    move-result-object p1

    if-eqz p1, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "Sharing bid through bidEventListener"

    invoke-static {v0, v1, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$b;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    sget-object v0, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->BID_FAILED:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    invoke-static {p1, v0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->a(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;Lcom/pubmatic/sdk/common/POBDataType$POBAdState;)Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    iget-object p1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$b;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-static {p1}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->d(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)Lcom/pubmatic/sdk/openwrap/core/POBBidEventListener;

    move-result-object p1

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$b;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-interface {p1, v0, p2}, Lcom/pubmatic/sdk/openwrap/core/POBBidEventListener;->onBidFailed(Lcom/pubmatic/sdk/openwrap/core/POBBidEvent;Lcom/pubmatic/sdk/common/POBError;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$b;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-static {p1}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->i(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)Lcom/pubmatic/sdk/rewardedad/POBRewardedAdEvent;

    move-result-object p1

    instance-of p1, p1, Lcom/pubmatic/sdk/rewardedad/POBDefaultRewardedAdEventHandler;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$b;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-static {p1, p2}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->a(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;Lcom/pubmatic/sdk/common/POBError;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$b;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->a(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;Lcom/pubmatic/sdk/openwrap/core/POBBid;)V

    :goto_0
    return-void
.end method

.method public onBidsFetched(Lcom/pubmatic/sdk/common/base/POBBidding;Lcom/pubmatic/sdk/common/models/POBAdResponse;)V
    .locals 5
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

    iget-object p1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$b;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-static {p1}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->c(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lcom/pubmatic/sdk/common/models/POBAdResponse;->getWinningBid()Lcom/pubmatic/sdk/common/base/POBAdDescriptor;

    move-result-object p1

    check-cast p1, Lcom/pubmatic/sdk/openwrap/core/POBBid;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->isVideo()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;

    invoke-direct {p1, p2}, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;-><init>(Lcom/pubmatic/sdk/common/models/POBAdResponse;)V

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;->updateWithRefreshIntervalAndExpiryTimeout(Z)Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;

    iget-object p2, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$b;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;->build()Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->a(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;Lcom/pubmatic/sdk/common/models/POBAdResponse;)Lcom/pubmatic/sdk/common/models/POBAdResponse;

    iget-object p1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$b;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-static {p1}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->g(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/models/POBAdResponse;->getWinningBid()Lcom/pubmatic/sdk/common/base/POBAdDescriptor;

    move-result-object p1

    check-cast p1, Lcom/pubmatic/sdk/openwrap/core/POBBid;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "POBRewardedAd"

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getImpressionId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getPrice()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v3, "onBidsFetched : ImpressionId=%s, BidPrice=%s"

    invoke-static {p2, v3, v2}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v2, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$b;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-static {v2}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->d(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)Lcom/pubmatic/sdk/openwrap/core/POBBidEventListener;

    move-result-object v2

    if-eqz v2, :cond_3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Sharing bid through bidEventListener"

    invoke-static {p2, v2, v1}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getStatus()I

    move-result p2

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$b;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    sget-object v0, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->BID_RECEIVED:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    invoke-static {p2, v0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->a(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;Lcom/pubmatic/sdk/common/POBDataType$POBAdState;)Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    iget-object p2, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$b;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-static {p2}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->d(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)Lcom/pubmatic/sdk/openwrap/core/POBBidEventListener;

    move-result-object p2

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$b;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-interface {p2, v0, p1}, Lcom/pubmatic/sdk/openwrap/core/POBBidEventListener;->onBidReceived(Lcom/pubmatic/sdk/openwrap/core/POBBidEvent;Lcom/pubmatic/sdk/openwrap/core/POBBid;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$b;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    sget-object p2, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->BID_FAILED:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    invoke-static {p1, p2}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->a(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;Lcom/pubmatic/sdk/common/POBDataType$POBAdState;)Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    iget-object p1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$b;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-static {p1}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->d(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)Lcom/pubmatic/sdk/openwrap/core/POBBidEventListener;

    move-result-object p1

    iget-object p2, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$b;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    new-instance v0, Lcom/pubmatic/sdk/common/POBError;

    const/16 v1, 0x3ea

    const-string v2, "No ads available"

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p2, v0}, Lcom/pubmatic/sdk/openwrap/core/POBBidEventListener;->onBidFailed(Lcom/pubmatic/sdk/openwrap/core/POBBidEvent;Lcom/pubmatic/sdk/common/POBError;)V

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$b;->a:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;

    invoke-static {p2, p1}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->a(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;Lcom/pubmatic/sdk/openwrap/core/POBBid;)V

    :cond_4
    :goto_1
    return-void
.end method
