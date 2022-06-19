.class public abstract Lscala/collection/mutable/SynchronizedSet$class;
.super Ljava/lang/Object;
.source "SynchronizedSet.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/SynchronizedSet;)V
    .locals 0

    return-void
.end method

.method public static $less$less(Lscala/collection/mutable/SynchronizedSet;Lscala/collection/script/Message;)V
    .locals 0

    .line 98
    monitor-enter p0

    .line 99
    :try_start_0
    invoke-interface {p0, p1}, Lscala/collection/mutable/SynchronizedSet;->scala$collection$mutable$SynchronizedSet$$super$$less$less(Lscala/collection/script/Message;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 98
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static $minus$eq(Lscala/collection/mutable/SynchronizedSet;Ljava/lang/Object;)Lscala/collection/mutable/SynchronizedSet;
    .locals 0

    .line 49
    monitor-enter p0

    .line 50
    :try_start_0
    invoke-interface {p0, p1}, Lscala/collection/mutable/SynchronizedSet;->scala$collection$mutable$SynchronizedSet$$super$$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SynchronizedSet;

    move-result-object p1

    .line 49
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast p1, Lscala/collection/mutable/SynchronizedSet;

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static $minus$minus$eq(Lscala/collection/mutable/SynchronizedSet;Lscala/collection/TraversableOnce;)Lscala/collection/mutable/SynchronizedSet;
    .locals 0

    .line 53
    monitor-enter p0

    .line 54
    :try_start_0
    invoke-interface {p0, p1}, Lscala/collection/mutable/SynchronizedSet;->scala$collection$mutable$SynchronizedSet$$super$$minus$minus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/SynchronizedSet;

    move-result-object p1

    .line 53
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast p1, Lscala/collection/mutable/SynchronizedSet;

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static $plus$eq(Lscala/collection/mutable/SynchronizedSet;Ljava/lang/Object;)Lscala/collection/mutable/SynchronizedSet;
    .locals 0

    .line 41
    monitor-enter p0

    .line 42
    :try_start_0
    invoke-interface {p0, p1}, Lscala/collection/mutable/SynchronizedSet;->scala$collection$mutable$SynchronizedSet$$super$$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SynchronizedSet;

    move-result-object p1

    .line 41
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast p1, Lscala/collection/mutable/SynchronizedSet;

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static $plus$plus$eq(Lscala/collection/mutable/SynchronizedSet;Lscala/collection/TraversableOnce;)Lscala/collection/mutable/SynchronizedSet;
    .locals 0

    .line 45
    monitor-enter p0

    .line 46
    :try_start_0
    invoke-interface {p0, p1}, Lscala/collection/mutable/SynchronizedSet;->scala$collection$mutable$SynchronizedSet$$super$$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/SynchronizedSet;

    move-result-object p1

    .line 45
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast p1, Lscala/collection/mutable/SynchronizedSet;

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static add(Lscala/collection/mutable/SynchronizedSet;Ljava/lang/Object;)Z
    .locals 0

    .line 61
    monitor-enter p0

    .line 62
    :try_start_0
    invoke-interface {p0, p1}, Lscala/collection/mutable/SynchronizedSet;->scala$collection$mutable$SynchronizedSet$$super$add(Ljava/lang/Object;)Z

    move-result p1

    .line 61
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static clear(Lscala/collection/mutable/SynchronizedSet;)V
    .locals 1

    .line 73
    monitor-enter p0

    .line 74
    :try_start_0
    invoke-interface {p0}, Lscala/collection/mutable/SynchronizedSet;->scala$collection$mutable$SynchronizedSet$$super$clear()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 73
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static clone(Lscala/collection/mutable/SynchronizedSet;)Lscala/collection/mutable/Set;
    .locals 1

    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    invoke-interface {p0}, Lscala/collection/mutable/SynchronizedSet;->scala$collection$mutable$SynchronizedSet$$super$clone()Lscala/collection/mutable/Set;

    move-result-object v0

    .line 102
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v0, Lscala/collection/mutable/Set;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static contains(Lscala/collection/mutable/SynchronizedSet;Ljava/lang/Object;)Z
    .locals 0

    .line 37
    monitor-enter p0

    .line 38
    :try_start_0
    invoke-interface {p0, p1}, Lscala/collection/mutable/SynchronizedSet;->scala$collection$mutable$SynchronizedSet$$super$contains(Ljava/lang/Object;)Z

    move-result p1

    .line 37
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static foreach(Lscala/collection/mutable/SynchronizedSet;Lscala/Function1;)V
    .locals 0

    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    invoke-interface {p0, p1}, Lscala/collection/mutable/SynchronizedSet;->scala$collection$mutable$SynchronizedSet$$super$foreach(Lscala/Function1;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 81
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static intersect(Lscala/collection/mutable/SynchronizedSet;Lscala/collection/GenSet;)Lscala/collection/mutable/Set;
    .locals 0

    .line 69
    monitor-enter p0

    .line 70
    :try_start_0
    invoke-interface {p0, p1}, Lscala/collection/mutable/SynchronizedSet;->scala$collection$mutable$SynchronizedSet$$super$intersect(Lscala/collection/GenSet;)Lscala/collection/mutable/Set;

    move-result-object p1

    .line 69
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast p1, Lscala/collection/mutable/Set;

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static isEmpty(Lscala/collection/mutable/SynchronizedSet;)Z
    .locals 1

    .line 33
    monitor-enter p0

    .line 34
    :try_start_0
    invoke-interface {p0}, Lscala/collection/mutable/SynchronizedSet;->scala$collection$mutable$SynchronizedSet$$super$isEmpty()Z

    move-result v0

    .line 33
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static remove(Lscala/collection/mutable/SynchronizedSet;Ljava/lang/Object;)Z
    .locals 0

    .line 65
    monitor-enter p0

    .line 66
    :try_start_0
    invoke-interface {p0, p1}, Lscala/collection/mutable/SynchronizedSet;->scala$collection$mutable$SynchronizedSet$$super$remove(Ljava/lang/Object;)Z

    move-result p1

    .line 65
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static retain(Lscala/collection/mutable/SynchronizedSet;Lscala/Function1;)V
    .locals 0

    .line 85
    monitor-enter p0

    .line 86
    :try_start_0
    invoke-interface {p0, p1}, Lscala/collection/mutable/SynchronizedSet;->scala$collection$mutable$SynchronizedSet$$super$retain(Lscala/Function1;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 85
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static size(Lscala/collection/mutable/SynchronizedSet;)I
    .locals 1

    .line 29
    monitor-enter p0

    .line 30
    :try_start_0
    invoke-interface {p0}, Lscala/collection/mutable/SynchronizedSet;->scala$collection$mutable$SynchronizedSet$$super$size()I

    move-result v0

    .line 29
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static subsetOf(Lscala/collection/mutable/SynchronizedSet;Lscala/collection/GenSet;)Z
    .locals 0

    .line 77
    monitor-enter p0

    .line 78
    :try_start_0
    invoke-interface {p0, p1}, Lscala/collection/mutable/SynchronizedSet;->scala$collection$mutable$SynchronizedSet$$super$subsetOf(Lscala/collection/GenSet;)Z

    move-result p1

    .line 77
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static toList(Lscala/collection/mutable/SynchronizedSet;)Lscala/collection/immutable/List;
    .locals 1

    .line 89
    monitor-enter p0

    .line 90
    :try_start_0
    invoke-interface {p0}, Lscala/collection/mutable/SynchronizedSet;->scala$collection$mutable$SynchronizedSet$$super$toList()Lscala/collection/immutable/List;

    move-result-object v0

    .line 89
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v0, Lscala/collection/immutable/List;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static toString(Lscala/collection/mutable/SynchronizedSet;)Ljava/lang/String;
    .locals 1

    .line 93
    monitor-enter p0

    .line 94
    :try_start_0
    invoke-interface {p0}, Lscala/collection/mutable/SynchronizedSet;->scala$collection$mutable$SynchronizedSet$$super$toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static update(Lscala/collection/mutable/SynchronizedSet;Ljava/lang/Object;Z)V
    .locals 0

    .line 57
    monitor-enter p0

    .line 58
    :try_start_0
    invoke-interface {p0, p1, p2}, Lscala/collection/mutable/SynchronizedSet;->scala$collection$mutable$SynchronizedSet$$super$update(Ljava/lang/Object;Z)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 57
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
