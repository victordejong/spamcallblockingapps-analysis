.class public abstract Lkotlinx/coroutines/bc;
.super Lkotlinx/coroutines/bb;
.source "Executors.kt"

# interfaces
.implements Lkotlinx/coroutines/am;


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lkotlinx/coroutines/bb;-><init>()V

    return-void
.end method

.method private final a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/bc;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    instance-of v2, v1, Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v2, :cond_0

    move-object v1, v0

    :cond_0
    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    :catch_0
    :cond_1
    return-object v0
.end method


# virtual methods
.method public a(JLjava/lang/Runnable;)Lkotlinx/coroutines/au;
    .locals 1

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-boolean v0, p0, Lkotlinx/coroutines/bc;->b:Z

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, p3, p1, p2, v0}, Lkotlinx/coroutines/bc;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 98
    new-instance p1, Lkotlinx/coroutines/at;

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-direct {p1, v0}, Lkotlinx/coroutines/at;-><init>(Ljava/util/concurrent/Future;)V

    check-cast p1, Lkotlinx/coroutines/au;

    goto :goto_1

    :cond_1
    sget-object v0, Lkotlinx/coroutines/ah;->b:Lkotlinx/coroutines/ah;

    invoke-virtual {v0, p1, p2, p3}, Lkotlinx/coroutines/ah;->a(JLjava/lang/Runnable;)Lkotlinx/coroutines/au;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public a(JLkotlinx/coroutines/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/coroutines/k<",
            "-",
            "Lkotlin/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "continuation"

    invoke-static {p3, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-boolean v0, p0, Lkotlinx/coroutines/bc;->b:Z

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Lkotlinx/coroutines/cc;

    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/y;

    invoke-direct {v0, v1, p3}, Lkotlinx/coroutines/cc;-><init>(Lkotlinx/coroutines/y;Lkotlinx/coroutines/k;)V

    check-cast v0, Ljava/lang/Runnable;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v0, p1, p2, v1}, Lkotlinx/coroutines/bc;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 84
    check-cast v0, Ljava/util/concurrent/Future;

    invoke-static {p3, v0}, Lkotlinx/coroutines/bm;->a(Lkotlinx/coroutines/k;Ljava/util/concurrent/Future;)V

    return-void

    .line 88
    :cond_1
    sget-object v0, Lkotlinx/coroutines/ah;->b:Lkotlinx/coroutines/ah;

    invoke-virtual {v0, p1, p2, p3}, Lkotlinx/coroutines/ah;->a(JLkotlinx/coroutines/k;)V

    return-void
.end method

.method public a(Lkotlin/c/f;Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "block"

    invoke-static {p2, p1}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/bc;->a()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-static {}, Lkotlinx/coroutines/cj;->a()Lkotlinx/coroutines/ci;

    move-result-object v0

    invoke-interface {v0, p2}, Lkotlinx/coroutines/ci;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    invoke-static {}, Lkotlinx/coroutines/cj;->a()Lkotlinx/coroutines/ci;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/ci;->c()V

    .line 67
    sget-object p1, Lkotlinx/coroutines/ah;->b:Lkotlinx/coroutines/ah;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/ah;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final b()V
    .locals 1

    .line 59
    invoke-virtual {p0}, Lkotlinx/coroutines/bc;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/internal/e;->a(Ljava/util/concurrent/Executor;)Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/coroutines/bc;->b:Z

    return-void
.end method

.method public close()V
    .locals 2

    .line 110
    invoke-virtual {p0}, Lkotlinx/coroutines/bc;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    instance-of v1, v0, Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 114
    instance-of v0, p1, Lkotlinx/coroutines/bc;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/coroutines/bc;

    invoke-virtual {p1}, Lkotlinx/coroutines/bc;->a()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {p0}, Lkotlinx/coroutines/bc;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 115
    invoke-virtual {p0}, Lkotlinx/coroutines/bc;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 113
    invoke-virtual {p0}, Lkotlinx/coroutines/bc;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
