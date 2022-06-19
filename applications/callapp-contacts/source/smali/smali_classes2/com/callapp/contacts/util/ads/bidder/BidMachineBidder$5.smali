.class Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/banner/BannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->loadBannerAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubView$MoPubAdSize;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

.field final synthetic val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

.field final synthetic val$moPubAdSize:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;Lcom/mopub/mobileads/MoPubView$MoPubAdSize;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5;->val$moPubAdSize:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    iput-object p3, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onAdClicked(Lio/bidmachine/IAd;)V
    .locals 0

    .line 267
    check-cast p1, Lio/bidmachine/banner/BannerView;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5;->onAdClicked(Lio/bidmachine/banner/BannerView;)V

    return-void
.end method

.method public onAdClicked(Lio/bidmachine/banner/BannerView;)V
    .locals 2

    .line 300
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$800(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lcom/callapp/contacts/util/ads/JSONBidder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5;->val$moPubAdSize:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    invoke-static {v0}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->a(Lcom/mopub/mobileads/MoPubView$MoPubAdSize;)Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$900(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Ljava/lang/String;

    const-string v1, "bidmachine"

    invoke-static {v1, p1, v0}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->c(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;)V

    return-void
.end method

.method public bridge synthetic onAdExpired(Lio/bidmachine/IAd;)V
    .locals 0

    .line 267
    check-cast p1, Lio/bidmachine/banner/BannerView;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5;->onAdExpired(Lio/bidmachine/banner/BannerView;)V

    return-void
.end method

.method public onAdExpired(Lio/bidmachine/banner/BannerView;)V
    .locals 2

    .line 305
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onBannerAdFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public bridge synthetic onAdImpression(Lio/bidmachine/IAd;)V
    .locals 0

    .line 267
    check-cast p1, Lio/bidmachine/banner/BannerView;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5;->onAdImpression(Lio/bidmachine/banner/BannerView;)V

    return-void
.end method

.method public onAdImpression(Lio/bidmachine/banner/BannerView;)V
    .locals 6

    .line 295
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$800(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lcom/callapp/contacts/util/ads/JSONBidder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$200(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)D

    move-result-wide v2

    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5;->val$moPubAdSize:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    invoke-static {p1}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->a(Lcom/mopub/mobileads/MoPubView$MoPubAdSize;)Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    move-result-object v4

    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$900(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "bidmachine"

    invoke-static/range {v0 .. v5}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;DLcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onAdLoadFailed(Lio/bidmachine/IAd;Lio/bidmachine/utils/BMError;)V
    .locals 0

    .line 267
    check-cast p1, Lio/bidmachine/banner/BannerView;

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5;->onAdLoadFailed(Lio/bidmachine/banner/BannerView;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onAdLoadFailed(Lio/bidmachine/banner/BannerView;Lio/bidmachine/utils/BMError;)V
    .locals 1

    .line 286
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onBannerAdFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public bridge synthetic onAdLoaded(Lio/bidmachine/IAd;)V
    .locals 0

    .line 267
    check-cast p1, Lio/bidmachine/banner/BannerView;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5;->onAdLoaded(Lio/bidmachine/banner/BannerView;)V

    return-void
.end method

.method public onAdLoaded(Lio/bidmachine/banner/BannerView;)V
    .locals 2

    .line 270
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5$1;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5$1;-><init>(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5;Lio/bidmachine/banner/BannerView;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic onAdShown(Lio/bidmachine/IAd;)V
    .locals 0

    .line 267
    check-cast p1, Lio/bidmachine/banner/BannerView;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5;->onAdShown(Lio/bidmachine/banner/BannerView;)V

    return-void
.end method

.method public onAdShown(Lio/bidmachine/banner/BannerView;)V
    .locals 0

    return-void
.end method
