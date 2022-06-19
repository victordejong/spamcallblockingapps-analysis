.class Lcom/mopub/nativeads/PubNativeNative$HyBidStaticNativeAd;
.super Lcom/mopub/nativeads/StaticNativeAd;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/models/NativeAd$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/PubNativeNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HyBidStaticNativeAd"
.end annotation


# instance fields
.field private clickReported:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mImpressionTracker:Lcom/mopub/nativeads/ImpressionTracker;

.field private final mListener:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

.field private final mNativeAd:Lnet/pubnative/lite/sdk/models/NativeAd;

.field private final price:D

.field final synthetic this$0:Lcom/mopub/nativeads/PubNativeNative;

.field private final zoneId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mopub/nativeads/PubNativeNative;Lnet/pubnative/lite/sdk/models/NativeAd;Lcom/mopub/nativeads/ImpressionTracker;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;DLjava/lang/String;)V
    .locals 1

    .line 95
    iput-object p1, p0, Lcom/mopub/nativeads/PubNativeNative$HyBidStaticNativeAd;->this$0:Lcom/mopub/nativeads/PubNativeNative;

    invoke-direct {p0}, Lcom/mopub/nativeads/StaticNativeAd;-><init>()V

    .line 89
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/mopub/nativeads/PubNativeNative$HyBidStaticNativeAd;->clickReported:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 96
    iput-object p2, p0, Lcom/mopub/nativeads/PubNativeNative$HyBidStaticNativeAd;->mNativeAd:Lnet/pubnative/lite/sdk/models/NativeAd;

    .line 97
    iput-object p3, p0, Lcom/mopub/nativeads/PubNativeNative$HyBidStaticNativeAd;->mImpressionTracker:Lcom/mopub/nativeads/ImpressionTracker;

    .line 98
    iput-object p4, p0, Lcom/mopub/nativeads/PubNativeNative$HyBidStaticNativeAd;->mListener:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    .line 99
    invoke-direct {p0}, Lcom/mopub/nativeads/PubNativeNative$HyBidStaticNativeAd;->fillData()V

    if-eqz p4, :cond_0

    .line 101
    invoke-interface {p4, p0}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdLoaded(Lcom/mopub/nativeads/BaseNativeAd;)V

    .line 104
    :cond_0
    iput-wide p5, p0, Lcom/mopub/nativeads/PubNativeNative$HyBidStaticNativeAd;->price:D

    .line 105
    iput-object p7, p0, Lcom/mopub/nativeads/PubNativeNative$HyBidStaticNativeAd;->zoneId:Ljava/lang/String;

    return-void
.end method

.method private fillData()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/mopub/nativeads/PubNativeNative$HyBidStaticNativeAd;->mNativeAd:Lnet/pubnative/lite/sdk/models/NativeAd;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/models/NativeAd;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/PubNativeNative$HyBidStaticNativeAd;->setTitle(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/mopub/nativeads/PubNativeNative$HyBidStaticNativeAd;->mNativeAd:Lnet/pubnative/lite/sdk/models/NativeAd;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/models/NativeAd;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/PubNativeNative$HyBidStaticNativeAd;->setText(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/mopub/nativeads/PubNativeNative$HyBidStaticNativeAd;->mNativeAd:Lnet/pubnative/lite/sdk/models/NativeAd;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/models/NativeAd;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/PubNativeNative$HyBidStaticNativeAd;->setIconImageUrl(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/mopub/nativeads/PubNativeNative$HyBidStaticNativeAd;->mNativeAd:Lnet/pubnative/lite/sdk/models/NativeAd;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/models/NativeAd;->getBannerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/PubNativeNative$HyBidStaticNativeAd;->setMainImageUrl(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/mopub/nativeads/PubNativeNative$HyBidStaticNativeAd;->mNativeAd:Lnet/pubnative/lite/sdk/models/NativeAd;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/models/NativeAd;->getCallToActionText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/PubNativeNative$HyBidStaticNativeAd;->setCallToAction(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/mopub/nativeads/PubNativeNative$HyBidStaticNativeAd;->mNativeAd:Lnet/pubnative/lite/sdk/models/NativeAd;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/models/NativeAd;->getRating()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/PubNativeNative$HyBidStaticNativeAd;->setStarRating(Ljava/lang/Double;)V

    .line 115
    iget-object v0, p0, Lcom/mopub/nativeads/PubNativeNative$HyBidStaticNativeAd;->mNativeAd:Lnet/pubnative/lite/sdk/models/NativeAd;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/models/NativeAd;->getContentInfoIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/PubNativeNative$HyBidStaticNativeAd;->setPrivacyInformationIconImageUrl(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/mopub/nativeads/PubNativeNative$HyBidStaticNativeAd;->mNativeAd:Lnet/pubnative/lite/sdk/models/NativeAd;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/models/NativeAd;->getContentInfoClickUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/PubNativeNative$HyBidStaticNativeAd;->setPrivacyInformationIconClickThroughUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clear(Landroid/view/View;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/mopub/nativeads/PubNativeNative$HyBidStaticNativeAd;->mImpressionTracker:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/ImpressionTracker;->removeView(Landroid/view/View;)V

    .line 128
    iget-object p1, p0, Lcom/mopub/nativeads/PubNativeNative$HyBidStaticNativeAd;->mNativeAd:Lnet/pubnative/lite/sdk/models/NativeAd;

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/models/NativeAd;->stopTracking()V

    return-void
.end method

.method public onAdClick(Lnet/pubnative/lite/sdk/models/NativeAd;Landroid/view/View;)V
    .locals 1

    .line 140
    invoke-virtual {p0}, Lcom/mopub/nativeads/PubNativeNative$HyBidStaticNativeAd;->notifyAdClicked()V

    .line 142
    iget-object p1, p0, Lcom/mopub/nativeads/PubNativeNative$HyBidStaticNativeAd;->clickReported:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/mopub/nativeads/PubNativeNative$HyBidStaticNativeAd;->zoneId:Ljava/lang/String;

    sget-object p2, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->NATIVE:Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    iget-object v0, p0, Lcom/mopub/nativeads/PubNativeNative$HyBidStaticNativeAd;->this$0:Lcom/mopub/nativeads/PubNativeNative;

    invoke-static {v0}, Lcom/mopub/nativeads/PubNativeNative;->a(Lcom/mopub/nativeads/PubNativeNative;)Ljava/lang/String;

    const-string v0, "pubnative"

    invoke-static {v0, p1, p2}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->c(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;)V

    :cond_0
    return-void
.end method

.method public onAdImpression(Lnet/pubnative/lite/sdk/models/NativeAd;Landroid/view/View;)V
    .locals 6

    .line 133
    invoke-virtual {p0}, Lcom/mopub/nativeads/PubNativeNative$HyBidStaticNativeAd;->notifyAdImpressed()V

    .line 135
    iget-object v1, p0, Lcom/mopub/nativeads/PubNativeNative$HyBidStaticNativeAd;->zoneId:Ljava/lang/String;

    iget-wide v2, p0, Lcom/mopub/nativeads/PubNativeNative$HyBidStaticNativeAd;->price:D

    sget-object v4, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->NATIVE:Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    iget-object p1, p0, Lcom/mopub/nativeads/PubNativeNative$HyBidStaticNativeAd;->this$0:Lcom/mopub/nativeads/PubNativeNative;

    invoke-static {p1}, Lcom/mopub/nativeads/PubNativeNative;->a(Lcom/mopub/nativeads/PubNativeNative;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "pubnative"

    invoke-static/range {v0 .. v5}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;DLcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;Ljava/lang/String;)V

    return-void
.end method

.method public prepare(Landroid/view/View;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/mopub/nativeads/PubNativeNative$HyBidStaticNativeAd;->mImpressionTracker:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-virtual {v0, p1, p0}, Lcom/mopub/nativeads/ImpressionTracker;->addView(Landroid/view/View;Lcom/mopub/nativeads/ImpressionInterface;)V

    .line 122
    iget-object v0, p0, Lcom/mopub/nativeads/PubNativeNative$HyBidStaticNativeAd;->mNativeAd:Lnet/pubnative/lite/sdk/models/NativeAd;

    invoke-virtual {v0, p1, p0}, Lnet/pubnative/lite/sdk/models/NativeAd;->startTracking(Landroid/view/View;Lnet/pubnative/lite/sdk/models/NativeAd$Listener;)V

    return-void
.end method
