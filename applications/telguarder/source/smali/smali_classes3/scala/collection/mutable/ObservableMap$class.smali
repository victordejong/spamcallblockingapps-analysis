.class public abstract Lscala/collection/mutable/ObservableMap$class;
.super Ljava/lang/Object;
.source "ObservableMap.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/ObservableMap;)V
    .locals 0

    return-void
.end method

.method public static $minus$eq(Lscala/collection/mutable/ObservableMap;Ljava/lang/Object;)Lscala/collection/mutable/ObservableMap;
    .locals 2

    .line 53
    invoke-interface {p0, p1}, Lscala/collection/mutable/ObservableMap;->get(Ljava/lang/Object;)Lscala/Option;

    move-result-object v0

    .line 54
    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 55
    :cond_0
    instance-of v1, v0, Lscala/Some;

    if-eqz v1, :cond_1

    check-cast v0, Lscala/Some;

    .line 56
    invoke-interface {p0, p1}, Lscala/collection/mutable/ObservableMap;->scala$collection$mutable$ObservableMap$$super$$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ObservableMap;

    .line 57
    new-instance v1, Lscala/collection/mutable/ObservableMap$$anon$3;

    invoke-direct {v1, p0, v0, p1}, Lscala/collection/mutable/ObservableMap$$anon$3;-><init>(Lscala/collection/mutable/ObservableMap;Lscala/Some;Ljava/lang/Object;)V

    invoke-interface {p0, v1}, Lscala/collection/mutable/ObservableMap;->publish(Ljava/lang/Object;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_0
    return-object p0

    .line 53
    :cond_1
    new-instance p0, Lscala/MatchError;

    invoke-direct {p0, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public static $plus$eq(Lscala/collection/mutable/ObservableMap;Lscala/Tuple2;)Lscala/collection/mutable/ObservableMap;
    .locals 4

    if-eqz p1, :cond_2

    .line 35
    new-instance v0, Lscala/Tuple2;

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v0

    .line 37
    invoke-interface {p0, v1}, Lscala/collection/mutable/ObservableMap;->get(Ljava/lang/Object;)Lscala/Option;

    move-result-object v2

    .line 38
    sget-object v3, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 39
    invoke-interface {p0, p1}, Lscala/collection/mutable/ObservableMap;->scala$collection$mutable$ObservableMap$$super$$plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/ObservableMap;

    .line 40
    new-instance p1, Lscala/collection/mutable/ObservableMap$$anon$1;

    invoke-direct {p1, p0, v1, v0}, Lscala/collection/mutable/ObservableMap$$anon$1;-><init>(Lscala/collection/mutable/ObservableMap;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lscala/collection/mutable/ObservableMap;->publish(Ljava/lang/Object;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 43
    :cond_0
    instance-of v3, v2, Lscala/Some;

    if-eqz v3, :cond_1

    check-cast v2, Lscala/Some;

    .line 44
    invoke-interface {p0, p1}, Lscala/collection/mutable/ObservableMap;->scala$collection$mutable$ObservableMap$$super$$plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/ObservableMap;

    .line 45
    new-instance p1, Lscala/collection/mutable/ObservableMap$$anon$2;

    invoke-direct {p1, p0, v1, v0, v2}, Lscala/collection/mutable/ObservableMap$$anon$2;-><init>(Lscala/collection/mutable/ObservableMap;Ljava/lang/Object;Ljava/lang/Object;Lscala/Some;)V

    invoke-interface {p0, p1}, Lscala/collection/mutable/ObservableMap;->publish(Ljava/lang/Object;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_0
    return-object p0

    .line 37
    :cond_1
    new-instance p0, Lscala/MatchError;

    invoke-direct {p0, v2}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 35
    :cond_2
    new-instance p0, Lscala/MatchError;

    invoke-direct {p0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public static clear(Lscala/collection/mutable/ObservableMap;)V
    .locals 1

    .line 65
    invoke-interface {p0}, Lscala/collection/mutable/ObservableMap;->scala$collection$mutable$ObservableMap$$super$clear()V

    .line 66
    new-instance v0, Lscala/collection/mutable/ObservableMap$$anon$4;

    invoke-direct {v0, p0}, Lscala/collection/mutable/ObservableMap$$anon$4;-><init>(Lscala/collection/mutable/ObservableMap;)V

    invoke-interface {p0, v0}, Lscala/collection/mutable/ObservableMap;->publish(Ljava/lang/Object;)V

    return-void
.end method
