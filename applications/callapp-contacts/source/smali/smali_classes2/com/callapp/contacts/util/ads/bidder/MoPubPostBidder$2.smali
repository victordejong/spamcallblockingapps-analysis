.class Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$2;
.super Lcom/callapp/contacts/manager/task/SafeRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->loadNative(Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;Lcom/callapp/contacts/util/ads/NativeAdParamGetter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

.field final synthetic val$jsonPostBidderAdUnit:Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;

.field final synthetic val$nativeAdParamGetter:Lcom/callapp/contacts/util/ads/NativeAdParamGetter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;Lcom/callapp/contacts/util/ads/NativeAdParamGetter;Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$2;->val$nativeAdParamGetter:Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

    iput-object p3, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$2;->val$jsonPostBidderAdUnit:Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 10

    .line 156
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$2;->val$nativeAdParamGetter:Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$2;->val$jsonPostBidderAdUnit:Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/callapp/contacts/util/ads/NativeAdParamGetter;->a(Ljava/lang/String;)Lcom/callapp/contacts/util/ads/AdSettings;

    move-result-object v2

    .line 157
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$2;->val$nativeAdParamGetter:Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

    invoke-interface {v0, v2}, Lcom/callapp/contacts/util/ads/NativeAdParamGetter;->a(Lcom/callapp/contacts/util/ads/AdSettings;)Lcom/mopub/nativeads/ViewBinder;

    move-result-object v3

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$2;->val$nativeAdParamGetter:Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

    invoke-interface {v0, v2}, Lcom/callapp/contacts/util/ads/NativeAdParamGetter;->b(Lcom/callapp/contacts/util/ads/AdSettings;)Ljava/util/EnumSet;

    move-result-object v4

    new-instance v5, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$2$1;

    invoke-direct {v5, p0}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$2$1;-><init>(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$2;)V

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    .line 194
    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$800(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)Ljava/util/Map;

    move-result-object v7

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$900(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$600(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)Lcom/callapp/contacts/util/ads/JSONPostBidder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONPostBidder;->isCallappDisableRefresh()Z

    move-result v9

    const/4 v6, 0x0

    .line 157
    invoke-static/range {v2 .. v9}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Lcom/callapp/contacts/util/ads/AdSettings;Lcom/mopub/nativeads/ViewBinder;Ljava/util/EnumSet;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;ZLjava/util/Map;Ljava/lang/Double;Z)Lcom/mopub/nativeads/MoPubNative;

    return-void
.end method

.method public handleException(Ljava/lang/Throwable;)V
    .locals 0

    .line 199
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$700(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)V

    return-void
.end method
