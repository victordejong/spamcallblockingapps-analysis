.class public final Lcom/google/android/gms/internal/ads/zzaha;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzdgo:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

.field private final synthetic zzdgp:Lcom/google/android/gms/internal/ads/zzxl;

.field private final synthetic zzdgq:Lcom/google/android/gms/internal/ads/zzahb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzahb;Lcom/google/android/gms/ads/admanager/AdManagerAdView;Lcom/google/android/gms/internal/ads/zzxl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaha;->zzdgq:Lcom/google/android/gms/internal/ads/zzahb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaha;->zzdgo:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaha;->zzdgp:Lcom/google/android/gms/internal/ads/zzxl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaha;->zzdgo:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaha;->zzdgp:Lcom/google/android/gms/internal/ads/zzxl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->zza(Lcom/google/android/gms/internal/ads/zzxl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaha;->zzdgq:Lcom/google/android/gms/internal/ads/zzahb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzahb;->zza(Lcom/google/android/gms/internal/ads/zzahb;)Lcom/google/android/gms/ads/formats/OnAdManagerAdViewLoadedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaha;->zzdgo:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/formats/OnAdManagerAdViewLoadedListener;->onAdManagerAdViewLoaded(Lcom/google/android/gms/ads/admanager/AdManagerAdView;)V

    return-void

    :cond_0
    const-string v0, "Could not bind."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzex(Ljava/lang/String;)V

    return-void
.end method
