.class final Lcom/mopub/nativeads/GooglePlayServicesNative$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/nativeads/NativeImageHelper$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/GooglePlayServicesNative$b;->a(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/nativeads/GooglePlayServicesNative$b;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/GooglePlayServicesNative$b;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$b$1;->a:Lcom/mopub/nativeads/GooglePlayServicesNative$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onImagesCached()V
    .locals 4

    .line 428
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$b$1;->a:Lcom/mopub/nativeads/GooglePlayServicesNative$b;

    iget-object v0, v0, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->f:Lcom/google/android/gms/ads/formats/UnifiedNativeAd;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$b$1;->a:Lcom/mopub/nativeads/GooglePlayServicesNative$b;

    iget-object v1, v0, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->f:Lcom/google/android/gms/ads/formats/UnifiedNativeAd;

    invoke-static {v0, v1}, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->a(Lcom/mopub/nativeads/GooglePlayServicesNative$b;Lcom/google/android/gms/ads/formats/UnifiedNativeAd;)V

    .line 430
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$b$1;->a:Lcom/mopub/nativeads/GooglePlayServicesNative$b;

    iget-object v0, v0, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->h:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    iget-object v1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$b$1;->a:Lcom/mopub/nativeads/GooglePlayServicesNative$b;

    invoke-interface {v0, v1}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdLoaded(Lcom/mopub/nativeads/BaseNativeAd;)V

    .line 433
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/mopub/nativeads/GooglePlayServicesNative;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onImagesFailedToCache(Lcom/mopub/nativeads/NativeErrorCode;)V
    .locals 4

    .line 439
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$b$1;->a:Lcom/mopub/nativeads/GooglePlayServicesNative$b;

    iget-object v0, v0, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->h:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    invoke-interface {v0, p1}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    .line 441
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/nativeads/GooglePlayServicesNative;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 442
    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeErrorCode;->getIntCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p1, v1, v2

    .line 441
    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method
