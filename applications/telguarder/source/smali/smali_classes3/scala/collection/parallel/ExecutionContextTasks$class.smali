.class public abstract Lscala/collection/parallel/ExecutionContextTasks$class;
.super Ljava/lang/Object;
.source "Tasks.scala"


# direct methods
.method public static $init$(Lscala/collection/parallel/ExecutionContextTasks;)V
    .locals 2

    .line 548
    invoke-interface {p0}, Lscala/collection/parallel/ExecutionContextTasks;->executionContext()Lscala/concurrent/ExecutionContext;

    move-result-object v0

    .line 549
    instance-of v1, v0, Lscala/concurrent/impl/ExecutionContextImpl;

    if-eqz v1, :cond_1

    check-cast v0, Lscala/concurrent/impl/ExecutionContextImpl;

    invoke-virtual {v0}, Lscala/concurrent/impl/ExecutionContextImpl;->executor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 550
    instance-of v1, v0, Lscala/concurrent/forkjoin/ForkJoinPool;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/concurrent/forkjoin/ForkJoinPool;

    new-instance v1, Lscala/collection/parallel/ForkJoinTaskSupport;

    invoke-direct {v1, v0}, Lscala/collection/parallel/ForkJoinTaskSupport;-><init>(Lscala/concurrent/forkjoin/ForkJoinPool;)V

    goto :goto_0

    .line 551
    :cond_0
    new-instance v1, Lscala/collection/parallel/FutureTasks;

    invoke-interface {p0}, Lscala/collection/parallel/ExecutionContextTasks;->environment()Lscala/concurrent/ExecutionContext;

    move-result-object v0

    invoke-direct {v1, v0}, Lscala/collection/parallel/FutureTasks;-><init>(Lscala/concurrent/ExecutionContext;)V

    goto :goto_0

    .line 553
    :cond_1
    new-instance v1, Lscala/collection/parallel/FutureTasks;

    invoke-interface {p0}, Lscala/collection/parallel/ExecutionContextTasks;->environment()Lscala/concurrent/ExecutionContext;

    move-result-object v0

    invoke-direct {v1, v0}, Lscala/collection/parallel/FutureTasks;-><init>(Lscala/concurrent/ExecutionContext;)V

    .line 548
    :goto_0
    invoke-interface {p0, v1}, Lscala/collection/parallel/ExecutionContextTasks;->scala$collection$parallel$ExecutionContextTasks$_setter_$scala$collection$parallel$ExecutionContextTasks$$driver_$eq(Lscala/collection/parallel/Tasks;)V

    return-void
.end method

.method public static execute(Lscala/collection/parallel/ExecutionContextTasks;Lscala/collection/parallel/Task;)Lscala/Function0;
    .locals 0

    .line 556
    invoke-interface {p0}, Lscala/collection/parallel/ExecutionContextTasks;->scala$collection$parallel$ExecutionContextTasks$$driver()Lscala/collection/parallel/Tasks;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/parallel/Tasks;->execute(Lscala/collection/parallel/Task;)Lscala/Function0;

    move-result-object p0

    return-object p0
.end method

.method public static executeAndWaitResult(Lscala/collection/parallel/ExecutionContextTasks;Lscala/collection/parallel/Task;)Ljava/lang/Object;
    .locals 0

    .line 558
    invoke-interface {p0}, Lscala/collection/parallel/ExecutionContextTasks;->scala$collection$parallel$ExecutionContextTasks$$driver()Lscala/collection/parallel/Tasks;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/parallel/Tasks;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static executionContext(Lscala/collection/parallel/ExecutionContextTasks;)Lscala/concurrent/ExecutionContext;
    .locals 0

    .line 538
    invoke-interface {p0}, Lscala/collection/parallel/ExecutionContextTasks;->environment()Lscala/concurrent/ExecutionContext;

    move-result-object p0

    return-object p0
.end method

.method public static parallelismLevel(Lscala/collection/parallel/ExecutionContextTasks;)I
    .locals 0

    .line 560
    invoke-interface {p0}, Lscala/collection/parallel/ExecutionContextTasks;->scala$collection$parallel$ExecutionContextTasks$$driver()Lscala/collection/parallel/Tasks;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/parallel/Tasks;->parallelismLevel()I

    move-result p0

    return p0
.end method
