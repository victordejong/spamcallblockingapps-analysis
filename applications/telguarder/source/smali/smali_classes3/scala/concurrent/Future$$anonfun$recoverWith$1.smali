.class public final Lscala/concurrent/Future$$anonfun$recoverWith$1;
.super Lscala/runtime/AbstractFunction1;
.source "Future.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/concurrent/Future;->recoverWith(Lscala/PartialFunction;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/util/Try<",
        "TT;>;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final synthetic $outer:Lscala/concurrent/Future;

.field public final p$6:Lscala/concurrent/Promise;

.field private final pf$5:Lscala/PartialFunction;


# direct methods
.method public constructor <init>(Lscala/concurrent/Future;Lscala/concurrent/Promise;Lscala/PartialFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/Future<",
            "TT;>;)V"
        }
    .end annotation

    .line 343
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/concurrent/Future$$anonfun$recoverWith$1;->$outer:Lscala/concurrent/Future;

    iput-object p2, p0, Lscala/concurrent/Future$$anonfun$recoverWith$1;->p$6:Lscala/concurrent/Promise;

    iput-object p3, p0, Lscala/concurrent/Future$$anonfun$recoverWith$1;->pf$5:Lscala/PartialFunction;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 343
    check-cast p1, Lscala/util/Try;

    invoke-virtual {p0, p1}, Lscala/concurrent/Future$$anonfun$recoverWith$1;->apply(Lscala/util/Try;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/util/Try;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/util/Try<",
            "TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 343
    instance-of v0, p1, Lscala/util/Failure;

    if-eqz v0, :cond_1

    check-cast p1, Lscala/util/Failure;

    :try_start_0
    iget-object v0, p0, Lscala/concurrent/Future$$anonfun$recoverWith$1;->pf$5:Lscala/PartialFunction;

    .line 344
    invoke-virtual {p1}, Lscala/util/Failure;->exception()Ljava/lang/Throwable;

    move-result-object p1

    new-instance v1, Lscala/concurrent/Future$$anonfun$recoverWith$1$$anonfun$apply$5;

    invoke-direct {v1, p0}, Lscala/concurrent/Future$$anonfun$recoverWith$1$$anonfun$apply$5;-><init>(Lscala/concurrent/Future$$anonfun$recoverWith$1;)V

    invoke-interface {v0, p1, v1}, Lscala/PartialFunction;->applyOrElse(Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/concurrent/Future;

    new-instance v0, Lscala/concurrent/Future$$anonfun$recoverWith$1$$anonfun$apply$6;

    invoke-direct {v0, p0}, Lscala/concurrent/Future$$anonfun$recoverWith$1$$anonfun$apply$6;-><init>(Lscala/concurrent/Future$$anonfun$recoverWith$1;)V

    iget-object v1, p0, Lscala/concurrent/Future$$anonfun$recoverWith$1;->$outer:Lscala/concurrent/Future;

    invoke-static {v1}, Lscala/concurrent/Future$class;->scala$concurrent$Future$$internalExecutor(Lscala/concurrent/Future;)Lscala/concurrent/Future$InternalCallbackExecutor$;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lscala/concurrent/Future;->onComplete(Lscala/Function1;Lscala/concurrent/ExecutionContext;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lscala/util/control/NonFatal$;->MODULE$:Lscala/util/control/NonFatal$;

    invoke-virtual {v0, p1}, Lscala/util/control/NonFatal$;->unapply(Ljava/lang/Throwable;)Lscala/Option;

    move-result-object v0

    invoke-virtual {v0}, Lscala/Option;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lscala/concurrent/Future$$anonfun$recoverWith$1;->p$6:Lscala/concurrent/Promise;

    invoke-virtual {v0}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {p1, v0}, Lscala/concurrent/Promise;->failure(Ljava/lang/Throwable;)Lscala/concurrent/Promise;

    move-result-object p1

    goto :goto_0

    :cond_0
    throw p1

    .line 345
    :cond_1
    iget-object v0, p0, Lscala/concurrent/Future$$anonfun$recoverWith$1;->p$6:Lscala/concurrent/Promise;

    invoke-interface {v0, p1}, Lscala/concurrent/Promise;->complete(Lscala/util/Try;)Lscala/concurrent/Promise;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public synthetic scala$concurrent$Future$$anonfun$$$outer()Lscala/concurrent/Future;
    .locals 1

    .line 343
    iget-object v0, p0, Lscala/concurrent/Future$$anonfun$recoverWith$1;->$outer:Lscala/concurrent/Future;

    return-object v0
.end method
