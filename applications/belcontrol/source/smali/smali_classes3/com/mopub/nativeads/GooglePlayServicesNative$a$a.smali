.class public Lcom/mopub/nativeads/GooglePlayServicesNative$a$a;
.super Lcom/google/android/gms/ads/AdListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/GooglePlayServicesNative$a;->loadAd(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
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

    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a$a;->a:Lcom/mopub/nativeads/GooglePlayServicesNative$a;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClicked()V

    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a$a;->a:Lcom/mopub/nativeads/GooglePlayServicesNative$a;

    invoke-virtual {v0}, Lcom/mopub/nativeads/BaseNativeAd;->e()V

    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a$a;->a:Lcom/mopub/nativeads/GooglePlayServicesNative$a;

    invoke-static {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->g(Lcom/mopub/nativeads/GooglePlayServicesNative$a;)Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    move-result-object p1

    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->UNSPECIFIED:Lcom/mopub/nativeads/NativeErrorCode;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a$a;->a:Lcom/mopub/nativeads/GooglePlayServicesNative$a;

    invoke-static {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->g(Lcom/mopub/nativeads/GooglePlayServicesNative$a;)Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    move-result-object p1

    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_NO_FILL:Lcom/mopub/nativeads/NativeErrorCode;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a$a;->a:Lcom/mopub/nativeads/GooglePlayServicesNative$a;

    invoke-static {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->g(Lcom/mopub/nativeads/GooglePlayServicesNative$a;)Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    move-result-object p1

    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->CONNECTION_ERROR:Lcom/mopub/nativeads/NativeErrorCode;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a$a;->a:Lcom/mopub/nativeads/GooglePlayServicesNative$a;

    invoke-static {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->g(Lcom/mopub/nativeads/GooglePlayServicesNative$a;)Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    move-result-object p1

    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_INVALID_REQUEST:Lcom/mopub/nativeads/NativeErrorCode;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a$a;->a:Lcom/mopub/nativeads/GooglePlayServicesNative$a;

    invoke-static {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->g(Lcom/mopub/nativeads/GooglePlayServicesNative$a;)Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    move-result-object p1

    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->NATIVE_ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/nativeads/NativeErrorCode;

    :goto_0
    invoke-interface {p1, v0}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void
.end method

.method public onAdImpression()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdImpression()V

    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a$a;->a:Lcom/mopub/nativeads/GooglePlayServicesNative$a;

    invoke-virtual {v0}, Lcom/mopub/nativeads/BaseNativeAd;->f()V

    return-void
.end method
