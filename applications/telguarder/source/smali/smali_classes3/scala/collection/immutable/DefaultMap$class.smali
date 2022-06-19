.class public abstract Lscala/collection/immutable/DefaultMap$class;
.super Ljava/lang/Object;
.source "DefaultMap.scala"


# direct methods
.method public static $init$(Lscala/collection/immutable/DefaultMap;)V
    .locals 0

    return-void
.end method

.method public static $minus(Lscala/collection/immutable/DefaultMap;Ljava/lang/Object;)Lscala/collection/immutable/Map;
    .locals 2

    .line 48
    invoke-interface {p0}, Lscala/collection/immutable/DefaultMap;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 49
    new-instance v1, Lscala/collection/immutable/DefaultMap$$anonfun$$minus$1;

    invoke-direct {v1, p0, p1}, Lscala/collection/immutable/DefaultMap$$anonfun$$minus$1;-><init>(Lscala/collection/immutable/DefaultMap;Ljava/lang/Object;)V

    invoke-interface {p0, v1}, Lscala/collection/immutable/DefaultMap;->withFilter(Lscala/Function1;)Lscala/collection/generic/FilterMonadic;

    move-result-object p1

    new-instance v1, Lscala/collection/immutable/DefaultMap$$anonfun$$minus$2;

    invoke-direct {v1, p0, v0}, Lscala/collection/immutable/DefaultMap$$anonfun$$minus$2;-><init>(Lscala/collection/immutable/DefaultMap;Lscala/collection/mutable/Builder;)V

    invoke-interface {p1, v1}, Lscala/collection/generic/FilterMonadic;->foreach(Lscala/Function1;)V

    .line 50
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/immutable/Map;

    return-object p0
.end method

.method public static $plus(Lscala/collection/immutable/DefaultMap;Lscala/Tuple2;)Lscala/collection/immutable/Map;
    .locals 2

    .line 39
    sget-object v0, Lscala/collection/immutable/Map$;->MODULE$:Lscala/collection/immutable/Map$;

    invoke-virtual {v0}, Lscala/collection/immutable/Map$;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 40
    invoke-interface {v0, p0}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    .line 41
    new-instance p0, Lscala/Tuple2;

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p0}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    .line 42
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/immutable/Map;

    return-object p0
.end method
