.class final Lcom/google/android/gms/internal/ads/r50;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Lcom/google/android/gms/internal/ads/c60;

.field final synthetic e:Lcom/google/android/gms/internal/ads/x40;

.field final synthetic f:Lcom/google/android/gms/internal/ads/d60;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/d60;Lcom/google/android/gms/internal/ads/c60;Lcom/google/android/gms/internal/ads/x40;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/r50;->f:Lcom/google/android/gms/internal/ads/d60;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/r50;->d:Lcom/google/android/gms/internal/ads/c60;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/r50;->e:Lcom/google/android/gms/internal/ads/x40;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r50;->f:Lcom/google/android/gms/internal/ads/d60;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/d60;->a(Lcom/google/android/gms/internal/ads/d60;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/r50;->d:Lcom/google/android/gms/internal/ads/c60;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cj0;->e()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/r50;->d:Lcom/google/android/gms/internal/ads/c60;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cj0;->e()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/r50;->d:Lcom/google/android/gms/internal/ads/c60;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cj0;->d()V

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/ads/qi0;->e:Lcom/google/android/gms/internal/ads/s03;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/r50;->e:Lcom/google/android/gms/internal/ads/x40;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/q50;->a(Lcom/google/android/gms/internal/ads/x40;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const-string v1, "Could not receive loaded message in a timely manner. Rejecting."

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/o1;->k(Ljava/lang/String;)V

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
