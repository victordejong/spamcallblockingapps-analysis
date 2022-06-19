.class public Lcom/mopub/nativeads/GooglePlayServicesNative$a$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/GooglePlayServicesNative$a;->loadAd(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/mopub/nativeads/GooglePlayServicesNative$a;


# direct methods
.method public constructor <init>(Lcom/mopub/nativeads/GooglePlayServicesNative$a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a$c;->b:Lcom/mopub/nativeads/GooglePlayServicesNative$a;

    iput-object p2, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a$c;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentAdLoaded(Lcom/google/android/gms/ads/formats/NativeContentAd;)V
    .locals 3

    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a$c;->b:Lcom/mopub/nativeads/GooglePlayServicesNative$a;

    invoke-static {v0, p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->l(Lcom/mopub/nativeads/GooglePlayServicesNative$a;Lcom/google/android/gms/ads/formats/NativeContentAd;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "MoPubToAdMobNative"

    const-string v0, "The Google native content ad is missing one or more required assets, failing request."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a$c;->b:Lcom/mopub/nativeads/GooglePlayServicesNative$a;

    invoke-static {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->g(Lcom/mopub/nativeads/GooglePlayServicesNative$a;)Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    move-result-object p1

    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->INVALID_RESPONSE:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a$c;->b:Lcom/mopub/nativeads/GooglePlayServicesNative$a;

    invoke-static {v0, p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->n(Lcom/mopub/nativeads/GooglePlayServicesNative$a;Lcom/google/android/gms/ads/formats/NativeContentAd;)Lcom/google/android/gms/ads/formats/NativeContentAd;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getImages()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/formats/NativeAd$Image;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getLogo()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a$c;->b:Lcom/mopub/nativeads/GooglePlayServicesNative$a;

    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a$c;->a:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->k(Lcom/mopub/nativeads/GooglePlayServicesNative$a;Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method
