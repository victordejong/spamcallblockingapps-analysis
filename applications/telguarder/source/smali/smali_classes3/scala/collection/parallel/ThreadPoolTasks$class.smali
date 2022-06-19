.class public abstract Lscala/collection/parallel/ThreadPoolTasks$class;
.super Ljava/lang/Object;
.source "Tasks.scala"


# direct methods
.method public static $init$(Lscala/collection/parallel/ThreadPoolTasks;)V
    .locals 1

    const/4 v0, 0x0

    .line 285
    invoke-interface {p0, v0}, Lscala/collection/parallel/ThreadPoolTasks;->totaltasks_$eq(I)V

    return-void
.end method

.method public static execute(Lscala/collection/parallel/ThreadPoolTasks;Lscala/collection/parallel/Task;)Lscala/Function0;
    .locals 1

    .line 296
    invoke-interface {p0, p1}, Lscala/collection/parallel/ThreadPoolTasks;->newWrappedTask(Lscala/collection/parallel/Task;)Lscala/collection/parallel/ThreadPoolTasks$WrappedTask;

    move-result-object p1

    .line 299
    invoke-interface {p1}, Lscala/collection/parallel/ThreadPoolTasks$WrappedTask;->start()V

    .line 301
    new-instance v0, Lscala/collection/parallel/ThreadPoolTasks$$anonfun$execute$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/parallel/ThreadPoolTasks$$anonfun$execute$1;-><init>(Lscala/collection/parallel/ThreadPoolTasks;Lscala/collection/parallel/ThreadPoolTasks$WrappedTask;)V

    return-object v0
.end method

.method public static executeAndWaitResult(Lscala/collection/parallel/ThreadPoolTasks;Lscala/collection/parallel/Task;)Ljava/lang/Object;
    .locals 0

    .line 309
    invoke-interface {p0, p1}, Lscala/collection/parallel/ThreadPoolTasks;->newWrappedTask(Lscala/collection/parallel/Task;)Lscala/collection/parallel/ThreadPoolTasks$WrappedTask;

    move-result-object p0

    .line 312
    invoke-interface {p0}, Lscala/collection/parallel/ThreadPoolTasks$WrappedTask;->start()V

    .line 314
    invoke-interface {p0}, Lscala/collection/parallel/ThreadPoolTasks$WrappedTask;->sync()V

    .line 315
    invoke-interface {p0}, Lscala/collection/parallel/ThreadPoolTasks$WrappedTask;->body()Lscala/collection/parallel/Task;

    move-result-object p1

    invoke-interface {p1}, Lscala/collection/parallel/Task;->forwardThrowable()V

    .line 316
    invoke-interface {p0}, Lscala/collection/parallel/ThreadPoolTasks$WrappedTask;->body()Lscala/collection/parallel/Task;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/parallel/Task;->result()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static executor(Lscala/collection/parallel/ThreadPoolTasks;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 0

    .line 283
    invoke-interface {p0}, Lscala/collection/parallel/ThreadPoolTasks;->environment()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static parallelismLevel(Lscala/collection/parallel/ThreadPoolTasks;)I
    .locals 0

    .line 319
    sget-object p0, Lscala/collection/parallel/ThreadPoolTasks$;->MODULE$:Lscala/collection/parallel/ThreadPoolTasks$;

    invoke-virtual {p0}, Lscala/collection/parallel/ThreadPoolTasks$;->numCores()I

    move-result p0

    return p0
.end method

.method public static queue(Lscala/collection/parallel/ThreadPoolTasks;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    .line 284
    invoke-interface {p0}, Lscala/collection/parallel/ThreadPoolTasks;->executor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method public static scala$collection$parallel$ThreadPoolTasks$$decrTasks(Lscala/collection/parallel/ThreadPoolTasks;)V
    .locals 1

    .line 291
    monitor-enter p0

    .line 292
    :try_start_0
    invoke-interface {p0}, Lscala/collection/parallel/ThreadPoolTasks;->totaltasks()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Lscala/collection/parallel/ThreadPoolTasks;->totaltasks_$eq(I)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 291
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static scala$collection$parallel$ThreadPoolTasks$$incrTasks(Lscala/collection/parallel/ThreadPoolTasks;)V
    .locals 1

    .line 287
    monitor-enter p0

    .line 288
    :try_start_0
    invoke-interface {p0}, Lscala/collection/parallel/ThreadPoolTasks;->totaltasks()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v0}, Lscala/collection/parallel/ThreadPoolTasks;->totaltasks_$eq(I)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 287
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
