.class public abstract Lscala/collection/MapLike$class;
.super Ljava/lang/Object;
.source "MapLike.scala"


# direct methods
.method public static $init$(Lscala/collection/MapLike;)V
    .locals 0

    return-void
.end method

.method public static $plus(Lscala/collection/MapLike;Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/Map;
    .locals 0

    .line 290
    invoke-interface {p0, p1}, Lscala/collection/MapLike;->$plus(Lscala/Tuple2;)Lscala/collection/Map;

    move-result-object p0

    invoke-interface {p0, p2}, Lscala/collection/Map;->$plus(Lscala/Tuple2;)Lscala/collection/Map;

    move-result-object p0

    invoke-interface {p0, p3}, Lscala/collection/Map;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Map;

    move-result-object p0

    return-object p0
.end method

.method public static $plus$plus(Lscala/collection/MapLike;Lscala/collection/GenTraversableOnce;)Lscala/collection/Map;
    .locals 2

    .line 302
    invoke-interface {p0}, Lscala/collection/MapLike;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/Map;

    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object p1

    new-instance v1, Lscala/collection/MapLike$$anonfun$$plus$plus$1;

    invoke-direct {v1, p0}, Lscala/collection/MapLike$$anonfun$$plus$plus$1;-><init>(Lscala/collection/MapLike;)V

    invoke-interface {p1, v0, v1}, Lscala/collection/TraversableOnce;->$div$colon(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/Map;

    return-object p0
.end method

.method public static addString(Lscala/collection/MapLike;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 2

    .line 344
    invoke-interface {p0}, Lscala/collection/MapLike;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    new-instance v1, Lscala/collection/MapLike$$anonfun$addString$1;

    invoke-direct {v1, p0}, Lscala/collection/MapLike$$anonfun$addString$1;-><init>(Lscala/collection/MapLike;)V

    invoke-interface {v0, v1}, Lscala/collection/Iterator;->map(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lscala/collection/Iterator;->addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static apply(Lscala/collection/MapLike;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 140
    invoke-interface {p0, p1}, Lscala/collection/MapLike;->get(Ljava/lang/Object;)Lscala/Option;

    move-result-object v0

    .line 141
    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, p1}, Lscala/collection/MapLike;->default(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 142
    :cond_0
    instance-of p0, v0, Lscala/Some;

    if-eqz p0, :cond_1

    check-cast v0, Lscala/Some;

    invoke-virtual {v0}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0

    .line 140
    :cond_1
    new-instance p0, Lscala/MatchError;

    invoke-direct {p0, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public static contains(Lscala/collection/MapLike;Ljava/lang/Object;)Z
    .locals 0

    .line 150
    invoke-interface {p0, p1}, Lscala/collection/MapLike;->get(Ljava/lang/Object;)Lscala/Option;

    move-result-object p0

    invoke-virtual {p0}, Lscala/Option;->isDefined()Z

    move-result p0

    return p0
.end method

.method public static default(Lscala/collection/MapLike;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 228
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

.method public static filterKeys(Lscala/collection/MapLike;Lscala/Function1;)Lscala/collection/Map;
    .locals 1

    .line 242
    new-instance v0, Lscala/collection/MapLike$FilteredKeys;

    invoke-direct {v0, p0, p1}, Lscala/collection/MapLike$FilteredKeys;-><init>(Lscala/collection/MapLike;Lscala/Function1;)V

    return-object v0
.end method

.method public static filterNot(Lscala/collection/MapLike;Lscala/Function1;)Lscala/collection/Map;
    .locals 2

    .line 316
    invoke-interface {p0}, Lscala/collection/MapLike;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/Map;

    invoke-static {v0}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v0

    .line 317
    new-instance v1, Lscala/collection/MapLike$$anonfun$filterNot$1;

    invoke-direct {v1, p0, v0, p1}, Lscala/collection/MapLike$$anonfun$filterNot$1;-><init>(Lscala/collection/MapLike;Lscala/runtime/ObjectRef;Lscala/Function1;)V

    invoke-interface {p0, v1}, Lscala/collection/MapLike;->foreach(Lscala/Function1;)V

    .line 319
    iget-object p0, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast p0, Lscala/collection/Map;

    return-object p0
.end method

.method public static getOrElse(Lscala/collection/MapLike;Ljava/lang/Object;Lscala/Function0;)Ljava/lang/Object;
    .locals 0

    .line 126
    invoke-interface {p0, p1}, Lscala/collection/MapLike;->get(Ljava/lang/Object;)Lscala/Option;

    move-result-object p0

    .line 127
    instance-of p1, p0, Lscala/Some;

    if-eqz p1, :cond_0

    check-cast p0, Lscala/Some;

    invoke-virtual {p0}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 128
    :cond_0
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p2}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0

    .line 126
    :cond_1
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, p0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public static isDefinedAt(Lscala/collection/MapLike;Ljava/lang/Object;)Z
    .locals 0

    .line 159
    invoke-interface {p0, p1}, Lscala/collection/MapLike;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isEmpty(Lscala/collection/MapLike;)Z
    .locals 0

    .line 113
    invoke-interface {p0}, Lscala/collection/MapLike;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static keySet(Lscala/collection/MapLike;)Lscala/collection/Set;
    .locals 1

    .line 164
    new-instance v0, Lscala/collection/MapLike$DefaultKeySet;

    invoke-direct {v0, p0}, Lscala/collection/MapLike$DefaultKeySet;-><init>(Lscala/collection/MapLike;)V

    return-object v0
.end method

.method public static keys(Lscala/collection/MapLike;)Lscala/collection/Iterable;
    .locals 0

    .line 192
    invoke-interface {p0}, Lscala/collection/MapLike;->keySet()Lscala/collection/Set;

    move-result-object p0

    return-object p0
.end method

.method public static keysIterator(Lscala/collection/MapLike;)Lscala/collection/Iterator;
    .locals 1

    .line 181
    new-instance v0, Lscala/collection/MapLike$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/MapLike$$anon$1;-><init>(Lscala/collection/MapLike;)V

    return-object v0
.end method

.method public static mapValues(Lscala/collection/MapLike;Lscala/Function1;)Lscala/collection/Map;
    .locals 1

    .line 257
    new-instance v0, Lscala/collection/MapLike$MappedValues;

    invoke-direct {v0, p0, p1}, Lscala/collection/MapLike$MappedValues;-><init>(Lscala/collection/MapLike;Lscala/Function1;)V

    return-object v0
.end method

.method public static newBuilder(Lscala/collection/MapLike;)Lscala/collection/mutable/Builder;
    .locals 1

    .line 74
    new-instance v0, Lscala/collection/mutable/MapBuilder;

    invoke-interface {p0}, Lscala/collection/MapLike;->empty()Lscala/collection/Map;

    move-result-object p0

    invoke-direct {v0, p0}, Lscala/collection/mutable/MapBuilder;-><init>(Lscala/collection/GenMap;)V

    return-object v0
.end method

.method public static parCombiner(Lscala/collection/MapLike;)Lscala/collection/parallel/Combiner;
    .locals 0

    .line 330
    sget-object p0, Lscala/collection/parallel/ParMap$;->MODULE$:Lscala/collection/parallel/ParMap$;

    invoke-virtual {p0}, Lscala/collection/parallel/ParMap$;->newCombiner()Lscala/collection/parallel/Combiner;

    move-result-object p0

    return-object p0
.end method

.method public static stringPrefix(Lscala/collection/MapLike;)Ljava/lang/String;
    .locals 0

    const-string p0, "Map"

    return-object p0
.end method

.method public static toBuffer(Lscala/collection/MapLike;)Lscala/collection/mutable/Buffer;
    .locals 2

    .line 325
    new-instance v0, Lscala/collection/mutable/ArrayBuffer;

    invoke-interface {p0}, Lscala/collection/MapLike;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lscala/collection/mutable/ArrayBuffer;-><init>(I)V

    .line 326
    invoke-interface {p0, v0}, Lscala/collection/MapLike;->copyToBuffer(Lscala/collection/mutable/Buffer;)V

    return-object v0
.end method

.method public static toSeq(Lscala/collection/MapLike;)Lscala/collection/Seq;
    .locals 0

    .line 323
    invoke-interface {p0}, Lscala/collection/MapLike;->toBuffer()Lscala/collection/mutable/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Lscala/collection/MapLike;)Ljava/lang/String;
    .locals 0

    .line 353
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->toString(Lscala/collection/TraversableLike;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static updated(Lscala/collection/MapLike;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/Map;
    .locals 1

    .line 272
    new-instance v0, Lscala/Tuple2;

    invoke-direct {v0, p1, p2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lscala/collection/MapLike;->$plus(Lscala/Tuple2;)Lscala/collection/Map;

    move-result-object p0

    return-object p0
.end method

.method public static values(Lscala/collection/MapLike;)Lscala/collection/Iterable;
    .locals 1

    .line 199
    new-instance v0, Lscala/collection/MapLike$DefaultValuesIterable;

    invoke-direct {v0, p0}, Lscala/collection/MapLike$DefaultValuesIterable;-><init>(Lscala/collection/MapLike;)V

    return-object v0
.end method

.method public static valuesIterator(Lscala/collection/MapLike;)Lscala/collection/Iterator;
    .locals 1

    .line 213
    new-instance v0, Lscala/collection/MapLike$$anon$2;

    invoke-direct {v0, p0}, Lscala/collection/MapLike$$anon$2;-><init>(Lscala/collection/MapLike;)V

    return-object v0
.end method
