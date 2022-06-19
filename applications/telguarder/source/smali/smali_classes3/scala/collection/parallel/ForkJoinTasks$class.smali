.class public abstract Lscala/collection/parallel/ForkJoinTasks$class;
.super Ljava/lang/Object;
.source "Tasks.scala"


# direct methods
.method public static $init$(Lscala/collection/parallel/ForkJoinTasks;)V
    .locals 0

    return-void
.end method

.method public static execute(Lscala/collection/parallel/ForkJoinTasks;Lscala/collection/parallel/Task;)Lscala/Function0;
    .locals 2

    .line 395
    invoke-interface {p0, p1}, Lscala/collection/parallel/ForkJoinTasks;->newWrappedTask(Lscala/collection/parallel/Task;)Lscala/collection/parallel/ForkJoinTasks$WrappedTask;

    move-result-object p1

    .line 397
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v0, v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    if-eqz v0, :cond_0

    .line 398
    move-object v0, p1

    check-cast v0, Lscala/concurrent/forkjoin/ForkJoinTask;

    invoke-virtual {v0}, Lscala/concurrent/forkjoin/ForkJoinTask;->fork()Lscala/concurrent/forkjoin/ForkJoinTask;

    goto :goto_0

    .line 400
    :cond_0
    invoke-interface {p0}, Lscala/collection/parallel/ForkJoinTasks;->forkJoinPool()Lscala/concurrent/forkjoin/ForkJoinPool;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lscala/concurrent/forkjoin/ForkJoinTask;

    invoke-virtual {v0, v1}, Lscala/concurrent/forkjoin/ForkJoinPool;->execute(Lscala/concurrent/forkjoin/ForkJoinTask;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 403
    :goto_0
    new-instance v0, Lscala/collection/parallel/ForkJoinTasks$$anonfun$execute$2;

    invoke-direct {v0, p0, p1}, Lscala/collection/parallel/ForkJoinTasks$$anonfun$execute$2;-><init>(Lscala/collection/parallel/ForkJoinTasks;Lscala/collection/parallel/ForkJoinTasks$WrappedTask;)V

    return-object v0
.end method

.method public static executeAndWaitResult(Lscala/collection/parallel/ForkJoinTasks;Lscala/collection/parallel/Task;)Ljava/lang/Object;
    .locals 1

    .line 418
    invoke-interface {p0, p1}, Lscala/collection/parallel/ForkJoinTasks;->newWrappedTask(Lscala/collection/parallel/Task;)Lscala/collection/parallel/ForkJoinTasks$WrappedTask;

    move-result-object p1

    .line 420
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v0, v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    if-eqz v0, :cond_0

    .line 421
    move-object p0, p1

    check-cast p0, Lscala/concurrent/forkjoin/ForkJoinTask;

    invoke-virtual {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->fork()Lscala/concurrent/forkjoin/ForkJoinTask;

    goto :goto_0

    .line 423
    :cond_0
    invoke-interface {p0}, Lscala/collection/parallel/ForkJoinTasks;->forkJoinPool()Lscala/concurrent/forkjoin/ForkJoinPool;

    move-result-object p0

    move-object v0, p1

    check-cast v0, Lscala/concurrent/forkjoin/ForkJoinTask;

    invoke-virtual {p0, v0}, Lscala/concurrent/forkjoin/ForkJoinPool;->execute(Lscala/concurrent/forkjoin/ForkJoinTask;)V

    sget-object p0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 426
    :goto_0
    invoke-interface {p1}, Lscala/collection/parallel/ForkJoinTasks$WrappedTask;->sync()V

    .line 428
    invoke-interface {p1}, Lscala/collection/parallel/ForkJoinTasks$WrappedTask;->body()Lscala/collection/parallel/Task;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/parallel/Task;->forwardThrowable()V

    .line 429
    invoke-interface {p1}, Lscala/collection/parallel/ForkJoinTasks$WrappedTask;->body()Lscala/collection/parallel/Task;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/parallel/Task;->result()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static forkJoinPool(Lscala/collection/parallel/ForkJoinTasks;)Lscala/concurrent/forkjoin/ForkJoinPool;
    .locals 0

    .line 387
    invoke-interface {p0}, Lscala/collection/parallel/ForkJoinTasks;->environment()Lscala/concurrent/forkjoin/ForkJoinPool;

    move-result-object p0

    return-object p0
.end method

.method public static parallelismLevel(Lscala/collection/parallel/ForkJoinTasks;)I
    .locals 0

    .line 432
    invoke-interface {p0}, Lscala/collection/parallel/ForkJoinTasks;->forkJoinPool()Lscala/concurrent/forkjoin/ForkJoinPool;

    move-result-object p0

    invoke-virtual {p0}, Lscala/concurrent/forkjoin/ForkJoinPool;->getParallelism()I

    move-result p0

    return p0
.end method
