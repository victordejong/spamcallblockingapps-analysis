.class public abstract Lscala/collection/immutable/SortedMap$Default$class;
.super Ljava/lang/Object;
.source "SortedMap.scala"


# direct methods
.method public static $init$(Lscala/collection/immutable/SortedMap$Default;)V
    .locals 0

    return-void
.end method

.method public static $minus(Lscala/collection/immutable/SortedMap$Default;Ljava/lang/Object;)Lscala/collection/immutable/SortedMap;
    .locals 2

    .line 120
    invoke-interface {p0}, Lscala/collection/immutable/SortedMap$Default;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 121
    new-instance v1, Lscala/collection/immutable/SortedMap$Default$$anonfun$$minus$1;

    invoke-direct {v1, p0, p1}, Lscala/collection/immutable/SortedMap$Default$$anonfun$$minus$1;-><init>(Lscala/collection/immutable/SortedMap$Default;Ljava/lang/Object;)V

    invoke-interface {p0, v1}, Lscala/collection/immutable/SortedMap$Default;->withFilter(Lscala/Function1;)Lscala/collection/generic/FilterMonadic;

    move-result-object p1

    new-instance v1, Lscala/collection/immutable/SortedMap$Default$$anonfun$$minus$2;

    invoke-direct {v1, p0, v0}, Lscala/collection/immutable/SortedMap$Default$$anonfun$$minus$2;-><init>(Lscala/collection/immutable/SortedMap$Default;Lscala/collection/mutable/Builder;)V

    invoke-interface {p1, v1}, Lscala/collection/generic/FilterMonadic;->foreach(Lscala/Function1;)V

    .line 122
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/immutable/SortedMap;

    return-object p0
.end method

.method public static $plus(Lscala/collection/immutable/SortedMap$Default;Lscala/Tuple2;)Lscala/collection/immutable/SortedMap;
    .locals 2

    .line 113
    sget-object v0, Lscala/collection/immutable/SortedMap$;->MODULE$:Lscala/collection/immutable/SortedMap$;

    invoke-interface {p0}, Lscala/collection/immutable/SortedMap$Default;->ordering()Lscala/math/Ordering;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/immutable/SortedMap$;->newBuilder(Lscala/math/Ordering;)Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 114
    invoke-interface {v0, p0}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    .line 115
    new-instance p0, Lscala/Tuple2;

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p0}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    .line 116
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/immutable/SortedMap;

    return-object p0
.end method
