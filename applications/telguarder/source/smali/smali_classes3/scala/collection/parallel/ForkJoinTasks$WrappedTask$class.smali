.class public abstract Lscala/collection/parallel/ForkJoinTasks$WrappedTask$class;
.super Ljava/lang/Object;
.source "Tasks.scala"


# direct methods
.method public static $init$(Lscala/collection/parallel/ForkJoinTasks$WrappedTask;)V
    .locals 0

    return-void
.end method

.method public static start(Lscala/collection/parallel/ForkJoinTasks$WrappedTask;)V
    .locals 0

    .line 377
    check-cast p0, Lscala/concurrent/forkjoin/ForkJoinTask;

    invoke-virtual {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->fork()Lscala/concurrent/forkjoin/ForkJoinTask;

    return-void
.end method

.method public static sync(Lscala/collection/parallel/ForkJoinTasks$WrappedTask;)V
    .locals 0

    .line 378
    check-cast p0, Lscala/concurrent/forkjoin/ForkJoinTask;

    invoke-virtual {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->join()Ljava/lang/Object;

    return-void
.end method

.method public static tryCancel(Lscala/collection/parallel/ForkJoinTasks$WrappedTask;)Z
    .locals 0

    .line 379
    check-cast p0, Lscala/concurrent/forkjoin/ForkJoinTask;

    invoke-virtual {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->tryUnfork()Z

    move-result p0

    return p0
.end method
