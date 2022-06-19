.class public abstract Lscala/collection/DefaultMap$class;
.super Ljava/lang/Object;
.source "DefaultMap.scala"


# direct methods
.method public static $init$(Lscala/collection/DefaultMap;)V
    .locals 0

    return-void
.end method

.method public static $minus(Lscala/collection/DefaultMap;Ljava/lang/Object;)Lscala/collection/Map;
    .locals 2

    .line 40
    invoke-interface {p0}, Lscala/collection/DefaultMap;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 41
    new-instance v1, Lscala/collection/DefaultMap$$anonfun$$minus$1;

    invoke-direct {v1, p0, p1}, Lscala/collection/DefaultMap$$anonfun$$minus$1;-><init>(Lscala/collection/DefaultMap;Ljava/lang/Object;)V

    invoke-interface {p0, v1}, Lscala/collection/DefaultMap;->filter(Lscala/Function1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/TraversableOnce;

    invoke-interface {v0, p0}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    .line 42
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/Map;

    return-object p0
.end method

.method public static $plus(Lscala/collection/DefaultMap;Lscala/Tuple2;)Lscala/collection/Map;
    .locals 2

    .line 31
    sget-object v0, Lscala/collection/Map$;->MODULE$:Lscala/collection/Map$;

    invoke-virtual {v0}, Lscala/collection/Map$;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 32
    invoke-interface {v0, p0}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    .line 33
    new-instance p0, Lscala/Tuple2;

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p0}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    .line 34
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/Map;

    return-object p0
.end method
