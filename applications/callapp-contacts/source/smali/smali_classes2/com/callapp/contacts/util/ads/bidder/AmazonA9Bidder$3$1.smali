.class Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 4

    .line 291
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-interface {v0}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onAdClick()V

    .line 292
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$200(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/amazon/device/ads/DTBAdResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->getNetworkName(Lcom/amazon/device/ads/DTBAdResponse;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$600(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/callapp/contacts/util/ads/JSONBidder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;

    iget-object v2, v2, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$500(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/amazon/device/ads/DTBAdSize;

    move-result-object v2

    .line 2046
    iget v2, v2, Lcom/amazon/device/ads/DTBAdSize;->b:I

    .line 292
    invoke-static {v2}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->getAdTypeAndSizeForBanner(I)Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;

    iget-object v3, v3, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v3}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$700(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->c(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;)V

    return-void
.end method

.method public onAdClosed()V
    .locals 0

    return-void
.end method

.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 2

    .line 243
    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getCode()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 257
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 254
    :cond_0
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 251
    :cond_1
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_CONNECTION:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 248
    :cond_2
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 245
    :cond_3
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 259
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onBannerAdFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public onAdImpression()V
    .locals 0

    return-void
.end method

.method public onAdLoaded()V
    .locals 8

    .line 273
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$400(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;

    iget-object v2, v2, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$1000(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Landroid/content/Context;Lcom/mopub/mobileads/MoPubView$MoPubAdSize;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$302(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;Lcom/mopub/mobileads/MoPubView;)Lcom/mopub/mobileads/MoPubView;

    .line 274
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$300(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$800(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setAdContentView(Landroid/view/View;)V

    .line 275
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$300(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$600(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/callapp/contacts/util/ads/JSONBidder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setAdUnitId(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$300(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;

    iget-object v2, v2, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$600(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/callapp/contacts/util/ads/JSONBidder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/util/ads/JSONBidder;->isCallappDisableRefresh()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onBannerAdLoaded(Lcom/mopub/mobileads/MoPubView;Z)V

    .line 279
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    new-instance v7, Lcom/mopub/mobileads/InlineVisibilityTracker;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$800(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$800(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getRootView()Landroid/view/View;

    move-result-object v3

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$800(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/mopub/mobileads/InlineVisibilityTracker;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;II)V

    invoke-static {v0, v7}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$1102(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;Lcom/mopub/mobileads/InlineVisibilityTracker;)Lcom/mopub/mobileads/InlineVisibilityTracker;

    .line 280
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$1100(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/mopub/mobileads/InlineVisibilityTracker;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1$1;-><init>(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/InlineVisibilityTracker;->setInlineVisibilityTrackerListener(Lcom/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener;)V

    return-void
.end method

.method public onAdOpened()V
    .locals 4

    .line 264
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-interface {v0}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onAdClick()V

    .line 266
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$900(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$200(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/amazon/device/ads/DTBAdResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->getNetworkName(Lcom/amazon/device/ads/DTBAdResponse;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$600(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/callapp/contacts/util/ads/JSONBidder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;

    iget-object v2, v2, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$500(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/amazon/device/ads/DTBAdSize;

    move-result-object v2

    .line 1046
    iget v2, v2, Lcom/amazon/device/ads/DTBAdSize;->b:I

    .line 267
    invoke-static {v2}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->getAdTypeAndSizeForBanner(I)Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;

    iget-object v3, v3, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v3}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$700(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->c(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;)V

    :cond_0
    return-void
.end method
