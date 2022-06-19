.class public abstract Lscala/collection/mutable/MultiMap$class;
.super Ljava/lang/Object;
.source "MultiMap.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/MultiMap;)V
    .locals 0

    return-void
.end method

.method public static addBinding(Lscala/collection/mutable/MultiMap;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/MultiMap;
    .locals 2

    .line 77
    invoke-interface {p0, p1}, Lscala/collection/mutable/MultiMap;->get(Ljava/lang/Object;)Lscala/Option;

    move-result-object v0

    .line 78
    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-interface {p0}, Lscala/collection/mutable/MultiMap;->makeSet()Lscala/collection/mutable/Set;

    move-result-object v0

    .line 80
    invoke-interface {v0, p2}, Lscala/collection/mutable/Set;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetLike;

    .line 81
    invoke-interface {p0, p1, v0}, Lscala/collection/mutable/MultiMap;->update(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 82
    :cond_0
    instance-of p1, v0, Lscala/Some;

    if-eqz p1, :cond_1

    check-cast v0, Lscala/Some;

    .line 83
    invoke-virtual {v0}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/mutable/SetLike;

    invoke-interface {p1, p2}, Lscala/collection/mutable/SetLike;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetLike;

    :goto_0
    return-object p0

    .line 77
    :cond_1
    new-instance p0, Lscala/MatchError;

    invoke-direct {p0, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public static entryExists(Lscala/collection/mutable/MultiMap;Ljava/lang/Object;Lscala/Function1;)Z
    .locals 0

    .line 114
    invoke-interface {p0, p1}, Lscala/collection/mutable/MultiMap;->get(Ljava/lang/Object;)Lscala/Option;

    move-result-object p0

    .line 115
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 116
    :cond_0
    instance-of p1, p0, Lscala/Some;

    if-eqz p1, :cond_1

    check-cast p0, Lscala/Some;

    invoke-virtual {p0}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/IterableLike;

    invoke-interface {p0, p2}, Lscala/collection/IterableLike;->exists(Lscala/Function1;)Z

    move-result p0

    :goto_0
    return p0

    .line 114
    :cond_1
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, p0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public static makeSet(Lscala/collection/mutable/MultiMap;)Lscala/collection/mutable/Set;
    .locals 0

    .line 66
    new-instance p0, Lscala/collection/mutable/HashSet;

    invoke-direct {p0}, Lscala/collection/mutable/HashSet;-><init>()V

    return-object p0
.end method

.method public static removeBinding(Lscala/collection/mutable/MultiMap;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/MultiMap;
    .locals 2

    .line 99
    invoke-interface {p0, p1}, Lscala/collection/mutable/MultiMap;->get(Ljava/lang/Object;)Lscala/Option;

    move-result-object v0

    .line 100
    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 101
    :cond_0
    instance-of v1, v0, Lscala/Some;

    if-eqz v1, :cond_2

    check-cast v0, Lscala/Some;

    .line 102
    invoke-virtual {v0}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/mutable/SetLike;

    invoke-interface {v1, p2}, Lscala/collection/mutable/SetLike;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetLike;

    .line 103
    invoke-virtual {v0}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lscala/collection/SetLike;

    invoke-interface {p2}, Lscala/collection/SetLike;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0, p1}, Lscala/collection/mutable/MultiMap;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/MapLike;

    goto :goto_0

    :cond_1
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_0
    return-object p0

    .line 99
    :cond_2
    new-instance p0, Lscala/MatchError;

    invoke-direct {p0, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method
