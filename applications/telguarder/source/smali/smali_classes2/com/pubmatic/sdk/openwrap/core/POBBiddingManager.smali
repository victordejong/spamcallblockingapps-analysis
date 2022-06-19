.class public Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;
.super Lcom/pubmatic/sdk/common/base/POBBaseBidder;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/common/base/POBBidderListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pubmatic/sdk/common/base/POBBaseBidder<",
        "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
        ">;",
        "Lcom/pubmatic/sdk/common/base/POBBidderListener<",
        "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pubmatic/sdk/common/base/POBBidding<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pubmatic/sdk/common/base/POBBidding<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/pubmatic/sdk/common/base/POBAuctioning;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pubmatic/sdk/common/base/POBAuctioning<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/pubmatic/sdk/openwrap/core/POBManager;

.field private f:Lcom/pubmatic/sdk/common/base/POBPriceGranuilarityListener;

.field private g:Lcom/pubmatic/sdk/common/models/POBAdResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pubmatic/sdk/common/models/POBAdResponse<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/pubmatic/sdk/common/base/POBBidderResult<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pubmatic/sdk/common/base/POBBidding<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/pubmatic/sdk/common/base/POBBaseBidder;-><init>()V

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->b:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->h:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/common/base/POBBidding;

    invoke-interface {v0, p0}, Lcom/pubmatic/sdk/common/base/POBBidding;->setBidderListener(Lcom/pubmatic/sdk/common/base/POBBidderListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Lcom/pubmatic/sdk/openwrap/core/POBBid;Ljava/util/List;Ljava/util/List;)Lcom/pubmatic/sdk/common/models/POBAdResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            "Ljava/util/List<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;",
            "Ljava/util/List<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;)",
            "Lcom/pubmatic/sdk/common/models/POBAdResponse<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;

    invoke-direct {v1, v0}, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, p1}, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;->setWinningBid(Lcom/pubmatic/sdk/common/base/POBAdDescriptor;)Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;

    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->e:Lcom/pubmatic/sdk/openwrap/core/POBManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBManager;->getAdResponse()Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/models/POBAdResponse;->getRefreshInterval()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;->setRefreshInterval(I)Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/models/POBAdResponse;->getLogger()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;->setLogger(Ljava/lang/String;)Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/models/POBAdResponse;->getTracker()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;->setTracker(Ljava/lang/String;)Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/models/POBAdResponse;->isSendAllBidsEnabled()Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;->setSendAllBidsState(Z)Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;

    :cond_0
    invoke-virtual {v1, p3}, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;->setServerSidePartnerBids(Ljava/util/List;)Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;

    invoke-virtual {v1, p2}, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;->setClientSidePartnerBids(Ljava/util/List;)Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;->build()Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object p1

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->g:Lcom/pubmatic/sdk/common/models/POBAdResponse;

    return-object p1
.end method

.method private a(Lcom/pubmatic/sdk/openwrap/core/POBBid;)Lcom/pubmatic/sdk/openwrap/core/POBBid;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->f:Lcom/pubmatic/sdk/common/base/POBPriceGranuilarityListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/common/base/POBPriceGranuilarityListener;->priceGranularityInfo(Lcom/pubmatic/sdk/common/base/POBAdDescriptor;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->create(Lcom/pubmatic/sdk/openwrap/core/POBBid;Ljava/util/Map;)Lcom/pubmatic/sdk/openwrap/core/POBBid;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private a(Ljava/util/List;Lcom/pubmatic/sdk/openwrap/core/POBBid;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ")",
            "Ljava/util/List<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pubmatic/sdk/openwrap/core/POBBid;

    invoke-virtual {p2, v1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;->BOTH:Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;->PARTNER_SPECIFIC:Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;

    :goto_1
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->create(Lcom/pubmatic/sdk/openwrap/core/POBBid;ZLcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;)Lcom/pubmatic/sdk/openwrap/core/POBBid;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lcom/pubmatic/sdk/common/base/POBBaseBidder;->bidderListener:Lcom/pubmatic/sdk/common/base/POBBidderListener;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/pubmatic/sdk/common/POBError;

    const/16 v2, 0x3ea

    const-string v3, "No Ads available from any bidder"

    invoke-direct {v1, v2, v3}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, p0, v1}, Lcom/pubmatic/sdk/common/base/POBBidderListener;->onBidsFailed(Lcom/pubmatic/sdk/common/base/POBBidding;Lcom/pubmatic/sdk/common/POBError;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/pubmatic/sdk/common/base/POBBidding;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/common/base/POBBidding<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/pubmatic/sdk/common/base/POBBidding;->getBidderResults()Ljava/util/Map;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/pubmatic/sdk/common/base/POBBaseBidder;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/base/POBBaseBidder;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/common/base/POBBidderResult;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/base/POBBidderResult;->getAdResponse()Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->c:Ljava/util/List;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/models/POBAdResponse;->getBids()Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->h:Ljava/util/Map;

    check-cast p1, Lcom/pubmatic/sdk/common/base/POBBaseBidder;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/base/POBBaseBidder;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/pubmatic/sdk/common/base/POBBaseBidder;->bidderListener:Lcom/pubmatic/sdk/common/base/POBBidderListener;

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->e:Lcom/pubmatic/sdk/openwrap/core/POBManager;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBManager;->getAdResponse()Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->e:Lcom/pubmatic/sdk/openwrap/core/POBManager;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBManager;->getAdResponse()Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/pubmatic/sdk/common/models/POBAdResponse;->defaultResponse()Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/models/POBAdResponse;->getBids()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->c:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->d:Lcom/pubmatic/sdk/common/base/POBAuctioning;

    if-eqz v3, :cond_9

    iget-object v5, p0, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->c:Ljava/util/List;

    invoke-interface {v3, v5}, Lcom/pubmatic/sdk/common/base/POBAuctioning;->perform(Ljava/util/List;)Lcom/pubmatic/sdk/common/base/POBAdDescriptor;

    move-result-object v3

    check-cast v3, Lcom/pubmatic/sdk/openwrap/core/POBBid;

    if-eqz v3, :cond_9

    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_1
    invoke-direct {p0, v3}, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->a(Lcom/pubmatic/sdk/openwrap/core/POBBid;)Lcom/pubmatic/sdk/openwrap/core/POBBid;

    move-result-object v5

    sget-object v6, Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;->WINNING:Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/models/POBAdResponse;->isSendAllBidsEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object v6, Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;->BOTH:Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;

    invoke-direct {p0, v1, v3}, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->a(Ljava/util/List;Lcom/pubmatic/sdk/openwrap/core/POBBid;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v3}, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->b(Ljava/util/List;Lcom/pubmatic/sdk/openwrap/core/POBBid;)Ljava/util/List;

    move-result-object v0

    :cond_3
    if-eqz v2, :cond_4

    invoke-static {v5, v4, v6}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->create(Lcom/pubmatic/sdk/openwrap/core/POBBid;ZLcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;)Lcom/pubmatic/sdk/openwrap/core/POBBid;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    move-object v2, v5

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/models/POBAdResponse;->isSendAllBidsEnabled()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pubmatic/sdk/openwrap/core/POBBid;

    invoke-virtual {v3}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->isServerSideAuctionWinner()Z

    move-result v5

    if-eqz v5, :cond_6

    move-object v2, v3

    :cond_7
    if-nez v2, :cond_9

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->c:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_3
    move-object v2, p1

    check-cast v2, Lcom/pubmatic/sdk/openwrap/core/POBBid;

    :cond_9
    :goto_4
    if-eqz v2, :cond_a

    invoke-direct {p0, v2, v1, v0}, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->a(Lcom/pubmatic/sdk/openwrap/core/POBBid;Ljava/util/List;Ljava/util/List;)Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object p1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/base/POBBaseBidder;->bidderListener:Lcom/pubmatic/sdk/common/base/POBBidderListener;

    invoke-interface {v0, p0, p1}, Lcom/pubmatic/sdk/common/base/POBBidderListener;->onBidsFetched(Lcom/pubmatic/sdk/common/base/POBBidding;Lcom/pubmatic/sdk/common/models/POBAdResponse;)V

    goto :goto_5

    :cond_a
    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->a()V

    :goto_5
    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_6

    :cond_b
    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->a()V

    :cond_c
    :goto_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private b(Ljava/util/List;Lcom/pubmatic/sdk/openwrap/core/POBBid;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ")",
            "Ljava/util/List<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->isServerSideAuctionWinner()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/openwrap/core/POBBid;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->isServerSideAuctionWinner()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    sget-object p1, Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;->PARTNER_SPECIFIC:Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->create(Lcom/pubmatic/sdk/openwrap/core/POBBid;ZLcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;)Lcom/pubmatic/sdk/openwrap/core/POBBid;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2

    :cond_2
    return-object p1
.end method

.method public static getNewInstance(Landroid/content/Context;Lcom/pubmatic/sdk/common/base/POBBiddingPartnerService;Lcom/pubmatic/sdk/openwrap/core/POBRequest;Ljava/util/Map;)Lcom/pubmatic/sdk/common/base/POBBidding;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/pubmatic/sdk/common/base/POBBiddingPartnerService<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;",
            "Lcom/pubmatic/sdk/openwrap/core/POBRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/pubmatic/sdk/common/models/POBPartnerInfo;",
            ">;)",
            "Lcom/pubmatic/sdk/common/base/POBBidding<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/pubmatic/sdk/openwrap/core/POBManager;

    invoke-direct {v1, p2, p0}, Lcom/pubmatic/sdk/openwrap/core/POBManager;-><init>(Lcom/pubmatic/sdk/openwrap/core/POBRequest;Landroid/content/Context;)V

    const-string v2, "OpenWrap"

    invoke-virtual {v1, v2}, Lcom/pubmatic/sdk/common/base/POBBaseBidder;->setIdentifier(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;

    if-eqz v2, :cond_0

    invoke-interface {p1, p0, p2, v2}, Lcom/pubmatic/sdk/common/base/POBBiddingPartnerService;->getBidder(Landroid/content/Context;Lcom/pubmatic/sdk/common/base/POBAdRequest;Lcom/pubmatic/sdk/common/models/POBPartnerInfo;)Lcom/pubmatic/sdk/common/base/POBBidding;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p2, "POBBiddingManager"

    const-string p3, "Slot details are not available."

    invoke-static {p2, p3, p0}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    new-instance p0, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->e:Lcom/pubmatic/sdk/openwrap/core/POBManager;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/pubmatic/sdk/common/base/POBBiddingPartnerService;->getAuction()Lcom/pubmatic/sdk/common/base/POBAuctioning;

    move-result-object p2

    iput-object p2, p0, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->d:Lcom/pubmatic/sdk/common/base/POBAuctioning;

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->f:Lcom/pubmatic/sdk/common/base/POBPriceGranuilarityListener;

    :cond_3
    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->d:Lcom/pubmatic/sdk/common/base/POBAuctioning;

    if-nez p1, :cond_4

    new-instance p1, Lcom/pubmatic/sdk/openwrap/core/POBPriceBaseAuctioning;

    invoke-direct {p1}, Lcom/pubmatic/sdk/openwrap/core/POBPriceBaseAuctioning;-><init>()V

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->d:Lcom/pubmatic/sdk/common/base/POBAuctioning;

    :cond_4
    return-object p0
.end method

.method public static getWinningBid(Lcom/pubmatic/sdk/common/models/POBAdResponse;)Lcom/pubmatic/sdk/openwrap/core/POBBid;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/common/models/POBAdResponse<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;)",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/pubmatic/sdk/common/models/POBAdResponse;->getWinningBid()Lcom/pubmatic/sdk/common/base/POBAdDescriptor;

    move-result-object p0

    check-cast p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pubmatic/sdk/common/base/POBBidding;

    invoke-interface {v1}, Lcom/pubmatic/sdk/common/base/POBBidding;->destroy()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAdResponse()Lcom/pubmatic/sdk/common/models/POBAdResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/pubmatic/sdk/common/models/POBAdResponse<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->g:Lcom/pubmatic/sdk/common/models/POBAdResponse;

    return-object v0
.end method

.method public getBidderResults()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/pubmatic/sdk/common/base/POBBidderResult<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->h:Ljava/util/Map;

    return-object v0
.end method

.method public onBidsFailed(Lcom/pubmatic/sdk/common/base/POBBidding;Lcom/pubmatic/sdk/common/POBError;)V
    .locals 0
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

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->a(Lcom/pubmatic/sdk/common/base/POBBidding;)V

    return-void
.end method

.method public onBidsFetched(Lcom/pubmatic/sdk/common/base/POBBidding;Lcom/pubmatic/sdk/common/models/POBAdResponse;)V
    .locals 0
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

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->a(Lcom/pubmatic/sdk/common/base/POBBidding;)V

    return-void
.end method

.method public requestBid()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pubmatic/sdk/common/base/POBBidding;

    invoke-interface {v2}, Lcom/pubmatic/sdk/common/base/POBBidding;->requestBid()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
