.class public abstract Lscala/collection/parallel/AdaptiveWorkStealingThreadPoolTasks$class;
.super Ljava/lang/Object;
.source "Tasks.scala"


# direct methods
.method public static $init$(Lscala/collection/parallel/AdaptiveWorkStealingThreadPoolTasks;)V
    .locals 0

    return-void
.end method

.method public static newWrappedTask(Lscala/collection/parallel/AdaptiveWorkStealingThreadPoolTasks;Lscala/collection/parallel/Task;)Lscala/collection/parallel/AdaptiveWorkStealingThreadPoolTasks$WrappedTask;
    .locals 1

    .line 459
    new-instance v0, Lscala/collection/parallel/AdaptiveWorkStealingThreadPoolTasks$WrappedTask;

    invoke-direct {v0, p0, p1}, Lscala/collection/parallel/AdaptiveWorkStealingThreadPoolTasks$WrappedTask;-><init>(Lscala/collection/parallel/AdaptiveWorkStealingThreadPoolTasks;Lscala/collection/parallel/Task;)V

    return-object v0
.end method
