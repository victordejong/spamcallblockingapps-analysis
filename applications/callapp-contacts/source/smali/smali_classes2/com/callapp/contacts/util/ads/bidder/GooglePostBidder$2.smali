.class Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;


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


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$2;->val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->access$900(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->access$900(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onAdClick()V

    :cond_0
    return-void
.end method

.method public synthetic onAdCollapsed()V
    .locals 0

    invoke-static {p0}, Lcom/mopub/mobileads/AdLifecycleListener$InlineInteractionListener$-CC;->$default$onAdCollapsed(Lcom/mopub/mobileads/AdLifecycleListener$InlineInteractionListener;)V

    return-void
.end method

.method public synthetic onAdComplete(Lcom/mopub/common/MoPubReward;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/mopub/mobileads/AdLifecycleListener$FullscreenInteractionListener$-CC;->$default$onAdComplete(Lcom/mopub/mobileads/AdLifecycleListener$FullscreenInteractionListener;Lcom/mopub/common/MoPubReward;)V

    return-void
.end method

.method public synthetic onAdDismissed()V
    .locals 0

    invoke-static {p0}, Lcom/mopub/mobileads/AdLifecycleListener$FullscreenInteractionListener$-CC;->$default$onAdDismissed(Lcom/mopub/mobileads/AdLifecycleListener$FullscreenInteractionListener;)V

    return-void
.end method

.method public synthetic onAdExpanded()V
    .locals 0

    invoke-static {p0}, Lcom/mopub/mobileads/AdLifecycleListener$InlineInteractionListener$-CC;->$default$onAdExpanded(Lcom/mopub/mobileads/AdLifecycleListener$InlineInteractionListener;)V

    return-void
.end method

.method public onAdFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$2;->val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onAdImpression()V
    .locals 0

    return-void
.end method

.method public synthetic onAdPauseAutoRefresh()V
    .locals 0

    invoke-static {p0}, Lcom/mopub/mobileads/AdLifecycleListener$InlineInteractionListener$-CC;->$default$onAdPauseAutoRefresh(Lcom/mopub/mobileads/AdLifecycleListener$InlineInteractionListener;)V

    return-void
.end method

.method public synthetic onAdResumeAutoRefresh()V
    .locals 0

    invoke-static {p0}, Lcom/mopub/mobileads/AdLifecycleListener$InlineInteractionListener$-CC;->$default$onAdResumeAutoRefresh(Lcom/mopub/mobileads/AdLifecycleListener$InlineInteractionListener;)V

    return-void
.end method

.method public onAdShown()V
    .locals 0

    return-void
.end method
