.class final Lcom/mopub/nativeads/GooglePlayServicesNative$a$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/GooglePlayServicesNative$a;->loadAd(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;DLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/nativeads/GooglePlayServicesNative$a;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/GooglePlayServicesNative$a;)V
    .locals 0

    .line 584
    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a$1;->a:Lcom/mopub/nativeads/GooglePlayServicesNative$a;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 5

    .line 587
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClicked()V

    .line 588
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a$1;->a:Lcom/mopub/nativeads/GooglePlayServicesNative$a;

    invoke-virtual {v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->notifyAdClicked()V

    .line 590
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CLICKED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/nativeads/GooglePlayServicesNative;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 592
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a$1;->a:Lcom/mopub/nativeads/GooglePlayServicesNative$a;

    iget-object v0, v0, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a$1;->a:Lcom/mopub/nativeads/GooglePlayServicesNative$a;

    iget-object v0, v0, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a$1;->a:Lcom/mopub/nativeads/GooglePlayServicesNative$a;

    iget-object v1, v1, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->d:Ljava/lang/String;

    sget-object v2, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->NATIVE:Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->c(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;)V

    :cond_0
    return-void
.end method

.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 1

    .line 609
    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getCode()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 627
    iget-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a$1;->a:Lcom/mopub/nativeads/GooglePlayServicesNative$a;

    iget-object p1, p1, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->h:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->UNSPECIFIED:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void

    .line 623
    :cond_0
    iget-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a$1;->a:Lcom/mopub/nativeads/GooglePlayServicesNative$a;

    iget-object p1, p1, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->h:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_NO_FILL:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void

    .line 619
    :cond_1
    iget-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a$1;->a:Lcom/mopub/nativeads/GooglePlayServicesNative$a;

    iget-object p1, p1, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->h:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->CONNECTION_ERROR:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void

    .line 615
    :cond_2
    iget-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a$1;->a:Lcom/mopub/nativeads/GooglePlayServicesNative$a;

    iget-object p1, p1, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->h:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_INVALID_REQUEST:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void

    .line 611
    :cond_3
    iget-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a$1;->a:Lcom/mopub/nativeads/GooglePlayServicesNative$a;

    iget-object p1, p1, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->h:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->NATIVE_ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void
.end method

.method public final onAdImpression()V
    .locals 7

    .line 599
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdImpression()V

    .line 600
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a$1;->a:Lcom/mopub/nativeads/GooglePlayServicesNative$a;

    invoke-virtual {v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->notifyAdImpressed()V

    .line 602
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/nativeads/GooglePlayServicesNative;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 604
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a$1;->a:Lcom/mopub/nativeads/GooglePlayServicesNative$a;

    iget-object v1, v0, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a$1;->a:Lcom/mopub/nativeads/GooglePlayServicesNative$a;

    iget-object v2, v0, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a$1;->a:Lcom/mopub/nativeads/GooglePlayServicesNative$a;

    iget-wide v3, v0, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->b:D

    sget-object v5, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->NATIVE:Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a$1;->a:Lcom/mopub/nativeads/GooglePlayServicesNative$a;

    iget-object v6, v0, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->c:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;DLcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;Ljava/lang/String;)V

    return-void
.end method
