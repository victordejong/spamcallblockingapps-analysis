.class public final Lscala/collection/SortedMapLike$$anon$1;
.super Lscala/collection/MapLike$FilteredKeys;
.source "SortedMapLike.scala"

# interfaces
.implements Lscala/collection/SortedMap$Default;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/SortedMapLike;->filterKeys(Lscala/Function1;)Lscala/collection/SortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/MapLike<",
        "TA;TB;TThis;>.FilteredKeys;",
        "Lscala/collection/SortedMap$Default<",
        "TA;TB;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/SortedMapLike;

.field public final p$1:Lscala/Function1;


# direct methods
.method public constructor <init>(Lscala/collection/SortedMapLike;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/SortedMapLike<",
            "TA;TB;TThis;>;)V"
        }
    .end annotation

    .line 76
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/SortedMapLike$$anon$1;->$outer:Lscala/collection/SortedMapLike;

    iput-object p2, p0, Lscala/collection/SortedMapLike$$anon$1;->p$1:Lscala/Function1;

    invoke-direct {p0, p1, p2}, Lscala/collection/MapLike$FilteredKeys;-><init>(Lscala/collection/MapLike;Lscala/Function1;)V

    invoke-static {p0}, Lscala/collection/generic/Sorted$class;->$init$(Lscala/collection/generic/Sorted;)V

    invoke-static {p0}, Lscala/collection/SortedMapLike$class;->$init$(Lscala/collection/SortedMapLike;)V

    invoke-static {p0}, Lscala/collection/SortedMap$class;->$init$(Lscala/collection/SortedMap;)V

    invoke-static {p0}, Lscala/collection/SortedMap$Default$class;->$init$(Lscala/collection/SortedMap$Default;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic $minus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lscala/collection/SortedMapLike$$anon$1;->$minus(Ljava/lang/Object;)Lscala/collection/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/Map;
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lscala/collection/SortedMapLike$$anon$1;->$minus(Ljava/lang/Object;)Lscala/collection/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public $minus(Ljava/lang/Object;)Lscala/collection/SortedMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/SortedMap<",
            "TA;TB;>;"
        }
    .end annotation

    .line 76
    invoke-static {p0, p1}, Lscala/collection/SortedMap$Default$class;->$minus(Lscala/collection/SortedMap$Default;Ljava/lang/Object;)Lscala/collection/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lscala/collection/SortedMapLike$$anon$1;->$minus(Ljava/lang/Object;)Lscala/collection/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/GenMap;
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lscala/collection/SortedMapLike$$anon$1;->$plus(Lscala/Tuple2;)Lscala/collection/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/Map;
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lscala/collection/SortedMapLike$$anon$1;->$plus(Lscala/Tuple2;)Lscala/collection/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/Map;
    .locals 0

    .line 76
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/SortedMapLike$$anon$1;->$plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public $plus(Lscala/Tuple2;)Lscala/collection/SortedMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple2<",
            "TA;TB1;>;)",
            "Lscala/collection/SortedMap<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 76
    invoke-static {p0, p1}, Lscala/collection/SortedMap$Default$class;->$plus(Lscala/collection/SortedMap$Default;Lscala/Tuple2;)Lscala/collection/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public $plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/SortedMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple2<",
            "TA;TB1;>;",
            "Lscala/Tuple2<",
            "TA;TB1;>;",
            "Lscala/collection/Seq<",
            "Lscala/Tuple2<",
            "TA;TB1;>;>;)",
            "Lscala/collection/SortedMap<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 76
    invoke-static {p0, p1, p2, p3}, Lscala/collection/SortedMapLike$class;->$plus(Lscala/collection/SortedMapLike;Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Map;
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lscala/collection/SortedMapLike$$anon$1;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/SortedMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenTraversableOnce<",
            "Lscala/Tuple2<",
            "TA;TB1;>;>;)",
            "Lscala/collection/SortedMap<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 76
    invoke-static {p0, p1}, Lscala/collection/SortedMapLike$class;->$plus$plus(Lscala/collection/SortedMapLike;Lscala/collection/GenTraversableOnce;)Lscala/collection/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TA;)I"
        }
    .end annotation

    .line 76
    invoke-static {p0, p1, p2}, Lscala/collection/generic/Sorted$class;->compare(Lscala/collection/generic/Sorted;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic empty()Lscala/collection/Map;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lscala/collection/SortedMapLike$$anon$1;->empty()Lscala/collection/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/SortedMap<",
            "TA;TB;>;"
        }
    .end annotation

    .line 76
    invoke-static {p0}, Lscala/collection/SortedMap$class;->empty(Lscala/collection/SortedMap;)Lscala/collection/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic filterKeys(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lscala/collection/SortedMapLike$$anon$1;->filterKeys(Lscala/Function1;)Lscala/collection/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filterKeys(Lscala/Function1;)Lscala/collection/Map;
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lscala/collection/SortedMapLike$$anon$1;->filterKeys(Lscala/Function1;)Lscala/collection/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public filterKeys(Lscala/Function1;)Lscala/collection/SortedMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/SortedMap<",
            "TA;TB;>;"
        }
    .end annotation

    .line 76
    invoke-static {p0, p1}, Lscala/collection/SortedMapLike$class;->filterKeys(Lscala/collection/SortedMapLike;Lscala/Function1;)Lscala/collection/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filterNot(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lscala/collection/SortedMapLike$$anon$1;->filterNot(Lscala/Function1;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 76
    invoke-static {p0}, Lscala/collection/SortedMapLike$class;->firstKey(Lscala/collection/SortedMapLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public from(Ljava/lang/Object;)Lscala/collection/generic/Sorted;
    .locals 0

    .line 76
    invoke-static {p0, p1}, Lscala/collection/generic/Sorted$class;->from(Lscala/collection/generic/Sorted;Ljava/lang/Object;)Lscala/collection/generic/Sorted;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lscala/collection/SortedMapLike$$anon$1;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public hasAll(Lscala/collection/Iterator;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Iterator<",
            "TA;>;)Z"
        }
    .end annotation

    .line 76
    invoke-static {p0, p1}, Lscala/collection/generic/Sorted$class;->hasAll(Lscala/collection/generic/Sorted;Lscala/collection/Iterator;)Z

    move-result p1

    return p1
.end method

.method public iteratorFrom(Ljava/lang/Object;)Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lscala/collection/SortedMapLike$$anon$1;->$outer:Lscala/collection/SortedMapLike;

    invoke-interface {v0, p1}, Lscala/collection/SortedMapLike;->iteratorFrom(Ljava/lang/Object;)Lscala/collection/Iterator;

    move-result-object p1

    new-instance v0, Lscala/collection/SortedMapLike$$anon$1$$anonfun$iteratorFrom$1;

    invoke-direct {v0, p0}, Lscala/collection/SortedMapLike$$anon$1$$anonfun$iteratorFrom$1;-><init>(Lscala/collection/SortedMapLike$$anon$1;)V

    invoke-interface {p1, v0}, Lscala/collection/Iterator;->filter(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic keySet()Lscala/collection/GenSet;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lscala/collection/SortedMapLike$$anon$1;->keySet()Lscala/collection/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Lscala/collection/Set;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lscala/collection/SortedMapLike$$anon$1;->keySet()Lscala/collection/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Lscala/collection/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/SortedSet<",
            "TA;>;"
        }
    .end annotation

    .line 76
    invoke-static {p0}, Lscala/collection/SortedMapLike$class;->keySet(Lscala/collection/SortedMapLike;)Lscala/collection/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keys()Lscala/collection/GenIterable;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lscala/collection/SortedMapLike$$anon$1;->keys()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public keysIteratorFrom(Ljava/lang/Object;)Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lscala/collection/SortedMapLike$$anon$1;->$outer:Lscala/collection/SortedMapLike;

    invoke-interface {v0, p1}, Lscala/collection/SortedMapLike;->keysIteratorFrom(Ljava/lang/Object;)Lscala/collection/Iterator;

    move-result-object p1

    iget-object v0, p0, Lscala/collection/SortedMapLike$$anon$1;->p$1:Lscala/Function1;

    invoke-interface {p1, v0}, Lscala/collection/Iterator;->filter(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 76
    invoke-static {p0}, Lscala/collection/SortedMapLike$class;->lastKey(Lscala/collection/SortedMapLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mapValues(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lscala/collection/SortedMapLike$$anon$1;->mapValues(Lscala/Function1;)Lscala/collection/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mapValues(Lscala/Function1;)Lscala/collection/Map;
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lscala/collection/SortedMapLike$$anon$1;->mapValues(Lscala/Function1;)Lscala/collection/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public mapValues(Lscala/Function1;)Lscala/collection/SortedMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TB;TC;>;)",
            "Lscala/collection/SortedMap<",
            "TA;TC;>;"
        }
    .end annotation

    .line 76
    invoke-static {p0, p1}, Lscala/collection/SortedMapLike$class;->mapValues(Lscala/collection/SortedMapLike;Lscala/Function1;)Lscala/collection/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public newBuilder()Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Builder<",
            "Lscala/Tuple2<",
            "TA;TB;>;",
            "Lscala/collection/SortedMap<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 76
    invoke-static {p0}, Lscala/collection/SortedMap$class;->newBuilder(Lscala/collection/SortedMap;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public ordering()Lscala/math/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/math/Ordering<",
            "TA;>;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lscala/collection/SortedMapLike$$anon$1;->$outer:Lscala/collection/SortedMapLike;

    invoke-interface {v0}, Lscala/collection/SortedMapLike;->ordering()Lscala/math/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public range(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/generic/Sorted;
    .locals 0

    .line 76
    invoke-static {p0, p1, p2}, Lscala/collection/generic/Sorted$class;->range(Lscala/collection/generic/Sorted;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/generic/Sorted;

    move-result-object p1

    return-object p1
.end method

.method public rangeImpl(Lscala/Option;Lscala/Option;)Lscala/collection/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "TA;>;",
            "Lscala/Option<",
            "TA;>;)",
            "Lscala/collection/SortedMap<",
            "TA;TB;>;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lscala/collection/SortedMapLike$$anon$1;->$outer:Lscala/collection/SortedMapLike;

    invoke-interface {v0, p1, p2}, Lscala/collection/SortedMapLike;->rangeImpl(Lscala/Option;Lscala/Option;)Lscala/collection/SortedMap;

    move-result-object p1

    iget-object p2, p0, Lscala/collection/SortedMapLike$$anon$1;->p$1:Lscala/Function1;

    invoke-interface {p1, p2}, Lscala/collection/SortedMap;->filterKeys(Lscala/Function1;)Lscala/collection/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic rangeImpl(Lscala/Option;Lscala/Option;)Lscala/collection/generic/Sorted;
    .locals 0

    .line 76
    invoke-virtual {p0, p1, p2}, Lscala/collection/SortedMapLike$$anon$1;->rangeImpl(Lscala/Option;Lscala/Option;)Lscala/collection/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic repr()Lscala/collection/generic/Sorted;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lscala/collection/SortedMapLike$$anon$1;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Sorted;

    return-object v0
.end method

.method public bridge synthetic repr()Lscala/collection/generic/Subtractable;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lscala/collection/SortedMapLike$$anon$1;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Subtractable;

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lscala/collection/SortedMapLike$$anon$1;->thisCollection()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public to(Ljava/lang/Object;)Lscala/collection/generic/Sorted;
    .locals 0

    .line 76
    invoke-static {p0, p1}, Lscala/collection/generic/Sorted$class;->to(Lscala/collection/generic/Sorted;Ljava/lang/Object;)Lscala/collection/generic/Sorted;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lscala/collection/SortedMapLike$$anon$1;->toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lscala/collection/SortedMapLike$$anon$1;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lscala/collection/SortedMapLike$$anon$1;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lscala/collection/SortedMapLike$$anon$1;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public until(Ljava/lang/Object;)Lscala/collection/generic/Sorted;
    .locals 0

    .line 76
    invoke-static {p0, p1}, Lscala/collection/generic/Sorted$class;->until(Lscala/collection/generic/Sorted;Ljava/lang/Object;)Lscala/collection/generic/Sorted;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/GenMap;
    .locals 0

    .line 76
    invoke-virtual {p0, p1, p2}, Lscala/collection/SortedMapLike$$anon$1;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/Map;
    .locals 0

    .line 76
    invoke-virtual {p0, p1, p2}, Lscala/collection/SortedMapLike$$anon$1;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/SortedMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(TA;TB1;)",
            "Lscala/collection/SortedMap<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 76
    invoke-static {p0, p1, p2}, Lscala/collection/SortedMapLike$class;->updated(Lscala/collection/SortedMapLike;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic values()Lscala/collection/GenIterable;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lscala/collection/SortedMapLike$$anon$1;->values()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public valuesIteratorFrom(Ljava/lang/Object;)Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lscala/collection/SortedMapLike$$anon$1;->$outer:Lscala/collection/SortedMapLike;

    invoke-interface {v0, p1}, Lscala/collection/SortedMapLike;->iteratorFrom(Ljava/lang/Object;)Lscala/collection/Iterator;

    move-result-object p1

    new-instance v0, Lscala/collection/SortedMapLike$$anon$1$$anonfun$valuesIteratorFrom$1;

    invoke-direct {v0, p0}, Lscala/collection/SortedMapLike$$anon$1$$anonfun$valuesIteratorFrom$1;-><init>(Lscala/collection/SortedMapLike$$anon$1;)V

    invoke-interface {p1, v0}, Lscala/collection/Iterator;->collect(Lscala/PartialFunction;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lscala/collection/SortedMapLike$$anon$1;->view()Lscala/collection/IterableView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 76
    invoke-virtual {p0, p1, p2}, Lscala/collection/SortedMapLike$$anon$1;->view(II)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method
