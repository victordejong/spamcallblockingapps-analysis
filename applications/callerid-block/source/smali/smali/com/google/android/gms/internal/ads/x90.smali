.class public final Lcom/google/android/gms/internal/ads/x90;
.super Lcom/google/android/gms/internal/ads/tc0;
.source ""

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/tc0<",
        "Lcom/google/android/gms/ads/internal/overlay/q;",
        ">;",
        "Lcom/google/android/gms/ads/internal/overlay/q;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/ne0<",
            "Lcom/google/android/gms/ads/internal/overlay/q;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/tc0;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized K5()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/t90;->a:Lcom/google/android/gms/internal/ads/sc0;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/tc0;->B0(Lcom/google/android/gms/internal/ads/sc0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized M1()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/u90;->a:Lcom/google/android/gms/internal/ads/sc0;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/tc0;->B0(Lcom/google/android/gms/internal/ads/sc0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized T4()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/v90;->a:Lcom/google/android/gms/internal/ads/sc0;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/tc0;->B0(Lcom/google/android/gms/internal/ads/sc0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h0()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/w90;->a:Lcom/google/android/gms/internal/ads/sc0;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/tc0;->B0(Lcom/google/android/gms/internal/ads/sc0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized r1(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/s90;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/s90;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/tc0;->B0(Lcom/google/android/gms/internal/ads/sc0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
