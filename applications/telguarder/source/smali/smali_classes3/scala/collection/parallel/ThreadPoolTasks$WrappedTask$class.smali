.class public abstract Lscala/collection/parallel/ThreadPoolTasks$WrappedTask$class;
.super Ljava/lang/Object;
.source "Tasks.scala"


# direct methods
.method public static $init$(Lscala/collection/parallel/ThreadPoolTasks$WrappedTask;)V
    .locals 1

    const/4 v0, 0x0

    .line 222
    invoke-interface {p0, v0}, Lscala/collection/parallel/ThreadPoolTasks$WrappedTask;->owned_$eq(Z)V

    .line 223
    invoke-interface {p0, v0}, Lscala/collection/parallel/ThreadPoolTasks$WrappedTask;->completed_$eq(Z)V

    return-void
.end method

.method public static release(Lscala/collection/parallel/ThreadPoolTasks$WrappedTask;)V
    .locals 2

    .line 270
    monitor-enter p0

    const/4 v0, 0x1

    .line 272
    :try_start_0
    invoke-interface {p0, v0}, Lscala/collection/parallel/ThreadPoolTasks$WrappedTask;->completed_$eq(Z)V

    .line 273
    invoke-interface {p0}, Lscala/collection/parallel/ThreadPoolTasks$WrappedTask;->scala$collection$parallel$ThreadPoolTasks$WrappedTask$$$outer()Lscala/collection/parallel/ThreadPoolTasks;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/ThreadPoolTasks;->executor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 274
    :try_start_1
    invoke-interface {p0}, Lscala/collection/parallel/ThreadPoolTasks$WrappedTask;->scala$collection$parallel$ThreadPoolTasks$WrappedTask$$$outer()Lscala/collection/parallel/ThreadPoolTasks;

    move-result-object v1

    invoke-static {v1}, Lscala/collection/parallel/ThreadPoolTasks$class;->scala$collection$parallel$ThreadPoolTasks$$decrTasks(Lscala/collection/parallel/ThreadPoolTasks;)V

    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 273
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 270
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 273
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 270
    monitor-exit p0

    throw v1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static run(Lscala/collection/parallel/ThreadPoolTasks$WrappedTask;)V
    .locals 2

    .line 256
    monitor-enter p0

    .line 257
    :try_start_0
    invoke-interface {p0}, Lscala/collection/parallel/ThreadPoolTasks$WrappedTask;->owned()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    const/4 v1, 0x0

    goto :goto_0

    .line 258
    :cond_0
    invoke-interface {p0, v1}, Lscala/collection/parallel/ThreadPoolTasks$WrappedTask;->owned_$eq(Z)V

    .line 259
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 256
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 264
    invoke-interface {p0}, Lscala/collection/parallel/ThreadPoolTasks$WrappedTask;->compute()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 256
    monitor-exit p0

    throw v0
.end method

.method public static start(Lscala/collection/parallel/ThreadPoolTasks$WrappedTask;)V
    .locals 2

    .line 225
    monitor-enter p0

    .line 228
    :try_start_0
    invoke-interface {p0}, Lscala/collection/parallel/ThreadPoolTasks$WrappedTask;->scala$collection$parallel$ThreadPoolTasks$WrappedTask$$$outer()Lscala/collection/parallel/ThreadPoolTasks;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/ThreadPoolTasks;->executor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 229
    :try_start_1
    invoke-interface {p0}, Lscala/collection/parallel/ThreadPoolTasks$WrappedTask;->scala$collection$parallel$ThreadPoolTasks$WrappedTask$$$outer()Lscala/collection/parallel/ThreadPoolTasks;

    move-result-object v1

    invoke-static {v1}, Lscala/collection/parallel/ThreadPoolTasks$class;->scala$collection$parallel$ThreadPoolTasks$$incrTasks(Lscala/collection/parallel/ThreadPoolTasks;)V

    .line 230
    invoke-interface {p0}, Lscala/collection/parallel/ThreadPoolTasks$WrappedTask;->scala$collection$parallel$ThreadPoolTasks$WrappedTask$$$outer()Lscala/collection/parallel/ThreadPoolTasks;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/parallel/ThreadPoolTasks;->executor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 228
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    :try_start_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 228
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 225
    monitor-exit p0

    throw v1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static sync(Lscala/collection/parallel/ThreadPoolTasks$WrappedTask;)V
    .locals 3

    .line 233
    monitor-enter p0

    .line 236
    :try_start_0
    invoke-interface {p0}, Lscala/collection/parallel/ThreadPoolTasks$WrappedTask;->scala$collection$parallel$ThreadPoolTasks$WrappedTask$$$outer()Lscala/collection/parallel/ThreadPoolTasks;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/ThreadPoolTasks;->executor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 237
    :try_start_1
    invoke-interface {p0}, Lscala/collection/parallel/ThreadPoolTasks$WrappedTask;->scala$collection$parallel$ThreadPoolTasks$WrappedTask$$$outer()Lscala/collection/parallel/ThreadPoolTasks;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/parallel/ThreadPoolTasks;->executor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v1

    .line 238
    invoke-interface {p0}, Lscala/collection/parallel/ThreadPoolTasks$WrappedTask;->scala$collection$parallel$ThreadPoolTasks$WrappedTask$$$outer()Lscala/collection/parallel/ThreadPoolTasks;

    move-result-object v2

    invoke-interface {v2}, Lscala/collection/parallel/ThreadPoolTasks;->totaltasks()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 239
    invoke-interface {p0}, Lscala/collection/parallel/ThreadPoolTasks$WrappedTask;->scala$collection$parallel$ThreadPoolTasks$WrappedTask$$$outer()Lscala/collection/parallel/ThreadPoolTasks;

    move-result-object v2

    invoke-interface {v2}, Lscala/collection/parallel/ThreadPoolTasks;->executor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 238
    :cond_0
    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 236
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    :goto_1
    :try_start_2
    invoke-interface {p0}, Lscala/collection/parallel/ThreadPoolTasks$WrappedTask;->completed()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 233
    monitor-exit p0

    return-void

    .line 243
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 236
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 233
    monitor-exit p0

    throw v1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static tryCancel(Lscala/collection/parallel/ThreadPoolTasks$WrappedTask;)Z
    .locals 1

    .line 245
    monitor-enter p0

    .line 247
    :try_start_0
    invoke-interface {p0}, Lscala/collection/parallel/ThreadPoolTasks$WrappedTask;->owned()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 251
    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 249
    invoke-interface {p0, v0}, Lscala/collection/parallel/ThreadPoolTasks$WrappedTask;->owned_$eq(Z)V

    .line 250
    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 245
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
