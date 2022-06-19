.class Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->loadInterstitial(Landroid/content/Context;Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onAdClick()V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onAdClick(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V

    return-void
.end method

.method public synthetic onBannerAdFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onBannerAdFailed(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public synthetic onBannerAdLoaded(Lcom/mopub/mobileads/MoPubView;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onBannerAdLoaded(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubView;Z)V

    return-void
.end method

.method public onInterstitialClicked(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$1000(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$1000(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onInterstitialClicked(Lcom/mopub/mobileads/MoPubInterstitial;)V

    :cond_0
    return-void
.end method

.method public onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$1000(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$1000(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V

    :cond_0
    return-void
.end method

.method public onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0

    .line 265
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial;->destroy()V

    .line 267
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$700(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)V

    return-void
.end method

.method public onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 6

    .line 245
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$300(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial;->destroy()V

    goto :goto_0

    .line 248
    :cond_0
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->getPublisherRevenue()D

    move-result-wide v0

    .line 250
    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$400(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 251
    :try_start_0
    iget-object v3, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    invoke-static {v3}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$500(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    invoke-static {v3}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$500(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    move-result-object v3

    iget-wide v3, v3, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->price:D

    cmpg-double v5, v3, v0

    if-gez v5, :cond_2

    .line 252
    :cond_1
    iget-object v3, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    new-instance v4, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    invoke-direct {v4}, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;-><init>()V

    invoke-static {v3, v4}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$502(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;)Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    .line 253
    iget-object v3, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    invoke-static {v3}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$500(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    move-result-object v3

    iput-wide v0, v3, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->price:D

    .line 254
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$500(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    move-result-object v0

    iput-object p1, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 255
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$500(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$600(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)Lcom/callapp/contacts/util/ads/JSONPostBidder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONPostBidder;->isCallappDisableRefresh()Z

    move-result v0

    iput-boolean v0, p1, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->disableRefresh:Z

    .line 257
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$700(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)V

    return-void

    :catchall_0
    move-exception p1

    .line 257
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$1000(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$1000(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V

    :cond_0
    return-void
.end method

.method public synthetic onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onNativeAdFailed(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void
.end method

.method public synthetic onNativeAdLoaded(Lcom/mopub/nativeads/NativeAd;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onNativeAdLoaded(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/nativeads/NativeAd;Z)V

    return-void
.end method
