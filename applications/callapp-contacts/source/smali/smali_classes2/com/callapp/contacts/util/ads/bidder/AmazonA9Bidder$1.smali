.class Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/device/ads/DTBAdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->getBid(Landroid/content/Context;Lcom/callapp/contacts/util/ads/JSONBidder;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;Lcom/callapp/contacts/util/ads/NativeAdParamGetter;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

.field final synthetic val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

.field final synthetic val$jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;Lcom/callapp/contacts/util/ads/JSONBidder;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$1;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$1;->val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

    iput-object p3, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$1;->val$jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/amazon/device/ads/AdError;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$1;->val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

    .line 1021
    iget-object p1, p1, Lcom/amazon/device/ads/AdError;->b:Ljava/lang/String;

    .line 124
    invoke-interface {v0, p1}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/amazon/device/ads/DTBAdResponse;)V
    .locals 5

    .line 129
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$1;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$100(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;Lcom/amazon/device/ads/DTBAdResponse;)D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$002(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;D)D

    .line 130
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$1;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$202(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;Lcom/amazon/device/ads/DTBAdResponse;)Lcom/amazon/device/ads/DTBAdResponse;

    .line 131
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$1;->val$jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-virtual {p1}, Lcom/callapp/contacts/util/ads/JSONBidder;->getCachetimeInMinutes()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 133
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object p1

    const-class v0, Lcom/amazon/device/ads/DTBAdResponse;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$1;->val$jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/JSONBidder;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$1;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$200(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/amazon/device/ads/DTBAdResponse;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$1;->val$jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-virtual {v3}, Lcom/callapp/contacts/util/ads/JSONBidder;->getCachetimeInMinutes()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-virtual {p1, v0, v1, v2, v4}, Lcom/callapp/contacts/manager/cache/CacheManager;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 135
    const-class v0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 139
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$1;->val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$1;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$000(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(D)V

    return-void
.end method
