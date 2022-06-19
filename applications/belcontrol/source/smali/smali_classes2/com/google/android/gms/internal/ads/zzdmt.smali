.class public final Lcom/google/android/gms/internal/ads/zzdmt;
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
.field private final synthetic zzhiv:Lcom/google/android/gms/internal/ads/zzdmq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdmq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmt;->zzhiv:Lcom/google/android/gms/internal/ads/zzdmq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzchb;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmt;->zzhiv:Lcom/google/android/gms/internal/ads/zzdmq;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmt;->zzhiv:Lcom/google/android/gms/internal/ads/zzdmq;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzdmq;->zza(Lcom/google/android/gms/internal/ads/zzdmq;Lcom/google/android/gms/internal/ads/zzchb;)Lcom/google/android/gms/internal/ads/zzchb;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmt;->zzhiv:Lcom/google/android/gms/internal/ads/zzdmq;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdmq;->zza(Lcom/google/android/gms/internal/ads/zzdmq;)Lcom/google/android/gms/internal/ads/zzchb;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmt;->zzhiv:Lcom/google/android/gms/internal/ads/zzdmq;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmt;->zzhiv:Lcom/google/android/gms/internal/ads/zzdmq;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdmq;->zza(Lcom/google/android/gms/internal/ads/zzdmq;Lcom/google/android/gms/internal/ads/zzchb;)Lcom/google/android/gms/internal/ads/zzchb;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
