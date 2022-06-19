.class public final Lcom/google/android/gms/internal/ads/k03;
.super Lcom/google/android/gms/internal/ads/m03;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# direct methods
.method public static a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)",
            "Lcom/google/android/gms/internal/ads/r03<",
            "TV;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/google/android/gms/internal/ads/o03;->d:Lcom/google/android/gms/internal/ads/r03;

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/o03;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/o03;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static b()Lcom/google/android/gms/internal/ads/r03;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/o03;->d:Lcom/google/android/gms/internal/ads/r03;

    return-object v0
.end method

.method public static c(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/r03;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/google/android/gms/internal/ads/r03<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/n03;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/n03;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static d(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;
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
            "Lcom/google/android/gms/internal/ads/r03<",
            "TO;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/e13;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/e13;-><init>(Ljava/util/concurrent/Callable;)V

    .line 3
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static e(Lcom/google/android/gms/internal/ads/tz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/tz2<",
            "TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/r03<",
            "TO;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/e13;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/e13;-><init>(Lcom/google/android/gms/internal/ads/tz2;)V

    .line 3
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static f(Lcom/google/android/gms/internal/ads/r03;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/nu2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcom/google/android/gms/internal/ads/r03<",
            "+TV;>;",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lcom/google/android/gms/internal/ads/nu2<",
            "-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/r03<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/sy2;

    .line 2
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/sy2;-><init>(Lcom/google/android/gms/internal/ads/r03;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/nu2;)V

    .line 3
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/y03;->c(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/fz2;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/google/android/gms/internal/ads/r03;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static g(Lcom/google/android/gms/internal/ads/r03;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/uz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcom/google/android/gms/internal/ads/r03<",
            "+TV;>;",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lcom/google/android/gms/internal/ads/uz2<",
            "-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/r03<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/ry2;

    .line 2
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/ry2;-><init>(Lcom/google/android/gms/internal/ads/r03;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/uz2;)V

    .line 3
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/y03;->c(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/fz2;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/google/android/gms/internal/ads/r03;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static h(Lcom/google/android/gms/internal/ads/r03;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/r03;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/r03<",
            "TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lcom/google/android/gms/internal/ads/r03<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/c13;->I(Lcom/google/android/gms/internal/ads/r03;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p0

    return-object p0
.end method

.method public static i(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/uz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/r03<",
            "TI;>;",
            "Lcom/google/android/gms/internal/ads/uz2<",
            "-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/r03<",
            "TO;>;"
        }
    .end annotation

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/kz2;->k:I

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/hz2;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/hz2;-><init>(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/uz2;)V

    .line 4
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/y03;->c(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/fz2;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/google/android/gms/internal/ads/r03;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static j(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/nu2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/r03<",
            "TI;>;",
            "Lcom/google/android/gms/internal/ads/nu2<",
            "-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/r03<",
            "TO;>;"
        }
    .end annotation

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/kz2;->k:I

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/iz2;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/iz2;-><init>(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/nu2;)V

    .line 4
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/y03;->c(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/fz2;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/google/android/gms/internal/ads/r03;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static k(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/r03;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/ads/r03<",
            "+TV;>;>;)",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/vz2;

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfoj;->zzo(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/vz2;-><init>(Lcom/google/android/gms/internal/ads/zzfoe;Z)V

    return-object v0
.end method

.method public static varargs l([Lcom/google/android/gms/internal/ads/r03;)Lcom/google/android/gms/internal/ads/i03;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/google/android/gms/internal/ads/r03<",
            "+TV;>;)",
            "Lcom/google/android/gms/internal/ads/i03<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/i03;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfoj;->zzq([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/i03;-><init>(ZLcom/google/android/gms/internal/ads/zzfoj;Lcom/google/android/gms/internal/ads/j03;)V

    return-object v0
.end method

.method public static m(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/i03;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/ads/r03<",
            "+TV;>;>;)",
            "Lcom/google/android/gms/internal/ads/i03<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/i03;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfoj;->zzo(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/i03;-><init>(ZLcom/google/android/gms/internal/ads/zzfoj;Lcom/google/android/gms/internal/ads/j03;)V

    return-object v0
.end method

.method public static varargs n([Lcom/google/android/gms/internal/ads/r03;)Lcom/google/android/gms/internal/ads/i03;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/google/android/gms/internal/ads/r03<",
            "+TV;>;)",
            "Lcom/google/android/gms/internal/ads/i03<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/i03;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfoj;->zzq([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/i03;-><init>(ZLcom/google/android/gms/internal/ads/zzfoj;Lcom/google/android/gms/internal/ads/j03;)V

    return-object v0
.end method

.method public static o(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/i03;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/ads/r03<",
            "+TV;>;>;)",
            "Lcom/google/android/gms/internal/ads/i03<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/i03;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfoj;->zzo(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/i03;-><init>(ZLcom/google/android/gms/internal/ads/zzfoj;Lcom/google/android/gms/internal/ads/j03;)V

    return-object v0
.end method

.method public static p(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/f03;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/r03<",
            "TV;>;",
            "Lcom/google/android/gms/internal/ads/f03<",
            "-TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/h03;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/h03;-><init>(Ljava/util/concurrent/Future;Lcom/google/android/gms/internal/ads/f03;)V

    invoke-interface {p0, v0, p2}, Lcom/google/android/gms/internal/ads/r03;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static q(Ljava/util/concurrent/Future;)Ljava/lang/Object;
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

    .line 1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/f13;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "Future was expected to be done: %s"

    .line 4
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/iv2;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static r(Ljava/util/concurrent/Future;)Ljava/lang/Object;
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

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/f13;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 3
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfrs;

    .line 5
    check-cast p0, Ljava/lang/Error;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfrs;-><init>(Ljava/lang/Error;)V

    throw v0

    .line 6
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzftc;

    .line 7
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzftc;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
