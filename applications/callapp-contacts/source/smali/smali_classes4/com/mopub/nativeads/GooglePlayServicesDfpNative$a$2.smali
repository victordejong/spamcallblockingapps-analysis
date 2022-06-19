.class final Lcom/mopub/nativeads/GooglePlayServicesDfpNative$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/formats/UnifiedNativeAd$OnUnifiedNativeAdLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/GooglePlayServicesDfpNative$a;->loadAd(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/mopub/nativeads/GooglePlayServicesDfpNative$a;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/GooglePlayServicesDfpNative$a;Landroid/content/Context;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesDfpNative$a$2;->b:Lcom/mopub/nativeads/GooglePlayServicesDfpNative$a;

    iput-object p2, p0, Lcom/mopub/nativeads/GooglePlayServicesDfpNative$a$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUnifiedNativeAdLoaded(Lcom/google/android/gms/ads/formats/UnifiedNativeAd;)V
    .locals 5

    .line 197
    invoke-static {p1}, Lcom/mopub/nativeads/GooglePlayServicesDfpNative$a;->a(Lcom/google/android/gms/ads/formats/UnifiedNativeAd;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 198
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/nativeads/GooglePlayServicesDfpNative;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v3, "The Google native unified ad is missing one or more required assets, failing request."

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 201
    iget-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesDfpNative$a$2;->b:Lcom/mopub/nativeads/GooglePlayServicesDfpNative$a;

    iget-object p1, p1, Lcom/mopub/nativeads/GooglePlayServicesDfpNative$a;->h:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    sget-object v2, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_NO_FILL:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p1, v2}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    .line 204
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/nativeads/GooglePlayServicesDfpNative;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    sget-object v1, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_NO_FILL:Lcom/mopub/nativeads/NativeErrorCode;

    .line 205
    invoke-virtual {v1}, Lcom/mopub/nativeads/NativeErrorCode;->getIntCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    sget-object v1, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_NO_FILL:Lcom/mopub/nativeads/NativeErrorCode;

    aput-object v1, v2, v0

    .line 204
    invoke-static {p1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesDfpNative$a$2;->b:Lcom/mopub/nativeads/GooglePlayServicesDfpNative$a;

    iput-object p1, v0, Lcom/mopub/nativeads/GooglePlayServicesDfpNative$a;->f:Lcom/google/android/gms/ads/formats/UnifiedNativeAd;

    .line 213
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getImages()Ljava/util/List;

    move-result-object v0

    .line 214
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 216
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/formats/NativeAd$Image;

    .line 219
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getIcon()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object p1

    .line 224
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesDfpNative$a$2;->b:Lcom/mopub/nativeads/GooglePlayServicesDfpNative$a;

    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesDfpNative$a$2;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/mopub/nativeads/GooglePlayServicesDfpNative$a;->a(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method
