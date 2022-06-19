.class Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/api/RequestManager$RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->getBid(Landroid/content/Context;Lcom/callapp/contacts/util/ads/JSONBidder;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;Lcom/callapp/contacts/util/ads/NativeAdParamGetter;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;

.field final synthetic val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

.field final synthetic val$jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;Lcom/callapp/contacts/util/ads/JSONBidder;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$1;->this$0:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$1;->val$jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    iput-object p3, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$1;->val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestFail(Ljava/lang/Throwable;)V
    .locals 1

    .line 123
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$1;->val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onRequestSuccess(Lnet/pubnative/lite/sdk/models/Ad;)V
    .locals 5

    .line 109
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$1;->val$jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONBidder;->getCachetimeInMinutes()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 111
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v0

    const-class v1, Lnet/pubnative/lite/sdk/models/Ad;

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$1;->val$jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/JSONBidder;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$1;->val$jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-virtual {v3}, Lcom/callapp/contacts/util/ads/JSONBidder;->getCachetimeInMinutes()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-virtual {v0, v1, v2, p1, v4}, Lcom/callapp/contacts/manager/cache/CacheManager;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 113
    const-class v1, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 117
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$1;->this$0:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->access$002(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;Lnet/pubnative/lite/sdk/models/Ad;)Lnet/pubnative/lite/sdk/models/Ad;

    .line 118
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$1;->this$0:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$1;->val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

    invoke-static {v0, p1, v1}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->access$100(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;Lnet/pubnative/lite/sdk/models/Ad;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;)V

    return-void
.end method
