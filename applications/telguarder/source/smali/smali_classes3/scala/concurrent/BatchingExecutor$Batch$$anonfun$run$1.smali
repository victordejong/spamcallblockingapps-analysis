.class public final Lscala/concurrent/BatchingExecutor$Batch$$anonfun$run$1;
.super Lscala/runtime/AbstractFunction0$mcV$sp;
.source "BatchingExecutor.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/concurrent/BatchingExecutor$Batch;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/concurrent/BatchingExecutor$Batch;

.field private final prevBlockContext$1:Lscala/concurrent/BlockContext;


# direct methods
.method public constructor <init>(Lscala/concurrent/BatchingExecutor$Batch;Lscala/concurrent/BlockContext;)V
    .locals 0

    .line 55
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/concurrent/BatchingExecutor$Batch$$anonfun$run$1;->$outer:Lscala/concurrent/BatchingExecutor$Batch;

    iput-object p2, p0, Lscala/concurrent/BatchingExecutor$Batch$$anonfun$run$1;->prevBlockContext$1:Lscala/concurrent/BlockContext;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0$mcV$sp;-><init>()V

    return-void
.end method

.method private final processBatch$1(Lscala/collection/immutable/List;)V
    .locals 4

    .line 58
    :goto_0
    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-void

    .line 60
    :cond_0
    instance-of v0, p1, Lscala/collection/immutable/$colon$colon;

    if-eqz v0, :cond_1

    check-cast p1, Lscala/collection/immutable/$colon$colon;

    .line 61
    iget-object v0, p0, Lscala/concurrent/BatchingExecutor$Batch$$anonfun$run$1;->$outer:Lscala/concurrent/BatchingExecutor$Batch;

    invoke-virtual {v0}, Lscala/concurrent/BatchingExecutor$Batch;->scala$concurrent$BatchingExecutor$Batch$$$outer()Lscala/concurrent/BatchingExecutor;

    move-result-object v0

    invoke-interface {v0}, Lscala/concurrent/BatchingExecutor;->scala$concurrent$BatchingExecutor$$_tasksLocal()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {p1}, Lscala/collection/immutable/$colon$colon;->tl$1()Lscala/collection/immutable/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 63
    :try_start_0
    invoke-virtual {p1}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    iget-object p1, p0, Lscala/concurrent/BatchingExecutor$Batch$$anonfun$run$1;->$outer:Lscala/concurrent/BatchingExecutor$Batch;

    invoke-virtual {p1}, Lscala/concurrent/BatchingExecutor$Batch;->scala$concurrent$BatchingExecutor$Batch$$$outer()Lscala/concurrent/BatchingExecutor;

    move-result-object p1

    invoke-interface {p1}, Lscala/concurrent/BatchingExecutor;->scala$concurrent$BatchingExecutor$$_tasksLocal()Ljava/lang/ThreadLocal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/List;

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 70
    iget-object v0, p0, Lscala/concurrent/BatchingExecutor$Batch$$anonfun$run$1;->$outer:Lscala/concurrent/BatchingExecutor$Batch;

    invoke-virtual {v0}, Lscala/concurrent/BatchingExecutor$Batch;->scala$concurrent$BatchingExecutor$Batch$$$outer()Lscala/concurrent/BatchingExecutor;

    move-result-object v0

    invoke-interface {v0}, Lscala/concurrent/BatchingExecutor;->scala$concurrent$BatchingExecutor$$_tasksLocal()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/List;

    .line 71
    iget-object v1, p0, Lscala/concurrent/BatchingExecutor$Batch$$anonfun$run$1;->$outer:Lscala/concurrent/BatchingExecutor$Batch;

    invoke-virtual {v1}, Lscala/concurrent/BatchingExecutor$Batch;->scala$concurrent$BatchingExecutor$Batch$$$outer()Lscala/concurrent/BatchingExecutor;

    move-result-object v1

    invoke-interface {v1}, Lscala/concurrent/BatchingExecutor;->scala$concurrent$BatchingExecutor$$_tasksLocal()Ljava/lang/ThreadLocal;

    move-result-object v1

    sget-object v2, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 72
    iget-object v1, p0, Lscala/concurrent/BatchingExecutor$Batch$$anonfun$run$1;->$outer:Lscala/concurrent/BatchingExecutor$Batch;

    invoke-virtual {v1}, Lscala/concurrent/BatchingExecutor$Batch;->scala$concurrent$BatchingExecutor$Batch$$$outer()Lscala/concurrent/BatchingExecutor;

    move-result-object v1

    new-instance v2, Lscala/concurrent/BatchingExecutor$Batch;

    iget-object v3, p0, Lscala/concurrent/BatchingExecutor$Batch$$anonfun$run$1;->$outer:Lscala/concurrent/BatchingExecutor$Batch;

    invoke-virtual {v3}, Lscala/concurrent/BatchingExecutor$Batch;->scala$concurrent$BatchingExecutor$Batch$$$outer()Lscala/concurrent/BatchingExecutor;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lscala/concurrent/BatchingExecutor$Batch;-><init>(Lscala/concurrent/BatchingExecutor;Lscala/collection/immutable/List;)V

    invoke-interface {v1, v2}, Lscala/concurrent/BatchingExecutor;->unbatchedExecute(Ljava/lang/Runnable;)V

    .line 73
    throw p1

    .line 58
    :cond_1
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lscala/concurrent/BatchingExecutor$Batch$$anonfun$run$1;->apply()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply()V
    .locals 0

    .line 55
    invoke-virtual {p0}, Lscala/concurrent/BatchingExecutor$Batch$$anonfun$run$1;->apply$mcV$sp()V

    return-void
.end method

.method public apply$mcV$sp()V
    .locals 3

    const/4 v0, 0x0

    .line 56
    :try_start_0
    iget-object v1, p0, Lscala/concurrent/BatchingExecutor$Batch$$anonfun$run$1;->$outer:Lscala/concurrent/BatchingExecutor$Batch;

    iget-object v2, p0, Lscala/concurrent/BatchingExecutor$Batch$$anonfun$run$1;->prevBlockContext$1:Lscala/concurrent/BlockContext;

    invoke-virtual {v1, v2}, Lscala/concurrent/BatchingExecutor$Batch;->scala$concurrent$BatchingExecutor$Batch$$parentBlockContext_$eq(Lscala/concurrent/BlockContext;)V

    .line 78
    iget-object v1, p0, Lscala/concurrent/BatchingExecutor$Batch$$anonfun$run$1;->$outer:Lscala/concurrent/BatchingExecutor$Batch;

    invoke-virtual {v1}, Lscala/concurrent/BatchingExecutor$Batch;->initial()Lscala/collection/immutable/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lscala/concurrent/BatchingExecutor$Batch$$anonfun$run$1;->processBatch$1(Lscala/collection/immutable/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    iget-object v1, p0, Lscala/concurrent/BatchingExecutor$Batch$$anonfun$run$1;->$outer:Lscala/concurrent/BatchingExecutor$Batch;

    invoke-virtual {v1}, Lscala/concurrent/BatchingExecutor$Batch;->scala$concurrent$BatchingExecutor$Batch$$$outer()Lscala/concurrent/BatchingExecutor;

    move-result-object v1

    invoke-interface {v1}, Lscala/concurrent/BatchingExecutor;->scala$concurrent$BatchingExecutor$$_tasksLocal()Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 81
    iget-object v1, p0, Lscala/concurrent/BatchingExecutor$Batch$$anonfun$run$1;->$outer:Lscala/concurrent/BatchingExecutor$Batch;

    invoke-virtual {v1, v0}, Lscala/concurrent/BatchingExecutor$Batch;->scala$concurrent$BatchingExecutor$Batch$$parentBlockContext_$eq(Lscala/concurrent/BlockContext;)V

    return-void

    :catchall_0
    move-exception v1

    .line 80
    iget-object v2, p0, Lscala/concurrent/BatchingExecutor$Batch$$anonfun$run$1;->$outer:Lscala/concurrent/BatchingExecutor$Batch;

    invoke-virtual {v2}, Lscala/concurrent/BatchingExecutor$Batch;->scala$concurrent$BatchingExecutor$Batch$$$outer()Lscala/concurrent/BatchingExecutor;

    move-result-object v2

    invoke-interface {v2}, Lscala/concurrent/BatchingExecutor;->scala$concurrent$BatchingExecutor$$_tasksLocal()Ljava/lang/ThreadLocal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    .line 81
    iget-object v2, p0, Lscala/concurrent/BatchingExecutor$Batch$$anonfun$run$1;->$outer:Lscala/concurrent/BatchingExecutor$Batch;

    invoke-virtual {v2, v0}, Lscala/concurrent/BatchingExecutor$Batch;->scala$concurrent$BatchingExecutor$Batch$$parentBlockContext_$eq(Lscala/concurrent/BlockContext;)V

    throw v1
.end method
