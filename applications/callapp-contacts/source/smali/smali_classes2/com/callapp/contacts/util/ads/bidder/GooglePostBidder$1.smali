.class Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->loadNativeOrBanner(Lcom/callapp/contacts/util/ads/AppBidder$BidListener;Lcom/callapp/contacts/util/ads/NativeAdParamGetter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

.field final synthetic val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

.field final synthetic val$nativeAdParamGetter:Lcom/callapp/contacts/util/ads/NativeAdParamGetter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;Lcom/callapp/contacts/util/ads/NativeAdParamGetter;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$1;->this$0:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$1;->val$nativeAdParamGetter:Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

    iput-object p3, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$1;->val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$1;->val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeErrorCode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onNativeAdLoaded(Lcom/mopub/nativeads/BaseNativeAd;)V
    .locals 9

    .line 177
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$1;->this$0:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->access$200(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$1;->val$nativeAdParamGetter:Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$1;->this$0:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->access$600(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/callapp/contacts/util/ads/NativeAdParamGetter;->a(Ljava/lang/String;)Lcom/callapp/contacts/util/ads/AdSettings;

    move-result-object v0

    .line 179
    new-instance v7, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$1;->val$nativeAdParamGetter:Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

    invoke-interface {v1, v0}, Lcom/callapp/contacts/util/ads/NativeAdParamGetter;->a(Lcom/callapp/contacts/util/ads/AdSettings;)Lcom/mopub/nativeads/ViewBinder;

    move-result-object v1

    invoke-direct {v7, v1, v0}, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;-><init>(Lcom/mopub/nativeads/ViewBinder;Lcom/callapp/contacts/util/ads/AdSettings;)V

    .line 181
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$1;->this$0:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    new-instance v8, Lcom/mopub/nativeads/NativeAd;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->access$400(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$1;->this$0:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->access$600(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;->getAdUnitId()Ljava/lang/String;

    move-result-object v5

    move-object v1, v8

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/mopub/nativeads/NativeAd;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/mopub/nativeads/BaseNativeAd;Lcom/mopub/nativeads/MoPubAdRenderer;)V

    invoke-static {v0, v8}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->access$802(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;Lcom/mopub/nativeads/NativeAd;)Lcom/mopub/nativeads/NativeAd;

    .line 183
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$1;->val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$1;->this$0:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->access$700(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)D

    move-result-wide v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    add-double/2addr v0, v2

    invoke-interface {p1, v0, v1}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(D)V

    :cond_0
    return-void
.end method
