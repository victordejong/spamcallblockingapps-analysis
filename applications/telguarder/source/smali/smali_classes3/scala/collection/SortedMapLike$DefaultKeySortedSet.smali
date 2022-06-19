.class public Lscala/collection/SortedMapLike$DefaultKeySortedSet;
.super Lscala/collection/MapLike$DefaultKeySet;
.source "SortedMapLike.scala"

# interfaces
.implements Lscala/collection/SortedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/SortedMapLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultKeySortedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/MapLike<",
        "TA;TB;TThis;>.DefaultKeySet;",
        "Lscala/collection/SortedSet<",
        "TA;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lscala/collection/SortedMapLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/SortedMapLike<",
            "TA;TB;TThis;>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1}, Lscala/collection/MapLike$DefaultKeySet;-><init>(Lscala/collection/MapLike;)V

    invoke-static {p0}, Lscala/collection/generic/Sorted$class;->$init$(Lscala/collection/generic/Sorted;)V

    invoke-static {p0}, Lscala/collection/SortedSetLike$class;->$init$(Lscala/collection/SortedSetLike;)V

    invoke-static {p0}, Lscala/collection/SortedSet$class;->$init$(Lscala/collection/SortedSet;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic $minus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lscala/collection/SortedMapLike$DefaultKeySortedSet;->$minus(Ljava/lang/Object;)Lscala/collection/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/Set;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lscala/collection/SortedMapLike$DefaultKeySortedSet;->$minus(Ljava/lang/Object;)Lscala/collection/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public $minus(Ljava/lang/Object;)Lscala/collection/SortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/SortedSet<",
            "TA;>;"
        }
    .end annotation

    .line 39
    sget-object v0, Lscala/collection/SortedSet$;->MODULE$:Lscala/collection/SortedSet$;

    sget-object v1, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-virtual {p0}, Lscala/collection/SortedMapLike$DefaultKeySortedSet;->ordering()Lscala/math/Ordering;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lscala/collection/SortedSet$;->apply(Lscala/collection/Seq;Lscala/math/Ordering;)Lscala/collection/SortedSet;

    move-result-object v0

    invoke-interface {v0, p0}, Lscala/collection/SortedSet;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/Set;->$minus(Ljava/lang/Object;)Lscala/collection/Set;

    move-result-object p1

    check-cast p1, Lscala/collection/SortedSet;

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lscala/collection/SortedMapLike$DefaultKeySortedSet;->$minus(Ljava/lang/Object;)Lscala/collection/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lscala/collection/SortedMapLike$DefaultKeySortedSet;->$plus(Ljava/lang/Object;)Lscala/collection/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Ljava/lang/Object;)Lscala/collection/Set;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lscala/collection/SortedMapLike$DefaultKeySortedSet;->$plus(Ljava/lang/Object;)Lscala/collection/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public $plus(Ljava/lang/Object;)Lscala/collection/SortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/SortedSet<",
            "TA;>;"
        }
    .end annotation

    .line 38
    sget-object v0, Lscala/collection/SortedSet$;->MODULE$:Lscala/collection/SortedSet$;

    sget-object v1, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-virtual {p0}, Lscala/collection/SortedMapLike$DefaultKeySortedSet;->ordering()Lscala/math/Ordering;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lscala/collection/SortedSet$;->apply(Lscala/collection/Seq;Lscala/math/Ordering;)Lscala/collection/SortedSet;

    move-result-object v0

    invoke-interface {v0, p0}, Lscala/collection/SortedSet;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/Set;->$plus(Ljava/lang/Object;)Lscala/collection/Set;

    move-result-object p1

    check-cast p1, Lscala/collection/SortedSet;

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lscala/collection/SortedMapLike$DefaultKeySortedSet;->apply(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

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

    .line 36
    invoke-static {p0, p1, p2}, Lscala/collection/generic/Sorted$class;->compare(Lscala/collection/generic/Sorted;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic diff(Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lscala/collection/SortedMapLike$DefaultKeySortedSet;->diff(Lscala/collection/GenSet;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic empty()Lscala/collection/GenSet;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/SortedMapLike$DefaultKeySortedSet;->empty()Lscala/collection/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/Set;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/SortedMapLike$DefaultKeySortedSet;->empty()Lscala/collection/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/SortedSet<",
            "TA;>;"
        }
    .end annotation

    .line 36
    invoke-static {p0}, Lscala/collection/SortedSet$class;->empty(Lscala/collection/SortedSet;)Lscala/collection/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 36
    invoke-static {p0}, Lscala/collection/SortedSetLike$class;->firstKey(Lscala/collection/SortedSetLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public from(Ljava/lang/Object;)Lscala/collection/SortedSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/SortedSet<",
            "TA;>;"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1}, Lscala/collection/SortedSetLike$class;->from(Lscala/collection/SortedSetLike;Ljava/lang/Object;)Lscala/collection/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic from(Ljava/lang/Object;)Lscala/collection/generic/Sorted;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lscala/collection/SortedMapLike$DefaultKeySortedSet;->from(Ljava/lang/Object;)Lscala/collection/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lscala/collection/SortedMapLike$DefaultKeySortedSet;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

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

    .line 36
    invoke-static {p0, p1}, Lscala/collection/generic/Sorted$class;->hasAll(Lscala/collection/generic/Sorted;Lscala/collection/Iterator;)Z

    move-result p1

    return p1
.end method

.method public iteratorFrom(Ljava/lang/Object;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1}, Lscala/collection/SortedSetLike$class;->iteratorFrom(Lscala/collection/SortedSetLike;Ljava/lang/Object;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
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

    .line 36
    invoke-static {p0}, Lscala/collection/SortedSetLike$class;->keySet(Lscala/collection/SortedSetLike;)Lscala/collection/SortedSet;

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

    .line 44
    invoke-virtual {p0}, Lscala/collection/SortedMapLike$DefaultKeySortedSet;->scala$collection$SortedMapLike$DefaultKeySortedSet$$$outer()Lscala/collection/SortedMapLike;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/SortedMapLike;->keysIteratorFrom(Ljava/lang/Object;)Lscala/collection/Iterator;

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

    .line 36
    invoke-static {p0}, Lscala/collection/SortedSetLike$class;->lastKey(Lscala/collection/SortedSetLike;)Ljava/lang/Object;

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

    .line 37
    invoke-virtual {p0}, Lscala/collection/SortedMapLike$DefaultKeySortedSet;->scala$collection$SortedMapLike$DefaultKeySortedSet$$$outer()Lscala/collection/SortedMapLike;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/SortedMapLike;->ordering()Lscala/math/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public range(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/SortedSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TA;)",
            "Lscala/collection/SortedSet<",
            "TA;>;"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1, p2}, Lscala/collection/SortedSetLike$class;->range(Lscala/collection/SortedSetLike;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic range(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/generic/Sorted;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lscala/collection/SortedMapLike$DefaultKeySortedSet;->range(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public rangeImpl(Lscala/Option;Lscala/Option;)Lscala/collection/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "TA;>;",
            "Lscala/Option<",
            "TA;>;)",
            "Lscala/collection/SortedSet<",
            "TA;>;"
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lscala/collection/SortedMapLike$DefaultKeySortedSet;->scala$collection$SortedMapLike$DefaultKeySortedSet$$$outer()Lscala/collection/SortedMapLike;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lscala/collection/SortedMapLike;->rangeImpl(Lscala/Option;Lscala/Option;)Lscala/collection/SortedMap;

    move-result-object p1

    .line 42
    new-instance p2, Lscala/collection/SortedMapLike$DefaultKeySortedSet;

    invoke-direct {p2, p1}, Lscala/collection/SortedMapLike$DefaultKeySortedSet;-><init>(Lscala/collection/SortedMapLike;)V

    return-object p2
.end method

.method public bridge synthetic rangeImpl(Lscala/Option;Lscala/Option;)Lscala/collection/generic/Sorted;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lscala/collection/SortedMapLike$DefaultKeySortedSet;->rangeImpl(Lscala/Option;Lscala/Option;)Lscala/collection/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic repr()Lscala/collection/generic/Sorted;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/SortedMapLike$DefaultKeySortedSet;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Sorted;

    return-object v0
.end method

.method public bridge synthetic repr()Lscala/collection/generic/Subtractable;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/SortedMapLike$DefaultKeySortedSet;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Subtractable;

    return-object v0
.end method

.method public synthetic scala$collection$SortedMapLike$DefaultKeySortedSet$$$outer()Lscala/collection/SortedMapLike;
    .locals 1

    .line 36
    iget-object v0, p0, Lscala/collection/SortedMapLike$DefaultKeySortedSet;->$outer:Lscala/collection/MapLike;

    check-cast v0, Lscala/collection/SortedMapLike;

    return-object v0
.end method

.method public synthetic scala$collection$SortedSetLike$$super$subsetOf(Lscala/collection/GenSet;)Z
    .locals 0

    .line 36
    invoke-static {p0, p1}, Lscala/collection/GenSetLike$class;->subsetOf(Lscala/collection/GenSetLike;Lscala/collection/GenSet;)Z

    move-result p1

    return p1
.end method

.method public subsetOf(Lscala/collection/GenSet;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenSet<",
            "TA;>;)Z"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1}, Lscala/collection/SortedSetLike$class;->subsetOf(Lscala/collection/SortedSetLike;Lscala/collection/GenSet;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/SortedMapLike$DefaultKeySortedSet;->thisCollection()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public to(Ljava/lang/Object;)Lscala/collection/generic/Sorted;
    .locals 0

    .line 36
    invoke-static {p0, p1}, Lscala/collection/generic/Sorted$class;->to(Lscala/collection/generic/Sorted;Ljava/lang/Object;)Lscala/collection/generic/Sorted;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lscala/collection/SortedMapLike$DefaultKeySortedSet;->toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/SortedMapLike$DefaultKeySortedSet;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/SortedMapLike$DefaultKeySortedSet;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/SortedMapLike$DefaultKeySortedSet;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic union(Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lscala/collection/SortedMapLike$DefaultKeySortedSet;->union(Lscala/collection/GenSet;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public until(Ljava/lang/Object;)Lscala/collection/SortedSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/SortedSet<",
            "TA;>;"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1}, Lscala/collection/SortedSetLike$class;->until(Lscala/collection/SortedSetLike;Ljava/lang/Object;)Lscala/collection/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic until(Ljava/lang/Object;)Lscala/collection/generic/Sorted;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lscala/collection/SortedMapLike$DefaultKeySortedSet;->until(Ljava/lang/Object;)Lscala/collection/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/SortedMapLike$DefaultKeySortedSet;->view()Lscala/collection/IterableView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lscala/collection/SortedMapLike$DefaultKeySortedSet;->view(II)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method
