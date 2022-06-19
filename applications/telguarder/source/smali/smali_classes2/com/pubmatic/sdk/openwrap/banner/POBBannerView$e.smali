.class Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/common/base/POBBidderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
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
.field final synthetic a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;


# direct methods
.method private constructor <init>(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$e;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$e;-><init>(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)V

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

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$e;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->d(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    move-result-object v0

    const-string v1, "POBBannerView"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBidsFailed : errorMessage= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/pubmatic/sdk/common/POBError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$e;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-interface {p1}, Lcom/pubmatic/sdk/common/base/POBBidding;->getBidderResults()Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->a(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;Ljava/util/Map;)Ljava/util/Map;

    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$e;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {p1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->j(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$e;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {p1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->e(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->a(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;Lcom/pubmatic/sdk/common/POBError;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$e;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {p1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->k(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)Lcom/pubmatic/sdk/openwrap/core/POBBidEventListener;

    move-result-object p1

    if-eqz p1, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "Sharing bid through bidEventListener"

    invoke-static {v1, v0, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$e;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    sget-object v0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$b;->c:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$b;

    invoke-static {p1, v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->a(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$b;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$e;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {p1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->k(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)Lcom/pubmatic/sdk/openwrap/core/POBBidEventListener;

    move-result-object p1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$e;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-interface {p1, v0, p2}, Lcom/pubmatic/sdk/openwrap/core/POBBidEventListener;->onBidFailed(Lcom/pubmatic/sdk/openwrap/core/POBBidEvent;Lcom/pubmatic/sdk/common/POBError;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$e;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {p1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->r(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)Lcom/pubmatic/sdk/openwrap/banner/POBBannerEvent;

    move-result-object p1

    instance-of p1, p1, Lcom/pubmatic/sdk/openwrap/banner/POBDefaultBannerEventHandler;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$e;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {p1, p2}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->a(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;Lcom/pubmatic/sdk/common/POBError;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$e;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->a(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;Lcom/pubmatic/sdk/openwrap/core/POBBid;)V

    goto :goto_0

    :cond_2
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "Unable to notify bid event as request is null"

    invoke-static {v1, p2, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

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

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$e;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->d(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    move-result-object v0

    const-string v1, "POBBannerView"

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$e;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-interface {p1}, Lcom/pubmatic/sdk/common/base/POBBidding;->getBidderResults()Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->a(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;Ljava/util/Map;)Ljava/util/Map;

    invoke-virtual {p2}, Lcom/pubmatic/sdk/common/models/POBAdResponse;->getWinningBid()Lcom/pubmatic/sdk/common/base/POBAdDescriptor;

    move-result-object p1

    check-cast p1, Lcom/pubmatic/sdk/openwrap/core/POBBid;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;

    invoke-direct {p1, p2}, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;-><init>(Lcom/pubmatic/sdk/common/models/POBAdResponse;)V

    invoke-virtual {p1, v2}, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;->updateWithRefreshIntervalAndExpiryTimeout(Z)Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$e;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;->build()Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->a(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;Lcom/pubmatic/sdk/common/models/POBAdResponse;)Lcom/pubmatic/sdk/common/models/POBAdResponse;

    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$e;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {p1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->q(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/models/POBAdResponse;->getWinningBid()Lcom/pubmatic/sdk/common/base/POBAdDescriptor;

    move-result-object p1

    check-cast p1, Lcom/pubmatic/sdk/openwrap/core/POBBid;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$e;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->j(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)V

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBidsFetched : ImpressionId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getImpressionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", BidPrice="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getPrice()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p2}, Lcom/pubmatic/sdk/common/models/POBAdResponse;->isSendAllBidsEnabled()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$e;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    new-instance v0, Lcom/pubmatic/sdk/common/POBError;

    const/16 v3, 0xbb9

    const-string v4, "Bid loss due to client side auction."

    invoke-direct {v0, v3, v4}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$e;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {v3}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->e(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)Ljava/util/Map;

    move-result-object v3

    invoke-static {p2, v0, v3}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->a(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;Lcom/pubmatic/sdk/common/POBError;Ljava/util/Map;)V

    :cond_2
    iget-object p2, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$e;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {p2}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->k(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)Lcom/pubmatic/sdk/openwrap/core/POBBidEventListener;

    move-result-object p2

    if-eqz p2, :cond_4

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "Sharing bid through bidEventListener"

    invoke-static {v1, v0, p2}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$e;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    sget-object v0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$b;->c:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$b;

    invoke-static {p2, v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->a(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$b;)V

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getStatus()I

    move-result v0

    if-ne v0, p2, :cond_3

    iget-object p2, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$e;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {p2}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->k(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)Lcom/pubmatic/sdk/openwrap/core/POBBidEventListener;

    move-result-object p2

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$e;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-interface {p2, v0, p1}, Lcom/pubmatic/sdk/openwrap/core/POBBidEventListener;->onBidReceived(Lcom/pubmatic/sdk/openwrap/core/POBBidEvent;Lcom/pubmatic/sdk/openwrap/core/POBBid;)V

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/pubmatic/sdk/common/POBError;

    const/16 v0, 0x3ea

    const-string v3, "No ads available"

    invoke-direct {p1, v0, v3}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/POBError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v2

    const-string v0, "Notifying error through bid event delegate - %s"

    invoke-static {v1, v0, p2}, Lcom/pubmatic/sdk/common/log/PMLog;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$e;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {p2}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->k(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)Lcom/pubmatic/sdk/openwrap/core/POBBidEventListener;

    move-result-object p2

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$e;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-interface {p2, v0, p1}, Lcom/pubmatic/sdk/openwrap/core/POBBidEventListener;->onBidFailed(Lcom/pubmatic/sdk/openwrap/core/POBBidEvent;Lcom/pubmatic/sdk/common/POBError;)V

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$e;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {p2, p1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->a(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;Lcom/pubmatic/sdk/openwrap/core/POBBid;)V

    goto :goto_1

    :cond_5
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "Unable to notify bid event as request is null"

    invoke-static {v1, p2, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
