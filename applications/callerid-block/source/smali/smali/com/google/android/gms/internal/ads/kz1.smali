.class public final Lcom/google/android/gms/internal/ads/kz1;
.super Lcom/google/android/gms/internal/ads/mz1;
.source ""


# direct methods
.method public static a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "TV;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/ads/oz1;->c:Lcom/google/android/gms/internal/ads/rz1;

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/oz1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/oz1;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/ads/nz1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/nz1;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static c(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "TO;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/e02;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/e02;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static d(Lcom/google/android/gms/internal/ads/ty1;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/ty1<",
            "TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "TO;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/e02;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/e02;-><init>(Lcom/google/android/gms/internal/ads/ty1;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static e(Lcom/google/android/gms/internal/ads/rz1;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/fw1;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "+TV;>;",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lcom/google/android/gms/internal/ads/fw1<",
            "-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/ux1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/ux1;-><init>(Lcom/google/android/gms/internal/ads/rz1;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/fw1;)V

    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/zz1;->c(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/wx1;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/google/android/gms/internal/ads/rz1;->e(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static f(Lcom/google/android/gms/internal/ads/rz1;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/uy1;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "+TV;>;",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lcom/google/android/gms/internal/ads/uy1<",
            "-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/tx1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/tx1;-><init>(Lcom/google/android/gms/internal/ads/rz1;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/uy1;)V

    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/zz1;->c(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/wx1;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/google/android/gms/internal/ads/rz1;->e(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static g(Lcom/google/android/gms/internal/ads/rz1;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "TV;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/d02;->F(Lcom/google/android/gms/internal/ads/rz1;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p0

    return-object p0
.end method

.method public static h(Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/uy1;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "TI;>;",
            "Lcom/google/android/gms/internal/ads/uy1<",
            "-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "TO;>;"
        }
    .end annotation

    sget v0, Lcom/google/android/gms/internal/ads/ky1;->k:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/ads/iy1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/iy1;-><init>(Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/uy1;)V

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zz1;->c(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/wx1;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/google/android/gms/internal/ads/rz1;->e(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static i(Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/fw1;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "TI;>;",
            "Lcom/google/android/gms/internal/ads/fw1<",
            "-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "TO;>;"
        }
    .end annotation

    sget v0, Lcom/google/android/gms/internal/ads/ky1;->k:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/ads/jy1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/jy1;-><init>(Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/fw1;)V

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zz1;->c(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/wx1;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/google/android/gms/internal/ads/rz1;->e(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static j(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "+TV;>;>;)",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/vy1;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzede;->zzl(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzede;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/vy1;-><init>(Lcom/google/android/gms/internal/ads/zzedb;Z)V

    return-object v0
.end method

.method public static varargs k([Lcom/google/android/gms/internal/ads/rz1;)Lcom/google/android/gms/internal/ads/jz1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "+TV;>;)",
            "Lcom/google/android/gms/internal/ads/jz1<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/jz1;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzede;->zzn([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzede;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/jz1;-><init>(ZLcom/google/android/gms/internal/ads/zzede;Lcom/google/android/gms/internal/ads/hz1;)V

    return-object v0
.end method

.method public static l(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/jz1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "+TV;>;>;)",
            "Lcom/google/android/gms/internal/ads/jz1<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/jz1;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzede;->zzl(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzede;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/jz1;-><init>(ZLcom/google/android/gms/internal/ads/zzede;Lcom/google/android/gms/internal/ads/hz1;)V

    return-object v0
.end method

.method public static varargs m([Lcom/google/android/gms/internal/ads/rz1;)Lcom/google/android/gms/internal/ads/jz1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "+TV;>;)",
            "Lcom/google/android/gms/internal/ads/jz1<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/jz1;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzede;->zzn([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzede;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/jz1;-><init>(ZLcom/google/android/gms/internal/ads/zzede;Lcom/google/android/gms/internal/ads/hz1;)V

    return-object v0
.end method

.method public static n(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/jz1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "+TV;>;>;)",
            "Lcom/google/android/gms/internal/ads/jz1<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/jz1;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzede;->zzl(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzede;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/jz1;-><init>(ZLcom/google/android/gms/internal/ads/zzede;Lcom/google/android/gms/internal/ads/hz1;)V

    return-object v0
.end method

.method public static o(Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/gz1;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "TV;>;",
            "Lcom/google/android/gms/internal/ads/gz1<",
            "-TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/ads/iz1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/iz1;-><init>(Ljava/util/concurrent/Future;Lcom/google/android/gms/internal/ads/gz1;)V

    invoke-interface {p0, v0, p2}, Lcom/google/android/gms/internal/ads/rz1;->e(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static p(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/f02;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "Future was expected to be done: %s"

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/tw1;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static q(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/f02;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzefd;

    check-cast p0, Ljava/lang/Error;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzefd;-><init>(Ljava/lang/Error;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzegm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzegm;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
