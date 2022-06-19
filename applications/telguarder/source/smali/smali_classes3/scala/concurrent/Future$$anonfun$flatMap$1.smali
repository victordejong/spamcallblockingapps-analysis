.class public final Lscala/concurrent/Future$$anonfun$flatMap$1;
.super Lscala/runtime/AbstractFunction1;
.source "Future.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/concurrent/Future;->flatMap(Lscala/Function1;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
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
.field private final synthetic $outer:Lscala/concurrent/Future;

.field private final f$4:Lscala/Function1;

.field public final p$4:Lscala/concurrent/impl/Promise$DefaultPromise;


# direct methods
.method public constructor <init>(Lscala/concurrent/Future;Lscala/concurrent/impl/Promise$DefaultPromise;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/Future<",
            "TT;>;)V"
        }
    .end annotation

    .line 249
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/concurrent/Future$$anonfun$flatMap$1;->$outer:Lscala/concurrent/Future;

    iput-object p2, p0, Lscala/concurrent/Future$$anonfun$flatMap$1;->p$4:Lscala/concurrent/impl/Promise$DefaultPromise;

    iput-object p3, p0, Lscala/concurrent/Future$$anonfun$flatMap$1;->f$4:Lscala/Function1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 249
    check-cast p1, Lscala/util/Try;

    invoke-virtual {p0, p1}, Lscala/concurrent/Future$$anonfun$flatMap$1;->apply(Lscala/util/Try;)Ljava/lang/Object;

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

    .line 249
    instance-of v0, p1, Lscala/util/Failure;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/util/Failure;

    iget-object v0, p0, Lscala/concurrent/Future$$anonfun$flatMap$1;->p$4:Lscala/concurrent/impl/Promise$DefaultPromise;

    invoke-virtual {v0, p1}, Lscala/concurrent/impl/Promise$DefaultPromise;->complete(Lscala/util/Try;)Lscala/concurrent/Promise;

    move-result-object p1

    goto :goto_1

    .line 251
    :cond_0
    instance-of v0, p1, Lscala/util/Success;

    if-eqz v0, :cond_3

    check-cast p1, Lscala/util/Success;

    :try_start_0
    iget-object v0, p0, Lscala/concurrent/Future$$anonfun$flatMap$1;->f$4:Lscala/Function1;

    invoke-virtual {p1}, Lscala/util/Success;->value()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/concurrent/Future;

    .line 253
    instance-of v0, p1, Lscala/concurrent/impl/Promise$DefaultPromise;

    if-eqz v0, :cond_1

    check-cast p1, Lscala/concurrent/impl/Promise$DefaultPromise;

    iget-object v0, p0, Lscala/concurrent/Future$$anonfun$flatMap$1;->p$4:Lscala/concurrent/impl/Promise$DefaultPromise;

    invoke-virtual {p1, v0}, Lscala/concurrent/impl/Promise$DefaultPromise;->linkRootOf(Lscala/concurrent/impl/Promise$DefaultPromise;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 254
    :cond_1
    new-instance v0, Lscala/concurrent/Future$$anonfun$flatMap$1$$anonfun$apply$3;

    invoke-direct {v0, p0}, Lscala/concurrent/Future$$anonfun$flatMap$1$$anonfun$apply$3;-><init>(Lscala/concurrent/Future$$anonfun$flatMap$1;)V

    iget-object v1, p0, Lscala/concurrent/Future$$anonfun$flatMap$1;->$outer:Lscala/concurrent/Future;

    invoke-static {v1}, Lscala/concurrent/Future$class;->scala$concurrent$Future$$internalExecutor(Lscala/concurrent/Future;)Lscala/concurrent/Future$InternalCallbackExecutor$;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lscala/concurrent/Future;->onComplete(Lscala/Function1;Lscala/concurrent/ExecutionContext;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 251
    :goto_0
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 255
    sget-object v0, Lscala/util/control/NonFatal$;->MODULE$:Lscala/util/control/NonFatal$;

    invoke-virtual {v0, p1}, Lscala/util/control/NonFatal$;->unapply(Ljava/lang/Throwable;)Lscala/Option;

    move-result-object v0

    invoke-virtual {v0}, Lscala/Option;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p1, p0, Lscala/concurrent/Future$$anonfun$flatMap$1;->p$4:Lscala/concurrent/impl/Promise$DefaultPromise;

    invoke-virtual {v0}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p1, v0}, Lscala/concurrent/impl/Promise$DefaultPromise;->failure(Ljava/lang/Throwable;)Lscala/concurrent/Promise;

    move-result-object p1

    :goto_1
    return-object p1

    .line 251
    :cond_2
    throw p1

    .line 249
    :cond_3
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
