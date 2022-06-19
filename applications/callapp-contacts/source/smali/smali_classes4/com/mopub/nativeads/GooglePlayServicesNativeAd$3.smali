.class final Lcom/mopub/nativeads/GooglePlayServicesNativeAd$3;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->loadAd(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/nativeads/GooglePlayServicesNativeAd;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/GooglePlayServicesNativeAd;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd$3;->a:Lcom/mopub/nativeads/GooglePlayServicesNativeAd;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 4

    .line 242
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClicked()V

    .line 243
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd$3;->a:Lcom/mopub/nativeads/GooglePlayServicesNativeAd;

    invoke-static {v0}, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->b(Lcom/mopub/nativeads/GooglePlayServicesNativeAd;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd$3;->a:Lcom/mopub/nativeads/GooglePlayServicesNativeAd;

    invoke-static {v0}, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->c(Lcom/mopub/nativeads/GooglePlayServicesNativeAd;)Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd$3;->a:Lcom/mopub/nativeads/GooglePlayServicesNativeAd;

    invoke-static {v0}, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->c(Lcom/mopub/nativeads/GooglePlayServicesNativeAd;)Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdClicked()V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd$3;->a:Lcom/mopub/nativeads/GooglePlayServicesNativeAd;

    iget-object v0, v0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd$3;->a:Lcom/mopub/nativeads/GooglePlayServicesNativeAd;

    iget-object v0, v0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd$3;->a:Lcom/mopub/nativeads/GooglePlayServicesNativeAd;

    iget-object v2, v2, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd$3;->a:Lcom/mopub/nativeads/GooglePlayServicesNativeAd;

    invoke-static {v3}, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->b(Lcom/mopub/nativeads/GooglePlayServicesNativeAd;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v3

    invoke-static {v3}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->getAdTypeAndSizeForBanner(I)Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->b(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;)V

    goto :goto_0

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd$3;->a:Lcom/mopub/nativeads/GooglePlayServicesNativeAd;

    invoke-virtual {v0}, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->notifyAdClicked()V

    .line 254
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd$3;->a:Lcom/mopub/nativeads/GooglePlayServicesNativeAd;

    iget-object v0, v0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 255
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd$3;->a:Lcom/mopub/nativeads/GooglePlayServicesNativeAd;

    iget-object v0, v0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd$3;->a:Lcom/mopub/nativeads/GooglePlayServicesNativeAd;

    iget-object v2, v2, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->d:Ljava/lang/String;

    sget-object v3, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->NATIVE:Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    invoke-static {v0, v2, v3}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->b(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;)V

    .line 259
    :cond_2
    :goto_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CLICKED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 1

    .line 282
    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getCode()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 300
    iget-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd$3;->a:Lcom/mopub/nativeads/GooglePlayServicesNativeAd;

    iget-object p1, p1, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->h:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->UNSPECIFIED:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void

    .line 296
    :cond_0
    iget-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd$3;->a:Lcom/mopub/nativeads/GooglePlayServicesNativeAd;

    iget-object p1, p1, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->h:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_NO_FILL:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void

    .line 292
    :cond_1
    iget-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd$3;->a:Lcom/mopub/nativeads/GooglePlayServicesNativeAd;

    iget-object p1, p1, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->h:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->CONNECTION_ERROR:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void

    .line 288
    :cond_2
    iget-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd$3;->a:Lcom/mopub/nativeads/GooglePlayServicesNativeAd;

    iget-object p1, p1, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->h:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_INVALID_REQUEST:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void

    .line 284
    :cond_3
    iget-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd$3;->a:Lcom/mopub/nativeads/GooglePlayServicesNativeAd;

    iget-object p1, p1, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->h:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->NATIVE_ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void
.end method

.method public final onAdImpression()V
    .locals 5

    .line 264
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdImpression()V

    .line 265
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd$3;->a:Lcom/mopub/nativeads/GooglePlayServicesNativeAd;

    invoke-static {v0}, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->b(Lcom/mopub/nativeads/GooglePlayServicesNativeAd;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd$3;->a:Lcom/mopub/nativeads/GooglePlayServicesNativeAd;

    invoke-static {v0}, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->c(Lcom/mopub/nativeads/GooglePlayServicesNativeAd;)Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd$3;->a:Lcom/mopub/nativeads/GooglePlayServicesNativeAd;

    invoke-static {v0}, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->c(Lcom/mopub/nativeads/GooglePlayServicesNativeAd;)Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdImpression()V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd$3;->a:Lcom/mopub/nativeads/GooglePlayServicesNativeAd;

    iget-object v0, v0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd$3;->a:Lcom/mopub/nativeads/GooglePlayServicesNativeAd;

    iget-object v1, v1, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd$3;->a:Lcom/mopub/nativeads/GooglePlayServicesNativeAd;

    iget-wide v2, v2, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->b:D

    iget-object v4, p0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd$3;->a:Lcom/mopub/nativeads/GooglePlayServicesNativeAd;

    invoke-static {v4}, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->b(Lcom/mopub/nativeads/GooglePlayServicesNativeAd;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v4

    invoke-static {v4}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->getAdTypeAndSizeForBanner(I)Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;DLcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;)V

    goto :goto_0

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd$3;->a:Lcom/mopub/nativeads/GooglePlayServicesNativeAd;

    invoke-virtual {v0}, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->notifyAdImpressed()V

    .line 274
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd$3;->a:Lcom/mopub/nativeads/GooglePlayServicesNativeAd;

    iget-object v0, v0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd$3;->a:Lcom/mopub/nativeads/GooglePlayServicesNativeAd;

    iget-object v1, v1, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd$3;->a:Lcom/mopub/nativeads/GooglePlayServicesNativeAd;

    iget-wide v2, v2, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->b:D

    sget-object v4, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->NATIVE:Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;DLcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;)V

    .line 277
    :goto_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method
