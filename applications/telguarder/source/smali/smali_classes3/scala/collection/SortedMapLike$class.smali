.class public abstract Lscala/collection/SortedMapLike$class;
.super Ljava/lang/Object;
.source "SortedMapLike.scala"


# direct methods
.method public static $init$(Lscala/collection/SortedMapLike;)V
    .locals 0

    return-void
.end method

.method public static $plus(Lscala/collection/SortedMapLike;Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/SortedMap;
    .locals 0

    .line 71
    invoke-interface {p0, p1}, Lscala/collection/SortedMapLike;->$plus(Lscala/Tuple2;)Lscala/collection/SortedMap;

    move-result-object p1

    invoke-interface {p1, p2}, Lscala/collection/SortedMap;->$plus(Lscala/Tuple2;)Lscala/collection/SortedMap;

    move-result-object p1

    invoke-static {p1}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object p1

    .line 72
    new-instance p2, Lscala/collection/SortedMapLike$$anonfun$$plus$1;

    invoke-direct {p2, p0, p1}, Lscala/collection/SortedMapLike$$anonfun$$plus$1;-><init>(Lscala/collection/SortedMapLike;Lscala/runtime/ObjectRef;)V

    invoke-interface {p3, p2}, Lscala/collection/Seq;->foreach(Lscala/Function1;)V

    .line 73
    iget-object p0, p1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast p0, Lscala/collection/SortedMap;

    return-object p0
.end method

.method public static $plus$plus(Lscala/collection/SortedMapLike;Lscala/collection/GenTraversableOnce;)Lscala/collection/SortedMap;
    .locals 2

    .line 98
    invoke-interface {p0}, Lscala/collection/SortedMapLike;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/SortedMap;

    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object p1

    new-instance v1, Lscala/collection/SortedMapLike$$anonfun$$plus$plus$1;

    invoke-direct {v1, p0}, Lscala/collection/SortedMapLike$$anonfun$$plus$plus$1;-><init>(Lscala/collection/SortedMapLike;)V

    invoke-interface {p1, v0, v1}, Lscala/collection/TraversableOnce;->$div$colon(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/SortedMap;

    return-object p0
.end method

.method public static filterKeys(Lscala/collection/SortedMapLike;Lscala/Function1;)Lscala/collection/SortedMap;
    .locals 1

    .line 76
    new-instance v0, Lscala/collection/SortedMapLike$$anon$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/SortedMapLike$$anon$1;-><init>(Lscala/collection/SortedMapLike;Lscala/Function1;)V

    return-object v0
.end method

.method public static firstKey(Lscala/collection/SortedMapLike;)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-interface {p0}, Lscala/collection/SortedMapLike;->head()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/Tuple2;

    invoke-virtual {p0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static keySet(Lscala/collection/SortedMapLike;)Lscala/collection/SortedSet;
    .locals 1

    .line 34
    new-instance v0, Lscala/collection/SortedMapLike$DefaultKeySortedSet;

    invoke-direct {v0, p0}, Lscala/collection/SortedMapLike$DefaultKeySortedSet;-><init>(Lscala/collection/SortedMapLike;)V

    return-object v0
.end method

.method public static lastKey(Lscala/collection/SortedMapLike;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-interface {p0}, Lscala/collection/SortedMapLike;->last()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/Tuple2;

    invoke-virtual {p0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static mapValues(Lscala/collection/SortedMapLike;Lscala/Function1;)Lscala/collection/SortedMap;
    .locals 1

    .line 84
    new-instance v0, Lscala/collection/SortedMapLike$$anon$2;

    invoke-direct {v0, p0, p1}, Lscala/collection/SortedMapLike$$anon$2;-><init>(Lscala/collection/SortedMapLike;Lscala/Function1;)V

    return-object v0
.end method

.method public static updated(Lscala/collection/SortedMapLike;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/SortedMap;
    .locals 1

    .line 52
    new-instance v0, Lscala/Tuple2;

    invoke-direct {v0, p1, p2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lscala/collection/SortedMapLike;->$plus(Lscala/Tuple2;)Lscala/collection/SortedMap;

    move-result-object p0

    return-object p0
.end method
