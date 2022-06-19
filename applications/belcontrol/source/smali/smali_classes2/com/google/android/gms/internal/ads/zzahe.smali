.class public final Lcom/google/android/gms/internal/ads/zzahe;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzdgp:Lcom/google/android/gms/internal/ads/zzxl;

.field private final synthetic zzdgu:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

.field private final synthetic zzdgv:Lcom/google/android/gms/internal/ads/zzahf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzahf;Lcom/google/android/gms/ads/doubleclick/PublisherAdView;Lcom/google/android/gms/internal/ads/zzxl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahe;->zzdgv:Lcom/google/android/gms/internal/ads/zzahf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzahe;->zzdgu:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzahe;->zzdgp:Lcom/google/android/gms/internal/ads/zzxl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahe;->zzdgu:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahe;->zzdgp:Lcom/google/android/gms/internal/ads/zzxl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->zza(Lcom/google/android/gms/internal/ads/zzxl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahe;->zzdgv:Lcom/google/android/gms/internal/ads/zzahf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzahf;->zza(Lcom/google/android/gms/internal/ads/zzahf;)Lcom/google/android/gms/ads/formats/OnPublisherAdViewLoadedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahe;->zzdgu:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/formats/OnPublisherAdViewLoadedListener;->onPublisherAdViewLoaded(Lcom/google/android/gms/ads/doubleclick/PublisherAdView;)V

    return-void

    :cond_0
    const-string v0, "Could not bind."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzex(Ljava/lang/String;)V

    return-void
.end method
