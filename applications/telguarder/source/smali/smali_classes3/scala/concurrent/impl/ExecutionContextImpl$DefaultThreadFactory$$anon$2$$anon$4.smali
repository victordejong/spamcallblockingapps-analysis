.class public final Lscala/concurrent/impl/ExecutionContextImpl$DefaultThreadFactory$$anon$2$$anon$4;
.super Ljava/lang/Object;
.source "ExecutionContextImpl.scala"

# interfaces
.implements Lscala/concurrent/forkjoin/ForkJoinPool$ManagedBlocker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/concurrent/impl/ExecutionContextImpl$DefaultThreadFactory$$anon$2;->blockOn(Lscala/Function0;Lscala/concurrent/CanAwait;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private volatile isdone:Z

.field private final result$1:Lscala/runtime/ObjectRef;

.field private final thunk$1:Lscala/Function0;


# direct methods
.method public constructor <init>(Lscala/concurrent/impl/ExecutionContextImpl$DefaultThreadFactory$$anon$2;Lscala/Function0;Lscala/runtime/ObjectRef;)V
    .locals 0

    .line 45
    iput-object p2, p0, Lscala/concurrent/impl/ExecutionContextImpl$DefaultThreadFactory$$anon$2$$anon$4;->thunk$1:Lscala/Function0;

    iput-object p3, p0, Lscala/concurrent/impl/ExecutionContextImpl$DefaultThreadFactory$$anon$2$$anon$4;->result$1:Lscala/runtime/ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lscala/concurrent/impl/ExecutionContextImpl$DefaultThreadFactory$$anon$2$$anon$4;->isdone:Z

    return-void
.end method

.method private isdone()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lscala/concurrent/impl/ExecutionContextImpl$DefaultThreadFactory$$anon$2$$anon$4;->isdone:Z

    return v0
.end method

.method private isdone_$eq(Z)V
    .locals 0

    .line 46
    iput-boolean p1, p0, Lscala/concurrent/impl/ExecutionContextImpl$DefaultThreadFactory$$anon$2$$anon$4;->isdone:Z

    return-void
.end method


# virtual methods
.method public block()Z
    .locals 3

    .line 48
    iget-object v0, p0, Lscala/concurrent/impl/ExecutionContextImpl$DefaultThreadFactory$$anon$2$$anon$4;->result$1:Lscala/runtime/ObjectRef;

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lscala/concurrent/impl/ExecutionContextImpl$DefaultThreadFactory$$anon$2$$anon$4;->thunk$1:Lscala/Function0;

    invoke-interface {v2}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v1}, Lscala/concurrent/impl/ExecutionContextImpl$DefaultThreadFactory$$anon$2$$anon$4;->isdone_$eq(Z)V

    iput-object v2, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    return v1

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1}, Lscala/concurrent/impl/ExecutionContextImpl$DefaultThreadFactory$$anon$2$$anon$4;->isdone_$eq(Z)V

    throw v0
.end method

.method public isReleasable()Z
    .locals 1

    .line 51
    invoke-direct {p0}, Lscala/concurrent/impl/ExecutionContextImpl$DefaultThreadFactory$$anon$2$$anon$4;->isdone()Z

    move-result v0

    return v0
.end method
