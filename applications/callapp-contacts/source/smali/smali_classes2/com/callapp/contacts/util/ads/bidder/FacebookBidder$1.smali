.class Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/biddingkit/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->getBid(Landroid/content/Context;Lcom/callapp/contacts/util/ads/JSONBidder;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;Lcom/callapp/contacts/util/ads/NativeAdParamGetter;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;

.field final synthetic val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

.field final synthetic val$jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;Lcom/callapp/contacts/util/ads/JSONBidder;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$1;->this$0:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$1;->val$jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    iput-object p3, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$1;->val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleBidResponse(Lcom/facebook/biddingkit/c/b;)V
    .locals 6

    if-eqz p1, :cond_1

    .line 132
    invoke-interface {p1}, Lcom/facebook/biddingkit/c/b;->getPrice()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    .line 133
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$1;->this$0:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->access$002(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;Lcom/facebook/biddingkit/c/b;)Lcom/facebook/biddingkit/c/b;

    .line 134
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$1;->val$jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONBidder;->getCachetimeInMinutes()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 136
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v0

    const-class v1, Lcom/facebook/biddingkit/c/b;

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$1;->val$jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/JSONBidder;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$1;->this$0:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;

    invoke-static {v3}, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->access$000(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;)Lcom/facebook/biddingkit/c/b;

    move-result-object v3

    iget-object v4, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$1;->val$jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-virtual {v4}, Lcom/callapp/contacts/util/ads/JSONBidder;->getCachetimeInMinutes()J

    move-result-wide v4

    long-to-int v5, v4

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/callapp/contacts/manager/cache/CacheManager;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 138
    const-class v1, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 142
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/facebook/biddingkit/c/b;->getPrice()D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    .line 143
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$1;->val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

    invoke-interface {p1, v0, v1}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(D)V

    return-void

    .line 145
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$1;->val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

    const-string v0, ""

    invoke-interface {p1, v0}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(Ljava/lang/String;)V

    return-void
.end method

.method public handleBidResponseFailure(Ljava/lang/String;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$1;->val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(Ljava/lang/String;)V

    return-void
.end method
