.class final Lcom/google/android/gms/internal/ads/rz2;
.super Lcom/google/android/gms/internal/ads/oz2;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/pz2;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/oz2;-><init>(Lcom/google/android/gms/internal/ads/pz2;)V

    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/gms/internal/ads/sz2;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/sz2<",
            "*>;",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    monitor-enter p1

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/sz2;->E(Lcom/google/android/gms/internal/ads/sz2;)Ljava/util/Set;

    move-result-object p2

    if-nez p2, :cond_0

    .line 2
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/sz2;->F(Lcom/google/android/gms/internal/ads/sz2;Ljava/util/Set;)Ljava/util/Set;

    .line 3
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method final b(Lcom/google/android/gms/internal/ads/sz2;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/sz2<",
            "*>;)I"
        }
    .end annotation

    .line 1
    monitor-enter p1

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/sz2;->G(Lcom/google/android/gms/internal/ads/sz2;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/sz2;->H(Lcom/google/android/gms/internal/ads/sz2;I)I

    monitor-exit p1

    return v0

    :catchall_0
    move-exception v0

    .line 2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
