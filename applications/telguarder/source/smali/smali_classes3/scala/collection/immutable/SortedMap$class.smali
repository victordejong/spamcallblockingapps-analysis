.class public abstract Lscala/collection/immutable/SortedMap$class;
.super Ljava/lang/Object;
.source "SortedMap.scala"


# direct methods
.method public static $init$(Lscala/collection/immutable/SortedMap;)V
    .locals 0

    return-void
.end method

.method public static $plus(Lscala/collection/immutable/SortedMap;Lscala/Tuple2;)Lscala/collection/immutable/SortedMap;
    .locals 0

    .line 63
    new-instance p0, Ljava/lang/AbstractMethodError;

    const-string p1, "SortedMap.+"

    invoke-direct {p0, p1}, Ljava/lang/AbstractMethodError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static $plus(Lscala/collection/immutable/SortedMap;Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/immutable/SortedMap;
    .locals 0

    .line 73
    invoke-interface {p0, p1}, Lscala/collection/immutable/SortedMap;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/SortedMap;

    move-result-object p0

    invoke-interface {p0, p2}, Lscala/collection/immutable/SortedMap;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/SortedMap;

    move-result-object p0

    invoke-interface {p0, p3}, Lscala/collection/immutable/SortedMap;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/immutable/SortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static $plus$plus(Lscala/collection/immutable/SortedMap;Lscala/collection/GenTraversableOnce;)Lscala/collection/immutable/SortedMap;
    .locals 2

    .line 81
    invoke-interface {p0}, Lscala/collection/immutable/SortedMap;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/SortedMap;

    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object p1

    new-instance v1, Lscala/collection/immutable/SortedMap$$anonfun$$plus$plus$1;

    invoke-direct {v1, p0}, Lscala/collection/immutable/SortedMap$$anonfun$$plus$plus$1;-><init>(Lscala/collection/immutable/SortedMap;)V

    invoke-interface {p1, v0, v1}, Lscala/collection/TraversableOnce;->$div$colon(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/immutable/SortedMap;

    return-object p0
.end method

.method public static empty(Lscala/collection/immutable/SortedMap;)Lscala/collection/immutable/SortedMap;
    .locals 1

    .line 41
    sget-object v0, Lscala/collection/immutable/SortedMap$;->MODULE$:Lscala/collection/immutable/SortedMap$;

    invoke-interface {p0}, Lscala/collection/immutable/SortedMap;->ordering()Lscala/math/Ordering;

    move-result-object p0

    invoke-virtual {v0, p0}, Lscala/collection/immutable/SortedMap$;->empty(Lscala/math/Ordering;)Lscala/collection/immutable/SortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static filterKeys(Lscala/collection/immutable/SortedMap;Lscala/Function1;)Lscala/collection/immutable/SortedMap;
    .locals 1

    .line 83
    new-instance v0, Lscala/collection/immutable/SortedMap$$anon$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/immutable/SortedMap$$anon$1;-><init>(Lscala/collection/immutable/SortedMap;Lscala/Function1;)V

    return-object v0
.end method

.method public static keySet(Lscala/collection/immutable/SortedMap;)Lscala/collection/immutable/SortedSet;
    .locals 1

    .line 43
    new-instance v0, Lscala/collection/immutable/SortedMap$DefaultKeySortedSet;

    invoke-direct {v0, p0}, Lscala/collection/immutable/SortedMap$DefaultKeySortedSet;-><init>(Lscala/collection/immutable/SortedMap;)V

    return-object v0
.end method

.method public static mapValues(Lscala/collection/immutable/SortedMap;Lscala/Function1;)Lscala/collection/immutable/SortedMap;
    .locals 1

    .line 91
    new-instance v0, Lscala/collection/immutable/SortedMap$$anon$2;

    invoke-direct {v0, p0, p1}, Lscala/collection/immutable/SortedMap$$anon$2;-><init>(Lscala/collection/immutable/SortedMap;Lscala/Function1;)V

    return-object v0
.end method

.method public static newBuilder(Lscala/collection/immutable/SortedMap;)Lscala/collection/mutable/Builder;
    .locals 1

    .line 39
    sget-object v0, Lscala/collection/immutable/SortedMap$;->MODULE$:Lscala/collection/immutable/SortedMap$;

    invoke-interface {p0}, Lscala/collection/immutable/SortedMap;->ordering()Lscala/math/Ordering;

    move-result-object p0

    invoke-virtual {v0, p0}, Lscala/collection/immutable/SortedMap$;->newBuilder(Lscala/math/Ordering;)Lscala/collection/mutable/Builder;

    move-result-object p0

    return-object p0
.end method

.method public static updated(Lscala/collection/immutable/SortedMap;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/SortedMap;
    .locals 1

    .line 42
    new-instance v0, Lscala/Tuple2;

    invoke-direct {v0, p1, p2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lscala/collection/immutable/SortedMap;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/SortedMap;

    move-result-object p0

    return-object p0
.end method
