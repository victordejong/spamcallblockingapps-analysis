.class public final Lcom/google/android/gms/internal/ads/dbh;
.super Lcom/google/android/gms/internal/ads/dbo;
.source "SourceFile"


# direct methods
.method public static varargs a([Lcom/google/android/gms/internal/ads/dbt;)Lcom/google/android/gms/internal/ads/dbm;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "+TV;>;)",
            "Lcom/google/android/gms/internal/ads/dbm<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/dbm;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/cyz;->a([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cyz;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/dbm;-><init>(ZLcom/google/android/gms/internal/ads/cyz;Lcom/google/android/gms/internal/ads/dbk;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/internal/ads/dar;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/dar<",
            "TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "TO;>;"
        }
    .end annotation

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/dcf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/dcf;-><init>(Lcom/google/android/gms/internal/ads/dar;)V

    .line 13
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/internal/ads/dbt;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "TV;>;"
        }
    .end annotation

    .line 16
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/dbt;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 18
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/dcb;->a(Lcom/google/android/gms/internal/ads/dbt;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "+TV;>;>;)",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/google/android/gms/internal/ads/das;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/cyz;->a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/cyz;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/das;-><init>(Lcom/google/android/gms/internal/ads/cyt;Z)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "TV;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lcom/google/android/gms/internal/ads/dbn;->a:Lcom/google/android/gms/internal/ads/dbt;

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/dbn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/dbn;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "TV;>;"
        }
    .end annotation

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/cyg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/dbn$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/dbn$a;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Future;)Ljava/lang/Object;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 29
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/dcj;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "Future was expected to be done: %s"

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/cyo;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbi;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "TV;>;",
            "Lcom/google/android/gms/internal/ads/dbi<",
            "-TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cyg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/ads/dbj;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/dbj;-><init>(Ljava/util/concurrent/Future;Lcom/google/android/gms/internal/ads/dbi;)V

    invoke-interface {p0, v0, p2}, Lcom/google/android/gms/internal/ads/dbt;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static b(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/dbm;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "+TV;>;>;)",
            "Lcom/google/android/gms/internal/ads/dbm<",
            "TV;>;"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/ads/dbm;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/cyz;->a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/cyz;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/dbm;-><init>(ZLcom/google/android/gms/internal/ads/cyz;Lcom/google/android/gms/internal/ads/dbk;)V

    return-object v0
.end method

.method public static b(Ljava/util/concurrent/Future;)Ljava/lang/Object;
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

    .line 33
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/cyg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/dcj;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 35
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 36
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Lcom/google/android/gms/internal/ads/day;

    check-cast p0, Ljava/lang/Error;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/day;-><init>(Ljava/lang/Error;)V

    throw v0

    .line 38
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzecj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzecj;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
