.class final Lcom/google/android/gms/ads/internal/util/y1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/c2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 1
    const-class p1, Lcom/google/android/gms/ads/internal/util/c2;

    monitor-enter p1

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/c2;->A(Z)Z

    .line 2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 1

    .line 1
    const-class p1, Lcom/google/android/gms/ads/internal/util/c2;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/c2;->A(Z)Z

    .line 2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
