.class public final Lcom/google/android/gms/internal/ads/zzcxt;
.super Lcom/google/android/gms/internal/ads/zzxg;
.source ""


# instance fields
.field private final zzgxs:Lcom/google/android/gms/internal/ads/zzcyy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbgc;Lcom/google/android/gms/internal/ads/zzdnr;Lcom/google/android/gms/internal/ads/zzcco;Lcom/google/android/gms/internal/ads/zzwx;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxg;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcza;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbgc;->zzaez()Lcom/google/android/gms/internal/ads/zzdrz;

    move-result-object v1

    invoke-direct {v0, p4, v1}, Lcom/google/android/gms/internal/ads/zzcza;-><init>(Lcom/google/android/gms/internal/ads/zzcco;Lcom/google/android/gms/internal/ads/zzdrz;)V

    invoke-virtual {v0, p5}, Lcom/google/android/gms/internal/ads/zzcza;->zzd(Lcom/google/android/gms/internal/ads/zzwx;)V

    new-instance p4, Lcom/google/android/gms/internal/ads/zzczg;

    invoke-direct {p4, p2, p1, v0, p3}, Lcom/google/android/gms/internal/ads/zzczg;-><init>(Lcom/google/android/gms/internal/ads/zzbgc;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcza;Lcom/google/android/gms/internal/ads/zzdnr;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcyy;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzdnr;->zzavf()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p4, p2}, Lcom/google/android/gms/internal/ads/zzcyy;-><init>(Lcom/google/android/gms/internal/ads/zzczc;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxt;->zzgxs:Lcom/google/android/gms/internal/ads/zzcyy;

    return-void
.end method


# virtual methods
.method public final declared-synchronized getMediationAdapterClassName()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxt;->zzgxs:Lcom/google/android/gms/internal/ads/zzcyy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcyy;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isLoading()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxt;->zzgxs:Lcom/google/android/gms/internal/ads/zzcyy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcyy;->isLoading()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzvl;I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxt;->zzgxs:Lcom/google/android/gms/internal/ads/zzcyy;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcyy;->zza(Lcom/google/android/gms/internal/ads/zzvl;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzvl;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxt;->zzgxs:Lcom/google/android/gms/internal/ads/zzcyy;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzcyy;->zza(Lcom/google/android/gms/internal/ads/zzvl;I)V

    return-void
.end method

.method public final declared-synchronized zzkh()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxt;->zzgxs:Lcom/google/android/gms/internal/ads/zzcyy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcyy;->zzkh()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
