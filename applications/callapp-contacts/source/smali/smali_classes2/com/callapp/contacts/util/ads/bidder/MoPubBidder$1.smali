.class Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$1;
.super Lcom/callapp/contacts/manager/task/SafeRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->getBid(Landroid/content/Context;Lcom/callapp/contacts/util/ads/JSONBidder;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;Lcom/callapp/contacts/util/ads/NativeAdParamGetter;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;

.field final synthetic val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

.field final synthetic val$jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

.field final synthetic val$nativeAdParamGetter:Lcom/callapp/contacts/util/ads/NativeAdParamGetter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;Lcom/callapp/contacts/util/ads/NativeAdParamGetter;Lcom/callapp/contacts/util/ads/JSONBidder;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$1;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$1;->val$nativeAdParamGetter:Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

    iput-object p3, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$1;->val$jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    iput-object p4, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$1;->val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 9

    .line 66
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$1;->val$nativeAdParamGetter:Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$1;->val$jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/callapp/contacts/util/ads/NativeAdParamGetter;->a(Ljava/lang/String;)Lcom/callapp/contacts/util/ads/AdSettings;

    move-result-object v2

    .line 67
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$1;->val$nativeAdParamGetter:Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

    invoke-interface {v0, v2}, Lcom/callapp/contacts/util/ads/NativeAdParamGetter;->a(Lcom/callapp/contacts/util/ads/AdSettings;)Lcom/mopub/nativeads/ViewBinder;

    move-result-object v3

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$1;->val$nativeAdParamGetter:Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

    invoke-interface {v0, v2}, Lcom/callapp/contacts/util/ads/NativeAdParamGetter;->b(Lcom/callapp/contacts/util/ads/AdSettings;)Ljava/util/EnumSet;

    move-result-object v4

    new-instance v5, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$1$1;

    invoke-direct {v5, p0}, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$1$1;-><init>(Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$1;)V

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$1;->val$jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    .line 84
    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONBidder;->isCallappDisableRefresh()Z

    move-result v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 67
    invoke-static/range {v2 .. v8}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Lcom/callapp/contacts/util/ads/AdSettings;Lcom/mopub/nativeads/ViewBinder;Ljava/util/EnumSet;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;ZLjava/util/Map;Z)Lcom/mopub/nativeads/MoPubNative;

    return-void
.end method

.method public handleException(Ljava/lang/Throwable;)V
    .locals 1

    .line 89
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$1;->val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->UNSPECIFIED:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeErrorCode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(Ljava/lang/String;)V

    return-void
.end method
