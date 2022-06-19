.class public final Lcom/google/android/gms/internal/ads/fc0;
.super Lcom/google/android/gms/internal/ads/tc0;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/k8;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/tc0<",
        "Lcom/google/android/gms/internal/ads/pk2;",
        ">;",
        "Lcom/google/android/gms/internal/ads/k8;"
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
            "Lcom/google/android/gms/internal/ads/pk2;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/tc0;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/ec0;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ec0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

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
