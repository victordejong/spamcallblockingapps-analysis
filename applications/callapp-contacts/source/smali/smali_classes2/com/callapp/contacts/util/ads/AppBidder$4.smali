.class Lcom/callapp/contacts/util/ads/AppBidder$4;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/AppBidder;->a(ZLcom/callapp/contacts/util/ads/AdUtils$AdEvents;)Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/util/ads/JSONPostBidder;

.field final synthetic b:Z

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Ljava/util/concurrent/ConcurrentSkipListMap;

.field final synthetic e:Lcom/callapp/contacts/util/ads/AppBidder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/AppBidder;Lcom/callapp/contacts/util/ads/JSONPostBidder;ZLjava/util/List;Ljava/util/concurrent/ConcurrentSkipListMap;)V
    .locals 0

    .line 551
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$4;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/AppBidder$4;->a:Lcom/callapp/contacts/util/ads/JSONPostBidder;

    iput-boolean p3, p0, Lcom/callapp/contacts/util/ads/AppBidder$4;->b:Z

    iput-object p4, p0, Lcom/callapp/contacts/util/ads/AppBidder$4;->c:Ljava/util/List;

    iput-object p5, p0, Lcom/callapp/contacts/util/ads/AppBidder$4;->d:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 39

    move-object/from16 v7, p0

    const-string v8, "placement"

    const-string v9, "adType"

    const-string v10, "ad_network"

    .line 554
    iget-object v0, v7, Lcom/callapp/contacts/util/ads/AppBidder$4;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    iget-object v1, v7, Lcom/callapp/contacts/util/ads/AppBidder$4;->a:Lcom/callapp/contacts/util/ads/JSONPostBidder;

    const-string v2, "starting"

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/AppBidder;Lcom/callapp/contacts/util/ads/JSONPostBidder;Ljava/lang/String;)V

    .line 556
    iget-boolean v0, v7, Lcom/callapp/contacts/util/ads/AppBidder$4;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, v7, Lcom/callapp/contacts/util/ads/AppBidder$4;->a:Lcom/callapp/contacts/util/ads/JSONPostBidder;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONPostBidder;->isRefresh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, v7, Lcom/callapp/contacts/util/ads/AppBidder$4;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    iget-object v1, v7, Lcom/callapp/contacts/util/ads/AppBidder$4;->a:Lcom/callapp/contacts/util/ads/JSONPostBidder;

    const-string v2, "refresh ad bidder skipped"

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/AppBidder;Lcom/callapp/contacts/util/ads/JSONPostBidder;Ljava/lang/String;)V

    .line 558
    iget-object v0, v7, Lcom/callapp/contacts/util/ads/AppBidder$4;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/AppBidder;->g(Lcom/callapp/contacts/util/ads/AppBidder;)V

    return-void

    .line 562
    :cond_0
    iget-object v0, v7, Lcom/callapp/contacts/util/ads/AppBidder$4;->a:Lcom/callapp/contacts/util/ads/JSONPostBidder;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONPostBidder;->getClassname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/callapp/contacts/util/ads/bidder/PostBidder;

    if-eqz v11, :cond_6

    .line 564
    iget-object v0, v7, Lcom/callapp/contacts/util/ads/AppBidder$4;->c:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    iget-object v0, v7, Lcom/callapp/contacts/util/ads/AppBidder$4;->a:Lcom/callapp/contacts/util/ads/JSONPostBidder;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONPostBidder;->getAdUnits()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_3

    .line 568
    iget-object v0, v7, Lcom/callapp/contacts/util/ads/AppBidder$4;->a:Lcom/callapp/contacts/util/ads/JSONPostBidder;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONPostBidder;->getAdUnits()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;

    .line 569
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 570
    invoke-virtual {v3}, Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;->getMultiAdType()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 571
    invoke-virtual {v3}, Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;->getMultiAdType()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 572
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v1, v4

    goto :goto_0

    :cond_2
    move-object/from16 v20, v1

    move-object/from16 v21, v2

    goto :goto_2

    :cond_3
    move-object/from16 v20, v1

    move-object/from16 v21, v20

    .line 581
    :goto_2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v22

    const/16 v15, 0x8

    const/16 v24, 0x7

    const/16 v25, 0x6

    const/16 v26, 0x5

    const/16 v27, 0x4

    const/16 v28, 0x3

    const/16 v29, 0x2

    const/16 v30, 0x1

    const/16 v31, 0x0

    .line 583
    :try_start_0
    sget-boolean v0, Lcom/callapp/contacts/util/ads/AppBidder;->e:Z

    if-eqz v0, :cond_4

    .line 584
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v32

    const-string v33, "Ad"

    const-string v34, "post_bid_flow_started"

    iget-object v0, v7, Lcom/callapp/contacts/util/ads/AppBidder$4;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/AppBidder;->b(Lcom/callapp/contacts/util/ads/AppBidder;)Ljava/lang/String;

    move-result-object v35

    const-wide/16 v36, 0x0

    new-array v0, v15, [Ljava/lang/String;

    aput-object v10, v0, v31

    iget-object v1, v7, Lcom/callapp/contacts/util/ads/AppBidder$4;->a:Lcom/callapp/contacts/util/ads/JSONPostBidder;

    .line 585
    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONPostBidder;->getClassname()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v30

    aput-object v8, v0, v29

    aput-object v20, v0, v28

    aput-object v9, v0, v27

    aput-object v21, v0, v26

    const-string v1, "bid_sent"

    aput-object v1, v0, v25

    iget-object v1, v7, Lcom/callapp/contacts/util/ads/AppBidder$4;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    .line 588
    invoke-static {v1}, Lcom/callapp/contacts/util/ads/AppBidder;->h(Lcom/callapp/contacts/util/ads/AppBidder;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v24

    move-object/from16 v38, v0

    .line 584
    invoke-virtual/range {v32 .. v38}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 591
    :cond_4
    iget-object v0, v7, Lcom/callapp/contacts/util/ads/AppBidder$4;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/AppBidder;->h(Lcom/callapp/contacts/util/ads/AppBidder;)D

    move-result-wide v0

    invoke-interface {v11, v0, v1}, Lcom/callapp/contacts/util/ads/bidder/PostBidder;->setPriceToBeat(D)V

    .line 592
    iget-object v0, v7, Lcom/callapp/contacts/util/ads/AppBidder$4;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/AppBidder;->c(Lcom/callapp/contacts/util/ads/AppBidder;)Landroid/content/Context;

    move-result-object v12

    iget-object v13, v7, Lcom/callapp/contacts/util/ads/AppBidder$4;->a:Lcom/callapp/contacts/util/ads/JSONPostBidder;

    new-instance v14, Lcom/callapp/contacts/util/ads/AppBidder$4$1;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-wide/from16 v4, v22

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/callapp/contacts/util/ads/AppBidder$4$1;-><init>(Lcom/callapp/contacts/util/ads/AppBidder$4;Ljava/lang/String;Ljava/lang/String;JLcom/callapp/contacts/util/ads/bidder/PostBidder;)V

    iget-object v0, v7, Lcom/callapp/contacts/util/ads/AppBidder$4;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    .line 640
    invoke-static {v0}, Lcom/callapp/contacts/util/ads/AppBidder;->d(Lcom/callapp/contacts/util/ads/AppBidder;)Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

    move-result-object v0

    iget-object v1, v7, Lcom/callapp/contacts/util/ads/AppBidder$4;->a:Lcom/callapp/contacts/util/ads/JSONPostBidder;

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONPostBidder;->getMultiplier()D

    move-result-wide v16

    iget-object v1, v7, Lcom/callapp/contacts/util/ads/AppBidder$4;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/AppBidder;->b(Lcom/callapp/contacts/util/ads/AppBidder;)Ljava/lang/String;

    move-result-object v18

    iget-object v1, v7, Lcom/callapp/contacts/util/ads/AppBidder$4;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/AppBidder;->i(Lcom/callapp/contacts/util/ads/AppBidder;)F

    move-result v19
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v1, 0x8

    move-object v15, v0

    .line 592
    :try_start_1
    invoke-interface/range {v11 .. v19}, Lcom/callapp/contacts/util/ads/bidder/PostBidder;->getBid(Landroid/content/Context;Lcom/callapp/contacts/util/ads/JSONPostBidder;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;Lcom/callapp/contacts/util/ads/NativeAdParamGetter;DLjava/lang/String;F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    nop

    goto :goto_3

    :catch_1
    const/16 v1, 0x8

    .line 642
    :goto_3
    sget-boolean v0, Lcom/callapp/contacts/util/ads/AppBidder;->f:Z

    if-eqz v0, :cond_5

    .line 643
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 644
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v11

    iget-object v0, v7, Lcom/callapp/contacts/util/ads/AppBidder$4;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/AppBidder;->b(Lcom/callapp/contacts/util/ads/AppBidder;)Ljava/lang/String;

    move-result-object v14

    const-wide/16 v15, 0x0

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    aput-object v10, v0, v31

    iget-object v4, v7, Lcom/callapp/contacts/util/ads/AppBidder$4;->a:Lcom/callapp/contacts/util/ads/JSONPostBidder;

    .line 645
    invoke-virtual {v4}, Lcom/callapp/contacts/util/ads/JSONPostBidder;->getClassname()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v30

    aput-object v9, v0, v29

    aput-object v21, v0, v28

    aput-object v8, v0, v27

    aput-object v20, v0, v26

    const-string v4, "fill"

    aput-object v4, v0, v25

    const-string v4, "false"

    aput-object v4, v0, v24

    const-string v4, "duration"

    aput-object v4, v0, v1

    const/16 v1, 0x9

    sub-long v2, v2, v22

    .line 649
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "exception"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "true"

    aput-object v2, v0, v1

    const-string v12, "Ad"

    const-string v13, "post_bid_flow_ended"

    move-object/from16 v17, v0

    .line 644
    invoke-virtual/range {v11 .. v17}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 653
    :cond_5
    iget-object v0, v7, Lcom/callapp/contacts/util/ads/AppBidder$4;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    iget-object v1, v7, Lcom/callapp/contacts/util/ads/AppBidder$4;->a:Lcom/callapp/contacts/util/ads/JSONPostBidder;

    const-string v2, "failed to get bid"

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/AppBidder;Lcom/callapp/contacts/util/ads/JSONPostBidder;Ljava/lang/String;)V

    .line 655
    iget-object v0, v7, Lcom/callapp/contacts/util/ads/AppBidder$4;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/AppBidder;->g(Lcom/callapp/contacts/util/ads/AppBidder;)V

    return-void

    .line 658
    :cond_6
    iget-object v0, v7, Lcom/callapp/contacts/util/ads/AppBidder$4;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    iget-object v1, v7, Lcom/callapp/contacts/util/ads/AppBidder$4;->a:Lcom/callapp/contacts/util/ads/JSONPostBidder;

    const-string v2, "failed to instantiate bidder"

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/AppBidder;Lcom/callapp/contacts/util/ads/JSONPostBidder;Ljava/lang/String;)V

    .line 660
    iget-object v0, v7, Lcom/callapp/contacts/util/ads/AppBidder$4;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/AppBidder;->g(Lcom/callapp/contacts/util/ads/AppBidder;)V

    return-void
.end method
