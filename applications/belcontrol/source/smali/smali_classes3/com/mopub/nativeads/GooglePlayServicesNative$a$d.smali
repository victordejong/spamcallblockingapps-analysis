.class public Lcom/mopub/nativeads/GooglePlayServicesNative$a$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/mopub/nativeads/NativeImageHelper$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/GooglePlayServicesNative$a;->u(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mopub/nativeads/GooglePlayServicesNative$a;


# direct methods
.method public constructor <init>(Lcom/mopub/nativeads/GooglePlayServicesNative$a;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a$d;->a:Lcom/mopub/nativeads/GooglePlayServicesNative$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImagesCached()V
    .locals 2

    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a$d;->a:Lcom/mopub/nativeads/GooglePlayServicesNative$a;

    invoke-static {v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->m(Lcom/mopub/nativeads/GooglePlayServicesNative$a;)Lcom/google/android/gms/ads/formats/NativeContentAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a$d;->a:Lcom/mopub/nativeads/GooglePlayServicesNative$a;

    invoke-static {v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->m(Lcom/mopub/nativeads/GooglePlayServicesNative$a;)Lcom/google/android/gms/ads/formats/NativeContentAd;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->o(Lcom/mopub/nativeads/GooglePlayServicesNative$a;Lcom/google/android/gms/ads/formats/NativeContentAd;)V

    :goto_0
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a$d;->a:Lcom/mopub/nativeads/GooglePlayServicesNative$a;

    invoke-static {v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->g(Lcom/mopub/nativeads/GooglePlayServicesNative$a;)Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a$d;->a:Lcom/mopub/nativeads/GooglePlayServicesNative$a;

    invoke-interface {v0, v1}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdLoaded(Lcom/mopub/nativeads/BaseNativeAd;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a$d;->a:Lcom/mopub/nativeads/GooglePlayServicesNative$a;

    invoke-static {v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->i(Lcom/mopub/nativeads/GooglePlayServicesNative$a;)Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a$d;->a:Lcom/mopub/nativeads/GooglePlayServicesNative$a;

    invoke-static {v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->i(Lcom/mopub/nativeads/GooglePlayServicesNative$a;)Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->p(Lcom/mopub/nativeads/GooglePlayServicesNative$a;Lcom/google/android/gms/ads/formats/NativeAppInstallAd;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onImagesFailedToCache(Lcom/mopub/nativeads/NativeErrorCode;)V
    .locals 1

    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a$d;->a:Lcom/mopub/nativeads/GooglePlayServicesNative$a;

    invoke-static {v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->g(Lcom/mopub/nativeads/GooglePlayServicesNative$a;)Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void
.end method
