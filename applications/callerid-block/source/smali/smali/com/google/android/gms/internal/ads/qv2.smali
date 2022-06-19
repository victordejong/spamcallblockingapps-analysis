.class final Lcom/google/android/gms/internal/ads/qv2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/common/internal/b$a;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzts;

.field final synthetic b:Lcom/google/android/gms/internal/ads/fp;

.field final synthetic c:Lcom/google/android/gms/internal/ads/sv2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/sv2;Lcom/google/android/gms/internal/ads/zzts;Lcom/google/android/gms/internal/ads/fp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qv2;->c:Lcom/google/android/gms/internal/ads/sv2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qv2;->a:Lcom/google/android/gms/internal/ads/zzts;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/qv2;->b:Lcom/google/android/gms/internal/ads/fp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    return-void
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/qv2;->c:Lcom/google/android/gms/internal/ads/sv2;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/sv2;->c(Lcom/google/android/gms/internal/ads/sv2;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qv2;->c:Lcom/google/android/gms/internal/ads/sv2;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/sv2;->d(Lcom/google/android/gms/internal/ads/sv2;)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qv2;->c:Lcom/google/android/gms/internal/ads/sv2;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/sv2;->e(Lcom/google/android/gms/internal/ads/sv2;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qv2;->c:Lcom/google/android/gms/internal/ads/sv2;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/sv2;->f(Lcom/google/android/gms/internal/ads/sv2;)Lcom/google/android/gms/internal/ads/hv2;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/ads/zo;->a:Lcom/google/android/gms/internal/ads/sz1;

    new-instance v2, Lcom/google/android/gms/internal/ads/mv2;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/qv2;->a:Lcom/google/android/gms/internal/ads/zzts;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/qv2;->b:Lcom/google/android/gms/internal/ads/fp;

    invoke-direct {v2, p0, v0, v3, v4}, Lcom/google/android/gms/internal/ads/mv2;-><init>(Lcom/google/android/gms/internal/ads/qv2;Lcom/google/android/gms/internal/ads/hv2;Lcom/google/android/gms/internal/ads/zzts;Lcom/google/android/gms/internal/ads/fp;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/sz1;->e(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qv2;->b:Lcom/google/android/gms/internal/ads/fp;

    new-instance v2, Lcom/google/android/gms/internal/ads/nv2;

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/ads/nv2;-><init>(Lcom/google/android/gms/internal/ads/fp;Ljava/util/concurrent/Future;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zo;->f:Lcom/google/android/gms/internal/ads/sz1;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/fp;->e(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    monitor-exit p1

    return-void

    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
