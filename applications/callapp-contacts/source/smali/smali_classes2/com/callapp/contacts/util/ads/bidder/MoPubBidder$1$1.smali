.class Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$1;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$1;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$1$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$1;

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

.method public onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$1$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$1;->val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeErrorCode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onNativeAdLoaded(Lcom/mopub/nativeads/NativeAd;Z)V
    .locals 1

    .line 70
    iget-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$1$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$1;

    iget-object p2, p2, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$1;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;

    invoke-static {p2}, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->access$000(Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeAd;->destroy()V

    goto :goto_0

    .line 73
    :cond_0
    iget-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$1$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$1;

    iget-object p2, p2, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$1;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;

    invoke-static {p2, p1}, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->access$102(Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;Lcom/mopub/nativeads/NativeAd;)Lcom/mopub/nativeads/NativeAd;

    .line 76
    :goto_0
    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeAd;->getBaseNativeAd()Lcom/mopub/nativeads/BaseNativeAd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/nativeads/BaseNativeAd;->getPublisherRevenue()D

    move-result-wide p1

    .line 77
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$1$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$1;->val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

    invoke-interface {v0, p1, p2}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(D)V

    return-void
.end method
