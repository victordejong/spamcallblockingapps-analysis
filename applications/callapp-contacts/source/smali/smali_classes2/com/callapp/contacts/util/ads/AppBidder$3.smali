.class Lcom/callapp/contacts/util/ads/AppBidder$3;
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
.field final synthetic a:Lcom/callapp/contacts/util/ads/JSONAdUnit;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Z

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

.field final synthetic f:Lcom/callapp/contacts/util/ads/AppBidder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/AppBidder;Lcom/callapp/contacts/util/ads/JSONAdUnit;Ljava/util/List;ZLjava/util/List;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$3;->f:Lcom/callapp/contacts/util/ads/AppBidder;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/AppBidder$3;->a:Lcom/callapp/contacts/util/ads/JSONAdUnit;

    iput-object p3, p0, Lcom/callapp/contacts/util/ads/AppBidder$3;->b:Ljava/util/List;

    iput-boolean p4, p0, Lcom/callapp/contacts/util/ads/AppBidder$3;->c:Z

    iput-object p5, p0, Lcom/callapp/contacts/util/ads/AppBidder$3;->d:Ljava/util/List;

    iput-object p6, p0, Lcom/callapp/contacts/util/ads/AppBidder$3;->e:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 23

    move-object/from16 v1, p0

    .line 283
    iget-object v0, v1, Lcom/callapp/contacts/util/ads/AppBidder$3;->f:Lcom/callapp/contacts/util/ads/AppBidder;

    iget-object v2, v1, Lcom/callapp/contacts/util/ads/AppBidder$3;->a:Lcom/callapp/contacts/util/ads/JSONAdUnit;

    const-string v3, "starting"

    invoke-static {v0, v2, v3}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/AppBidder;Lcom/callapp/contacts/util/ads/JSONAdUnit;Ljava/lang/String;)V

    .line 285
    new-instance v0, Lcom/callapp/contacts/util/ads/bidder/Waterfall;

    invoke-direct {v0}, Lcom/callapp/contacts/util/ads/bidder/Waterfall;-><init>()V

    .line 286
    iget-object v2, v1, Lcom/callapp/contacts/util/ads/AppBidder$3;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 289
    sget-boolean v4, Lcom/callapp/contacts/util/ads/AppBidder;->c:Z

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const-string v8, "placement"

    const/4 v9, 0x0

    const/4 v10, 0x4

    if-eqz v4, :cond_0

    .line 290
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v11

    iget-object v4, v1, Lcom/callapp/contacts/util/ads/AppBidder$3;->f:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v4}, Lcom/callapp/contacts/util/ads/AppBidder;->b(Lcom/callapp/contacts/util/ads/AppBidder;)Ljava/lang/String;

    move-result-object v14

    const-wide/16 v15, 0x0

    new-array v4, v10, [Ljava/lang/String;

    aput-object v8, v4, v9

    iget-object v12, v1, Lcom/callapp/contacts/util/ads/AppBidder$3;->a:Lcom/callapp/contacts/util/ads/JSONAdUnit;

    .line 291
    invoke-virtual {v12}, Lcom/callapp/contacts/util/ads/JSONAdUnit;->getAdUnitId()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v7

    const-string v12, "ad_type"

    aput-object v12, v4, v6

    iget-object v12, v1, Lcom/callapp/contacts/util/ads/AppBidder$3;->a:Lcom/callapp/contacts/util/ads/JSONAdUnit;

    .line 292
    invoke-virtual {v12}, Lcom/callapp/contacts/util/ads/JSONAdUnit;->getAdType()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    const-string v12, "Ad"

    const-string v13, "waterfall_flow_started"

    move-object/from16 v17, v4

    .line 290
    invoke-virtual/range {v11 .. v17}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 295
    :cond_0
    :try_start_0
    iget-object v4, v1, Lcom/callapp/contacts/util/ads/AppBidder$3;->f:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v4}, Lcom/callapp/contacts/util/ads/AppBidder;->c(Lcom/callapp/contacts/util/ads/AppBidder;)Landroid/content/Context;

    move-result-object v18

    iget-object v11, v1, Lcom/callapp/contacts/util/ads/AppBidder$3;->a:Lcom/callapp/contacts/util/ads/JSONAdUnit;

    iget-object v12, v1, Lcom/callapp/contacts/util/ads/AppBidder$3;->f:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v12}, Lcom/callapp/contacts/util/ads/AppBidder;->d(Lcom/callapp/contacts/util/ads/AppBidder;)Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

    move-result-object v20

    iget-boolean v12, v1, Lcom/callapp/contacts/util/ads/AppBidder$3;->c:Z

    new-instance v13, Lcom/callapp/contacts/util/ads/AppBidder$3$1;

    invoke-direct {v13, v1, v2, v3, v0}, Lcom/callapp/contacts/util/ads/AppBidder$3$1;-><init>(Lcom/callapp/contacts/util/ads/AppBidder$3;JLcom/callapp/contacts/util/ads/bidder/Waterfall;)V

    move-object/from16 v17, v4

    move-object/from16 v19, v11

    move/from16 v21, v12

    move-object/from16 v22, v13

    invoke-static/range {v17 .. v22}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/AppBidder;Landroid/content/Context;Lcom/callapp/contacts/util/ads/JSONAdUnit;Lcom/callapp/contacts/util/ads/NativeAdParamGetter;ZLcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 482
    sget-boolean v4, Lcom/callapp/contacts/util/ads/AppBidder;->d:Z

    if-eqz v4, :cond_1

    .line 483
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    .line 484
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v13

    iget-object v4, v1, Lcom/callapp/contacts/util/ads/AppBidder$3;->f:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v4}, Lcom/callapp/contacts/util/ads/AppBidder;->b(Lcom/callapp/contacts/util/ads/AppBidder;)Ljava/lang/String;

    move-result-object v16

    const-wide/16 v17, 0x0

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/String;

    aput-object v8, v4, v9

    iget-object v8, v1, Lcom/callapp/contacts/util/ads/AppBidder$3;->a:Lcom/callapp/contacts/util/ads/JSONAdUnit;

    .line 485
    invoke-virtual {v8}, Lcom/callapp/contacts/util/ads/JSONAdUnit;->getAdUnitId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    const-string v7, "fill"

    aput-object v7, v4, v6

    const-string v6, "false"

    aput-object v6, v4, v5

    const-string v5, "adType"

    aput-object v5, v4, v10

    const/4 v5, 0x5

    iget-object v6, v1, Lcom/callapp/contacts/util/ads/AppBidder$3;->a:Lcom/callapp/contacts/util/ads/JSONAdUnit;

    .line 487
    invoke-virtual {v6}, Lcom/callapp/contacts/util/ads/JSONAdUnit;->getAdType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "duration"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    sub-long/2addr v11, v2

    .line 488
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const/16 v2, 0x8

    const-string v3, "exception"

    aput-object v3, v4, v2

    const/16 v2, 0x9

    const-string v3, "true"

    aput-object v3, v4, v2

    const-string v14, "Ad"

    const-string v15, "waterfall_flow_ended"

    move-object/from16 v19, v4

    .line 484
    invoke-virtual/range {v13 .. v19}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 492
    :cond_1
    iget-object v2, v1, Lcom/callapp/contacts/util/ads/AppBidder$3;->f:Lcom/callapp/contacts/util/ads/AppBidder;

    iget-object v3, v1, Lcom/callapp/contacts/util/ads/AppBidder$3;->a:Lcom/callapp/contacts/util/ads/JSONAdUnit;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "load failed: "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/AppBidder;Lcom/callapp/contacts/util/ads/JSONAdUnit;Ljava/lang/String;)V

    .line 494
    iget-object v0, v1, Lcom/callapp/contacts/util/ads/AppBidder$3;->f:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/AppBidder;)V

    return-void
.end method
