.class public abstract Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask$class;
.super Ljava/lang/Object;
.source "Tasks.scala"


# direct methods
.method public static $init$(Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;)V
    .locals 1

    const/4 v0, 0x0

    .line 143
    invoke-interface {p0, v0}, Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;->next_$eq(Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;)V

    const/4 v0, 0x1

    .line 144
    invoke-interface {p0, v0}, Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;->shouldWaitFor_$eq(Z)V

    return-void
.end method

.method public static compute(Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;)V
    .locals 2

    .line 148
    invoke-interface {p0}, Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;->body()Lscala/collection/parallel/Task;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/Task;->shouldSplitFurther()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-interface {p0}, Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;->internal()V

    .line 150
    invoke-interface {p0}, Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;->release()V

    goto :goto_0

    .line 152
    :cond_0
    invoke-interface {p0}, Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;->body()Lscala/collection/parallel/Task;

    move-result-object v0

    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-interface {v0, v1}, Lscala/collection/parallel/Task;->tryLeaf(Lscala/Option;)V

    .line 153
    invoke-interface {p0}, Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;->release()V

    :goto_0
    return-void
.end method

.method public static internal(Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;)V
    .locals 4

    .line 157
    invoke-interface {p0}, Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;->spawnSubtasks()Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;

    move-result-object v0

    .line 159
    invoke-interface {v0}, Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;->body()Lscala/collection/parallel/Task;

    move-result-object v1

    sget-object v2, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-interface {v1, v2}, Lscala/collection/parallel/Task;->tryLeaf(Lscala/Option;)V

    .line 160
    invoke-interface {v0}, Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;->release()V

    .line 161
    invoke-interface {p0}, Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;->body()Lscala/collection/parallel/Task;

    move-result-object v1

    invoke-interface {v0}, Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;->body()Lscala/collection/parallel/Task;

    move-result-object v2

    invoke-interface {v2}, Lscala/collection/parallel/Task;->result()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lscala/collection/parallel/Task;->result_$eq(Ljava/lang/Object;)V

    .line 162
    invoke-interface {p0}, Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;->body()Lscala/collection/parallel/Task;

    move-result-object v1

    invoke-interface {v0}, Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;->body()Lscala/collection/parallel/Task;

    move-result-object v2

    invoke-interface {v2}, Lscala/collection/parallel/Task;->throwable()Ljava/lang/Throwable;

    move-result-object v2

    invoke-interface {v1, v2}, Lscala/collection/parallel/Task;->throwable_$eq(Ljava/lang/Throwable;)V

    .line 164
    :goto_0
    invoke-interface {v0}, Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;->next()Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 166
    :cond_0
    invoke-interface {v0}, Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;->next()Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;

    move-result-object v0

    .line 167
    invoke-interface {v0}, Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;->tryCancel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    invoke-interface {v0}, Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;->body()Lscala/collection/parallel/Task;

    move-result-object v1

    new-instance v2, Lscala/Some;

    invoke-interface {p0}, Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;->body()Lscala/collection/parallel/Task;

    move-result-object v3

    invoke-interface {v3}, Lscala/collection/parallel/Task;->result()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lscala/collection/parallel/Task;->tryLeaf(Lscala/Option;)V

    .line 170
    invoke-interface {v0}, Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;->release()V

    goto :goto_1

    .line 173
    :cond_1
    invoke-interface {v0}, Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;->sync()V

    .line 176
    :goto_1
    invoke-interface {p0}, Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;->body()Lscala/collection/parallel/Task;

    move-result-object v1

    invoke-interface {v0}, Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;->body()Lscala/collection/parallel/Task;

    move-result-object v2

    invoke-interface {v2}, Lscala/collection/parallel/Task;->repr()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lscala/collection/parallel/Task;->tryMerge(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static printChain(Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;)V
    .locals 4

    const-string v0, "chain: "

    :goto_0
    if-nez p0, :cond_0

    .line 203
    sget-object p0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p0, v0}, Lscala/Predef$;->println(Ljava/lang/Object;)V

    return-void

    .line 200
    :cond_0
    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    sget-object v1, Lscala/Predef$any2stringadd$;->MODULE$:Lscala/Predef$any2stringadd$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v2, p0}, Lscala/Predef$;->any2stringadd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, " ---> "

    invoke-virtual {v1, v2, v3}, Lscala/Predef$any2stringadd$;->$plus$extension(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-interface {p0}, Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;->next()Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;

    move-result-object p0

    goto :goto_0
.end method

.method public static spawnSubtasks(Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;)Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;
    .locals 4

    const/4 v0, 0x0

    .line 181
    invoke-static {v0}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v0

    move-object v1, p0

    .line 183
    :goto_0
    invoke-interface {v1}, Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;->split()Lscala/collection/Seq;

    move-result-object v1

    .line 185
    invoke-interface {v1}, Lscala/collection/Seq;->head()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;

    .line 186
    invoke-interface {v1}, Lscala/collection/Seq;->tail()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/SeqLike;

    invoke-interface {v1}, Lscala/collection/SeqLike;->reverse()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/IterableLike;

    new-instance v3, Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask$$anonfun$spawnSubtasks$1;

    invoke-direct {v3, p0, v0}, Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask$$anonfun$spawnSubtasks$1;-><init>(Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;Lscala/runtime/ObjectRef;)V

    invoke-interface {v1, v3}, Lscala/collection/IterableLike;->foreach(Lscala/Function1;)V

    .line 191
    invoke-interface {v2}, Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;->body()Lscala/collection/parallel/Task;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/parallel/Task;->shouldSplitFurther()Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    iget-object p0, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast p0, Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;

    invoke-interface {v2, p0}, Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;->next_$eq(Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;)V

    return-object v2

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method
