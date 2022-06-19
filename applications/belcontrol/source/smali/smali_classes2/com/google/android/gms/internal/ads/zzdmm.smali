.class public final Lcom/google/android/gms/internal/ads/zzdmm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcze;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcze<",
        "Lcom/google/android/gms/internal/ads/zzchb;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzhis:Lcom/google/android/gms/internal/ads/zzdmk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdmk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmm;->zzhis:Lcom/google/android/gms/internal/ads/zzdmk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzchb;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmm;->zzhis:Lcom/google/android/gms/internal/ads/zzdmk;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmm;->zzhis:Lcom/google/android/gms/internal/ads/zzdmk;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzdmk;->zza(Lcom/google/android/gms/internal/ads/zzdmk;Lcom/google/android/gms/internal/ads/zzchb;)Lcom/google/android/gms/internal/ads/zzchb;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmm;->zzhis:Lcom/google/android/gms/internal/ads/zzdmk;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdmk;->zza(Lcom/google/android/gms/internal/ads/zzdmk;)Lcom/google/android/gms/internal/ads/zzchb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbnt;->zzakb()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzasi()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmm;->zzhis:Lcom/google/android/gms/internal/ads/zzdmk;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmm;->zzhis:Lcom/google/android/gms/internal/ads/zzdmk;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdmk;->zza(Lcom/google/android/gms/internal/ads/zzdmk;Lcom/google/android/gms/internal/ads/zzchb;)Lcom/google/android/gms/internal/ads/zzchb;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
