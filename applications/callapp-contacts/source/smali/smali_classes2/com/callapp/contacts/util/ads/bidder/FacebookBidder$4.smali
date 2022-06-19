.class Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->loadBannerAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;

.field final synthetic val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$4;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 2

    .line 277
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->access$900(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 278
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->access$200(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;)Lcom/callapp/contacts/util/ads/JSONBidder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->access$800(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;)Lcom/facebook/ads/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->getHeight()I

    move-result v0

    invoke-static {v0}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->getAdTypeAndSizeForBanner(I)Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->access$1000(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;)Ljava/lang/String;

    const-string v1, "facebook"

    invoke-static {v1, p1, v0}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->c(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;)V

    :cond_0
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 2

    .line 268
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->access$500(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->access$700(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;)Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Landroid/content/Context;Lcom/mopub/mobileads/MoPubView$MoPubAdSize;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->access$602(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;Lcom/mopub/mobileads/MoPubView;)Lcom/mopub/mobileads/MoPubView;

    .line 269
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->access$600(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;)Lcom/mopub/mobileads/MoPubView;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->access$800(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;)Lcom/facebook/ads/AdView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/MoPubView;->setAdContentView(Landroid/view/View;)V

    .line 270
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->access$600(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;)Lcom/mopub/mobileads/MoPubView;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->access$200(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;)Lcom/callapp/contacts/util/ads/JSONBidder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/MoPubView;->setAdUnitId(Ljava/lang/String;)V

    .line 272
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$4;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->access$600(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->access$200(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;)Lcom/callapp/contacts/util/ads/JSONBidder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONBidder;->isCallappDisableRefresh()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onBannerAdLoaded(Lcom/mopub/mobileads/MoPubView;Z)V

    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 1

    .line 234
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result p1

    const/16 p2, 0x834

    if-eq p1, p2, :cond_1

    const/16 p2, 0xbb9

    if-eq p1, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 260
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 251
    :pswitch_0
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_CACHE_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 239
    :pswitch_1
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 248
    :pswitch_2
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->SERVER_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 245
    :pswitch_3
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->CANCELLED:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 236
    :pswitch_4
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 242
    :pswitch_5
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_CONNECTION:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 254
    :cond_0
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 257
    :cond_1
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_PLAYBACK_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 263
    :goto_0
    iget-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$4;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    const/4 v0, 0x0

    invoke-interface {p2, v0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onBannerAdFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7d0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 6

    .line 284
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->access$900(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 285
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->access$200(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;)Lcom/callapp/contacts/util/ads/JSONBidder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->access$000(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;)Lcom/facebook/biddingkit/c/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/facebook/biddingkit/c/b;->getPrice()D

    move-result-wide v2

    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->access$800(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;)Lcom/facebook/ads/AdView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/AdView;->getHeight()I

    move-result p1

    invoke-static {p1}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->getAdTypeAndSizeForBanner(I)Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    move-result-object v4

    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->access$1000(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "facebook"

    invoke-static/range {v0 .. v5}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;DLcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;Ljava/lang/String;)V

    return-void
.end method
