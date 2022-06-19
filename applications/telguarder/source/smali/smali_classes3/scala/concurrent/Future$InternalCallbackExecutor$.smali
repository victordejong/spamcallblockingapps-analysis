.class public Lscala/concurrent/Future$InternalCallbackExecutor$;
.super Ljava/lang/Object;
.source "Future.scala"

# interfaces
.implements Lscala/concurrent/ExecutionContext;
.implements Lscala/concurrent/BatchingExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalCallbackExecutor$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/concurrent/Future$InternalCallbackExecutor$;


# instance fields
.field private final scala$concurrent$BatchingExecutor$$_tasksLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lscala/collection/immutable/List<",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/concurrent/Future$InternalCallbackExecutor$;

    invoke-direct {v0}, Lscala/concurrent/Future$InternalCallbackExecutor$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/concurrent/Future$InternalCallbackExecutor$;->MODULE$:Lscala/concurrent/Future$InternalCallbackExecutor$;

    invoke-static {p0}, Lscala/concurrent/ExecutionContext$class;->$init$(Lscala/concurrent/ExecutionContext;)V

    invoke-static {p0}, Lscala/concurrent/BatchingExecutor$class;->$init$(Lscala/concurrent/BatchingExecutor;)V

    return-void
.end method


# virtual methods
.method public batchable(Ljava/lang/Runnable;)Z
    .locals 0

    .line 597
    invoke-static {p0, p1}, Lscala/concurrent/BatchingExecutor$class;->batchable(Lscala/concurrent/BatchingExecutor;Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    .line 597
    invoke-static {p0, p1}, Lscala/concurrent/BatchingExecutor$class;->execute(Lscala/concurrent/BatchingExecutor;Ljava/lang/Runnable;)V

    return-void
.end method

.method public prepare()Lscala/concurrent/ExecutionContext;
    .locals 1

    .line 597
    invoke-static {p0}, Lscala/concurrent/ExecutionContext$class;->prepare(Lscala/concurrent/ExecutionContext;)Lscala/concurrent/ExecutionContext;

    move-result-object v0

    return-object v0
.end method

.method public reportFailure(Ljava/lang/Throwable;)V
    .locals 2

    .line 601
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "problem in scala.concurrent internal callback"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public scala$concurrent$BatchingExecutor$$_tasksLocal()Ljava/lang/ThreadLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ThreadLocal<",
            "Lscala/collection/immutable/List<",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation

    .line 597
    iget-object v0, p0, Lscala/concurrent/Future$InternalCallbackExecutor$;->scala$concurrent$BatchingExecutor$$_tasksLocal:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public scala$concurrent$BatchingExecutor$_setter_$scala$concurrent$BatchingExecutor$$_tasksLocal_$eq(Ljava/lang/ThreadLocal;)V
    .locals 0

    .line 597
    iput-object p1, p0, Lscala/concurrent/Future$InternalCallbackExecutor$;->scala$concurrent$BatchingExecutor$$_tasksLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public unbatchedExecute(Ljava/lang/Runnable;)V
    .locals 0

    .line 599
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
