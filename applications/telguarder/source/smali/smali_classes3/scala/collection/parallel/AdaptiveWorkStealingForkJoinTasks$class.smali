.class public abstract Lscala/collection/parallel/AdaptiveWorkStealingForkJoinTasks$class;
.super Ljava/lang/Object;
.source "Tasks.scala"


# direct methods
.method public static $init$(Lscala/collection/parallel/AdaptiveWorkStealingForkJoinTasks;)V
    .locals 0

    return-void
.end method

.method public static newWrappedTask(Lscala/collection/parallel/AdaptiveWorkStealingForkJoinTasks;Lscala/collection/parallel/Task;)Lscala/collection/parallel/AdaptiveWorkStealingForkJoinTasks$WrappedTask;
    .locals 1

    .line 448
    new-instance v0, Lscala/collection/parallel/AdaptiveWorkStealingForkJoinTasks$WrappedTask;

    invoke-direct {v0, p0, p1}, Lscala/collection/parallel/AdaptiveWorkStealingForkJoinTasks$WrappedTask;-><init>(Lscala/collection/parallel/AdaptiveWorkStealingForkJoinTasks;Lscala/collection/parallel/Task;)V

    return-object v0
.end method
