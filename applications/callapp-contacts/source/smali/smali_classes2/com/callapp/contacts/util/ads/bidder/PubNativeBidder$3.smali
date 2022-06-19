.class Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/presenter/AdPresenter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->loadBannerAd(Lnet/pubnative/lite/sdk/presenter/PresenterFactory;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubView$MoPubAdSize;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;

.field final synthetic val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

.field final synthetic val$moPubAdSize:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;Lcom/mopub/mobileads/MoPubView$MoPubAdSize;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3;->val$moPubAdSize:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    iput-object p3, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lnet/pubnative/lite/sdk/presenter/AdPresenter;)V
    .locals 2

    .line 234
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->access$500(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;)Lcom/callapp/contacts/util/ads/JSONBidder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3;->val$moPubAdSize:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    invoke-static {v0}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->a(Lcom/mopub/mobileads/MoPubView$MoPubAdSize;)Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->access$700(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;)Ljava/lang/String;

    const-string v1, "pubnative"

    invoke-static {v1, p1, v0}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->c(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;)V

    .line 236
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-interface {p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onAdClick()V

    return-void
.end method

.method public onAdError(Lnet/pubnative/lite/sdk/presenter/AdPresenter;)V
    .locals 2

    .line 241
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onBannerAdFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public onAdLoaded(Lnet/pubnative/lite/sdk/presenter/AdPresenter;Landroid/view/View;)V
    .locals 1

    .line 216
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3$1;

    invoke-direct {v0, p0, p2}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3$1;-><init>(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method
