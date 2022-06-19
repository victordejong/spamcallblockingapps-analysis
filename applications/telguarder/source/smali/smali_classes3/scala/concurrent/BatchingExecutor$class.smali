.class public abstract Lscala/concurrent/BatchingExecutor$class;
.super Ljava/lang/Object;
.source "BatchingExecutor.scala"


# direct methods
.method public static $init$(Lscala/concurrent/BatchingExecutor;)V
    .locals 1

    .line 45
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    invoke-interface {p0, v0}, Lscala/concurrent/BatchingExecutor;->scala$concurrent$BatchingExecutor$_setter_$scala$concurrent$BatchingExecutor$$_tasksLocal_$eq(Ljava/lang/ThreadLocal;)V

    return-void
.end method

.method public static batchable(Lscala/concurrent/BatchingExecutor;Ljava/lang/Runnable;)Z
    .locals 0

    .line 113
    instance-of p0, p1, Lscala/concurrent/OnCompleteRunnable;

    return p0
.end method

.method public static execute(Lscala/concurrent/BatchingExecutor;Ljava/lang/Runnable;)V
    .locals 5

    .line 104
    invoke-interface {p0, p1}, Lscala/concurrent/BatchingExecutor;->batchable(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    invoke-interface {p0}, Lscala/concurrent/BatchingExecutor;->scala$concurrent$BatchingExecutor$$_tasksLocal()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/List;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lscala/concurrent/BatchingExecutor$Batch;

    sget-object v1, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Runnable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object p1

    invoke-virtual {v1, p1}, Lscala/collection/immutable/List$;->apply(Lscala/collection/Seq;)Lscala/collection/immutable/List;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lscala/concurrent/BatchingExecutor$Batch;-><init>(Lscala/concurrent/BatchingExecutor;Lscala/collection/immutable/List;)V

    invoke-interface {p0, v0}, Lscala/concurrent/BatchingExecutor;->unbatchedExecute(Ljava/lang/Runnable;)V

    sget-object p0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 107
    :cond_0
    invoke-interface {p0}, Lscala/concurrent/BatchingExecutor;->scala$concurrent$BatchingExecutor$$_tasksLocal()Ljava/lang/ThreadLocal;

    move-result-object p0

    invoke-virtual {v0, p1}, Lscala/collection/immutable/List;->$colon$colon(Ljava/lang/Object;)Lscala/collection/immutable/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object p0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 109
    :cond_1
    invoke-interface {p0, p1}, Lscala/concurrent/BatchingExecutor;->unbatchedExecute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
