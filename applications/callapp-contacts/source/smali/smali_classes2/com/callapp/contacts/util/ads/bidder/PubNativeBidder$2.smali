.class Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$2;
.super Lcom/callapp/contacts/manager/task/SafeRunnable;
.source "SourceFile"


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

.field final synthetic val$requestListener:Lnet/pubnative/lite/sdk/api/RequestManager$RequestListener;

.field final synthetic val$requestManager:Lnet/pubnative/lite/sdk/api/RequestManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;Lnet/pubnative/lite/sdk/api/RequestManager;Lnet/pubnative/lite/sdk/api/RequestManager$RequestListener;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$2;->val$requestManager:Lnet/pubnative/lite/sdk/api/RequestManager;

    iput-object p3, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$2;->val$requestListener:Lnet/pubnative/lite/sdk/api/RequestManager$RequestListener;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 2

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$2;->val$requestManager:Lnet/pubnative/lite/sdk/api/RequestManager;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/api/RequestManager;->requestAd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 136
    const-class v1, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 137
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$2;->val$requestListener:Lnet/pubnative/lite/sdk/api/RequestManager$RequestListener;

    invoke-interface {v1, v0}, Lnet/pubnative/lite/sdk/api/RequestManager$RequestListener;->onRequestFail(Ljava/lang/Throwable;)V

    return-void
.end method

.method public handleException(Ljava/lang/Throwable;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$2;->val$requestListener:Lnet/pubnative/lite/sdk/api/RequestManager$RequestListener;

    invoke-interface {v0, p1}, Lnet/pubnative/lite/sdk/api/RequestManager$RequestListener;->onRequestFail(Ljava/lang/Throwable;)V

    return-void
.end method
