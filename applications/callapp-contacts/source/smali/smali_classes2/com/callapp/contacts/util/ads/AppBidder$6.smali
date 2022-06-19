.class Lcom/callapp/contacts/util/ads/AppBidder$6;
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
.field final synthetic a:Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field final synthetic c:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

.field final synthetic d:Lcom/callapp/contacts/util/ads/AppBidder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/AppBidder;Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;Ljava/util/concurrent/CountDownLatch;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
    .locals 0

    .line 975
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$6;->d:Lcom/callapp/contacts/util/ads/AppBidder;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/AppBidder$6;->a:Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    iput-object p3, p0, Lcom/callapp/contacts/util/ads/AppBidder$6;->b:Ljava/util/concurrent/CountDownLatch;

    iput-object p4, p0, Lcom/callapp/contacts/util/ads/AppBidder$6;->c:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 10

    .line 978
    const-class v0, Lcom/callapp/contacts/util/ads/AppBidder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RequestId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/AppBidder$6;->d:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/AppBidder;->b(Lcom/callapp/contacts/util/ads/AppBidder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", load ad from winner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 980
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 981
    sget-boolean v2, Lcom/callapp/contacts/util/ads/AppBidder;->g:Z

    if-eqz v2, :cond_0

    .line 982
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v3

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/AppBidder$6;->d:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/AppBidder;->b(Lcom/callapp/contacts/util/ads/AppBidder;)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    const/4 v2, 0x4

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "ad_network"

    aput-object v4, v9, v2

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/callapp/contacts/util/ads/AppBidder$6;->a:Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    iget-object v4, v4, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->bidder:Lcom/callapp/contacts/util/ads/bidder/Bidder;

    .line 983
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v2

    const/4 v2, 0x2

    const-string v4, "price"

    aput-object v4, v9, v2

    const/4 v2, 0x3

    iget-object v4, p0, Lcom/callapp/contacts/util/ads/AppBidder$6;->a:Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    iget-wide v4, v4, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->price:D

    .line 984
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v2

    const-string v4, "Ad"

    const-string v5, "load_ad_started"

    .line 982
    invoke-virtual/range {v3 .. v9}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 987
    :cond_0
    iget-object v2, p0, Lcom/callapp/contacts/util/ads/AppBidder$6;->a:Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    iget-object v2, v2, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->bidder:Lcom/callapp/contacts/util/ads/bidder/Bidder;

    new-instance v3, Lcom/callapp/contacts/util/ads/AppBidder$6$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/callapp/contacts/util/ads/AppBidder$6$1;-><init>(Lcom/callapp/contacts/util/ads/AppBidder$6;J)V

    invoke-interface {v2, v3}, Lcom/callapp/contacts/util/ads/bidder/Bidder;->loadAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V

    return-void
.end method
