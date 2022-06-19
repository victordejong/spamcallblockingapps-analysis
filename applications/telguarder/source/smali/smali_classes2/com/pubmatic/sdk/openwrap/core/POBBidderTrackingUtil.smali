.class public Lcom/pubmatic/sdk/openwrap/core/POBBidderTrackingUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final AD_SERVER_AUCTION_LOST_MSG:Ljava/lang/String; = "Bid loss due to server side auction."

.field public static final AD_SERVER_NOTIFICATION_FAILURE_LOST_MSG:Ljava/lang/String; = "Ad server notified failure."

.field public static final CLIENT_SIDE_AUCTION_LOST_MSG:Ljava/lang/String; = "Bid loss due to client side auction."


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/pubmatic/sdk/common/network/POBNetworkHandler;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Lcom/pubmatic/sdk/common/POBError;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/common/network/POBNetworkHandler;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/pubmatic/sdk/common/models/POBPartnerInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/pubmatic/sdk/common/POBError;",
            ")V"
        }
    .end annotation

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getPartnerServices()Lcom/pubmatic/sdk/common/base/POBBiddingPartnerService;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-interface {p3, p2, p1, p0}, Lcom/pubmatic/sdk/common/base/POBBiddingPartnerService;->getTrackerHandler(Ljava/util/List;Lcom/pubmatic/sdk/common/models/POBPartnerInfo;Lcom/pubmatic/sdk/common/network/POBNetworkHandler;)Lcom/pubmatic/sdk/common/network/POBTrackerHandling;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p4}, Lcom/pubmatic/sdk/common/network/POBTrackerHandling;->executeLossTracker(Lcom/pubmatic/sdk/common/POBError;)V

    :cond_0
    return-void
.end method

.method public static notifyBidderBidWin(Lcom/pubmatic/sdk/common/network/POBNetworkHandler;Lcom/pubmatic/sdk/openwrap/core/POBBid;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/common/network/POBNetworkHandler;",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/pubmatic/sdk/common/models/POBPartnerInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getPartnerServices()Lcom/pubmatic/sdk/common/base/POBBiddingPartnerService;

    move-result-object v0

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getPartnerId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;

    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1, p2, p0}, Lcom/pubmatic/sdk/common/base/POBBiddingPartnerService;->getTrackerHandler(Ljava/util/List;Lcom/pubmatic/sdk/common/models/POBPartnerInfo;Lcom/pubmatic/sdk/common/network/POBNetworkHandler;)Lcom/pubmatic/sdk/common/network/POBTrackerHandling;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/pubmatic/sdk/common/network/POBTrackerHandling;->executeWinTrackers()V

    :cond_0
    return-void
.end method

.method public static notifyBidderLoss(Lcom/pubmatic/sdk/common/network/POBNetworkHandler;Ljava/util/Map;Lcom/pubmatic/sdk/openwrap/core/POBBid;Lcom/pubmatic/sdk/common/POBError;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/common/network/POBNetworkHandler;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/pubmatic/sdk/common/models/POBPartnerInfo;",
            ">;",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            "Lcom/pubmatic/sdk/common/POBError;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getPartnerId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, v0, p2, p3}, Lcom/pubmatic/sdk/openwrap/core/POBBidderTrackingUtil;->a(Lcom/pubmatic/sdk/common/network/POBNetworkHandler;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Lcom/pubmatic/sdk/common/POBError;)V

    return-void
.end method

.method public static notifyBidderLossWithError(Lcom/pubmatic/sdk/common/network/POBNetworkHandler;Lcom/pubmatic/sdk/openwrap/core/POBBid;Ljava/util/Map;Ljava/lang/String;Lcom/pubmatic/sdk/common/POBError;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/common/network/POBNetworkHandler;",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/pubmatic/sdk/common/models/POBPartnerInfo;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/pubmatic/sdk/common/POBError;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/pubmatic/sdk/common/base/POBBidderResult<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;>;)V"
        }
    .end annotation

    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pubmatic/sdk/common/base/POBBidderResult;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/base/POBBidderResult;->getError()Lcom/pubmatic/sdk/common/POBError;

    move-result-object v4

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/base/POBBidderResult;->getAdResponse()Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/models/POBAdResponse;->getBids()Ljava/util/List;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v4, v3

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_5

    :cond_4
    if-eqz v4, :cond_0

    :cond_5
    if-nez v4, :cond_6

    move-object v4, p4

    :cond_6
    const-string v1, "AUCTION_ID"

    invoke-virtual {v4, v1, p3}, Lcom/pubmatic/sdk/common/POBError;->addExtraInfo(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getPrice()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v5, "AUCTION_PRICE"

    invoke-virtual {v4, v5, v1}, Lcom/pubmatic/sdk/common/POBError;->addExtraInfo(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    if-eqz p2, :cond_0

    if-eqz v3, :cond_0

    invoke-static {p0, p2, v3, v2, v4}, Lcom/pubmatic/sdk/openwrap/core/POBBidderTrackingUtil;->a(Lcom/pubmatic/sdk/common/network/POBNetworkHandler;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Lcom/pubmatic/sdk/common/POBError;)V

    goto :goto_0

    :cond_8
    invoke-interface {p5}, Ljava/util/Map;->clear()V

    return-void
.end method
