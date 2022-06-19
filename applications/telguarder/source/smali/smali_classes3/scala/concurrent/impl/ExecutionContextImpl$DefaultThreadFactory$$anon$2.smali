.class public final Lscala/concurrent/impl/ExecutionContextImpl$DefaultThreadFactory$$anon$2;
.super Lscala/concurrent/forkjoin/ForkJoinWorkerThread;
.source "ExecutionContextImpl.scala"

# interfaces
.implements Lscala/concurrent/BlockContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/concurrent/impl/ExecutionContextImpl$DefaultThreadFactory;->newThread(Lscala/concurrent/forkjoin/ForkJoinPool;)Lscala/concurrent/forkjoin/ForkJoinWorkerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lscala/concurrent/impl/ExecutionContextImpl$DefaultThreadFactory;Lscala/concurrent/forkjoin/ForkJoinPool;)V
    .locals 0

    .line 42
    invoke-direct {p0, p2}, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;-><init>(Lscala/concurrent/forkjoin/ForkJoinPool;)V

    return-void
.end method


# virtual methods
.method public blockOn(Lscala/Function0;Lscala/concurrent/CanAwait;)Ljava/lang/Object;
    .locals 1
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

    const/4 p2, 0x0

    .line 44
    invoke-static {p2}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object p2

    .line 45
    new-instance v0, Lscala/concurrent/impl/ExecutionContextImpl$DefaultThreadFactory$$anon$2$$anon$4;

    invoke-direct {v0, p0, p1, p2}, Lscala/concurrent/impl/ExecutionContextImpl$DefaultThreadFactory$$anon$2$$anon$4;-><init>(Lscala/concurrent/impl/ExecutionContextImpl$DefaultThreadFactory$$anon$2;Lscala/Function0;Lscala/runtime/ObjectRef;)V

    invoke-static {v0}, Lscala/concurrent/forkjoin/ForkJoinPool;->managedBlock(Lscala/concurrent/forkjoin/ForkJoinPool$ManagedBlocker;)V

    .line 53
    iget-object p1, p2, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    return-object p1
.end method
