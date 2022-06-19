.class final Lcom/google/android/gms/internal/ads/kk1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/gz1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/gz1<",
        "Lcom/google/android/gms/internal/ads/un0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/u71;

.field final synthetic b:Lcom/google/android/gms/internal/ads/mk1;

.field final synthetic c:Lcom/google/android/gms/internal/ads/nk1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/nk1;Lcom/google/android/gms/internal/ads/u71;Lcom/google/android/gms/internal/ads/mk1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kk1;->c:Lcom/google/android/gms/internal/ads/nk1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/kk1;->a:Lcom/google/android/gms/internal/ads/u71;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/kk1;->b:Lcom/google/android/gms/internal/ads/mk1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kk1;->c:Lcom/google/android/gms/internal/ads/nk1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/nk1;->f(Lcom/google/android/gms/internal/ads/nk1;)Lcom/google/android/gms/internal/ads/qi1;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qi1;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ao0;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/nm1;->b(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/a01;)Lcom/google/android/gms/internal/ads/zzym;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ao0;->c()Lcom/google/android/gms/internal/ads/y40;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/y40;->g(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzym;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kk1;->c:Lcom/google/android/gms/internal/ads/nk1;

    monitor-enter v2

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ao0;->b()Lcom/google/android/gms/internal/ads/u70;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/u70;->f0(Lcom/google/android/gms/internal/ads/zzym;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kk1;->c:Lcom/google/android/gms/internal/ads/nk1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/nk1;->e(Lcom/google/android/gms/internal/ads/nk1;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/internal/ads/jk1;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/ads/jk1;-><init>(Lcom/google/android/gms/internal/ads/kk1;Lcom/google/android/gms/internal/ads/zzym;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kk1;->c:Lcom/google/android/gms/internal/ads/nk1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/nk1;->d(Lcom/google/android/gms/internal/ads/nk1;)Lcom/google/android/gms/internal/ads/dk1;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dk1;->f0(Lcom/google/android/gms/internal/ads/zzym;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kk1;->c:Lcom/google/android/gms/internal/ads/nk1;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/kk1;->b:Lcom/google/android/gms/internal/ads/mk1;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/nk1;->g(Lcom/google/android/gms/internal/ads/nk1;Lcom/google/android/gms/internal/ads/oi1;)Lcom/google/android/gms/internal/ads/zn0;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zn0;->zza()Lcom/google/android/gms/internal/ads/ao0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ao0;->c()Lcom/google/android/gms/internal/ads/y40;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/y40;->d()Lcom/google/android/gms/internal/ads/nc0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/nc0;->n()V

    :goto_1
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzym;->b:I

    const-string v1, "RewardedAdLoader.onFailure"

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/hm1;->a(ILjava/lang/Throwable;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/kk1;->a:Lcom/google/android/gms/internal/ads/u71;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/u71;->zza()V

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

    check-cast p1, Lcom/google/android/gms/internal/ads/un0;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kk1;->c:Lcom/google/android/gms/internal/ads/nk1;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/u30;->f()Lcom/google/android/gms/internal/ads/qb0;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kk1;->c:Lcom/google/android/gms/internal/ads/nk1;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/nk1;->d(Lcom/google/android/gms/internal/ads/nk1;)Lcom/google/android/gms/internal/ads/dk1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/qb0;->d(Lcom/google/android/gms/internal/ads/dk1;)Lcom/google/android/gms/internal/ads/qb0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kk1;->a:Lcom/google/android/gms/internal/ads/u71;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/u71;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/kk1;->c:Lcom/google/android/gms/internal/ads/nk1;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/nk1;->e(Lcom/google/android/gms/internal/ads/nk1;)Ljava/util/concurrent/Executor;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kk1;->c:Lcom/google/android/gms/internal/ads/nk1;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/nk1;->d(Lcom/google/android/gms/internal/ads/nk1;)Lcom/google/android/gms/internal/ads/dk1;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ik1;->a(Lcom/google/android/gms/internal/ads/dk1;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/kk1;->c:Lcom/google/android/gms/internal/ads/nk1;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/nk1;->d(Lcom/google/android/gms/internal/ads/nk1;)Lcom/google/android/gms/internal/ads/dk1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zs1;->n()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
