.class public final Lcom/google/android/gms/internal/ads/af0;
.super Lcom/google/android/gms/internal/ads/tc0;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/w9;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/tc0<",
        "Lcom/google/android/gms/internal/ads/w9;",
        ">;",
        "Lcom/google/android/gms/internal/ads/w9;"
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
            "Lcom/google/android/gms/internal/ads/w9;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/tc0;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final X(Lcom/google/android/gms/internal/ads/zzaxe;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/ye0;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/ye0;-><init>(Lcom/google/android/gms/internal/ads/zzaxe;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/tc0;->B0(Lcom/google/android/gms/internal/ads/sc0;)V

    return-void
.end method

.method public final c()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/ze0;->a:Lcom/google/android/gms/internal/ads/sc0;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/tc0;->B0(Lcom/google/android/gms/internal/ads/sc0;)V

    return-void
.end method

.method public final declared-synchronized zza()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/xe0;->a:Lcom/google/android/gms/internal/ads/sc0;

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
