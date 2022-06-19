.class Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$4;
.super Lcom/callapp/contacts/manager/task/SafeRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->loadInterstitialAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

.field final synthetic val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$4;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 4

    .line 321
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    new-instance v1, Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$400(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    iget-object v3, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v3}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$600(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/callapp/contacts/util/ads/JSONBidder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/mopub/mobileads/MoPubInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$1202(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial;

    .line 322
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$1200(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$4$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$4$1;-><init>(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$4;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->setInterstitialAdListener(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;)V

    .line 348
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$1200(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v0

    const-class v1, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$1300(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/MoPubInterstitial;->fakeLoad(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public handleException(Ljava/lang/Throwable;)V
    .locals 2

    .line 353
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$4;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$1200(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, v0, v1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method
