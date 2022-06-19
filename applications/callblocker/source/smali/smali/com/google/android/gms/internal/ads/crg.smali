.class public final Lcom/google/android/gms/internal/ads/crg;
.super Lcom/google/android/gms/internal/ads/cro;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# direct methods
.method public static varargs a([Lcom/google/android/gms/internal/ads/crt;)Lcom/google/android/gms/internal/ads/crm;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/google/android/gms/internal/ads/crt",
            "<+TV;>;)",
            "Lcom/google/android/gms/internal/ads/crm",
            "<TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 19
    new-instance v0, Lcom/google/android/gms/internal/ads/crm;

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/cpc;->a([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cpc;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/crm;-><init>(ZLcom/google/android/gms/internal/ads/cpc;Lcom/google/android/gms/internal/ads/crj;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/internal/ads/cqr;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/cqr",
            "<TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/crt",
            "<TO;>;"
        }
    .end annotation

    .prologue
    .line 7
    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/csh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/csh;-><init>(Lcom/google/android/gms/internal/ads/cqr;)V

    .line 10
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11
    return-object v0
.end method

.method public static a(Lcom/google/android/gms/internal/ads/crt;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/crt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/crt",
            "<TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lcom/google/android/gms/internal/ads/crt",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 13
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/crt;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    :goto_0
    return-object p0

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/csd;->a(Lcom/google/android/gms/internal/ads/crt;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object p0

    goto :goto_0
.end method

.method public static a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/coe;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/crt",
            "<TI;>;",
            "Lcom/google/android/gms/internal/ads/coe",
            "<-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/crt",
            "<TO;>;"
        }
    .end annotation

    .prologue
    .line 17
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/cqh;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/coe;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/crt",
            "<TI;>;",
            "Lcom/google/android/gms/internal/ads/cqt",
            "<-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/crt",
            "<TO;>;"
        }
    .end annotation

    .prologue
    .line 16
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/cqh;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/internal/ads/crt;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcom/google/android/gms/internal/ads/crt",
            "<+TV;>;",
            "Ljava/lang/Class",
            "<TX;>;",
            "Lcom/google/android/gms/internal/ads/cqt",
            "<-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/crt",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 12
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/cqe;->a(Lcom/google/android/gms/internal/ads/crt;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/crt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/android/gms/internal/ads/crt",
            "<+TV;>;>;)",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Ljava/util/List",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/cqv;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/cpc;->a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/cpc;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/cqv;-><init>(Lcom/google/android/gms/internal/ads/cpb;Z)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;
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
            "Lcom/google/android/gms/internal/ads/crt",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1
    if-nez p0, :cond_0

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/crn;->a:Lcom/google/android/gms/internal/ads/crt;

    .line 4
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/crn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/crn;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/crt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/google/android/gms/internal/ads/crt",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/cor;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/crn$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/crn$a;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 26
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const-string/jumbo v1, "Future was expected to be done: %s"

    .line 27
    if-nez v0, :cond_0

    .line 28
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/cos;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/csl;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/crh;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/crt",
            "<TV;>;",
            "Lcom/google/android/gms/internal/ads/crh",
            "<-TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cor;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/cri;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/cri;-><init>(Ljava/util/concurrent/Future;Lcom/google/android/gms/internal/ads/crh;)V

    invoke-interface {p0, v0, p2}, Lcom/google/android/gms/internal/ads/crt;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 25
    return-void
.end method

.method public static b(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/crm;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/android/gms/internal/ads/crt",
            "<+TV;>;>;)",
            "Lcom/google/android/gms/internal/ads/crm",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 20
    new-instance v0, Lcom/google/android/gms/internal/ads/crm;

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/cpc;->a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/cpc;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/crm;-><init>(ZLcom/google/android/gms/internal/ads/cpc;Lcom/google/android/gms/internal/ads/crj;)V

    return-object v0
.end method

.method public static varargs b([Lcom/google/android/gms/internal/ads/crt;)Lcom/google/android/gms/internal/ads/crm;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/google/android/gms/internal/ads/crt",
            "<+TV;>;)",
            "Lcom/google/android/gms/internal/ads/crm",
            "<TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 21
    new-instance v0, Lcom/google/android/gms/internal/ads/crm;

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/cpc;->a([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cpc;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/crm;-><init>(ZLcom/google/android/gms/internal/ads/cpc;Lcom/google/android/gms/internal/ads/crj;)V

    return-object v0
.end method

.method public static b(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 30
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/cor;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/csl;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 32
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 33
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_0

    .line 34
    new-instance v1, Lcom/google/android/gms/internal/ads/cqy;

    check-cast v0, Ljava/lang/Error;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/cqy;-><init>(Ljava/lang/Error;)V

    throw v1

    .line 35
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdrx;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzdrx;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static c(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/crm;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/android/gms/internal/ads/crt",
            "<+TV;>;>;)",
            "Lcom/google/android/gms/internal/ads/crm",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/crm;

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/cpc;->a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/cpc;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/crm;-><init>(ZLcom/google/android/gms/internal/ads/cpc;Lcom/google/android/gms/internal/ads/crj;)V

    return-object v0
.end method
