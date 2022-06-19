.class Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->loadBanner(Landroid/content/Context;Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;Lcom/mopub/mobileads/MoPubView$MoPubAdSize;)V
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

    .line 205
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onAdClick()V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onAdClick(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V

    return-void
.end method

.method public onBannerAdFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0

    .line 233
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    .line 235
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$700(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)V

    return-void
.end method

.method public onBannerAdLoaded(Lcom/mopub/mobileads/MoPubView;Z)V
    .locals 5

    .line 208
    iget-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    invoke-static {p2}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$300(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 209
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    goto :goto_2

    .line 211
    :cond_0
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubView;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mopub/mobileads/AdViewController;->getPublisherRevenue()D

    move-result-wide v0

    .line 212
    iget-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    invoke-static {p2}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$400(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 213
    :try_start_0
    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$500(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$500(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    move-result-object v2

    iget-wide v2, v2, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->price:D

    cmpg-double v4, v2, v0

    if-gez v4, :cond_1

    goto :goto_0

    .line 223
    :cond_1
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    goto :goto_1

    .line 215
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$500(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$500(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    move-result-object v2

    iget-object v2, v2, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->nativeAd:Lcom/mopub/nativeads/NativeAd;

    if-eqz v2, :cond_3

    .line 216
    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$500(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    move-result-object v2

    iget-object v2, v2, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->nativeAd:Lcom/mopub/nativeads/NativeAd;

    invoke-virtual {v2}, Lcom/mopub/nativeads/NativeAd;->destroy()V

    .line 218
    :cond_3
    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    new-instance v3, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    invoke-direct {v3}, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;-><init>()V

    invoke-static {v2, v3}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$502(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;)Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    .line 219
    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$500(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    move-result-object v2

    iput-wide v0, v2, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->price:D

    .line 220
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$500(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    move-result-object v0

    iput-object p1, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->moPubView:Lcom/mopub/mobileads/MoPubView;

    .line 221
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$500(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$600(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)Lcom/callapp/contacts/util/ads/JSONPostBidder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONPostBidder;->isCallappDisableRefresh()Z

    move-result v0

    iput-boolean v0, p1, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->disableRefresh:Z

    .line 225
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :goto_2
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$700(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)V

    return-void

    :catchall_0
    move-exception p1

    .line 225
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public synthetic onInterstitialClicked(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onInterstitialClicked(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubInterstitial;)V

    return-void
.end method

.method public synthetic onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onInterstitialDismissed(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubInterstitial;)V

    return-void
.end method

.method public synthetic onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onInterstitialFailed(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public synthetic onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onInterstitialLoaded(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubInterstitial;)V

    return-void
.end method

.method public synthetic onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onInterstitialShown(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubInterstitial;)V

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
