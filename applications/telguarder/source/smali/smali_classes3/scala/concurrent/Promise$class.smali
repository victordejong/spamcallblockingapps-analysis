.class public abstract Lscala/concurrent/Promise$class;
.super Ljava/lang/Object;
.source "Promise.scala"


# direct methods
.method public static $init$(Lscala/concurrent/Promise;)V
    .locals 0

    return-void
.end method

.method public static complete(Lscala/concurrent/Promise;Lscala/util/Try;)Lscala/concurrent/Promise;
    .locals 0

    .line 55
    invoke-interface {p0, p1}, Lscala/concurrent/Promise;->tryComplete(Lscala/util/Try;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Promise already completed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final completeWith(Lscala/concurrent/Promise;Lscala/concurrent/Future;)Lscala/concurrent/Promise;
    .locals 0

    .line 69
    invoke-interface {p0, p1}, Lscala/concurrent/Promise;->tryCompleteWith(Lscala/concurrent/Future;)Lscala/concurrent/Promise;

    move-result-object p0

    return-object p0
.end method

.method public static failure(Lscala/concurrent/Promise;Ljava/lang/Throwable;)Lscala/concurrent/Promise;
    .locals 1

    .line 104
    new-instance v0, Lscala/util/Failure;

    invoke-direct {v0, p1}, Lscala/util/Failure;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Lscala/concurrent/Promise;->complete(Lscala/util/Try;)Lscala/concurrent/Promise;

    move-result-object p0

    return-object p0
.end method

.method private static internalExecutor(Lscala/concurrent/Promise;)Lscala/concurrent/ExecutionContext;
    .locals 0

    .line 33
    sget-object p0, Lscala/concurrent/Future$InternalCallbackExecutor$;->MODULE$:Lscala/concurrent/Future$InternalCallbackExecutor$;

    return-object p0
.end method

.method public static success(Lscala/concurrent/Promise;Ljava/lang/Object;)Lscala/concurrent/Promise;
    .locals 1

    .line 86
    new-instance v0, Lscala/util/Success;

    invoke-direct {v0, p1}, Lscala/util/Success;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lscala/concurrent/Promise;->complete(Lscala/util/Try;)Lscala/concurrent/Promise;

    move-result-object p0

    return-object p0
.end method

.method public static final tryCompleteWith(Lscala/concurrent/Promise;Lscala/concurrent/Future;)Lscala/concurrent/Promise;
    .locals 2

    .line 76
    new-instance v0, Lscala/concurrent/Promise$$anonfun$tryCompleteWith$1;

    invoke-direct {v0, p0}, Lscala/concurrent/Promise$$anonfun$tryCompleteWith$1;-><init>(Lscala/concurrent/Promise;)V

    invoke-static {p0}, Lscala/concurrent/Promise$class;->internalExecutor(Lscala/concurrent/Promise;)Lscala/concurrent/ExecutionContext;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lscala/concurrent/Future;->onComplete(Lscala/Function1;Lscala/concurrent/ExecutionContext;)V

    return-object p0
.end method

.method public static tryFailure(Lscala/concurrent/Promise;Ljava/lang/Throwable;)Z
    .locals 1

    .line 112
    new-instance v0, Lscala/util/Failure;

    invoke-direct {v0, p1}, Lscala/util/Failure;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Lscala/concurrent/Promise;->tryComplete(Lscala/util/Try;)Z

    move-result p0

    return p0
.end method

.method public static trySuccess(Lscala/concurrent/Promise;Ljava/lang/Object;)Z
    .locals 1

    .line 94
    new-instance v0, Lscala/util/Success;

    invoke-direct {v0, p1}, Lscala/util/Success;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lscala/concurrent/Promise;->tryComplete(Lscala/util/Try;)Z

    move-result p0

    return p0
.end method
