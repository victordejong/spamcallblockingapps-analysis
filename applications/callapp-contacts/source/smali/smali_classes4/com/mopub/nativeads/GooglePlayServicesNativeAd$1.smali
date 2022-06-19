.class final Lcom/mopub/nativeads/GooglePlayServicesNativeAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/formats/OnPublisherAdViewLoadedListener;


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

    .line 186
    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd$1;->a:Lcom/mopub/nativeads/GooglePlayServicesNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPublisherAdViewLoaded(Lcom/google/android/gms/ads/doubleclick/PublisherAdView;)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd$1;->a:Lcom/mopub/nativeads/GooglePlayServicesNativeAd;

    invoke-static {v0, p1}, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->a(Lcom/mopub/nativeads/GooglePlayServicesNativeAd;Lcom/google/android/gms/ads/doubleclick/PublisherAdView;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    .line 191
    iget-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd$1;->a:Lcom/mopub/nativeads/GooglePlayServicesNativeAd;

    invoke-static {p1}, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->a(Lcom/mopub/nativeads/GooglePlayServicesNativeAd;)Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 192
    iget-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd$1;->a:Lcom/mopub/nativeads/GooglePlayServicesNativeAd;

    invoke-static {p1}, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->a(Lcom/mopub/nativeads/GooglePlayServicesNativeAd;)Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoaded()V

    :cond_0
    return-void
.end method
