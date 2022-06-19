.class Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$5;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$5;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$5;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$5$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterstitialClicked(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$5$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$5;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$5;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onInterstitialClicked(Lcom/mopub/mobileads/MoPubInterstitial;)V

    return-void
.end method

.method public onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$5$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$5;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$5;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V

    return-void
.end method

.method public onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$5$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$5;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$5;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-interface {v0, p1, p2}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$5$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$5;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$5;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V

    return-void
.end method

.method public onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$5$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$5;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$5;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V

    return-void
.end method
