.class public final Lscala/concurrent/impl/Promise$KeptPromise;
.super Ljava/lang/Object;
.source "Promise.scala"

# interfaces
.implements Lscala/concurrent/impl/Promise;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/concurrent/impl/Promise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeptPromise"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/concurrent/impl/Promise<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final value:Lscala/Some;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Some<",
            "Lscala/util/Try<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/util/Try;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/util/Try<",
            "TT;>;)V"
        }
    .end annotation

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/concurrent/Promise$class;->$init$(Lscala/concurrent/Promise;)V

    invoke-static {p0}, Lscala/concurrent/Future$class;->$init$(Lscala/concurrent/Future;)V

    invoke-static {p0}, Lscala/concurrent/impl/Promise$class;->$init$(Lscala/concurrent/impl/Promise;)V

    .line 324
    new-instance v0, Lscala/Some;

    sget-object v1, Lscala/concurrent/impl/Promise$;->MODULE$:Lscala/concurrent/impl/Promise$;

    invoke-virtual {v1, p1}, Lscala/concurrent/impl/Promise$;->scala$concurrent$impl$Promise$$resolveTry(Lscala/util/Try;)Lscala/util/Try;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lscala/concurrent/impl/Promise$KeptPromise;->value:Lscala/Some;

    return-void
.end method


# virtual methods
.method public andThen(Lscala/PartialFunction;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/PartialFunction<",
            "Lscala/util/Try<",
            "TT;>;TU;>;",
            "Lscala/concurrent/ExecutionContext;",
            ")",
            "Lscala/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 322
    invoke-static {p0, p1, p2}, Lscala/concurrent/Future$class;->andThen(Lscala/concurrent/Future;Lscala/PartialFunction;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public collect(Lscala/PartialFunction;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/PartialFunction<",
            "TT;TS;>;",
            "Lscala/concurrent/ExecutionContext;",
            ")",
            "Lscala/concurrent/Future<",
            "TS;>;"
        }
    .end annotation

    .line 322
    invoke-static {p0, p1, p2}, Lscala/concurrent/Future$class;->collect(Lscala/concurrent/Future;Lscala/PartialFunction;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public complete(Lscala/util/Try;)Lscala/concurrent/Promise;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/util/Try<",
            "TT;>;)",
            "Lscala/concurrent/Promise<",
            "TT;>;"
        }
    .end annotation

    .line 322
    invoke-static {p0, p1}, Lscala/concurrent/Promise$class;->complete(Lscala/concurrent/Promise;Lscala/util/Try;)Lscala/concurrent/Promise;

    move-result-object p1

    return-object p1
.end method

.method public final completeWith(Lscala/concurrent/Future;)Lscala/concurrent/Promise;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/Future<",
            "TT;>;)",
            "Lscala/concurrent/Promise<",
            "TT;>;"
        }
    .end annotation

    .line 322
    invoke-static {p0, p1}, Lscala/concurrent/Promise$class;->completeWith(Lscala/concurrent/Promise;Lscala/concurrent/Future;)Lscala/concurrent/Promise;

    move-result-object p1

    return-object p1
.end method

.method public failed()Lscala/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/concurrent/Future<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 322
    invoke-static {p0}, Lscala/concurrent/Future$class;->failed(Lscala/concurrent/Future;)Lscala/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public failure(Ljava/lang/Throwable;)Lscala/concurrent/Promise;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lscala/concurrent/Promise<",
            "TT;>;"
        }
    .end annotation

    .line 322
    invoke-static {p0, p1}, Lscala/concurrent/Promise$class;->failure(Lscala/concurrent/Promise;Ljava/lang/Throwable;)Lscala/concurrent/Promise;

    move-result-object p1

    return-object p1
.end method

.method public fallbackTo(Lscala/concurrent/Future;)Lscala/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/concurrent/Future<",
            "TU;>;)",
            "Lscala/concurrent/Future<",
            "TU;>;"
        }
    .end annotation

    .line 322
    invoke-static {p0, p1}, Lscala/concurrent/Future$class;->fallbackTo(Lscala/concurrent/Future;Lscala/concurrent/Future;)Lscala/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public filter(Lscala/Function1;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/concurrent/ExecutionContext;",
            ")",
            "Lscala/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 322
    invoke-static {p0, p1, p2}, Lscala/concurrent/Future$class;->filter(Lscala/concurrent/Future;Lscala/Function1;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public flatMap(Lscala/Function1;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;",
            "Lscala/concurrent/Future<",
            "TS;>;>;",
            "Lscala/concurrent/ExecutionContext;",
            ")",
            "Lscala/concurrent/Future<",
            "TS;>;"
        }
    .end annotation

    .line 322
    invoke-static {p0, p1, p2}, Lscala/concurrent/Future$class;->flatMap(Lscala/concurrent/Future;Lscala/Function1;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public foreach(Lscala/Function1;Lscala/concurrent/ExecutionContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;TU;>;",
            "Lscala/concurrent/ExecutionContext;",
            ")V"
        }
    .end annotation

    .line 322
    invoke-static {p0, p1, p2}, Lscala/concurrent/Future$class;->foreach(Lscala/concurrent/Future;Lscala/Function1;Lscala/concurrent/ExecutionContext;)V

    return-void
.end method

.method public bridge synthetic future()Lscala/concurrent/Future;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lscala/concurrent/impl/Promise$KeptPromise;->future()Lscala/concurrent/impl/Promise;

    move-result-object v0

    return-object v0
.end method

.method public future()Lscala/concurrent/impl/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/concurrent/impl/Promise<",
            "TT;>;"
        }
    .end annotation

    .line 322
    invoke-static {p0}, Lscala/concurrent/impl/Promise$class;->future(Lscala/concurrent/impl/Promise;)Lscala/concurrent/impl/Promise;

    move-result-object v0

    return-object v0
.end method

.method public isCompleted()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public map(Lscala/Function1;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;TS;>;",
            "Lscala/concurrent/ExecutionContext;",
            ")",
            "Lscala/concurrent/Future<",
            "TS;>;"
        }
    .end annotation

    .line 322
    invoke-static {p0, p1, p2}, Lscala/concurrent/Future$class;->map(Lscala/concurrent/Future;Lscala/Function1;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public mapTo(Lscala/reflect/ClassTag;)Lscala/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/reflect/ClassTag<",
            "TS;>;)",
            "Lscala/concurrent/Future<",
            "TS;>;"
        }
    .end annotation

    .line 322
    invoke-static {p0, p1}, Lscala/concurrent/Future$class;->mapTo(Lscala/concurrent/Future;Lscala/reflect/ClassTag;)Lscala/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public onComplete(Lscala/Function1;Lscala/concurrent/ExecutionContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/util/Try<",
            "TT;>;TU;>;",
            "Lscala/concurrent/ExecutionContext;",
            ")V"
        }
    .end annotation

    .line 331
    invoke-virtual {p0}, Lscala/concurrent/impl/Promise$KeptPromise;->value()Lscala/Some;

    move-result-object v0

    invoke-virtual {v0}, Lscala/Some;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/util/Try;

    .line 332
    invoke-interface {p2}, Lscala/concurrent/ExecutionContext;->prepare()Lscala/concurrent/ExecutionContext;

    move-result-object p2

    .line 333
    new-instance v1, Lscala/concurrent/impl/CallbackRunnable;

    invoke-direct {v1, p2, p1}, Lscala/concurrent/impl/CallbackRunnable;-><init>(Lscala/concurrent/ExecutionContext;Lscala/Function1;)V

    invoke-virtual {v1, v0}, Lscala/concurrent/impl/CallbackRunnable;->executeWithValue(Lscala/util/Try;)V

    return-void
.end method

.method public onFailure(Lscala/PartialFunction;Lscala/concurrent/ExecutionContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/PartialFunction<",
            "Ljava/lang/Throwable;",
            "TU;>;",
            "Lscala/concurrent/ExecutionContext;",
            ")V"
        }
    .end annotation

    .line 322
    invoke-static {p0, p1, p2}, Lscala/concurrent/Future$class;->onFailure(Lscala/concurrent/Future;Lscala/PartialFunction;Lscala/concurrent/ExecutionContext;)V

    return-void
.end method

.method public onSuccess(Lscala/PartialFunction;Lscala/concurrent/ExecutionContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/PartialFunction<",
            "TT;TU;>;",
            "Lscala/concurrent/ExecutionContext;",
            ")V"
        }
    .end annotation

    .line 322
    invoke-static {p0, p1, p2}, Lscala/concurrent/Future$class;->onSuccess(Lscala/concurrent/Future;Lscala/PartialFunction;Lscala/concurrent/ExecutionContext;)V

    return-void
.end method

.method public bridge synthetic ready(Lscala/concurrent/duration/Duration;Lscala/concurrent/CanAwait;)Lscala/concurrent/Awaitable;
    .locals 0

    .line 322
    invoke-virtual {p0, p1, p2}, Lscala/concurrent/impl/Promise$KeptPromise;->ready(Lscala/concurrent/duration/Duration;Lscala/concurrent/CanAwait;)Lscala/concurrent/impl/Promise$KeptPromise;

    move-result-object p1

    return-object p1
.end method

.method public ready(Lscala/concurrent/duration/Duration;Lscala/concurrent/CanAwait;)Lscala/concurrent/impl/Promise$KeptPromise;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/duration/Duration;",
            "Lscala/concurrent/CanAwait;",
            ")",
            "Lscala/concurrent/impl/Promise$KeptPromise<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method

.method public recover(Lscala/PartialFunction;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/PartialFunction<",
            "Ljava/lang/Throwable;",
            "TU;>;",
            "Lscala/concurrent/ExecutionContext;",
            ")",
            "Lscala/concurrent/Future<",
            "TU;>;"
        }
    .end annotation

    .line 322
    invoke-static {p0, p1, p2}, Lscala/concurrent/Future$class;->recover(Lscala/concurrent/Future;Lscala/PartialFunction;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public recoverWith(Lscala/PartialFunction;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/PartialFunction<",
            "Ljava/lang/Throwable;",
            "Lscala/concurrent/Future<",
            "TU;>;>;",
            "Lscala/concurrent/ExecutionContext;",
            ")",
            "Lscala/concurrent/Future<",
            "TU;>;"
        }
    .end annotation

    .line 322
    invoke-static {p0, p1, p2}, Lscala/concurrent/Future$class;->recoverWith(Lscala/concurrent/Future;Lscala/PartialFunction;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public result(Lscala/concurrent/duration/Duration;Lscala/concurrent/CanAwait;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/duration/Duration;",
            "Lscala/concurrent/CanAwait;",
            ")TT;"
        }
    .end annotation

    .line 338
    invoke-virtual {p0}, Lscala/concurrent/impl/Promise$KeptPromise;->value()Lscala/Some;

    move-result-object p1

    invoke-virtual {p1}, Lscala/Some;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/util/Try;

    invoke-virtual {p1}, Lscala/util/Try;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public success(Ljava/lang/Object;)Lscala/concurrent/Promise;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lscala/concurrent/Promise<",
            "TT;>;"
        }
    .end annotation

    .line 322
    invoke-static {p0, p1}, Lscala/concurrent/Promise$class;->success(Lscala/concurrent/Promise;Ljava/lang/Object;)Lscala/concurrent/Promise;

    move-result-object p1

    return-object p1
.end method

.method public transform(Lscala/Function1;Lscala/Function1;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;TS;>;",
            "Lscala/Function1<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;",
            "Lscala/concurrent/ExecutionContext;",
            ")",
            "Lscala/concurrent/Future<",
            "TS;>;"
        }
    .end annotation

    .line 322
    invoke-static {p0, p1, p2, p3}, Lscala/concurrent/Future$class;->transform(Lscala/concurrent/Future;Lscala/Function1;Lscala/Function1;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public tryComplete(Lscala/util/Try;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/util/Try<",
            "TT;>;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public final tryCompleteWith(Lscala/concurrent/Future;)Lscala/concurrent/Promise;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/Future<",
            "TT;>;)",
            "Lscala/concurrent/Promise<",
            "TT;>;"
        }
    .end annotation

    .line 322
    invoke-static {p0, p1}, Lscala/concurrent/Promise$class;->tryCompleteWith(Lscala/concurrent/Promise;Lscala/concurrent/Future;)Lscala/concurrent/Promise;

    move-result-object p1

    return-object p1
.end method

.method public tryFailure(Ljava/lang/Throwable;)Z
    .locals 0

    .line 322
    invoke-static {p0, p1}, Lscala/concurrent/Promise$class;->tryFailure(Lscala/concurrent/Promise;Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public trySuccess(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 322
    invoke-static {p0, p1}, Lscala/concurrent/Promise$class;->trySuccess(Lscala/concurrent/Promise;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic value()Lscala/Option;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lscala/concurrent/impl/Promise$KeptPromise;->value()Lscala/Some;

    move-result-object v0

    return-object v0
.end method

.method public value()Lscala/Some;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Some<",
            "Lscala/util/Try<",
            "TT;>;>;"
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lscala/concurrent/impl/Promise$KeptPromise;->value:Lscala/Some;

    return-object v0
.end method

.method public final withFilter(Lscala/Function1;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/concurrent/ExecutionContext;",
            ")",
            "Lscala/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 322
    invoke-static {p0, p1, p2}, Lscala/concurrent/Future$class;->withFilter(Lscala/concurrent/Future;Lscala/Function1;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public zip(Lscala/concurrent/Future;)Lscala/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/concurrent/Future<",
            "TU;>;)",
            "Lscala/concurrent/Future<",
            "Lscala/Tuple2<",
            "TT;TU;>;>;"
        }
    .end annotation

    .line 322
    invoke-static {p0, p1}, Lscala/concurrent/Future$class;->zip(Lscala/concurrent/Future;Lscala/concurrent/Future;)Lscala/concurrent/Future;

    move-result-object p1

    return-object p1
.end method
