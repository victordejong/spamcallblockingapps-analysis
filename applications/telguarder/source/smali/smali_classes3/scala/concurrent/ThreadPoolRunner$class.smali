.class public abstract Lscala/concurrent/ThreadPoolRunner$class;
.super Ljava/lang/Object;
.source "ThreadPoolRunner.scala"


# direct methods
.method public static $init$(Lscala/concurrent/ThreadPoolRunner;)V
    .locals 0

    return-void
.end method

.method public static execute(Lscala/concurrent/ThreadPoolRunner;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 43
    invoke-interface {p0}, Lscala/concurrent/ThreadPoolRunner;->executor()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static functionAsTask(Lscala/concurrent/ThreadPoolRunner;Lscala/Function0;)Ljava/util/concurrent/Callable;
    .locals 1

    .line 31
    new-instance v0, Lscala/concurrent/ThreadPoolRunner$RunCallable;

    invoke-direct {v0, p0, p1}, Lscala/concurrent/ThreadPoolRunner$RunCallable;-><init>(Lscala/concurrent/ThreadPoolRunner;Lscala/Function0;)V

    return-object v0
.end method

.method public static futureAsFunction(Lscala/concurrent/ThreadPoolRunner;Ljava/util/concurrent/Future;)Lscala/Function0;
    .locals 1

    .line 34
    new-instance v0, Lscala/concurrent/ThreadPoolRunner$$anonfun$futureAsFunction$1;

    invoke-direct {v0, p0, p1}, Lscala/concurrent/ThreadPoolRunner$$anonfun$futureAsFunction$1;-><init>(Lscala/concurrent/ThreadPoolRunner;Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public static managedBlock(Lscala/concurrent/ThreadPoolRunner;Lscala/concurrent/ManagedBlocker;)V
    .locals 0

    .line 48
    invoke-interface {p1}, Lscala/concurrent/ManagedBlocker;->block()Z

    return-void
.end method

.method public static submit(Lscala/concurrent/ThreadPoolRunner;Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 0

    .line 39
    invoke-interface {p0}, Lscala/concurrent/ThreadPoolRunner;->executor()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method
