.class public Lscala/concurrent/impl/Promise$DefaultPromise;
.super Lscala/concurrent/impl/AbstractPromise;
.source "Promise.scala"

# interfaces
.implements Lscala/concurrent/impl/Promise;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/concurrent/impl/Promise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultPromise"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/concurrent/impl/AbstractPromise;",
        "Lscala/concurrent/impl/Promise<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 153
    invoke-direct {p0}, Lscala/concurrent/impl/AbstractPromise;-><init>()V

    invoke-static {p0}, Lscala/concurrent/Promise$class;->$init$(Lscala/concurrent/Promise;)V

    invoke-static {p0}, Lscala/concurrent/Future$class;->$init$(Lscala/concurrent/Future;)V

    invoke-static {p0}, Lscala/concurrent/impl/Promise$class;->$init$(Lscala/concurrent/impl/Promise;)V

    .line 154
    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lscala/concurrent/impl/Promise$DefaultPromise;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method private compressedRoot()Lscala/concurrent/impl/Promise$DefaultPromise;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/concurrent/impl/Promise$DefaultPromise<",
            "TT;>;"
        }
    .end annotation

    .line 172
    :cond_0
    invoke-virtual {p0}, Lscala/concurrent/impl/Promise$DefaultPromise;->getState()Ljava/lang/Object;

    move-result-object v0

    .line 173
    instance-of v1, v0, Lscala/concurrent/impl/Promise$DefaultPromise;

    if-eqz v1, :cond_2

    check-cast v0, Lscala/concurrent/impl/Promise$DefaultPromise;

    .line 174
    invoke-direct {v0}, Lscala/concurrent/impl/Promise$DefaultPromise;->root()Lscala/concurrent/impl/Promise$DefaultPromise;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 175
    :cond_1
    invoke-virtual {p0, v0, v1}, Lscala/concurrent/impl/Promise$DefaultPromise;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    return-object v1
.end method

.method private isCompleted0()Z
    .locals 3

    move-object v0, p0

    .line 237
    :goto_0
    invoke-virtual {v0}, Lscala/concurrent/impl/Promise$DefaultPromise;->getState()Ljava/lang/Object;

    move-result-object v1

    .line 238
    instance-of v2, v1, Lscala/util/Try;

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    .line 239
    :cond_0
    instance-of v1, v1, Lscala/concurrent/impl/Promise$DefaultPromise;

    if-eqz v1, :cond_1

    invoke-direct {v0}, Lscala/concurrent/impl/Promise$DefaultPromise;->compressedRoot()Lscala/concurrent/impl/Promise$DefaultPromise;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private link(Lscala/concurrent/impl/Promise$DefaultPromise;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/impl/Promise$DefaultPromise<",
            "TT;>;)V"
        }
    .end annotation

    move-object v0, p0

    :cond_0
    :goto_0
    if-eq v0, p1, :cond_7

    .line 302
    invoke-virtual {v0}, Lscala/concurrent/impl/Promise$DefaultPromise;->getState()Ljava/lang/Object;

    move-result-object v1

    .line 303
    instance-of v2, v1, Lscala/util/Try;

    if-eqz v2, :cond_2

    check-cast v1, Lscala/util/Try;

    .line 304
    invoke-virtual {p1, v1}, Lscala/concurrent/impl/Promise$DefaultPromise;->tryComplete(Lscala/util/Try;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_3

    .line 307
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot link completed promises together"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 309
    :cond_2
    instance-of v2, v1, Lscala/concurrent/impl/Promise$DefaultPromise;

    if-eqz v2, :cond_3

    .line 310
    invoke-direct {v0}, Lscala/concurrent/impl/Promise$DefaultPromise;->compressedRoot()Lscala/concurrent/impl/Promise$DefaultPromise;

    move-result-object v0

    goto :goto_0

    .line 311
    :cond_3
    instance-of v2, v1, Lscala/collection/immutable/List;

    if-eqz v2, :cond_6

    check-cast v1, Lscala/collection/immutable/List;

    invoke-virtual {v0, v1, p1}, Lscala/concurrent/impl/Promise$DefaultPromise;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 312
    invoke-virtual {v1}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_1
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_3

    :cond_4
    :goto_2
    invoke-virtual {v1}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 302
    :goto_3
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_4

    .line 312
    :cond_5
    invoke-virtual {v1}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/concurrent/impl/CallbackRunnable;

    invoke-virtual {p1, v0}, Lscala/concurrent/impl/Promise$DefaultPromise;->scala$concurrent$impl$Promise$DefaultPromise$$dispatchOrAddCallback(Lscala/concurrent/impl/CallbackRunnable;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    invoke-virtual {v1}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lscala/collection/immutable/List;

    goto :goto_2

    .line 302
    :cond_6
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 301
    :cond_7
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_4
    return-void
.end method

.method private root()Lscala/concurrent/impl/Promise$DefaultPromise;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/concurrent/impl/Promise$DefaultPromise<",
            "TT;>;"
        }
    .end annotation

    move-object v0, p0

    .line 186
    :goto_0
    invoke-virtual {v0}, Lscala/concurrent/impl/Promise$DefaultPromise;->getState()Ljava/lang/Object;

    move-result-object v1

    .line 187
    instance-of v2, v1, Lscala/concurrent/impl/Promise$DefaultPromise;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lscala/concurrent/impl/Promise$DefaultPromise;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private tryCompleteAndGetListeners(Lscala/util/Try;)Lscala/collection/immutable/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/util/Try<",
            "TT;>;)",
            "Lscala/collection/immutable/List<",
            "Lscala/concurrent/impl/CallbackRunnable<",
            "TT;>;>;"
        }
    .end annotation

    move-object v0, p0

    .line 257
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lscala/concurrent/impl/Promise$DefaultPromise;->getState()Ljava/lang/Object;

    move-result-object v1

    .line 258
    instance-of v2, v1, Lscala/collection/immutable/List;

    if-eqz v2, :cond_1

    check-cast v1, Lscala/collection/immutable/List;

    .line 259
    invoke-virtual {v0, v1, p1}, Lscala/concurrent/impl/Promise$DefaultPromise;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 261
    :cond_1
    instance-of v1, v1, Lscala/concurrent/impl/Promise$DefaultPromise;

    if-eqz v1, :cond_2

    .line 262
    invoke-direct {v0}, Lscala/concurrent/impl/Promise$DefaultPromise;->compressedRoot()Lscala/concurrent/impl/Promise$DefaultPromise;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method private value0()Lscala/Option;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "Lscala/util/Try<",
            "TT;>;>;"
        }
    .end annotation

    move-object v0, p0

    .line 228
    :goto_0
    invoke-virtual {v0}, Lscala/concurrent/impl/Promise$DefaultPromise;->getState()Ljava/lang/Object;

    move-result-object v1

    .line 229
    instance-of v2, v1, Lscala/util/Try;

    if-eqz v2, :cond_0

    check-cast v1, Lscala/util/Try;

    new-instance v0, Lscala/Some;

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    .line 230
    :cond_0
    instance-of v1, v1, Lscala/concurrent/impl/Promise$DefaultPromise;

    if-eqz v1, :cond_1

    invoke-direct {v0}, Lscala/concurrent/impl/Promise$DefaultPromise;->compressedRoot()Lscala/concurrent/impl/Promise$DefaultPromise;

    move-result-object v0

    goto :goto_0

    .line 231
    :cond_1
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    :goto_1
    return-object v0
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

    .line 153
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

    .line 153
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

    .line 153
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

    .line 153
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

    .line 153
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

    .line 153
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

    .line 153
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

    .line 153
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

    .line 153
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

    .line 153
    invoke-static {p0, p1, p2}, Lscala/concurrent/Future$class;->foreach(Lscala/concurrent/Future;Lscala/Function1;Lscala/concurrent/ExecutionContext;)V

    return-void
.end method

.method public bridge synthetic future()Lscala/concurrent/Future;
    .locals 1

    .line 153
    invoke-virtual {p0}, Lscala/concurrent/impl/Promise$DefaultPromise;->future()Lscala/concurrent/impl/Promise;

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

    .line 153
    invoke-static {p0}, Lscala/concurrent/impl/Promise$class;->future(Lscala/concurrent/impl/Promise;)Lscala/concurrent/impl/Promise;

    move-result-object v0

    return-object v0
.end method

.method public isCompleted()Z
    .locals 1

    .line 234
    invoke-direct {p0}, Lscala/concurrent/impl/Promise$DefaultPromise;->isCompleted0()Z

    move-result v0

    return v0
.end method

.method public final linkRootOf(Lscala/concurrent/impl/Promise$DefaultPromise;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/impl/Promise$DefaultPromise<",
            "TT;>;)V"
        }
    .end annotation

    .line 289
    invoke-direct {p1}, Lscala/concurrent/impl/Promise$DefaultPromise;->compressedRoot()Lscala/concurrent/impl/Promise$DefaultPromise;

    move-result-object p1

    invoke-direct {p0, p1}, Lscala/concurrent/impl/Promise$DefaultPromise;->link(Lscala/concurrent/impl/Promise$DefaultPromise;)V

    return-void
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

    .line 153
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

    .line 153
    invoke-static {p0, p1}, Lscala/concurrent/Future$class;->mapTo(Lscala/concurrent/Future;Lscala/reflect/ClassTag;)Lscala/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public onComplete(Lscala/Function1;Lscala/concurrent/ExecutionContext;)V
    .locals 1
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

    .line 268
    invoke-interface {p2}, Lscala/concurrent/ExecutionContext;->prepare()Lscala/concurrent/ExecutionContext;

    move-result-object p2

    .line 269
    new-instance v0, Lscala/concurrent/impl/CallbackRunnable;

    invoke-direct {v0, p2, p1}, Lscala/concurrent/impl/CallbackRunnable;-><init>(Lscala/concurrent/ExecutionContext;Lscala/Function1;)V

    .line 270
    invoke-virtual {p0, v0}, Lscala/concurrent/impl/Promise$DefaultPromise;->scala$concurrent$impl$Promise$DefaultPromise$$dispatchOrAddCallback(Lscala/concurrent/impl/CallbackRunnable;)V

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

    .line 153
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

    .line 153
    invoke-static {p0, p1, p2}, Lscala/concurrent/Future$class;->onSuccess(Lscala/concurrent/Future;Lscala/PartialFunction;Lscala/concurrent/ExecutionContext;)V

    return-void
.end method

.method public bridge synthetic ready(Lscala/concurrent/duration/Duration;Lscala/concurrent/CanAwait;)Lscala/concurrent/Awaitable;
    .locals 0

    .line 153
    invoke-virtual {p0, p1, p2}, Lscala/concurrent/impl/Promise$DefaultPromise;->ready(Lscala/concurrent/duration/Duration;Lscala/concurrent/CanAwait;)Lscala/concurrent/impl/Promise$DefaultPromise;

    move-result-object p1

    return-object p1
.end method

.method public ready(Lscala/concurrent/duration/Duration;Lscala/concurrent/CanAwait;)Lscala/concurrent/impl/Promise$DefaultPromise;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/duration/Duration;",
            "Lscala/concurrent/CanAwait;",
            ")",
            "Lscala/concurrent/impl/Promise$DefaultPromise<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 218
    invoke-virtual {p0, p1}, Lscala/concurrent/impl/Promise$DefaultPromise;->tryAwait(Lscala/concurrent/duration/Duration;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p0

    .line 219
    :cond_0
    new-instance p2, Ljava/util/concurrent/TimeoutException;

    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "Futures timed out after ["

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p2
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

    .line 153
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

    .line 153
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 223
    invoke-virtual {p0, p1, p2}, Lscala/concurrent/impl/Promise$DefaultPromise;->ready(Lscala/concurrent/duration/Duration;Lscala/concurrent/CanAwait;)Lscala/concurrent/impl/Promise$DefaultPromise;

    move-result-object p1

    invoke-virtual {p1}, Lscala/concurrent/impl/Promise$DefaultPromise;->value()Lscala/Option;

    move-result-object p1

    invoke-virtual {p1}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/util/Try;

    invoke-virtual {p1}, Lscala/util/Try;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public scala$concurrent$impl$Promise$DefaultPromise$$dispatchOrAddCallback(Lscala/concurrent/impl/CallbackRunnable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/impl/CallbackRunnable<",
            "TT;>;)V"
        }
    .end annotation

    move-object v0, p0

    .line 279
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lscala/concurrent/impl/Promise$DefaultPromise;->getState()Ljava/lang/Object;

    move-result-object v1

    .line 280
    instance-of v2, v1, Lscala/util/Try;

    if-eqz v2, :cond_1

    check-cast v1, Lscala/util/Try;

    invoke-virtual {p1, v1}, Lscala/concurrent/impl/CallbackRunnable;->executeWithValue(Lscala/util/Try;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_1

    .line 281
    :cond_1
    instance-of v2, v1, Lscala/concurrent/impl/Promise$DefaultPromise;

    if-eqz v2, :cond_2

    invoke-direct {v0}, Lscala/concurrent/impl/Promise$DefaultPromise;->compressedRoot()Lscala/concurrent/impl/Promise$DefaultPromise;

    move-result-object v0

    goto :goto_0

    .line 282
    :cond_2
    instance-of v2, v1, Lscala/collection/immutable/List;

    if-eqz v2, :cond_3

    check-cast v1, Lscala/collection/immutable/List;

    invoke-virtual {v1, p1}, Lscala/collection/immutable/List;->$colon$colon(Ljava/lang/Object;)Lscala/collection/immutable/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lscala/concurrent/impl/Promise$DefaultPromise;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 279
    :goto_1
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-void

    :cond_3
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
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

    .line 153
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

    .line 153
    invoke-static {p0, p1, p2, p3}, Lscala/concurrent/Future$class;->transform(Lscala/concurrent/Future;Lscala/Function1;Lscala/Function1;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public final tryAwait(Lscala/concurrent/duration/Duration;)Z
    .locals 4

    .line 194
    invoke-virtual {p0}, Lscala/concurrent/impl/Promise$DefaultPromise;->isCompleted()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_3

    .line 197
    :cond_0
    sget-object v0, Lscala/concurrent/duration/Duration$;->MODULE$:Lscala/concurrent/duration/Duration$;

    invoke-virtual {v0}, Lscala/concurrent/duration/Duration$;->Undefined()Lscala/concurrent/duration/Duration$Infinite;

    move-result-object v0

    if-eq p1, v0, :cond_9

    .line 199
    sget-object v0, Lscala/concurrent/duration/Duration$;->MODULE$:Lscala/concurrent/duration/Duration$;

    invoke-virtual {v0}, Lscala/concurrent/duration/Duration$;->Inf()Lscala/concurrent/duration/Duration$Infinite;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 200
    :cond_2
    new-instance p1, Lscala/concurrent/impl/Promise$CompletionLatch;

    invoke-direct {p1}, Lscala/concurrent/impl/Promise$CompletionLatch;-><init>()V

    .line 201
    sget-object v0, Lscala/concurrent/Future$InternalCallbackExecutor$;->MODULE$:Lscala/concurrent/Future$InternalCallbackExecutor$;

    invoke-virtual {p0, p1, v0}, Lscala/concurrent/impl/Promise$DefaultPromise;->onComplete(Lscala/Function1;Lscala/concurrent/ExecutionContext;)V

    .line 202
    invoke-virtual {p1, v1}, Lscala/concurrent/impl/Promise$CompletionLatch;->acquireSharedInterruptibly(I)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_2

    .line 203
    :cond_3
    :goto_0
    sget-object v0, Lscala/concurrent/duration/Duration$;->MODULE$:Lscala/concurrent/duration/Duration$;

    invoke-virtual {v0}, Lscala/concurrent/duration/Duration$;->MinusInf()Lscala/concurrent/duration/Duration$Infinite;

    move-result-object v0

    if-nez v0, :cond_4

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_4
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_2

    .line 204
    :cond_6
    :goto_1
    instance-of v0, p1, Lscala/concurrent/duration/FiniteDuration;

    if-eqz v0, :cond_8

    check-cast p1, Lscala/concurrent/duration/FiniteDuration;

    .line 205
    sget-object v0, Lscala/concurrent/duration/Duration$;->MODULE$:Lscala/concurrent/duration/Duration$;

    invoke-virtual {v0}, Lscala/concurrent/duration/Duration$;->Zero()Lscala/concurrent/duration/FiniteDuration;

    move-result-object v0

    invoke-virtual {p1, v0}, Lscala/concurrent/duration/FiniteDuration;->$greater(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 206
    new-instance v0, Lscala/concurrent/impl/Promise$CompletionLatch;

    invoke-direct {v0}, Lscala/concurrent/impl/Promise$CompletionLatch;-><init>()V

    .line 207
    sget-object v2, Lscala/concurrent/Future$InternalCallbackExecutor$;->MODULE$:Lscala/concurrent/Future$InternalCallbackExecutor$;

    invoke-virtual {p0, v0, v2}, Lscala/concurrent/impl/Promise$DefaultPromise;->onComplete(Lscala/Function1;Lscala/concurrent/ExecutionContext;)V

    .line 208
    invoke-virtual {p1}, Lscala/concurrent/duration/FiniteDuration;->toNanos()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lscala/concurrent/impl/Promise$CompletionLatch;->tryAcquireSharedNanos(IJ)Z

    goto :goto_2

    .line 205
    :cond_7
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 197
    :goto_2
    invoke-virtual {p0}, Lscala/concurrent/impl/Promise$DefaultPromise;->isCompleted()Z

    move-result v1

    :goto_3
    return v1

    :cond_8
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cannot wait for Undefined period"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public tryComplete(Lscala/util/Try;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/util/Try<",
            "TT;>;)Z"
        }
    .end annotation

    .line 244
    sget-object v0, Lscala/concurrent/impl/Promise$;->MODULE$:Lscala/concurrent/impl/Promise$;

    invoke-virtual {v0, p1}, Lscala/concurrent/impl/Promise$;->scala$concurrent$impl$Promise$$resolveTry(Lscala/util/Try;)Lscala/util/Try;

    move-result-object p1

    .line 245
    invoke-direct {p0, p1}, Lscala/concurrent/impl/Promise$DefaultPromise;->tryCompleteAndGetListeners(Lscala/util/Try;)Lscala/collection/immutable/List;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    .line 247
    :cond_0
    invoke-virtual {v0}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 248
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    return v1

    :cond_2
    invoke-virtual {v0}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/concurrent/impl/CallbackRunnable;

    invoke-virtual {v2, p1}, Lscala/concurrent/impl/CallbackRunnable;->executeWithValue(Lscala/util/Try;)V

    sget-object v2, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/List;

    goto :goto_0
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

    .line 153
    invoke-static {p0, p1}, Lscala/concurrent/Promise$class;->tryCompleteWith(Lscala/concurrent/Promise;Lscala/concurrent/Future;)Lscala/concurrent/Promise;

    move-result-object p1

    return-object p1
.end method

.method public tryFailure(Ljava/lang/Throwable;)Z
    .locals 0

    .line 153
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

    .line 153
    invoke-static {p0, p1}, Lscala/concurrent/Promise$class;->trySuccess(Lscala/concurrent/Promise;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public value()Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "Lscala/util/Try<",
            "TT;>;>;"
        }
    .end annotation

    .line 225
    invoke-direct {p0}, Lscala/concurrent/impl/Promise$DefaultPromise;->value0()Lscala/Option;

    move-result-object v0

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

    .line 153
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

    .line 153
    invoke-static {p0, p1}, Lscala/concurrent/Future$class;->zip(Lscala/concurrent/Future;Lscala/concurrent/Future;)Lscala/concurrent/Future;

    move-result-object p1

    return-object p1
.end method
