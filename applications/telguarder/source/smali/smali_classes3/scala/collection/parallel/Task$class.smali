.class public abstract Lscala/collection/parallel/Task$class;
.super Ljava/lang/Object;
.source "Tasks.scala"


# direct methods
.method public static $init$(Lscala/collection/parallel/Task;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-interface {p0, v0}, Lscala/collection/parallel/Task;->throwable_$eq(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static forwardThrowable(Lscala/collection/parallel/Task;)V
    .locals 1

    .line 43
    invoke-interface {p0}, Lscala/collection/parallel/Task;->throwable()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lscala/collection/parallel/Task;->throwable()Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method public static merge(Lscala/collection/parallel/Task;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public static mergeThrowables(Lscala/collection/parallel/Task;Lscala/collection/parallel/Task;)V
    .locals 1

    .line 74
    invoke-interface {p0}, Lscala/collection/parallel/Task;->throwable()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lscala/collection/parallel/Task;->throwable()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    invoke-interface {p1}, Lscala/collection/parallel/Task;->throwable()Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/parallel/Task;->throwable_$eq(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static repr(Lscala/collection/parallel/Task;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public static signalAbort(Lscala/collection/parallel/Task;)V
    .locals 0

    return-void
.end method

.method public static tryLeaf(Lscala/collection/parallel/Task;Lscala/Option;)V
    .locals 2

    .line 48
    :try_start_0
    sget-object v0, Lscala/util/control/Breaks$;->MODULE$:Lscala/util/control/Breaks$;

    new-instance v1, Lscala/collection/parallel/Task$$anonfun$tryLeaf$1;

    invoke-direct {v1, p0, p1}, Lscala/collection/parallel/Task$$anonfun$tryLeaf$1;-><init>(Lscala/collection/parallel/Task;Lscala/Option;)V

    new-instance p1, Lscala/util/control/Breaks$$anon$1;

    invoke-direct {p1, v0, v1}, Lscala/util/control/Breaks$$anon$1;-><init>(Lscala/util/control/Breaks;Lscala/Function0;)V

    .line 52
    new-instance v0, Lscala/collection/parallel/Task$$anonfun$tryLeaf$2;

    invoke-direct {v0, p0}, Lscala/collection/parallel/Task$$anonfun$tryLeaf$2;-><init>(Lscala/collection/parallel/Task;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :try_start_1
    invoke-interface {v1}, Lscala/Function0;->apply()Ljava/lang/Object;
    :try_end_1
    .catch Lscala/util/control/BreakControl; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    iget-object p1, p1, Lscala/util/control/Breaks$$anon$1;->$outer:Lscala/util/control/Breaks;

    invoke-virtual {p1}, Lscala/util/control/Breaks;->scala$util$control$Breaks$$breakException()Lscala/util/control/BreakControl;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq v1, p1, :cond_0

    .line 56
    invoke-interface {p0}, Lscala/collection/parallel/Task;->result()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/parallel/Task;->result_$eq(Ljava/lang/Object;)V

    .line 57
    invoke-interface {p0, v1}, Lscala/collection/parallel/Task;->throwable_$eq(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 51
    :cond_0
    :try_start_3
    iget-object p1, v0, Lscala/collection/parallel/Task$$anonfun$tryLeaf$2;->$outer:Lscala/collection/parallel/Task;

    invoke-interface {p1}, Lscala/collection/parallel/Task;->signalAbort()V

    sget-object p0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 56
    invoke-interface {p0}, Lscala/collection/parallel/Task;->result()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/parallel/Task;->result_$eq(Ljava/lang/Object;)V

    .line 57
    invoke-interface {p0, p1}, Lscala/collection/parallel/Task;->throwable_$eq(Ljava/lang/Throwable;)V

    .line 58
    :goto_0
    invoke-interface {p0}, Lscala/collection/parallel/Task;->signalAbort()V

    :goto_1
    return-void
.end method

.method public static tryMerge(Lscala/collection/parallel/Task;Ljava/lang/Object;)V
    .locals 2

    .line 63
    move-object v0, p1

    check-cast v0, Lscala/collection/parallel/Task;

    .line 64
    invoke-interface {p0}, Lscala/collection/parallel/Task;->throwable()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lscala/collection/parallel/Task;->throwable()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {p0, p1}, Lscala/collection/parallel/Task;->merge(Ljava/lang/Object;)V

    .line 65
    :cond_0
    invoke-interface {p0, v0}, Lscala/collection/parallel/Task;->mergeThrowables(Lscala/collection/parallel/Task;)V

    return-void
.end method
