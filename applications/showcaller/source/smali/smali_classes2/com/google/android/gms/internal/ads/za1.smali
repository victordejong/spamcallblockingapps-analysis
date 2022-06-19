.class public final Lcom/google/android/gms/internal/ads/za1;
.super Lcom/google/android/gms/internal/ads/m81;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/d30;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/m81<",
        "Lcom/google/android/gms/internal/ads/d30;",
        ">;",
        "Lcom/google/android/gms/internal/ads/d30;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/ja1<",
            "Lcom/google/android/gms/internal/ads/d30;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/m81;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/ya1;->a:Lcom/google/android/gms/internal/ads/l81;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/m81;->Q0(Lcom/google/android/gms/internal/ads/l81;)V

    return-void
.end method

.method public final v(Lcom/google/android/gms/internal/ads/zzccl;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/xa1;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/xa1;-><init>(Lcom/google/android/gms/internal/ads/zzccl;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/m81;->Q0(Lcom/google/android/gms/internal/ads/l81;)V

    return-void
.end method

.method public final declared-synchronized zza()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/wa1;->a:Lcom/google/android/gms/internal/ads/l81;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/m81;->Q0(Lcom/google/android/gms/internal/ads/l81;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
