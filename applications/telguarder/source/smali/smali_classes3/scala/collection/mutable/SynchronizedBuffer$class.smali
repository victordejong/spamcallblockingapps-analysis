.class public abstract Lscala/collection/mutable/SynchronizedBuffer$class;
.super Ljava/lang/Object;
.source "SynchronizedBuffer.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/SynchronizedBuffer;)V
    .locals 0

    return-void
.end method

.method public static $less$less(Lscala/collection/mutable/SynchronizedBuffer;Lscala/collection/script/Message;)V
    .locals 0

    .line 166
    monitor-enter p0

    .line 167
    :try_start_0
    invoke-interface {p0, p1}, Lscala/collection/mutable/SynchronizedBuffer;->scala$collection$mutable$SynchronizedBuffer$$super$$less$less(Lscala/collection/script/Message;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 166
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static $plus$eq(Lscala/collection/mutable/SynchronizedBuffer;Ljava/lang/Object;)Lscala/collection/mutable/SynchronizedBuffer;
    .locals 0

    .line 49
    monitor-enter p0

    .line 50
    :try_start_0
    invoke-interface {p0, p1}, Lscala/collection/mutable/SynchronizedBuffer;->scala$collection$mutable$SynchronizedBuffer$$super$$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SynchronizedBuffer;

    move-result-object p1

    .line 49
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast p1, Lscala/collection/mutable/SynchronizedBuffer;

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static $plus$eq$colon(Lscala/collection/mutable/SynchronizedBuffer;Ljava/lang/Object;)Lscala/collection/mutable/SynchronizedBuffer;
    .locals 0

    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    invoke-interface {p0, p1}, Lscala/collection/mutable/SynchronizedBuffer;->scala$collection$mutable$SynchronizedBuffer$$super$$plus$eq$colon(Ljava/lang/Object;)Lscala/collection/mutable/SynchronizedBuffer;

    move-result-object p1

    .line 94
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast p1, Lscala/collection/mutable/SynchronizedBuffer;

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static $plus$plus(Lscala/collection/mutable/SynchronizedBuffer;Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Buffer;
    .locals 0

    .line 59
    monitor-enter p0

    .line 60
    :try_start_0
    invoke-interface {p0, p1}, Lscala/collection/mutable/SynchronizedBuffer;->scala$collection$mutable$SynchronizedBuffer$$super$$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Buffer;

    move-result-object p1

    .line 59
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast p1, Lscala/collection/mutable/Buffer;

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static $plus$plus$eq(Lscala/collection/mutable/SynchronizedBuffer;Lscala/collection/TraversableOnce;)Lscala/collection/mutable/SynchronizedBuffer;
    .locals 0

    .line 68
    monitor-enter p0

    .line 69
    :try_start_0
    invoke-interface {p0, p1}, Lscala/collection/mutable/SynchronizedBuffer;->scala$collection$mutable$SynchronizedBuffer$$super$$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/SynchronizedBuffer;

    move-result-object p1

    .line 68
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast p1, Lscala/collection/mutable/SynchronizedBuffer;

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static $plus$plus$eq$colon(Lscala/collection/mutable/SynchronizedBuffer;Lscala/collection/TraversableOnce;)Lscala/collection/mutable/SynchronizedBuffer;
    .locals 0

    .line 103
    monitor-enter p0

    :try_start_0
    invoke-interface {p0, p1}, Lscala/collection/mutable/SynchronizedBuffer;->scala$collection$mutable$SynchronizedBuffer$$super$$plus$plus$eq$colon(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/SynchronizedBuffer;

    move-result-object p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast p1, Lscala/collection/mutable/SynchronizedBuffer;

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static append(Lscala/collection/mutable/SynchronizedBuffer;Lscala/collection/Seq;)V
    .locals 0

    .line 76
    monitor-enter p0

    .line 77
    :try_start_0
    invoke-interface {p0, p1}, Lscala/collection/mutable/SynchronizedBuffer;->scala$collection$mutable$SynchronizedBuffer$$super$$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/SynchronizedBuffer;

    .line 76
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static appendAll(Lscala/collection/mutable/SynchronizedBuffer;Lscala/collection/TraversableOnce;)V
    .locals 0

    .line 85
    monitor-enter p0

    .line 86
    :try_start_0
    invoke-interface {p0, p1}, Lscala/collection/mutable/SynchronizedBuffer;->scala$collection$mutable$SynchronizedBuffer$$super$appendAll(Lscala/collection/TraversableOnce;)V

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

.method public static apply(Lscala/collection/mutable/SynchronizedBuffer;I)Ljava/lang/Object;
    .locals 0

    .line 41
    monitor-enter p0

    .line 42
    :try_start_0
    invoke-interface {p0, p1}, Lscala/collection/mutable/SynchronizedBuffer;->scala$collection$mutable$SynchronizedBuffer$$super$apply(I)Ljava/lang/Object;

    move-result-object p1

    .line 41
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static clear(Lscala/collection/mutable/SynchronizedBuffer;)V
    .locals 1

    .line 161
    monitor-enter p0

    .line 162
    :try_start_0
    invoke-interface {p0}, Lscala/collection/mutable/SynchronizedBuffer;->scala$collection$mutable$SynchronizedBuffer$$super$clear()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 161
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static clone(Lscala/collection/mutable/SynchronizedBuffer;)Lscala/collection/mutable/Buffer;
    .locals 1

    .line 174
    monitor-enter p0

    .line 175
    :try_start_0
    invoke-interface {p0}, Lscala/collection/mutable/SynchronizedBuffer;->scala$collection$mutable$SynchronizedBuffer$$super$clone()Lscala/collection/mutable/Buffer;

    move-result-object v0

    .line 174
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v0, Lscala/collection/mutable/Buffer;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static hashCode(Lscala/collection/mutable/SynchronizedBuffer;)I
    .locals 1

    .line 183
    monitor-enter p0

    .line 184
    :try_start_0
    invoke-interface {p0}, Lscala/collection/mutable/SynchronizedBuffer;->scala$collection$mutable$SynchronizedBuffer$$super$hashCode()I

    move-result v0

    .line 183
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static insert(Lscala/collection/mutable/SynchronizedBuffer;ILscala/collection/Seq;)V
    .locals 0

    .line 127
    monitor-enter p0

    .line 128
    :try_start_0
    invoke-interface {p0, p1, p2}, Lscala/collection/mutable/SynchronizedBuffer;->scala$collection$mutable$SynchronizedBuffer$$super$insertAll(ILscala/collection/Traversable;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 127
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static insertAll(Lscala/collection/mutable/SynchronizedBuffer;ILscala/collection/Traversable;)V
    .locals 0

    .line 138
    monitor-enter p0

    .line 139
    :try_start_0
    invoke-interface {p0, p1, p2}, Lscala/collection/mutable/SynchronizedBuffer;->scala$collection$mutable$SynchronizedBuffer$$super$insertAll(ILscala/collection/Traversable;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 138
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static iterator(Lscala/collection/mutable/SynchronizedBuffer;)Lscala/collection/Iterator;
    .locals 1

    .line 37
    monitor-enter p0

    .line 38
    :try_start_0
    invoke-interface {p0}, Lscala/collection/mutable/SynchronizedBuffer;->scala$collection$mutable$SynchronizedBuffer$$super$iterator()Lscala/collection/Iterator;

    move-result-object v0

    .line 37
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

.method public static length(Lscala/collection/mutable/SynchronizedBuffer;)I
    .locals 1

    .line 33
    monitor-enter p0

    .line 34
    :try_start_0
    invoke-interface {p0}, Lscala/collection/mutable/SynchronizedBuffer;->scala$collection$mutable$SynchronizedBuffer$$super$length()I

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

.method public static prepend(Lscala/collection/mutable/SynchronizedBuffer;Lscala/collection/Seq;)V
    .locals 0

    .line 109
    invoke-interface {p0, p1}, Lscala/collection/mutable/SynchronizedBuffer;->prependAll(Lscala/collection/TraversableOnce;)V

    return-void
.end method

.method public static prependAll(Lscala/collection/mutable/SynchronizedBuffer;Lscala/collection/TraversableOnce;)V
    .locals 0

    .line 116
    monitor-enter p0

    .line 117
    :try_start_0
    invoke-interface {p0, p1}, Lscala/collection/mutable/SynchronizedBuffer;->scala$collection$mutable$SynchronizedBuffer$$super$prependAll(Lscala/collection/TraversableOnce;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 116
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static remove(Lscala/collection/mutable/SynchronizedBuffer;I)Ljava/lang/Object;
    .locals 0

    .line 155
    monitor-enter p0

    .line 156
    :try_start_0
    invoke-interface {p0, p1}, Lscala/collection/mutable/SynchronizedBuffer;->scala$collection$mutable$SynchronizedBuffer$$super$remove(I)Ljava/lang/Object;

    move-result-object p1

    .line 155
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static update(Lscala/collection/mutable/SynchronizedBuffer;ILjava/lang/Object;)V
    .locals 0

    .line 147
    monitor-enter p0

    .line 148
    :try_start_0
    invoke-interface {p0, p1, p2}, Lscala/collection/mutable/SynchronizedBuffer;->scala$collection$mutable$SynchronizedBuffer$$super$update(ILjava/lang/Object;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 147
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
