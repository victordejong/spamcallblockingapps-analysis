.class Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7;
.super Lcom/callapp/contacts/manager/task/SafeRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->loadNativeAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

.field final synthetic val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 5

    .line 381
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$300(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lio/bidmachine/nativead/NativeRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$300(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lio/bidmachine/nativead/NativeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/nativead/NativeRequest;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 383
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$300(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lio/bidmachine/nativead/NativeRequest;

    move-result-object v1

    const-string v2, "bm_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    new-instance v1, Lcom/mopub/nativeads/BidMachineNative;

    invoke-direct {v1}, Lcom/mopub/nativeads/BidMachineNative;-><init>()V

    .line 386
    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$700(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7$1;

    invoke-direct {v3, p0}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7$1;-><init>(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7;)V

    iget-object v4, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    .line 404
    invoke-static {v4}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$1100(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Ljava/util/Map;

    move-result-object v4

    .line 386
    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/mopub/nativeads/BidMachineNative;->loadNativeAd(Landroid/content/Context;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;Ljava/util/Map;Ljava/util/Map;)V

    .line 405
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$300(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lio/bidmachine/nativead/NativeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/nativead/NativeRequest;->notifyMediationWin()V

    return-void

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    sget-object v1, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {v0, v1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void
.end method

.method public handleException(Ljava/lang/Throwable;)V
    .locals 1

    .line 413
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->UNSPECIFIED:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p1, v0}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void
.end method
