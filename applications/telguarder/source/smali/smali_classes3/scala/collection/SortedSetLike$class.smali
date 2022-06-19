.class public abstract Lscala/collection/SortedSetLike$class;
.super Ljava/lang/Object;
.source "SortedSetLike.scala"


# direct methods
.method public static $init$(Lscala/collection/SortedSetLike;)V
    .locals 0

    return-void
.end method

.method public static firstKey(Lscala/collection/SortedSetLike;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-interface {p0}, Lscala/collection/SortedSetLike;->head()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static from(Lscala/collection/SortedSetLike;Ljava/lang/Object;)Lscala/collection/SortedSet;
    .locals 1

    .line 33
    new-instance v0, Lscala/Some;

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-interface {p0, v0, p1}, Lscala/collection/SortedSetLike;->rangeImpl(Lscala/Option;Lscala/Option;)Lscala/collection/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public static iteratorFrom(Lscala/collection/SortedSetLike;Ljava/lang/Object;)Lscala/collection/Iterator;
    .locals 0

    .line 53
    invoke-interface {p0, p1}, Lscala/collection/SortedSetLike;->keysIteratorFrom(Ljava/lang/Object;)Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static keySet(Lscala/collection/SortedSetLike;)Lscala/collection/SortedSet;
    .locals 0

    .line 26
    invoke-interface {p0}, Lscala/collection/SortedSetLike;->repr()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/SortedSet;

    return-object p0
.end method

.method public static lastKey(Lscala/collection/SortedSetLike;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-interface {p0}, Lscala/collection/SortedSetLike;->last()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static range(Lscala/collection/SortedSetLike;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/SortedSet;
    .locals 1

    .line 35
    new-instance v0, Lscala/Some;

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    new-instance p1, Lscala/Some;

    invoke-direct {p1, p2}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v0, p1}, Lscala/collection/SortedSetLike;->rangeImpl(Lscala/Option;Lscala/Option;)Lscala/collection/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public static subsetOf(Lscala/collection/SortedSetLike;Lscala/collection/GenSet;)Z
    .locals 3

    .line 37
    instance-of v0, p1, Lscala/collection/SortedSet;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lscala/collection/SortedSet;

    invoke-interface {v0}, Lscala/collection/SortedSet;->ordering()Lscala/math/Ordering;

    move-result-object v1

    invoke-interface {p0}, Lscala/collection/SortedSetLike;->ordering()Lscala/math/Ordering;

    move-result-object v2

    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-interface {p0}, Lscala/collection/SortedSetLike;->iterator()Lscala/collection/Iterator;

    move-result-object p0

    invoke-interface {v0, p0}, Lscala/collection/SortedSet;->hasAll(Lscala/collection/Iterator;)Z

    move-result p0

    goto :goto_1

    .line 42
    :cond_2
    :goto_0
    invoke-interface {p0, p1}, Lscala/collection/SortedSetLike;->scala$collection$SortedSetLike$$super$subsetOf(Lscala/collection/GenSet;)Z

    move-result p0

    :goto_1
    return p0
.end method

.method public static until(Lscala/collection/SortedSetLike;Ljava/lang/Object;)Lscala/collection/SortedSet;
    .locals 2

    .line 34
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    new-instance v1, Lscala/Some;

    invoke-direct {v1, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v0, v1}, Lscala/collection/SortedSetLike;->rangeImpl(Lscala/Option;Lscala/Option;)Lscala/collection/SortedSet;

    move-result-object p0

    return-object p0
.end method
