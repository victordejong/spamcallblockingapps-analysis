.class Lcom/callapp/contacts/util/ads/AppBidder$5;
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
.field final synthetic a:Z

.field final synthetic b:J

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

.field final synthetic e:Lcom/callapp/contacts/util/ads/AppBidder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/AppBidder;ZJLjava/util/List;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
    .locals 0

    .line 740
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    iput-boolean p2, p0, Lcom/callapp/contacts/util/ads/AppBidder$5;->a:Z

    iput-wide p3, p0, Lcom/callapp/contacts/util/ads/AppBidder$5;->b:J

    iput-object p5, p0, Lcom/callapp/contacts/util/ads/AppBidder$5;->c:Ljava/util/List;

    iput-object p6, p0, Lcom/callapp/contacts/util/ads/AppBidder$5;->d:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 12

    .line 744
    :try_start_0
    new-instance v0, Lcom/callapp/contacts/util/ads/bidder/Waterfall;

    invoke-direct {v0}, Lcom/callapp/contacts/util/ads/bidder/Waterfall;-><init>()V

    .line 745
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/AppBidder;->c(Lcom/callapp/contacts/util/ads/AppBidder;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v3}, Lcom/callapp/contacts/util/ads/AppBidder;->e(Lcom/callapp/contacts/util/ads/AppBidder;)Lcom/callapp/contacts/util/ads/JSONBidding;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/util/ads/JSONBidding;->getBackfill()Lcom/callapp/contacts/util/ads/JSONAdUnit;

    move-result-object v3

    iget-object v4, p0, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v4}, Lcom/callapp/contacts/util/ads/AppBidder;->d(Lcom/callapp/contacts/util/ads/AppBidder;)Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

    move-result-object v4

    iget-boolean v5, p0, Lcom/callapp/contacts/util/ads/AppBidder$5;->a:Z

    new-instance v6, Lcom/callapp/contacts/util/ads/AppBidder$5$1;

    invoke-direct {v6, p0, v0}, Lcom/callapp/contacts/util/ads/AppBidder$5$1;-><init>(Lcom/callapp/contacts/util/ads/AppBidder$5;Lcom/callapp/contacts/util/ads/bidder/Waterfall;)V

    invoke-static/range {v1 .. v6}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/AppBidder;Landroid/content/Context;Lcom/callapp/contacts/util/ads/JSONAdUnit;Lcom/callapp/contacts/util/ads/NativeAdParamGetter;ZLcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 933
    sget-boolean v1, Lcom/callapp/contacts/util/ads/AppBidder;->d:Z

    if-eqz v1, :cond_0

    .line 934
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 935
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v3

    iget-object v4, p0, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v4}, Lcom/callapp/contacts/util/ads/AppBidder;->b(Lcom/callapp/contacts/util/ads/AppBidder;)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    const/16 v4, 0xa

    new-array v9, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "placement"

    aput-object v5, v9, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    .line 936
    invoke-static {v5}, Lcom/callapp/contacts/util/ads/AppBidder;->e(Lcom/callapp/contacts/util/ads/AppBidder;)Lcom/callapp/contacts/util/ads/JSONBidding;

    move-result-object v5

    invoke-virtual {v5}, Lcom/callapp/contacts/util/ads/JSONBidding;->getBackfill()Lcom/callapp/contacts/util/ads/JSONAdUnit;

    move-result-object v5

    invoke-virtual {v5}, Lcom/callapp/contacts/util/ads/JSONAdUnit;->getAdUnitId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v4

    const/4 v4, 0x2

    const-string v5, "fill"

    aput-object v5, v9, v4

    const/4 v4, 0x3

    const-string v5, "false"

    aput-object v5, v9, v4

    const/4 v4, 0x4

    const-string v5, "adType"

    aput-object v5, v9, v4

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    .line 938
    invoke-static {v5}, Lcom/callapp/contacts/util/ads/AppBidder;->e(Lcom/callapp/contacts/util/ads/AppBidder;)Lcom/callapp/contacts/util/ads/JSONBidding;

    move-result-object v5

    invoke-virtual {v5}, Lcom/callapp/contacts/util/ads/JSONBidding;->getBackfill()Lcom/callapp/contacts/util/ads/JSONAdUnit;

    move-result-object v5

    invoke-virtual {v5}, Lcom/callapp/contacts/util/ads/JSONAdUnit;->getAdType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v4

    const/4 v4, 0x6

    const-string v5, "duration"

    aput-object v5, v9, v4

    const/4 v4, 0x7

    iget-wide v10, p0, Lcom/callapp/contacts/util/ads/AppBidder$5;->b:J

    sub-long/2addr v1, v10

    .line 939
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v4

    const/16 v1, 0x8

    const-string v2, "exception"

    aput-object v2, v9, v1

    const/16 v1, 0x9

    const-string v2, "true"

    aput-object v2, v9, v1

    const-string v4, "Ad"

    const-string v5, "waterfall_flow_ended"

    .line 935
    invoke-virtual/range {v3 .. v9}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 943
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/AppBidder;->e(Lcom/callapp/contacts/util/ads/AppBidder;)Lcom/callapp/contacts/util/ads/JSONBidding;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/util/ads/JSONBidding;->getBackfill()Lcom/callapp/contacts/util/ads/JSONAdUnit;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "load failed: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/AppBidder;Lcom/callapp/contacts/util/ads/JSONAdUnit;Ljava/lang/String;)V

    .line 945
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/AppBidder;->j(Lcom/callapp/contacts/util/ads/AppBidder;)V

    return-void
.end method
