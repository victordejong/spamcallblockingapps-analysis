.class Lcom/callapp/contacts/util/ads/AppBidder$2;
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
.field final synthetic a:Lcom/callapp/contacts/util/ads/JSONBidder;

.field final synthetic b:Z

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Lcom/callapp/contacts/util/ads/AppBidder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/AppBidder;Lcom/callapp/contacts/util/ads/JSONBidder;ZLjava/util/List;Ljava/util/List;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$2;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/AppBidder$2;->a:Lcom/callapp/contacts/util/ads/JSONBidder;

    iput-boolean p3, p0, Lcom/callapp/contacts/util/ads/AppBidder$2;->b:Z

    iput-object p4, p0, Lcom/callapp/contacts/util/ads/AppBidder$2;->c:Ljava/util/List;

    iput-object p5, p0, Lcom/callapp/contacts/util/ads/AppBidder$2;->d:Ljava/util/List;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 22

    move-object/from16 v0, p0

    .line 186
    iget-object v1, v0, Lcom/callapp/contacts/util/ads/AppBidder$2;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    iget-object v2, v0, Lcom/callapp/contacts/util/ads/AppBidder$2;->a:Lcom/callapp/contacts/util/ads/JSONBidder;

    const-string v3, "starting"

    invoke-static {v1, v2, v3}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/AppBidder;Lcom/callapp/contacts/util/ads/JSONBidder;Ljava/lang/String;)V

    .line 188
    iget-boolean v1, v0, Lcom/callapp/contacts/util/ads/AppBidder$2;->b:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/callapp/contacts/util/ads/AppBidder$2;->a:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONBidder;->isRefresh()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, v0, Lcom/callapp/contacts/util/ads/AppBidder$2;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    iget-object v2, v0, Lcom/callapp/contacts/util/ads/AppBidder$2;->a:Lcom/callapp/contacts/util/ads/JSONBidder;

    const-string v3, "refresh ad bidder skipped"

    invoke-static {v1, v2, v3}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/AppBidder;Lcom/callapp/contacts/util/ads/JSONBidder;Ljava/lang/String;)V

    .line 190
    iget-object v1, v0, Lcom/callapp/contacts/util/ads/AppBidder$2;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/AppBidder;)V

    return-void

    .line 194
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 195
    sget-boolean v3, Lcom/callapp/contacts/util/ads/AppBidder;->a:Z

    const/4 v4, 0x5

    const-string v5, "ad_type"

    const/4 v6, 0x4

    const/4 v7, 0x3

    const-string v8, "placement"

    const/4 v9, 0x2

    const/4 v10, 0x1

    const-string v11, "ad_network"

    const/4 v12, 0x0

    const/4 v13, 0x6

    if-eqz v3, :cond_1

    .line 196
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v14

    iget-object v3, v0, Lcom/callapp/contacts/util/ads/AppBidder$2;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v3}, Lcom/callapp/contacts/util/ads/AppBidder;->b(Lcom/callapp/contacts/util/ads/AppBidder;)Ljava/lang/String;

    move-result-object v17

    const-wide/16 v18, 0x0

    new-array v3, v13, [Ljava/lang/String;

    aput-object v11, v3, v12

    iget-object v15, v0, Lcom/callapp/contacts/util/ads/AppBidder$2;->a:Lcom/callapp/contacts/util/ads/JSONBidder;

    .line 197
    invoke-virtual {v15}, Lcom/callapp/contacts/util/ads/JSONBidder;->getClassname()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v3, v10

    aput-object v8, v3, v9

    iget-object v15, v0, Lcom/callapp/contacts/util/ads/AppBidder$2;->a:Lcom/callapp/contacts/util/ads/JSONBidder;

    .line 198
    invoke-virtual {v15}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v3, v7

    aput-object v5, v3, v6

    iget-object v15, v0, Lcom/callapp/contacts/util/ads/AppBidder$2;->a:Lcom/callapp/contacts/util/ads/JSONBidder;

    .line 199
    invoke-virtual {v15}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdType()I

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v3, v4

    const-string v15, "Ad"

    const-string v16, "bid_request_sent"

    move-object/from16 v20, v3

    .line 196
    invoke-virtual/range {v14 .. v20}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 201
    :cond_1
    iget-object v3, v0, Lcom/callapp/contacts/util/ads/AppBidder$2;->a:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-virtual {v3}, Lcom/callapp/contacts/util/ads/JSONBidder;->getClassname()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcom/callapp/contacts/util/ads/bidder/SimpleBidder;

    if-eqz v14, :cond_3

    .line 203
    iget-object v3, v0, Lcom/callapp/contacts/util/ads/AppBidder$2;->c:Ljava/util/List;

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    :try_start_0
    iget-object v3, v0, Lcom/callapp/contacts/util/ads/AppBidder$2;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v3}, Lcom/callapp/contacts/util/ads/AppBidder;->c(Lcom/callapp/contacts/util/ads/AppBidder;)Landroid/content/Context;

    move-result-object v15

    iget-object v3, v0, Lcom/callapp/contacts/util/ads/AppBidder$2;->a:Lcom/callapp/contacts/util/ads/JSONBidder;

    new-instance v13, Lcom/callapp/contacts/util/ads/AppBidder$2$1;

    invoke-direct {v13, v0, v1, v2, v14}, Lcom/callapp/contacts/util/ads/AppBidder$2$1;-><init>(Lcom/callapp/contacts/util/ads/AppBidder$2;JLcom/callapp/contacts/util/ads/bidder/SimpleBidder;)V

    iget-object v4, v0, Lcom/callapp/contacts/util/ads/AppBidder$2;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    .line 251
    invoke-static {v4}, Lcom/callapp/contacts/util/ads/AppBidder;->d(Lcom/callapp/contacts/util/ads/AppBidder;)Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

    move-result-object v18

    iget-object v4, v0, Lcom/callapp/contacts/util/ads/AppBidder$2;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v4}, Lcom/callapp/contacts/util/ads/AppBidder;->e(Lcom/callapp/contacts/util/ads/AppBidder;)Lcom/callapp/contacts/util/ads/JSONBidding;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/util/ads/JSONBidding;->getTimeout()J

    move-result-wide v19

    iget-object v4, v0, Lcom/callapp/contacts/util/ads/AppBidder$2;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v4}, Lcom/callapp/contacts/util/ads/AppBidder;->b(Lcom/callapp/contacts/util/ads/AppBidder;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v16, v3

    move-object/from16 v17, v13

    .line 205
    invoke-interface/range {v14 .. v21}, Lcom/callapp/contacts/util/ads/bidder/SimpleBidder;->getBid(Landroid/content/Context;Lcom/callapp/contacts/util/ads/JSONBidder;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;Lcom/callapp/contacts/util/ads/NativeAdParamGetter;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    .line 253
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 254
    sget-boolean v13, Lcom/callapp/contacts/util/ads/AppBidder;->b:Z

    if-eqz v13, :cond_2

    .line 255
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v14

    iget-object v13, v0, Lcom/callapp/contacts/util/ads/AppBidder$2;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v13}, Lcom/callapp/contacts/util/ads/AppBidder;->b(Lcom/callapp/contacts/util/ads/AppBidder;)Ljava/lang/String;

    move-result-object v17

    const-wide/16 v18, 0x0

    const/16 v13, 0xc

    new-array v13, v13, [Ljava/lang/String;

    aput-object v11, v13, v12

    iget-object v11, v0, Lcom/callapp/contacts/util/ads/AppBidder$2;->a:Lcom/callapp/contacts/util/ads/JSONBidder;

    .line 256
    invoke-virtual {v11}, Lcom/callapp/contacts/util/ads/JSONBidder;->getClassname()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v13, v10

    aput-object v8, v13, v9

    iget-object v8, v0, Lcom/callapp/contacts/util/ads/AppBidder$2;->a:Lcom/callapp/contacts/util/ads/JSONBidder;

    .line 257
    invoke-virtual {v8}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v13, v7

    aput-object v5, v13, v6

    iget-object v5, v0, Lcom/callapp/contacts/util/ads/AppBidder$2;->a:Lcom/callapp/contacts/util/ads/JSONBidder;

    .line 258
    invoke-virtual {v5}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    aput-object v5, v13, v6

    const-string v5, "fill"

    const/4 v6, 0x6

    aput-object v5, v13, v6

    const/4 v5, 0x7

    const-string v6, "false"

    aput-object v6, v13, v5

    const/16 v5, 0x8

    const-string v6, "duration"

    aput-object v6, v13, v5

    const/16 v5, 0x9

    sub-long/2addr v3, v1

    .line 260
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v13, v5

    const/16 v1, 0xa

    const-string v2, "exception"

    aput-object v2, v13, v1

    const/16 v1, 0xb

    const-string v2, "true"

    aput-object v2, v13, v1

    const-string v15, "Ad"

    const-string v16, "bid_response_received"

    move-object/from16 v20, v13

    .line 255
    invoke-virtual/range {v14 .. v20}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 264
    :cond_2
    iget-object v1, v0, Lcom/callapp/contacts/util/ads/AppBidder$2;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    iget-object v2, v0, Lcom/callapp/contacts/util/ads/AppBidder$2;->a:Lcom/callapp/contacts/util/ads/JSONBidder;

    const-string v3, "failed to get bid"

    invoke-static {v1, v2, v3}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/AppBidder;Lcom/callapp/contacts/util/ads/JSONBidder;Ljava/lang/String;)V

    .line 266
    iget-object v1, v0, Lcom/callapp/contacts/util/ads/AppBidder$2;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/AppBidder;)V

    return-void

    .line 269
    :cond_3
    iget-object v1, v0, Lcom/callapp/contacts/util/ads/AppBidder$2;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    iget-object v2, v0, Lcom/callapp/contacts/util/ads/AppBidder$2;->a:Lcom/callapp/contacts/util/ads/JSONBidder;

    const-string v3, "failed to instantiate bidder"

    invoke-static {v1, v2, v3}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/AppBidder;Lcom/callapp/contacts/util/ads/JSONBidder;Ljava/lang/String;)V

    .line 271
    iget-object v1, v0, Lcom/callapp/contacts/util/ads/AppBidder$2;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/AppBidder;)V

    return-void
.end method
