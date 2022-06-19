.class public abstract Lscala/collection/parallel/ParMapLike$class;
.super Ljava/lang/Object;
.source "ParMapLike.scala"


# direct methods
.method public static $init$(Lscala/collection/parallel/ParMapLike;)V
    .locals 0

    return-void
.end method

.method public static apply(Lscala/collection/parallel/ParMapLike;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 46
    invoke-interface {p0, p1}, Lscala/collection/parallel/ParMapLike;->get(Ljava/lang/Object;)Lscala/Option;

    move-result-object v0

    .line 47
    instance-of v1, v0, Lscala/Some;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/Some;

    invoke-virtual {v0}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 48
    :cond_0
    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0, p1}, Lscala/collection/parallel/ParMapLike;->default(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0

    .line 46
    :cond_1
    new-instance p0, Lscala/MatchError;

    invoke-direct {p0, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public static contains(Lscala/collection/parallel/ParMapLike;Ljava/lang/Object;)Z
    .locals 0

    .line 56
    invoke-interface {p0, p1}, Lscala/collection/parallel/ParMapLike;->get(Ljava/lang/Object;)Lscala/Option;

    move-result-object p0

    invoke-virtual {p0}, Lscala/Option;->isDefined()Z

    move-result p0

    return p0
.end method

.method public static default(Lscala/collection/parallel/ParMapLike;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 42
    new-instance p0, Ljava/util/NoSuchElementException;

    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "key not found: "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static filterKeys(Lscala/collection/parallel/ParMapLike;Lscala/Function1;)Lscala/collection/parallel/ParMap;
    .locals 1

    .line 119
    new-instance v0, Lscala/collection/parallel/ParMapLike$$anon$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/parallel/ParMapLike$$anon$1;-><init>(Lscala/collection/parallel/ParMapLike;Lscala/Function1;)V

    return-object v0
.end method

.method public static getOrElse(Lscala/collection/parallel/ParMapLike;Ljava/lang/Object;Lscala/Function0;)Ljava/lang/Object;
    .locals 0

    .line 51
    invoke-interface {p0, p1}, Lscala/collection/parallel/ParMapLike;->get(Ljava/lang/Object;)Lscala/Option;

    move-result-object p0

    .line 52
    instance-of p1, p0, Lscala/Some;

    if-eqz p1, :cond_0

    check-cast p0, Lscala/Some;

    invoke-virtual {p0}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 53
    :cond_0
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p2}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0

    .line 51
    :cond_1
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, p0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public static isDefinedAt(Lscala/collection/parallel/ParMapLike;Ljava/lang/Object;)Z
    .locals 0

    .line 58
    invoke-interface {p0, p1}, Lscala/collection/parallel/ParMapLike;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static keySet(Lscala/collection/parallel/ParMapLike;)Lscala/collection/parallel/ParSet;
    .locals 1

    .line 113
    new-instance v0, Lscala/collection/parallel/ParMapLike$DefaultKeySet;

    invoke-direct {v0, p0}, Lscala/collection/parallel/ParMapLike$DefaultKeySet;-><init>(Lscala/collection/parallel/ParMapLike;)V

    return-object v0
.end method

.method public static keys(Lscala/collection/parallel/ParMapLike;)Lscala/collection/parallel/ParIterable;
    .locals 0

    .line 115
    invoke-interface {p0}, Lscala/collection/parallel/ParMapLike;->keySet()Lscala/collection/parallel/ParSet;

    move-result-object p0

    return-object p0
.end method

.method public static keysIterator(Lscala/collection/parallel/ParMapLike;)Lscala/collection/parallel/IterableSplitter;
    .locals 1

    .line 75
    invoke-interface {p0}, Lscala/collection/parallel/ParMapLike;->splitter()Lscala/collection/parallel/IterableSplitter;

    move-result-object v0

    invoke-static {p0, v0}, Lscala/collection/parallel/ParMapLike$class;->scala$collection$parallel$ParMapLike$$keysIterator(Lscala/collection/parallel/ParMapLike;Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/IterableSplitter;

    move-result-object p0

    return-object p0
.end method

.method public static mapValues(Lscala/collection/parallel/ParMapLike;Lscala/Function1;)Lscala/collection/parallel/ParMap;
    .locals 1

    .line 131
    new-instance v0, Lscala/collection/parallel/ParMapLike$$anon$2;

    invoke-direct {v0, p0, p1}, Lscala/collection/parallel/ParMapLike$$anon$2;-><init>(Lscala/collection/parallel/ParMapLike;Lscala/Function1;)V

    return-object v0
.end method

.method public static scala$collection$parallel$ParMapLike$$keysIterator(Lscala/collection/parallel/ParMapLike;Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/IterableSplitter;
    .locals 1

    .line 61
    new-instance v0, Lscala/collection/parallel/ParMapLike$$anon$3;

    invoke-direct {v0, p0, p1}, Lscala/collection/parallel/ParMapLike$$anon$3;-><init>(Lscala/collection/parallel/ParMapLike;Lscala/collection/parallel/IterableSplitter;)V

    return-object v0
.end method

.method public static scala$collection$parallel$ParMapLike$$valuesIterator(Lscala/collection/parallel/ParMapLike;Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/IterableSplitter;
    .locals 1

    .line 78
    new-instance v0, Lscala/collection/parallel/ParMapLike$$anon$4;

    invoke-direct {v0, p0, p1}, Lscala/collection/parallel/ParMapLike$$anon$4;-><init>(Lscala/collection/parallel/ParMapLike;Lscala/collection/parallel/IterableSplitter;)V

    return-object v0
.end method

.method public static values(Lscala/collection/parallel/ParMapLike;)Lscala/collection/parallel/ParIterable;
    .locals 1

    .line 117
    new-instance v0, Lscala/collection/parallel/ParMapLike$DefaultValuesIterable;

    invoke-direct {v0, p0}, Lscala/collection/parallel/ParMapLike$DefaultValuesIterable;-><init>(Lscala/collection/parallel/ParMapLike;)V

    return-object v0
.end method

.method public static valuesIterator(Lscala/collection/parallel/ParMapLike;)Lscala/collection/parallel/IterableSplitter;
    .locals 1

    .line 92
    invoke-interface {p0}, Lscala/collection/parallel/ParMapLike;->splitter()Lscala/collection/parallel/IterableSplitter;

    move-result-object v0

    invoke-static {p0, v0}, Lscala/collection/parallel/ParMapLike$class;->scala$collection$parallel$ParMapLike$$valuesIterator(Lscala/collection/parallel/ParMapLike;Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/IterableSplitter;

    move-result-object p0

    return-object p0
.end method
