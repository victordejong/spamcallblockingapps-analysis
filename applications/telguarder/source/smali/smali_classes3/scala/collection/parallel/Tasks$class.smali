.class public abstract Lscala/collection/parallel/Tasks$class;
.super Ljava/lang/Object;
.source "Tasks.scala"


# direct methods
.method public static $init$(Lscala/collection/parallel/Tasks;)V
    .locals 2

    .line 88
    sget-object v0, Lscala/collection/mutable/ArrayBuffer$;->MODULE$:Lscala/collection/mutable/ArrayBuffer$;

    sget-object v1, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-virtual {v0, v1}, Lscala/collection/mutable/ArrayBuffer$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/ArrayBuffer;

    invoke-interface {p0, v0}, Lscala/collection/parallel/Tasks;->scala$collection$parallel$Tasks$_setter_$debugMessages_$eq(Lscala/collection/mutable/ArrayBuffer;)V

    return-void
.end method

.method public static debuglog(Lscala/collection/parallel/Tasks;Ljava/lang/String;)Lscala/collection/mutable/ArrayBuffer;
    .locals 1

    .line 90
    monitor-enter p0

    .line 91
    :try_start_0
    invoke-interface {p0}, Lscala/collection/parallel/Tasks;->debugMessages()Lscala/collection/mutable/ArrayBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/mutable/ArrayBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuffer;

    move-result-object p1

    .line 90
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast p1, Lscala/collection/mutable/ArrayBuffer;

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
