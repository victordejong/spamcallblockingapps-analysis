.class Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->loadInterstitial(Lcom/callapp/contacts/util/ads/AppBidder$BidListener;)V
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

    .line 220
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$3;->val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 224
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->access$700(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "callapp_bid_price"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    new-instance v2, Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->access$400(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    iget-object v4, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    invoke-static {v4}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->access$600(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;->getAdUnitId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/mopub/mobileads/MoPubInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->access$1002(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial;

    .line 227
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->access$1000(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/MoPubInterstitial;->setLocalExtras(Ljava/util/Map;)V

    .line 228
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->access$1000(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$3$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$3$1;-><init>(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$3;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->setInterstitialAdListener(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;)V

    .line 254
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->access$1000(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v0

    const-class v1, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->access$1100(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/MoPubInterstitial;->fakeLoad(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
