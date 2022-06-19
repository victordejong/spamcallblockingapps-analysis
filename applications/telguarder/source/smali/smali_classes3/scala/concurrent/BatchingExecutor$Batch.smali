.class public Lscala/concurrent/BatchingExecutor$Batch;
.super Ljava/lang/Object;
.source "BatchingExecutor.scala"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lscala/concurrent/BlockContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/concurrent/BatchingExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Batch"
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/concurrent/BatchingExecutor;

.field private final initial:Lscala/collection/immutable/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private scala$concurrent$BatchingExecutor$Batch$$parentBlockContext:Lscala/concurrent/BlockContext;


# direct methods
.method public constructor <init>(Lscala/concurrent/BatchingExecutor;Lscala/collection/immutable/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/BatchingExecutor;",
            "Lscala/collection/immutable/List<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 47
    iput-object p2, p0, Lscala/concurrent/BatchingExecutor$Batch;->initial:Lscala/collection/immutable/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/concurrent/BatchingExecutor$Batch;->$outer:Lscala/concurrent/BatchingExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private scala$concurrent$BatchingExecutor$Batch$$parentBlockContext()Lscala/concurrent/BlockContext;
    .locals 1

    .line 48
    iget-object v0, p0, Lscala/concurrent/BatchingExecutor$Batch;->scala$concurrent$BatchingExecutor$Batch$$parentBlockContext:Lscala/concurrent/BlockContext;

    return-object v0
.end method


# virtual methods
.method public blockOn(Lscala/Function0;Lscala/concurrent/CanAwait;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "TT;>;",
            "Lscala/concurrent/CanAwait;",
            ")TT;"
        }
    .end annotation

    .line 89
    invoke-virtual {p0}, Lscala/concurrent/BatchingExecutor$Batch;->scala$concurrent$BatchingExecutor$Batch$$$outer()Lscala/concurrent/BatchingExecutor;

    move-result-object v0

    invoke-interface {v0}, Lscala/concurrent/BatchingExecutor;->scala$concurrent$BatchingExecutor$$_tasksLocal()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/List;

    .line 90
    invoke-virtual {p0}, Lscala/concurrent/BatchingExecutor$Batch;->scala$concurrent$BatchingExecutor$Batch$$$outer()Lscala/concurrent/BatchingExecutor;

    move-result-object v1

    invoke-interface {v1}, Lscala/concurrent/BatchingExecutor;->scala$concurrent$BatchingExecutor$$_tasksLocal()Ljava/lang/ThreadLocal;

    move-result-object v1

    sget-object v2, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Lscala/collection/immutable/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {p0}, Lscala/concurrent/BatchingExecutor$Batch;->scala$concurrent$BatchingExecutor$Batch$$$outer()Lscala/concurrent/BatchingExecutor;

    move-result-object v1

    new-instance v2, Lscala/concurrent/BatchingExecutor$Batch;

    invoke-virtual {p0}, Lscala/concurrent/BatchingExecutor$Batch;->scala$concurrent$BatchingExecutor$Batch$$$outer()Lscala/concurrent/BatchingExecutor;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lscala/concurrent/BatchingExecutor$Batch;-><init>(Lscala/concurrent/BatchingExecutor;Lscala/collection/immutable/List;)V

    invoke-interface {v1, v2}, Lscala/concurrent/BatchingExecutor;->unbatchedExecute(Ljava/lang/Runnable;)V

    .line 96
    :cond_0
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-direct {p0}, Lscala/concurrent/BatchingExecutor$Batch;->scala$concurrent$BatchingExecutor$Batch$$parentBlockContext()Lscala/concurrent/BlockContext;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lscala/Predef$;->require(Z)V

    .line 97
    invoke-direct {p0}, Lscala/concurrent/BatchingExecutor$Batch;->scala$concurrent$BatchingExecutor$Batch$$parentBlockContext()Lscala/concurrent/BlockContext;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lscala/concurrent/BlockContext;->blockOn(Lscala/Function0;Lscala/concurrent/CanAwait;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public initial()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lscala/concurrent/BatchingExecutor$Batch;->initial:Lscala/collection/immutable/List;

    return-object v0
.end method

.method public run()V
    .locals 3

    .line 51
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p0}, Lscala/concurrent/BatchingExecutor$Batch;->scala$concurrent$BatchingExecutor$Batch$$$outer()Lscala/concurrent/BatchingExecutor;

    move-result-object v1

    invoke-interface {v1}, Lscala/concurrent/BatchingExecutor;->scala$concurrent$BatchingExecutor$$_tasksLocal()Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lscala/Predef$;->require(Z)V

    .line 53
    sget-object v0, Lscala/concurrent/BlockContext$;->MODULE$:Lscala/concurrent/BlockContext$;

    invoke-virtual {v0}, Lscala/concurrent/BlockContext$;->current()Lscala/concurrent/BlockContext;

    move-result-object v0

    .line 54
    sget-object v1, Lscala/concurrent/BlockContext$;->MODULE$:Lscala/concurrent/BlockContext$;

    .line 55
    new-instance v2, Lscala/concurrent/BatchingExecutor$Batch$$anonfun$run$1;

    invoke-direct {v2, p0, v0}, Lscala/concurrent/BatchingExecutor$Batch$$anonfun$run$1;-><init>(Lscala/concurrent/BatchingExecutor$Batch;Lscala/concurrent/BlockContext;)V

    .line 54
    invoke-virtual {v1, p0, v2}, Lscala/concurrent/BlockContext$;->withBlockContext(Lscala/concurrent/BlockContext;Lscala/Function0;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic scala$concurrent$BatchingExecutor$Batch$$$outer()Lscala/concurrent/BatchingExecutor;
    .locals 1

    .line 47
    iget-object v0, p0, Lscala/concurrent/BatchingExecutor$Batch;->$outer:Lscala/concurrent/BatchingExecutor;

    return-object v0
.end method

.method public scala$concurrent$BatchingExecutor$Batch$$parentBlockContext_$eq(Lscala/concurrent/BlockContext;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lscala/concurrent/BatchingExecutor$Batch;->scala$concurrent$BatchingExecutor$Batch$$parentBlockContext:Lscala/concurrent/BlockContext;

    return-void
.end method
