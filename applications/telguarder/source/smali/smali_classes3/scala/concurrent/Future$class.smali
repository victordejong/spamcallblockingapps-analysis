.class public abstract Lscala/concurrent/Future$class;
.super Ljava/lang/Object;
.source "Future.scala"


# direct methods
.method public static $init$(Lscala/concurrent/Future;)V
    .locals 0

    return-void
.end method

.method public static andThen(Lscala/concurrent/Future;Lscala/PartialFunction;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
    .locals 2

    .line 432
    sget-object v0, Lscala/concurrent/Promise$;->MODULE$:Lscala/concurrent/Promise$;

    invoke-virtual {v0}, Lscala/concurrent/Promise$;->apply()Lscala/concurrent/Promise;

    move-result-object v0

    .line 433
    new-instance v1, Lscala/concurrent/Future$$anonfun$andThen$1;

    invoke-direct {v1, p0, v0, p1}, Lscala/concurrent/Future$$anonfun$andThen$1;-><init>(Lscala/concurrent/Future;Lscala/concurrent/Promise;Lscala/PartialFunction;)V

    invoke-interface {p0, v1, p2}, Lscala/concurrent/Future;->onComplete(Lscala/Function1;Lscala/concurrent/ExecutionContext;)V

    .line 436
    invoke-interface {v0}, Lscala/concurrent/Promise;->future()Lscala/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static collect(Lscala/concurrent/Future;Lscala/PartialFunction;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
    .locals 1

    .line 307
    new-instance v0, Lscala/concurrent/Future$$anonfun$collect$1;

    invoke-direct {v0, p0, p1}, Lscala/concurrent/Future$$anonfun$collect$1;-><init>(Lscala/concurrent/Future;Lscala/PartialFunction;)V

    .line 306
    invoke-interface {p0, v0, p2}, Lscala/concurrent/Future;->map(Lscala/Function1;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static failed(Lscala/concurrent/Future;)Lscala/concurrent/Future;
    .locals 3

    .line 188
    invoke-static {p0}, Lscala/concurrent/Future$class;->scala$concurrent$Future$$internalExecutor(Lscala/concurrent/Future;)Lscala/concurrent/Future$InternalCallbackExecutor$;

    move-result-object v0

    .line 189
    sget-object v1, Lscala/concurrent/Promise$;->MODULE$:Lscala/concurrent/Promise$;

    invoke-virtual {v1}, Lscala/concurrent/Promise$;->apply()Lscala/concurrent/Promise;

    move-result-object v1

    .line 190
    new-instance v2, Lscala/concurrent/Future$$anonfun$failed$1;

    invoke-direct {v2, p0, v1}, Lscala/concurrent/Future$$anonfun$failed$1;-><init>(Lscala/concurrent/Future;Lscala/concurrent/Promise;)V

    invoke-interface {p0, v2, v0}, Lscala/concurrent/Future;->onComplete(Lscala/Function1;Lscala/concurrent/ExecutionContext;)V

    .line 194
    invoke-interface {v1}, Lscala/concurrent/Promise;->future()Lscala/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static fallbackTo(Lscala/concurrent/Future;Lscala/concurrent/Future;)Lscala/concurrent/Future;
    .locals 3

    .line 383
    invoke-static {p0}, Lscala/concurrent/Future$class;->scala$concurrent$Future$$internalExecutor(Lscala/concurrent/Future;)Lscala/concurrent/Future$InternalCallbackExecutor$;

    move-result-object v0

    .line 384
    sget-object v1, Lscala/concurrent/Promise$;->MODULE$:Lscala/concurrent/Promise$;

    invoke-virtual {v1}, Lscala/concurrent/Promise$;->apply()Lscala/concurrent/Promise;

    move-result-object v1

    .line 385
    new-instance v2, Lscala/concurrent/Future$$anonfun$fallbackTo$1;

    invoke-direct {v2, p0, v0, v1, p1}, Lscala/concurrent/Future$$anonfun$fallbackTo$1;-><init>(Lscala/concurrent/Future;Lscala/concurrent/Future$InternalCallbackExecutor$;Lscala/concurrent/Promise;Lscala/concurrent/Future;)V

    invoke-interface {p0, v2, v0}, Lscala/concurrent/Future;->onComplete(Lscala/Function1;Lscala/concurrent/ExecutionContext;)V

    .line 392
    invoke-interface {v1}, Lscala/concurrent/Promise;->future()Lscala/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static filter(Lscala/concurrent/Future;Lscala/Function1;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
    .locals 1

    .line 278
    new-instance v0, Lscala/concurrent/Future$$anonfun$filter$1;

    invoke-direct {v0, p0, p1}, Lscala/concurrent/Future$$anonfun$filter$1;-><init>(Lscala/concurrent/Future;Lscala/Function1;)V

    .line 277
    invoke-interface {p0, v0, p2}, Lscala/concurrent/Future;->map(Lscala/Function1;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static flatMap(Lscala/concurrent/Future;Lscala/Function1;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
    .locals 2

    .line 248
    new-instance v0, Lscala/concurrent/impl/Promise$DefaultPromise;

    invoke-direct {v0}, Lscala/concurrent/impl/Promise$DefaultPromise;-><init>()V

    .line 249
    new-instance v1, Lscala/concurrent/Future$$anonfun$flatMap$1;

    invoke-direct {v1, p0, v0, p1}, Lscala/concurrent/Future$$anonfun$flatMap$1;-><init>(Lscala/concurrent/Future;Lscala/concurrent/impl/Promise$DefaultPromise;Lscala/Function1;)V

    invoke-interface {p0, v1, p2}, Lscala/concurrent/Future;->onComplete(Lscala/Function1;Lscala/concurrent/ExecutionContext;)V

    .line 257
    invoke-virtual {v0}, Lscala/concurrent/impl/Promise$DefaultPromise;->future()Lscala/concurrent/impl/Promise;

    move-result-object p0

    return-object p0
.end method

.method public static foreach(Lscala/concurrent/Future;Lscala/Function1;Lscala/concurrent/ExecutionContext;)V
    .locals 1

    .line 204
    new-instance v0, Lscala/concurrent/Future$$anonfun$foreach$1;

    invoke-direct {v0, p0, p1}, Lscala/concurrent/Future$$anonfun$foreach$1;-><init>(Lscala/concurrent/Future;Lscala/Function1;)V

    invoke-interface {p0, v0, p2}, Lscala/concurrent/Future;->onComplete(Lscala/Function1;Lscala/concurrent/ExecutionContext;)V

    return-void
.end method

.method public static map(Lscala/concurrent/Future;Lscala/Function1;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
    .locals 2

    .line 234
    sget-object v0, Lscala/concurrent/Promise$;->MODULE$:Lscala/concurrent/Promise$;

    invoke-virtual {v0}, Lscala/concurrent/Promise$;->apply()Lscala/concurrent/Promise;

    move-result-object v0

    .line 235
    new-instance v1, Lscala/concurrent/Future$$anonfun$map$1;

    invoke-direct {v1, p0, v0, p1}, Lscala/concurrent/Future$$anonfun$map$1;-><init>(Lscala/concurrent/Future;Lscala/concurrent/Promise;Lscala/Function1;)V

    invoke-interface {p0, v1, p2}, Lscala/concurrent/Future;->onComplete(Lscala/Function1;Lscala/concurrent/ExecutionContext;)V

    .line 236
    invoke-interface {v0}, Lscala/concurrent/Promise;->future()Lscala/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static mapTo(Lscala/concurrent/Future;Lscala/reflect/ClassTag;)Lscala/concurrent/Future;
    .locals 3

    .line 399
    invoke-static {p0}, Lscala/concurrent/Future$class;->scala$concurrent$Future$$internalExecutor(Lscala/concurrent/Future;)Lscala/concurrent/Future$InternalCallbackExecutor$;

    move-result-object v0

    .line 401
    invoke-interface {p1}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object p1

    .line 402
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lscala/concurrent/Future$;->MODULE$:Lscala/concurrent/Future$;

    invoke-virtual {v1}, Lscala/concurrent/Future$;->toBoxed()Lscala/collection/immutable/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Lscala/collection/immutable/Map;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    .line 404
    :cond_0
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lscala/Predef$;->require(Z)V

    .line 405
    new-instance v1, Lscala/concurrent/Future$$anonfun$mapTo$1;

    invoke-direct {v1, p0, p1}, Lscala/concurrent/Future$$anonfun$mapTo$1;-><init>(Lscala/concurrent/Future;Ljava/lang/Class;)V

    invoke-interface {p0, v1, v0}, Lscala/concurrent/Future;->map(Lscala/Function1;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static onFailure(Lscala/concurrent/Future;Lscala/PartialFunction;Lscala/concurrent/ExecutionContext;)V
    .locals 1

    .line 134
    new-instance v0, Lscala/concurrent/Future$$anonfun$onFailure$1;

    invoke-direct {v0, p0, p1}, Lscala/concurrent/Future$$anonfun$onFailure$1;-><init>(Lscala/concurrent/Future;Lscala/PartialFunction;)V

    invoke-interface {p0, v0, p2}, Lscala/concurrent/Future;->onComplete(Lscala/Function1;Lscala/concurrent/ExecutionContext;)V

    return-void
.end method

.method public static onSuccess(Lscala/concurrent/Future;Lscala/PartialFunction;Lscala/concurrent/ExecutionContext;)V
    .locals 1

    .line 115
    new-instance v0, Lscala/concurrent/Future$$anonfun$onSuccess$1;

    invoke-direct {v0, p0, p1}, Lscala/concurrent/Future$$anonfun$onSuccess$1;-><init>(Lscala/concurrent/Future;Lscala/PartialFunction;)V

    invoke-interface {p0, v0, p2}, Lscala/concurrent/Future;->onComplete(Lscala/Function1;Lscala/concurrent/ExecutionContext;)V

    return-void
.end method

.method public static recover(Lscala/concurrent/Future;Lscala/PartialFunction;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
    .locals 2

    .line 323
    sget-object v0, Lscala/concurrent/Promise$;->MODULE$:Lscala/concurrent/Promise$;

    invoke-virtual {v0}, Lscala/concurrent/Promise$;->apply()Lscala/concurrent/Promise;

    move-result-object v0

    .line 324
    new-instance v1, Lscala/concurrent/Future$$anonfun$recover$1;

    invoke-direct {v1, p0, v0, p1}, Lscala/concurrent/Future$$anonfun$recover$1;-><init>(Lscala/concurrent/Future;Lscala/concurrent/Promise;Lscala/PartialFunction;)V

    invoke-interface {p0, v1, p2}, Lscala/concurrent/Future;->onComplete(Lscala/Function1;Lscala/concurrent/ExecutionContext;)V

    .line 325
    invoke-interface {v0}, Lscala/concurrent/Promise;->future()Lscala/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static recoverWith(Lscala/concurrent/Future;Lscala/PartialFunction;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
    .locals 2

    .line 342
    sget-object v0, Lscala/concurrent/Promise$;->MODULE$:Lscala/concurrent/Promise$;

    invoke-virtual {v0}, Lscala/concurrent/Promise$;->apply()Lscala/concurrent/Promise;

    move-result-object v0

    .line 343
    new-instance v1, Lscala/concurrent/Future$$anonfun$recoverWith$1;

    invoke-direct {v1, p0, v0, p1}, Lscala/concurrent/Future$$anonfun$recoverWith$1;-><init>(Lscala/concurrent/Future;Lscala/concurrent/Promise;Lscala/PartialFunction;)V

    invoke-interface {p0, v1, p2}, Lscala/concurrent/Future;->onComplete(Lscala/Function1;Lscala/concurrent/ExecutionContext;)V

    .line 347
    invoke-interface {v0}, Lscala/concurrent/Promise;->future()Lscala/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static scala$concurrent$Future$$internalExecutor(Lscala/concurrent/Future;)Lscala/concurrent/Future$InternalCallbackExecutor$;
    .locals 0

    .line 101
    sget-object p0, Lscala/concurrent/Future$InternalCallbackExecutor$;->MODULE$:Lscala/concurrent/Future$InternalCallbackExecutor$;

    return-object p0
.end method

.method public static transform(Lscala/concurrent/Future;Lscala/Function1;Lscala/Function1;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
    .locals 2

    .line 218
    sget-object v0, Lscala/concurrent/Promise$;->MODULE$:Lscala/concurrent/Promise$;

    invoke-virtual {v0}, Lscala/concurrent/Promise$;->apply()Lscala/concurrent/Promise;

    move-result-object v0

    .line 220
    new-instance v1, Lscala/concurrent/Future$$anonfun$transform$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lscala/concurrent/Future$$anonfun$transform$1;-><init>(Lscala/concurrent/Future;Lscala/concurrent/Promise;Lscala/Function1;Lscala/Function1;)V

    invoke-interface {p0, v1, p3}, Lscala/concurrent/Future;->onComplete(Lscala/Function1;Lscala/concurrent/ExecutionContext;)V

    .line 224
    invoke-interface {v0}, Lscala/concurrent/Promise;->future()Lscala/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static final withFilter(Lscala/concurrent/Future;Lscala/Function1;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
    .locals 0

    .line 283
    invoke-interface {p0, p1, p2}, Lscala/concurrent/Future;->filter(Lscala/Function1;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lscala/concurrent/Future;Lscala/concurrent/Future;)Lscala/concurrent/Future;
    .locals 3

    .line 359
    invoke-static {p0}, Lscala/concurrent/Future$class;->scala$concurrent$Future$$internalExecutor(Lscala/concurrent/Future;)Lscala/concurrent/Future$InternalCallbackExecutor$;

    move-result-object v0

    .line 360
    sget-object v1, Lscala/concurrent/Promise$;->MODULE$:Lscala/concurrent/Promise$;

    invoke-virtual {v1}, Lscala/concurrent/Promise$;->apply()Lscala/concurrent/Promise;

    move-result-object v1

    .line 361
    new-instance v2, Lscala/concurrent/Future$$anonfun$zip$1;

    invoke-direct {v2, p0, v0, v1, p1}, Lscala/concurrent/Future$$anonfun$zip$1;-><init>(Lscala/concurrent/Future;Lscala/concurrent/Future$InternalCallbackExecutor$;Lscala/concurrent/Promise;Lscala/concurrent/Future;)V

    invoke-interface {p0, v2, v0}, Lscala/concurrent/Future;->onComplete(Lscala/Function1;Lscala/concurrent/ExecutionContext;)V

    .line 365
    invoke-interface {v1}, Lscala/concurrent/Promise;->future()Lscala/concurrent/Future;

    move-result-object p0

    return-object p0
.end method
