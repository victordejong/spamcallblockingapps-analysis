.class public final Lcom/google/android/gms/internal/ads/atj;
.super Lcom/google/android/gms/internal/ads/awl;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/awl<",
        "Lcom/google/android/gms/ads/internal/overlay/zzp;",
        ">;",
        "Lcom/google/android/gms/ads/internal/overlay/zzp;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/ayi<",
            "Lcom/google/android/gms/ads/internal/overlay/zzp;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/awl;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized onPause()V
    .locals 1

    monitor-enter p0

    .line 7
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/ato;->a:Lcom/google/android/gms/internal/ads/awn;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/awl;->a(Lcom/google/android/gms/internal/ads/awn;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onResume()V
    .locals 1

    monitor-enter p0

    .line 9
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/atn;->a:Lcom/google/android/gms/internal/ads/awn;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/awl;->a(Lcom/google/android/gms/internal/ads/awn;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onUserLeaveHint()V
    .locals 1

    monitor-enter p0

    .line 5
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/atl;->a:Lcom/google/android/gms/internal/ads/awn;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/awl;->a(Lcom/google/android/gms/internal/ads/awn;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/ads/internal/overlay/zzl;)V
    .locals 1

    monitor-enter p0

    .line 3
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/atm;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/atm;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzl;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/awl;->a(Lcom/google/android/gms/internal/ads/awn;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzvz()V
    .locals 1

    monitor-enter p0

    .line 11
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/atq;->a:Lcom/google/android/gms/internal/ads/awn;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/awl;->a(Lcom/google/android/gms/internal/ads/awn;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
