.class public final Lcom/google/android/gms/internal/ads/zzcyx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcze;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcze<",
        "Lcom/google/android/gms/internal/ads/zzbnt;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzgyw:Lcom/google/android/gms/internal/ads/zzcyy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcyy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyx;->zzgyw:Lcom/google/android/gms/internal/ads/zzcyy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbnt;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyx;->zzgyw:Lcom/google/android/gms/internal/ads/zzcyy;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcyx;->zzgyw:Lcom/google/android/gms/internal/ads/zzcyy;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcyy;->zza(Lcom/google/android/gms/internal/ads/zzcyy;Z)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcyx;->zzgyw:Lcom/google/android/gms/internal/ads/zzcyy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbnt;->zzakr()Lcom/google/android/gms/internal/ads/zzbrh;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcyy;->zza(Lcom/google/android/gms/internal/ads/zzcyy;Lcom/google/android/gms/internal/ads/zzyx;)Lcom/google/android/gms/internal/ads/zzyx;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyx;->zzgyw:Lcom/google/android/gms/internal/ads/zzcyy;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcyx;->zzgyw:Lcom/google/android/gms/internal/ads/zzcyy;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcyy;->zza(Lcom/google/android/gms/internal/ads/zzcyy;Z)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
