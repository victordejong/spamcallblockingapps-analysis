.class Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$6;
.super Lcom/callapp/contacts/manager/task/SafeRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->loadNativeAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;

.field final synthetic val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

.field final synthetic val$localExtras:Ljava/util/Map;

.field final synthetic val$pubNativeNative:Lcom/mopub/nativeads/PubNativeNative;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;Lcom/mopub/nativeads/PubNativeNative;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Ljava/util/Map;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$6;->this$0:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$6;->val$pubNativeNative:Lcom/mopub/nativeads/PubNativeNative;

    iput-object p3, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$6;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    iput-object p4, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$6;->val$localExtras:Ljava/util/Map;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 5

    .line 316
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$6;->val$pubNativeNative:Lcom/mopub/nativeads/PubNativeNative;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$6;->this$0:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->access$400(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$6$1;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$6$1;-><init>(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$6;)V

    iget-object v3, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$6;->val$localExtras:Ljava/util/Map;

    iget-object v4, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$6;->this$0:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;

    .line 334
    invoke-static {v4}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->access$1100(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;)Ljava/util/Map;

    move-result-object v4

    .line 316
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mopub/nativeads/PubNativeNative;->loadNativeAd(Landroid/content/Context;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public handleException(Ljava/lang/Throwable;)V
    .locals 1

    .line 339
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$6;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->UNSPECIFIED:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p1, v0}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void
.end method
