.class final Lcom/google/android/gms/internal/ads/oi2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/f03;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/f03<",
        "Lcom/google/android/gms/internal/ads/fk1;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/p42;

.field final synthetic b:Lcom/google/android/gms/internal/ads/qi2;

.field final synthetic c:Lcom/google/android/gms/internal/ads/ri2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ri2;Lcom/google/android/gms/internal/ads/p42;Lcom/google/android/gms/internal/ads/qi2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oi2;->c:Lcom/google/android/gms/internal/ads/ri2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/oi2;->a:Lcom/google/android/gms/internal/ads/p42;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/oi2;->b:Lcom/google/android/gms/internal/ads/qi2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oi2;->c:Lcom/google/android/gms/internal/ads/ri2;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ri2;->e(Lcom/google/android/gms/internal/ads/ri2;)Lcom/google/android/gms/internal/ads/sg2;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/sg2;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/kk1;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/sk2;->b(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/uw1;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object v1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/kk1;->o()Lcom/google/android/gms/internal/ads/b01;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/b01;->h(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object v1

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/oi2;->c:Lcom/google/android/gms/internal/ads/ri2;

    monitor-enter v2

    if-eqz v0, :cond_1

    .line 5
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/kk1;->a()Lcom/google/android/gms/internal/ads/a31;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/a31;->O(Lcom/google/android/gms/internal/ads/zzbcz;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oi2;->c:Lcom/google/android/gms/internal/ads/ri2;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ri2;->c(Lcom/google/android/gms/internal/ads/ri2;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/internal/ads/ni2;

    .line 6
    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/ads/ni2;-><init>(Lcom/google/android/gms/internal/ads/oi2;Lcom/google/android/gms/internal/ads/zzbcz;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oi2;->c:Lcom/google/android/gms/internal/ads/ri2;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ri2;->d(Lcom/google/android/gms/internal/ads/ri2;)Lcom/google/android/gms/internal/ads/hi2;

    move-result-object v0

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/hi2;->O(Lcom/google/android/gms/internal/ads/zzbcz;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oi2;->c:Lcom/google/android/gms/internal/ads/ri2;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/oi2;->b:Lcom/google/android/gms/internal/ads/qi2;

    .line 9
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/ri2;->f(Lcom/google/android/gms/internal/ads/ri2;Lcom/google/android/gms/internal/ads/qg2;)Lcom/google/android/gms/internal/ads/jk1;

    move-result-object v0

    .line 10
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jk1;->zza()Lcom/google/android/gms/internal/ads/kk1;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/kk1;->o()Lcom/google/android/gms/internal/ads/b01;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/b01;->e()Lcom/google/android/gms/internal/ads/h81;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/h81;->l()V

    .line 14
    :goto_1
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzbcz;->d:I

    const-string v1, "RewardedAdLoader.onFailure"

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/nk2;->a(ILjava/lang/Throwable;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/oi2;->a:Lcom/google/android/gms/internal/ads/p42;

    .line 15
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/p42;->zza()V

    .line 16
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/fk1;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oi2;->c:Lcom/google/android/gms/internal/ads/ri2;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/xy0;->f()Lcom/google/android/gms/internal/ads/i71;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/oi2;->c:Lcom/google/android/gms/internal/ads/ri2;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ri2;->d(Lcom/google/android/gms/internal/ads/ri2;)Lcom/google/android/gms/internal/ads/hi2;

    move-result-object v2

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/i71;->d(Lcom/google/android/gms/internal/ads/hi2;)Lcom/google/android/gms/internal/ads/i71;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/oi2;->a:Lcom/google/android/gms/internal/ads/p42;

    .line 4
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/p42;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/oi2;->c:Lcom/google/android/gms/internal/ads/ri2;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ri2;->c(Lcom/google/android/gms/internal/ads/ri2;)Ljava/util/concurrent/Executor;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/oi2;->c:Lcom/google/android/gms/internal/ads/ri2;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ri2;->d(Lcom/google/android/gms/internal/ads/ri2;)Lcom/google/android/gms/internal/ads/hi2;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/mi2;->a(Lcom/google/android/gms/internal/ads/hi2;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/oi2;->c:Lcom/google/android/gms/internal/ads/ri2;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ri2;->d(Lcom/google/android/gms/internal/ads/ri2;)Lcom/google/android/gms/internal/ads/hi2;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/hr2;->r()V

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
