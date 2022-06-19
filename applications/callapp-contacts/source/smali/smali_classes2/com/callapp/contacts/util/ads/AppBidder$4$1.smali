.class Lcom/callapp/contacts/util/ads/AppBidder$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/ads/AppBidder$BidListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/AppBidder$4;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Lcom/callapp/contacts/util/ads/bidder/PostBidder;

.field final synthetic e:Lcom/callapp/contacts/util/ads/AppBidder$4;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/AppBidder$4;Ljava/lang/String;Ljava/lang/String;JLcom/callapp/contacts/util/ads/bidder/PostBidder;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$4$1;->e:Lcom/callapp/contacts/util/ads/AppBidder$4;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/AppBidder$4$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/callapp/contacts/util/ads/AppBidder$4$1;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/callapp/contacts/util/ads/AppBidder$4$1;->c:J

    iput-object p6, p0, Lcom/callapp/contacts/util/ads/AppBidder$4$1;->d:Lcom/callapp/contacts/util/ads/bidder/PostBidder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(D)V
    .locals 10

    .line 595
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 596
    sget-boolean v2, Lcom/callapp/contacts/util/ads/AppBidder;->f:Z

    if-eqz v2, :cond_0

    .line 597
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v3

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/AppBidder$4$1;->e:Lcom/callapp/contacts/util/ads/AppBidder$4;

    iget-object v2, v2, Lcom/callapp/contacts/util/ads/AppBidder$4;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/AppBidder;->b(Lcom/callapp/contacts/util/ads/AppBidder;)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    const/16 v2, 0xc

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "ad_network"

    aput-object v4, v9, v2

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/callapp/contacts/util/ads/AppBidder$4$1;->e:Lcom/callapp/contacts/util/ads/AppBidder$4;

    iget-object v4, v4, Lcom/callapp/contacts/util/ads/AppBidder$4;->a:Lcom/callapp/contacts/util/ads/JSONPostBidder;

    .line 598
    invoke-virtual {v4}, Lcom/callapp/contacts/util/ads/JSONPostBidder;->getClassname()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v2

    const/4 v2, 0x2

    const-string v4, "placement"

    aput-object v4, v9, v2

    const/4 v2, 0x3

    iget-object v4, p0, Lcom/callapp/contacts/util/ads/AppBidder$4$1;->a:Ljava/lang/String;

    aput-object v4, v9, v2

    const/4 v2, 0x4

    const-string v4, "adType"

    aput-object v4, v9, v2

    const/4 v2, 0x5

    iget-object v4, p0, Lcom/callapp/contacts/util/ads/AppBidder$4$1;->b:Ljava/lang/String;

    aput-object v4, v9, v2

    const/4 v2, 0x6

    const-string v4, "fill"

    aput-object v4, v9, v2

    const/4 v2, 0x7

    const-string v4, "true"

    aput-object v4, v9, v2

    const/16 v2, 0x8

    const-string v4, "price"

    aput-object v4, v9, v2

    const/16 v2, 0x9

    .line 602
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v2

    const/16 v2, 0xa

    const-string v4, "duration"

    aput-object v4, v9, v2

    const/16 v2, 0xb

    iget-wide v4, p0, Lcom/callapp/contacts/util/ads/AppBidder$4$1;->c:J

    sub-long/2addr v0, v4

    .line 603
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v2

    const-string v4, "Ad"

    const-string v5, "post_bid_flow_ended"

    .line 597
    invoke-virtual/range {v3 .. v9}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$4$1;->e:Lcom/callapp/contacts/util/ads/AppBidder$4;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AppBidder$4;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/AppBidder;->h(Lcom/callapp/contacts/util/ads/AppBidder;)D

    move-result-wide v0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_1

    .line 607
    new-instance v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    invoke-direct {v0}, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;-><init>()V

    .line 608
    iput-wide p1, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->price:D

    .line 609
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$4$1;->d:Lcom/callapp/contacts/util/ads/bidder/PostBidder;

    iput-object p1, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->bidder:Lcom/callapp/contacts/util/ads/bidder/Bidder;

    .line 610
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$4$1;->e:Lcom/callapp/contacts/util/ads/AppBidder$4;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AppBidder$4;->a:Lcom/callapp/contacts/util/ads/JSONPostBidder;

    invoke-virtual {p1}, Lcom/callapp/contacts/util/ads/JSONPostBidder;->isCallappDisableRefresh()Z

    move-result p1

    iput-boolean p1, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->disableRefresh:Z

    .line 612
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$4$1;->e:Lcom/callapp/contacts/util/ads/AppBidder$4;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AppBidder$4;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/AppBidder;->b(Lcom/callapp/contacts/util/ads/AppBidder;)Ljava/lang/String;

    move-result-object p1

    iget-wide v1, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->price:D

    invoke-static {p1, v1, v2}, Lcom/mopub/common/CallAppBidderManager;->updatePriceIfNeeded(Ljava/lang/String;D)V

    .line 614
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$4$1;->e:Lcom/callapp/contacts/util/ads/AppBidder$4;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AppBidder$4;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    iget-object p2, p0, Lcom/callapp/contacts/util/ads/AppBidder$4$1;->e:Lcom/callapp/contacts/util/ads/AppBidder$4;

    iget-object p2, p2, Lcom/callapp/contacts/util/ads/AppBidder$4;->a:Lcom/callapp/contacts/util/ads/JSONPostBidder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loaded, price: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->price:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/AppBidder;Lcom/callapp/contacts/util/ads/JSONPostBidder;Ljava/lang/String;)V

    .line 615
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$4$1;->e:Lcom/callapp/contacts/util/ads/AppBidder$4;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AppBidder$4;->d:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object p2, p0, Lcom/callapp/contacts/util/ads/AppBidder$4$1;->e:Lcom/callapp/contacts/util/ads/AppBidder$4;

    iget-object p2, p2, Lcom/callapp/contacts/util/ads/AppBidder$4;->a:Lcom/callapp/contacts/util/ads/JSONPostBidder;

    invoke-virtual {p2}, Lcom/callapp/contacts/util/ads/JSONPostBidder;->getIndex()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 617
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$4$1;->e:Lcom/callapp/contacts/util/ads/AppBidder$4;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AppBidder$4;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/AppBidder$4$1;->e:Lcom/callapp/contacts/util/ads/AppBidder$4;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/AppBidder$4;->a:Lcom/callapp/contacts/util/ads/JSONPostBidder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failed, price is lower than price to beat: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$4$1;->e:Lcom/callapp/contacts/util/ads/AppBidder$4;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AppBidder$4;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/AppBidder;->h(Lcom/callapp/contacts/util/ads/AppBidder;)D

    move-result-wide p1

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/AppBidder;Lcom/callapp/contacts/util/ads/JSONPostBidder;Ljava/lang/String;)V

    .line 619
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$4$1;->e:Lcom/callapp/contacts/util/ads/AppBidder$4;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AppBidder$4;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/AppBidder;->g(Lcom/callapp/contacts/util/ads/AppBidder;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 11

    .line 624
    sget-boolean v0, Lcom/callapp/contacts/util/ads/AppBidder;->f:Z

    if-eqz v0, :cond_0

    .line 625
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 626
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/util/ads/AppBidder$4$1;->e:Lcom/callapp/contacts/util/ads/AppBidder$4;

    iget-object v3, v3, Lcom/callapp/contacts/util/ads/AppBidder$4;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v3}, Lcom/callapp/contacts/util/ads/AppBidder;->b(Lcom/callapp/contacts/util/ads/AppBidder;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    const/16 v3, 0xc

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ad_network"

    aput-object v4, v8, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/callapp/contacts/util/ads/AppBidder$4$1;->e:Lcom/callapp/contacts/util/ads/AppBidder$4;

    iget-object v4, v4, Lcom/callapp/contacts/util/ads/AppBidder$4;->a:Lcom/callapp/contacts/util/ads/JSONPostBidder;

    .line 627
    invoke-virtual {v4}, Lcom/callapp/contacts/util/ads/JSONPostBidder;->getClassname()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    const/4 v3, 0x2

    const-string v4, "adType"

    aput-object v4, v8, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/callapp/contacts/util/ads/AppBidder$4$1;->b:Ljava/lang/String;

    aput-object v4, v8, v3

    const/4 v3, 0x4

    const-string v4, "placement"

    aput-object v4, v8, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/callapp/contacts/util/ads/AppBidder$4$1;->a:Ljava/lang/String;

    aput-object v4, v8, v3

    const/4 v3, 0x6

    const-string v4, "fill"

    aput-object v4, v8, v3

    const/4 v3, 0x7

    const-string v4, "false"

    aput-object v4, v8, v3

    const/16 v3, 0x8

    const-string v4, "error"

    aput-object v4, v8, v3

    const/16 v3, 0x9

    aput-object p1, v8, v3

    const/16 v3, 0xa

    const-string v4, "duration"

    aput-object v4, v8, v3

    const/16 v3, 0xb

    iget-wide v9, p0, Lcom/callapp/contacts/util/ads/AppBidder$4$1;->c:J

    sub-long/2addr v0, v9

    .line 632
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v3

    const-string v3, "Ad"

    const-string v4, "post_bid_flow_ended"

    .line 626
    invoke-virtual/range {v2 .. v8}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$4$1;->e:Lcom/callapp/contacts/util/ads/AppBidder$4;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AppBidder$4;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/AppBidder$4$1;->e:Lcom/callapp/contacts/util/ads/AppBidder$4;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/AppBidder$4;->a:Lcom/callapp/contacts/util/ads/JSONPostBidder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "failed, errorMessage: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/AppBidder;Lcom/callapp/contacts/util/ads/JSONPostBidder;Ljava/lang/String;)V

    .line 637
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$4$1;->e:Lcom/callapp/contacts/util/ads/AppBidder$4;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AppBidder$4;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/AppBidder;->g(Lcom/callapp/contacts/util/ads/AppBidder;)V

    return-void
.end method
