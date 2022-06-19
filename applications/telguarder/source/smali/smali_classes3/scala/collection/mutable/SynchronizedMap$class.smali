.class public abstract Lscala/collection/mutable/SynchronizedMap$class;
.super Ljava/lang/Object;
.source "SynchronizedMap.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/SynchronizedMap;)V
    .locals 0

    return-void
.end method

.method public static $minus$eq(Lscala/collection/mutable/SynchronizedMap;Ljava/lang/Object;)Lscala/collection/mutable/SynchronizedMap;
    .locals 0

    .line 33
    monitor-enter p0

    :try_start_0
    invoke-interface {p0, p1}, Lscala/collection/mutable/SynchronizedMap;->scala$collection$mutable$SynchronizedMap$$super$$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SynchronizedMap;

    move-result-object p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast p1, Lscala/collection/mutable/SynchronizedMap;

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static $plus$eq(Lscala/collection/mutable/SynchronizedMap;Lscala/Tuple2;)Lscala/collection/mutable/SynchronizedMap;
    .locals 0

    .line 32
    monitor-enter p0

    :try_start_0
    invoke-interface {p0, p1}, Lscala/collection/mutable/SynchronizedMap;->scala$collection$mutable$SynchronizedMap$$super$$plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/SynchronizedMap;

    move-result-object p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast p1, Lscala/collection/mutable/SynchronizedMap;

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static apply(Lscala/collection/mutable/SynchronizedMap;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 48
    monitor-enter p0

    :try_start_0
    invoke-interface {p0, p1}, Lscala/collection/mutable/SynchronizedMap;->scala$collection$mutable$SynchronizedMap$$super$apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static clear(Lscala/collection/mutable/SynchronizedMap;)V
    .locals 1

    .line 39
    monitor-enter p0

    :try_start_0
    invoke-interface {p0}, Lscala/collection/mutable/SynchronizedMap;->scala$collection$mutable$SynchronizedMap$$super$clear()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static clone(Lscala/collection/mutable/SynchronizedMap;)Lscala/collection/mutable/Map;
    .locals 1

    .line 46
    monitor-enter p0

    :try_start_0
    invoke-interface {p0}, Lscala/collection/mutable/SynchronizedMap;->scala$collection$mutable$SynchronizedMap$$super$clone()Lscala/collection/mutable/Map;

    move-result-object v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v0, Lscala/collection/mutable/Map;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static contains(Lscala/collection/mutable/SynchronizedMap;Ljava/lang/Object;)Z
    .locals 0

    .line 54
    monitor-enter p0

    :try_start_0
    invoke-interface {p0, p1}, Lscala/collection/mutable/SynchronizedMap;->scala$collection$mutable$SynchronizedMap$$super$contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static foreach(Lscala/collection/mutable/SynchronizedMap;Lscala/Function1;)V
    .locals 0

    .line 47
    monitor-enter p0

    :try_start_0
    invoke-interface {p0, p1}, Lscala/collection/mutable/SynchronizedMap;->scala$collection$mutable$SynchronizedMap$$super$foreach(Lscala/Function1;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static get(Lscala/collection/mutable/SynchronizedMap;Ljava/lang/Object;)Lscala/Option;
    .locals 0

    .line 30
    monitor-enter p0

    :try_start_0
    invoke-interface {p0, p1}, Lscala/collection/mutable/SynchronizedMap;->scala$collection$mutable$SynchronizedMap$$super$get(Ljava/lang/Object;)Lscala/Option;

    move-result-object p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast p1, Lscala/Option;

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static getOrElseUpdate(Lscala/collection/mutable/SynchronizedMap;Ljava/lang/Object;Lscala/Function0;)Ljava/lang/Object;
    .locals 0

    .line 40
    monitor-enter p0

    :try_start_0
    invoke-interface {p0, p1, p2}, Lscala/collection/mutable/SynchronizedMap;->scala$collection$mutable$SynchronizedMap$$super$getOrElseUpdate(Ljava/lang/Object;Lscala/Function0;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static isDefinedAt(Lscala/collection/mutable/SynchronizedMap;Ljava/lang/Object;)Z
    .locals 0

    .line 55
    monitor-enter p0

    :try_start_0
    invoke-interface {p0, p1}, Lscala/collection/mutable/SynchronizedMap;->scala$collection$mutable$SynchronizedMap$$super$isDefinedAt(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static isEmpty(Lscala/collection/mutable/SynchronizedMap;)Z
    .locals 1

    .line 53
    monitor-enter p0

    :try_start_0
    invoke-interface {p0}, Lscala/collection/mutable/SynchronizedMap;->scala$collection$mutable$SynchronizedMap$$super$isEmpty()Z

    move-result v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static iterator(Lscala/collection/mutable/SynchronizedMap;)Lscala/collection/Iterator;
    .locals 1

    .line 31
    monitor-enter p0

    :try_start_0
    invoke-interface {p0}, Lscala/collection/mutable/SynchronizedMap;->scala$collection$mutable$SynchronizedMap$$super$iterator()Lscala/collection/Iterator;

    move-result-object v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v0, Lscala/collection/Iterator;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static keySet(Lscala/collection/mutable/SynchronizedMap;)Lscala/collection/Set;
    .locals 1

    .line 49
    monitor-enter p0

    :try_start_0
    invoke-interface {p0}, Lscala/collection/mutable/SynchronizedMap;->scala$collection$mutable$SynchronizedMap$$super$keySet()Lscala/collection/Set;

    move-result-object v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v0, Lscala/collection/Set;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static keys(Lscala/collection/mutable/SynchronizedMap;)Lscala/collection/Iterable;
    .locals 1

    .line 51
    monitor-enter p0

    :try_start_0
    invoke-interface {p0}, Lscala/collection/mutable/SynchronizedMap;->scala$collection$mutable$SynchronizedMap$$super$keys()Lscala/collection/Iterable;

    move-result-object v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v0, Lscala/collection/Iterable;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static keysIterator(Lscala/collection/mutable/SynchronizedMap;)Lscala/collection/Iterator;
    .locals 1

    .line 52
    monitor-enter p0

    :try_start_0
    invoke-interface {p0}, Lscala/collection/mutable/SynchronizedMap;->scala$collection$mutable$SynchronizedMap$$super$keysIterator()Lscala/collection/Iterator;

    move-result-object v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v0, Lscala/collection/Iterator;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static put(Lscala/collection/mutable/SynchronizedMap;Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;
    .locals 0

    .line 36
    monitor-enter p0

    :try_start_0
    invoke-interface {p0, p1, p2}, Lscala/collection/mutable/SynchronizedMap;->scala$collection$mutable$SynchronizedMap$$super$put(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;

    move-result-object p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast p1, Lscala/Option;

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static remove(Lscala/collection/mutable/SynchronizedMap;Ljava/lang/Object;)Lscala/Option;
    .locals 0

    .line 38
    monitor-enter p0

    :try_start_0
    invoke-interface {p0, p1}, Lscala/collection/mutable/SynchronizedMap;->scala$collection$mutable$SynchronizedMap$$super$remove(Ljava/lang/Object;)Lscala/Option;

    move-result-object p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast p1, Lscala/Option;

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static retain(Lscala/collection/mutable/SynchronizedMap;Lscala/Function2;)Lscala/collection/mutable/SynchronizedMap;
    .locals 0

    .line 42
    monitor-enter p0

    :try_start_0
    invoke-interface {p0, p1}, Lscala/collection/mutable/SynchronizedMap;->scala$collection$mutable$SynchronizedMap$$super$retain(Lscala/Function2;)Lscala/collection/mutable/SynchronizedMap;

    move-result-object p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast p1, Lscala/collection/mutable/SynchronizedMap;

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static size(Lscala/collection/mutable/SynchronizedMap;)I
    .locals 1

    .line 35
    monitor-enter p0

    :try_start_0
    invoke-interface {p0}, Lscala/collection/mutable/SynchronizedMap;->scala$collection$mutable$SynchronizedMap$$super$size()I

    move-result v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static transform(Lscala/collection/mutable/SynchronizedMap;Lscala/Function2;)Lscala/collection/mutable/SynchronizedMap;
    .locals 0

    .line 41
    monitor-enter p0

    :try_start_0
    invoke-interface {p0, p1}, Lscala/collection/mutable/SynchronizedMap;->scala$collection$mutable$SynchronizedMap$$super$transform(Lscala/Function2;)Lscala/collection/mutable/SynchronizedMap;

    move-result-object p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast p1, Lscala/collection/mutable/SynchronizedMap;

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static update(Lscala/collection/mutable/SynchronizedMap;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 37
    monitor-enter p0

    :try_start_0
    invoke-interface {p0, p1, p2}, Lscala/collection/mutable/SynchronizedMap;->scala$collection$mutable$SynchronizedMap$$super$update(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static values(Lscala/collection/mutable/SynchronizedMap;)Lscala/collection/Iterable;
    .locals 1

    .line 44
    monitor-enter p0

    :try_start_0
    invoke-interface {p0}, Lscala/collection/mutable/SynchronizedMap;->scala$collection$mutable$SynchronizedMap$$super$values()Lscala/collection/Iterable;

    move-result-object v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v0, Lscala/collection/Iterable;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static valuesIterator(Lscala/collection/mutable/SynchronizedMap;)Lscala/collection/Iterator;
    .locals 1

    .line 45
    monitor-enter p0

    :try_start_0
    invoke-interface {p0}, Lscala/collection/mutable/SynchronizedMap;->scala$collection$mutable$SynchronizedMap$$super$valuesIterator()Lscala/collection/Iterator;

    move-result-object v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v0, Lscala/collection/Iterator;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
