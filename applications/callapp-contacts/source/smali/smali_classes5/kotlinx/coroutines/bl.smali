.class public abstract Lkotlinx/coroutines/bl;
.super Lkotlinx/coroutines/bk;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/au;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008 \u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0008\u0010\u000c\u001a\u00020\u0007H\u0016J\u001c\u0010\r\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\n\u0010\u000e\u001a\u00060\u000fj\u0002`\u0010H\u0016J\u0013\u0010\u0011\u001a\u00020\u00052\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0096\u0002J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\r\u0010\u0016\u001a\u00020\u0007H\u0000\u00a2\u0006\u0002\u0008\u0017J$\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\n\u0010\u000e\u001a\u00060\u000fj\u0002`\u00102\u0006\u0010\u0008\u001a\u00020\tH\u0016J*\u0010\u001c\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u001d2\n\u0010\u000e\u001a\u00060\u000fj\u0002`\u00102\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u001e\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u001b2\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00070 H\u0016J\u0008\u0010!\u001a\u00020\"H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lkotlinx/coroutines/ExecutorCoroutineDispatcherBase;",
        "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;",
        "Lkotlinx/coroutines/Delay;",
        "()V",
        "removesFutureOnCancellation",
        "",
        "cancelJobOnRejection",
        "",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "exception",
        "Ljava/util/concurrent/RejectedExecutionException;",
        "close",
        "dispatch",
        "block",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "initFutureCancellation",
        "initFutureCancellation$kotlinx_coroutines_core",
        "invokeOnTimeout",
        "Lkotlinx/coroutines/DisposableHandle;",
        "timeMillis",
        "",
        "scheduleBlock",
        "Ljava/util/concurrent/ScheduledFuture;",
        "scheduleResumeAfterDelay",
        "continuation",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "toString",
        "",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Lkotlinx/coroutines/bk;-><init>()V

    return-void
.end method

.method private final a(Ljava/lang/Runnable;Lkotlin/c/f;J)Ljava/util/concurrent/ScheduledFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Lkotlin/c/f;",
            "J)",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 136
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/bl;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    instance-of v2, v1, Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v2, :cond_0

    move-object v1, v0

    :cond_0
    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, p1, p3, p4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 138
    invoke-static {p2, p1}, Lkotlinx/coroutines/bl;->a(Lkotlin/c/f;Ljava/util/concurrent/RejectedExecutionException;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static a(Lkotlin/c/f;Ljava/util/concurrent/RejectedExecutionException;)V
    .locals 1

    .line 144
    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "The task was rejected"

    invoke-static {v0, p1}, Lkotlinx/coroutines/bj;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    .line 3001
    invoke-static {p0, p1}, Lkotlinx/coroutines/by;->a(Lkotlin/c/f;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/Runnable;Lkotlin/c/f;)Lkotlinx/coroutines/bb;
    .locals 1

    .line 123
    iget-boolean v0, p0, Lkotlinx/coroutines/bl;->b:Z

    if-eqz v0, :cond_0

    .line 124
    invoke-direct {p0, p3, p4, p1, p2}, Lkotlinx/coroutines/bl;->a(Ljava/lang/Runnable;Lkotlin/c/f;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 129
    new-instance p1, Lkotlinx/coroutines/ba;

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-direct {p1, v0}, Lkotlinx/coroutines/ba;-><init>(Ljava/util/concurrent/Future;)V

    check-cast p1, Lkotlinx/coroutines/bb;

    return-object p1

    .line 130
    :cond_1
    sget-object v0, Lkotlinx/coroutines/aq;->b:Lkotlinx/coroutines/aq;

    invoke-virtual {v0, p1, p2, p3, p4}, Lkotlinx/coroutines/aq;->a(JLjava/lang/Runnable;Lkotlin/c/f;)Lkotlinx/coroutines/bb;

    move-result-object p1

    return-object p1
.end method

.method public final a(JLkotlinx/coroutines/n;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/coroutines/n<",
            "-",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    .line 108
    iget-boolean v0, p0, Lkotlinx/coroutines/bl;->b:Z

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Lkotlinx/coroutines/ck;

    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/af;

    invoke-direct {v0, v1, p3}, Lkotlinx/coroutines/ck;-><init>(Lkotlinx/coroutines/af;Lkotlinx/coroutines/n;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {p3}, Lkotlinx/coroutines/n;->b()Lkotlin/c/f;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1, p2}, Lkotlinx/coroutines/bl;->a(Ljava/lang/Runnable;Lkotlin/c/f;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 115
    check-cast v0, Ljava/util/concurrent/Future;

    .line 2033
    new-instance p1, Lkotlinx/coroutines/k;

    invoke-direct {p1, v0}, Lkotlinx/coroutines/k;-><init>(Ljava/util/concurrent/Future;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-interface {p3, p1}, Lkotlinx/coroutines/n;->a(Lkotlin/jvm/functions/Function1;)V

    return-void

    .line 119
    :cond_1
    sget-object v0, Lkotlinx/coroutines/aq;->b:Lkotlinx/coroutines/aq;

    invoke-virtual {v0, p1, p2, p3}, Lkotlinx/coroutines/aq;->a(JLkotlinx/coroutines/n;)V

    return-void
.end method

.method public final a(Lkotlin/c/f;Ljava/lang/Runnable;)V
    .locals 2

    .line 94
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/bl;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 1027
    sget-object v1, Lkotlinx/coroutines/cp;->a:Lkotlinx/coroutines/co;

    if-eqz v1, :cond_0

    .line 94
    invoke-interface {v1}, Lkotlinx/coroutines/co;->b()Ljava/lang/Runnable;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    move-object v1, p2

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 97
    invoke-static {p1, v0}, Lkotlinx/coroutines/bl;->a(Lkotlin/c/f;Ljava/util/concurrent/RejectedExecutionException;)V

    .line 98
    invoke-static {}, Lkotlinx/coroutines/az;->c()Lkotlinx/coroutines/af;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lkotlinx/coroutines/af;->a(Lkotlin/c/f;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()V
    .locals 1

    .line 89
    invoke-virtual {p0}, Lkotlinx/coroutines/bl;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/internal/d;->a(Ljava/util/concurrent/Executor;)Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/coroutines/bl;->b:Z

    return-void
.end method

.method public close()V
    .locals 2

    .line 148
    invoke-virtual {p0}, Lkotlinx/coroutines/bl;->a()Ljava/util/concurrent/Executor;

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

    .line 152
    instance-of v0, p1, Lkotlinx/coroutines/bl;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/coroutines/bl;

    invoke-virtual {p1}, Lkotlinx/coroutines/bl;->a()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {p0}, Lkotlinx/coroutines/bl;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 153
    invoke-virtual {p0}, Lkotlinx/coroutines/bl;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 151
    invoke-virtual {p0}, Lkotlinx/coroutines/bl;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
