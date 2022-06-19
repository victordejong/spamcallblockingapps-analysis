.class Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$4;
.super Lcom/callapp/contacts/manager/task/SafeRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->loadInterstitialAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

.field final synthetic val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$4;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 5

    .line 313
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 315
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$1502(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;Ljava/lang/String;)Ljava/lang/String;

    .line 316
    sget-object v1, Lcom/callapp/contacts/util/ads/BidObjectCache;->a:Lcom/callapp/contacts/util/ads/BidObjectCache$Companion;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$1500(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$000(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/criteo/publisher/Bid;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ads/BidObjectCache$Companion;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 317
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$1500(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "adm"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    new-instance v2, Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$700(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    iget-object v4, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v4}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$100(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/callapp/contacts/util/ads/JSONBidder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/mopub/mobileads/MoPubInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$1602(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial;

    .line 320
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$1600(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/MoPubInterstitial;->setLocalExtras(Ljava/util/Map;)V

    .line 321
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$1600(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$4$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$4$1;-><init>(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$4;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->setInterstitialAdListener(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;)V

    .line 347
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$1600(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v0

    const-class v1, Lcom/mopub/mobileads/CriteoBiddingInterstital;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$1700(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/MoPubInterstitial;->fakeLoad(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public handleException(Ljava/lang/Throwable;)V
    .locals 2

    .line 352
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$4;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$1600(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, v0, v1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method
