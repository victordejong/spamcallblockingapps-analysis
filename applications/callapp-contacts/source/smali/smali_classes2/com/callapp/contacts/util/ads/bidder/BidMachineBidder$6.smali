.class Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$6;
.super Lcom/callapp/contacts/manager/task/SafeRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->loadInterstitialAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

.field final synthetic val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$6;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$6;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 5

    .line 324
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$6;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$400(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lio/bidmachine/interstitial/InterstitialRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$6;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$400(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lio/bidmachine/interstitial/InterstitialRequest;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/interstitial/InterstitialRequest;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 326
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$6;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->cacheKey:Ljava/lang/String;

    .line 327
    sget-object v1, Lcom/callapp/contacts/util/ads/BidObjectCache;->a:Lcom/callapp/contacts/util/ads/BidObjectCache$Companion;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$6;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->cacheKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$6;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$400(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lio/bidmachine/interstitial/InterstitialRequest;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ads/BidObjectCache$Companion;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 328
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$6;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->cacheKey:Ljava/lang/String;

    const-string v2, "bm_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$6;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    new-instance v2, Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$700(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    iget-object v4, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$6;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v4}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$800(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lcom/callapp/contacts/util/ads/JSONBidder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/mopub/mobileads/MoPubInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$1002(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial;

    .line 331
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$6;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$1000(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/MoPubInterstitial;->setLocalExtras(Ljava/util/Map;)V

    .line 332
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$6;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$1000(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$6$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$6$1;-><init>(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$6;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->setInterstitialAdListener(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;)V

    .line 358
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$6;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$1000(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v0

    const-class v1, Lcom/mopub/mobileads/BidMachineInterstitial;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$6;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$1100(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/MoPubInterstitial;->fakeLoad(Ljava/lang/String;Ljava/util/Map;)V

    .line 359
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$6;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$400(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lio/bidmachine/interstitial/InterstitialRequest;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/interstitial/InterstitialRequest;->notifyMediationWin()V

    return-void

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$6;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$6;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$1000(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v1

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->EXPIRED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public handleException(Ljava/lang/Throwable;)V
    .locals 2

    .line 367
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$6;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$6;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$1000(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, v0, v1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method
