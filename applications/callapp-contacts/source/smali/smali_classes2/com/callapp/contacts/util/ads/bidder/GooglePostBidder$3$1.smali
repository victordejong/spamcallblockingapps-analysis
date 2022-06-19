.class Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$3;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$3;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterstitialClicked(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->access$900(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onInterstitialClicked(Lcom/mopub/mobileads/MoPubInterstitial;)V

    return-void
.end method

.method public onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->access$900(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V

    return-void
.end method

.method public onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0

    .line 236
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$3;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$3;->val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

    invoke-virtual {p2}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 4

    .line 231
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$3;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$3;->val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->access$700(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)D

    move-result-wide v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    add-double/2addr v0, v2

    invoke-interface {p1, v0, v1}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(D)V

    return-void
.end method

.method public onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->access$900(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V

    return-void
.end method
