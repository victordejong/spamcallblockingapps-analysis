.class Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->loadInterstitial(Landroid/content/Context;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;)V
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

    .line 131
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$3;->val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

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

    .line 167
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->access$500(Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;)Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->access$500(Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;)Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onInterstitialClicked(Lcom/mopub/mobileads/MoPubInterstitial;)V

    :cond_0
    return-void
.end method

.method public onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->access$500(Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;)Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->access$500(Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;)Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V

    :cond_0
    return-void
.end method

.method public onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .line 150
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial;->destroy()V

    .line 152
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->access$300(Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 153
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$3;->val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

    invoke-virtual {p2}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->access$000(Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial;->destroy()V

    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->access$402(Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial;

    .line 140
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/mobileads/AdViewController;->getPublisherRevenue()D

    move-result-wide v0

    .line 142
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->access$300(Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 143
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$3;->val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

    invoke-interface {p1, v0, v1}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(D)V

    :cond_1
    return-void
.end method

.method public onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->access$500(Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;)Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->access$500(Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;)Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

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
