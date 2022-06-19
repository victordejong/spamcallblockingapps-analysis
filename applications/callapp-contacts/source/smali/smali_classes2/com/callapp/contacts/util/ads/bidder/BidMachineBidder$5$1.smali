.class Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5;->onAdLoaded(Lio/bidmachine/banner/BannerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5;

.field final synthetic val$bannerView:Lio/bidmachine/banner/BannerView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5;Lio/bidmachine/banner/BannerView;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5$1;->val$bannerView:Lio/bidmachine/banner/BannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 273
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$500(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$700(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5;

    iget-object v2, v2, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5;->val$moPubAdSize:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Landroid/content/Context;Lcom/mopub/mobileads/MoPubView$MoPubAdSize;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$602(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;Lcom/mopub/mobileads/MoPubView;)Lcom/mopub/mobileads/MoPubView;

    .line 275
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$600(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5$1;->val$bannerView:Lio/bidmachine/banner/BannerView;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setAdContentView(Landroid/view/View;)V

    .line 276
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$600(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$800(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lcom/callapp/contacts/util/ads/JSONBidder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setAdUnitId(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$600(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5;

    iget-object v2, v2, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$800(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lcom/callapp/contacts/util/ads/JSONBidder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/util/ads/JSONBidder;->isCallappDisableRefresh()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onBannerAdLoaded(Lcom/mopub/mobileads/MoPubView;Z)V

    :cond_0
    return-void
.end method
