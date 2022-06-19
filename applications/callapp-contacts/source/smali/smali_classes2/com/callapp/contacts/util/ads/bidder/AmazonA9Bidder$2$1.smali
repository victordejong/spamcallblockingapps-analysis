.class Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/MoPubView$BannerAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBannerClicked(Lcom/mopub/mobileads/MoPubView;)V
    .locals 3

    .line 204
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-interface {p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onAdClick()V

    .line 205
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$200(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/amazon/device/ads/DTBAdResponse;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->getNetworkName(Lcom/amazon/device/ads/DTBAdResponse;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$600(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/callapp/contacts/util/ads/JSONBidder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$500(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/amazon/device/ads/DTBAdSize;

    move-result-object v1

    .line 2046
    iget v1, v1, Lcom/amazon/device/ads/DTBAdSize;->b:I

    .line 205
    invoke-static {v1}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->getAdTypeAndSizeForBanner(I)Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2;

    iget-object v2, v2, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$700(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->c(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;)V

    return-void
.end method

.method public onBannerCollapsed(Lcom/mopub/mobileads/MoPubView;)V
    .locals 0

    return-void
.end method

.method public onBannerExpanded(Lcom/mopub/mobileads/MoPubView;)V
    .locals 0

    return-void
.end method

.method public onBannerFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-interface {v0, p1, p2}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onBannerAdFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public onBannerLoaded(Lcom/mopub/mobileads/MoPubView;)V
    .locals 6

    .line 192
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$600(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/callapp/contacts/util/ads/JSONBidder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONBidder;->isCallappDisableRefresh()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onBannerAdLoaded(Lcom/mopub/mobileads/MoPubView;Z)V

    .line 194
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$200(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/amazon/device/ads/DTBAdResponse;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->getNetworkName(Lcom/amazon/device/ads/DTBAdResponse;)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$600(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/callapp/contacts/util/ads/JSONBidder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$000(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)D

    move-result-wide v2

    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$500(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/amazon/device/ads/DTBAdSize;

    move-result-object p1

    .line 1046
    iget p1, p1, Lcom/amazon/device/ads/DTBAdSize;->b:I

    .line 194
    invoke-static {p1}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->getAdTypeAndSizeForBanner(I)Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    move-result-object v4

    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$700(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;DLcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;Ljava/lang/String;)V

    return-void
.end method
