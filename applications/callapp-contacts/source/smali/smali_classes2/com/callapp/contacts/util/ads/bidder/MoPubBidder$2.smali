.class Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->loadBanner(Landroid/content/Context;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;Lcom/mopub/mobileads/MoPubView$MoPubAdSize;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;

.field final synthetic val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$2;->val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

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
    .locals 1

    .line 121
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    .line 123
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->access$300(Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$2;->val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

    invoke-virtual {p2}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onBannerAdLoaded(Lcom/mopub/mobileads/MoPubView;Z)V
    .locals 2

    .line 106
    iget-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;

    invoke-static {p2}, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->access$000(Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 107
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    return-void

    .line 109
    :cond_0
    iget-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;

    invoke-static {p2, p1}, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->access$202(Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;Lcom/mopub/mobileads/MoPubView;)Lcom/mopub/mobileads/MoPubView;

    .line 111
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->access$200(Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;)Lcom/mopub/mobileads/MoPubView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubView;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/mobileads/AdViewController;->getPublisherRevenue()D

    move-result-wide p1

    .line 113
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->access$300(Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$2;->val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

    invoke-interface {v0, p1, p2}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(D)V

    :cond_1
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
