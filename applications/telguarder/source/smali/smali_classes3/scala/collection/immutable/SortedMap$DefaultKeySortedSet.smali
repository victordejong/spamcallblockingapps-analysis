.class public Lscala/collection/immutable/SortedMap$DefaultKeySortedSet;
.super Lscala/collection/SortedMapLike$DefaultKeySortedSet;
.source "SortedMap.scala"

# interfaces
.implements Lscala/collection/immutable/SortedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/SortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultKeySortedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/SortedMapLike<",
        "TA;TB;",
        "Lscala/collection/immutable/SortedMap<",
        "TA;TB;>;>.DefaultKeySortedSet;",
        "Lscala/collection/immutable/SortedSet<",
        "TA;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lscala/collection/immutable/SortedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/SortedMap<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1}, Lscala/collection/SortedMapLike$DefaultKeySortedSet;-><init>(Lscala/collection/SortedMapLike;)V

    invoke-static {p0}, Lscala/collection/immutable/Traversable$class;->$init$(Lscala/collection/immutable/Traversable;)V

    invoke-static {p0}, Lscala/collection/immutable/Iterable$class;->$init$(Lscala/collection/immutable/Iterable;)V

    invoke-static {p0}, Lscala/collection/immutable/Set$class;->$init$(Lscala/collection/immutable/Set;)V

    invoke-static {p0}, Lscala/collection/immutable/SortedSet$class;->$init$(Lscala/collection/immutable/SortedSet;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic $minus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SortedMap$DefaultKeySortedSet;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/Set;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SortedMap$DefaultKeySortedSet;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/SortedSet;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SortedMap$DefaultKeySortedSet;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SortedMap$DefaultKeySortedSet;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public $minus(Ljava/lang/Object;)Lscala/collection/immutable/SortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/immutable/SortedSet<",
            "TA;>;"
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SortedMap$DefaultKeySortedSet;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lscala/collection/immutable/SortedSet$;->MODULE$:Lscala/collection/immutable/SortedSet$;

    sget-object v1, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-virtual {p0}, Lscala/collection/immutable/SortedMap$DefaultKeySortedSet;->ordering()Lscala/math/Ordering;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lscala/collection/immutable/SortedSet$;->apply(Lscala/collection/Seq;Lscala/math/Ordering;)Lscala/collection/SortedSet;

    move-result-object v0

    invoke-interface {v0, p0}, Lscala/collection/SortedSet;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/Set;->$minus(Ljava/lang/Object;)Lscala/collection/Set;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/SortedSet;

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic $plus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SortedMap$DefaultKeySortedSet;->$plus(Ljava/lang/Object;)Lscala/collection/immutable/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Ljava/lang/Object;)Lscala/collection/Set;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SortedMap$DefaultKeySortedSet;->$plus(Ljava/lang/Object;)Lscala/collection/immutable/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Ljava/lang/Object;)Lscala/collection/SortedSet;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SortedMap$DefaultKeySortedSet;->$plus(Ljava/lang/Object;)Lscala/collection/immutable/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public $plus(Ljava/lang/Object;)Lscala/collection/immutable/SortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/immutable/SortedSet<",
            "TA;>;"
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SortedMap$DefaultKeySortedSet;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p0

    goto :goto_0

    .line 48
    :cond_0
    sget-object v0, Lscala/collection/immutable/SortedSet$;->MODULE$:Lscala/collection/immutable/SortedSet$;

    sget-object v1, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-virtual {p0}, Lscala/collection/immutable/SortedMap$DefaultKeySortedSet;->ordering()Lscala/math/Ordering;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lscala/collection/immutable/SortedSet$;->apply(Lscala/collection/Seq;Lscala/math/Ordering;)Lscala/collection/SortedSet;

    move-result-object v0

    invoke-interface {v0, p0}, Lscala/collection/SortedSet;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/Set;->$plus(Ljava/lang/Object;)Lscala/collection/Set;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/SortedSet;

    :goto_0
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SortedMap$DefaultKeySortedSet;->apply(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "Lscala/collection/immutable/Set;",
            ">;"
        }
    .end annotation

    .line 45
    invoke-static {p0}, Lscala/collection/immutable/Set$class;->companion(Lscala/collection/immutable/Set;)Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic diff(Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SortedMap$DefaultKeySortedSet;->diff(Lscala/collection/GenSet;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic empty()Lscala/collection/GenSet;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lscala/collection/immutable/SortedMap$DefaultKeySortedSet;->empty()Lscala/collection/immutable/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/Set;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lscala/collection/immutable/SortedMap$DefaultKeySortedSet;->empty()Lscala/collection/immutable/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/SortedSet;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lscala/collection/immutable/SortedMap$DefaultKeySortedSet;->empty()Lscala/collection/immutable/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/immutable/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/SortedSet<",
            "TA;>;"
        }
    .end annotation

    .line 45
    invoke-static {p0}, Lscala/collection/immutable/SortedSet$class;->empty(Lscala/collection/immutable/SortedSet;)Lscala/collection/immutable/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic from(Ljava/lang/Object;)Lscala/collection/generic/Sorted;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SortedMap$DefaultKeySortedSet;->from(Ljava/lang/Object;)Lscala/collection/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SortedMap$DefaultKeySortedSet;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public parCombiner()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "TA;",
            "Lscala/collection/parallel/immutable/ParSet<",
            "TA;>;>;"
        }
    .end annotation

    .line 45
    invoke-static {p0}, Lscala/collection/immutable/Set$class;->parCombiner(Lscala/collection/immutable/Set;)Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic range(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/generic/Sorted;
    .locals 0

    .line 45
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/SortedMap$DefaultKeySortedSet;->range(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic rangeImpl(Lscala/Option;Lscala/Option;)Lscala/collection/SortedSet;
    .locals 0

    .line 45
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/SortedMap$DefaultKeySortedSet;->rangeImpl(Lscala/Option;Lscala/Option;)Lscala/collection/immutable/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic rangeImpl(Lscala/Option;Lscala/Option;)Lscala/collection/generic/Sorted;
    .locals 0

    .line 45
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/SortedMap$DefaultKeySortedSet;->rangeImpl(Lscala/Option;Lscala/Option;)Lscala/collection/immutable/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public rangeImpl(Lscala/Option;Lscala/Option;)Lscala/collection/immutable/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "TA;>;",
            "Lscala/Option<",
            "TA;>;)",
            "Lscala/collection/immutable/SortedSet<",
            "TA;>;"
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lscala/collection/immutable/SortedMap$DefaultKeySortedSet;->scala$collection$immutable$SortedMap$DefaultKeySortedSet$$$outer()Lscala/collection/immutable/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lscala/collection/immutable/SortedMap;->rangeImpl(Lscala/Option;Lscala/Option;)Lscala/collection/SortedMap;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/SortedMap;

    .line 54
    new-instance p2, Lscala/collection/immutable/SortedMap$DefaultKeySortedSet;

    invoke-direct {p2, p1}, Lscala/collection/immutable/SortedMap$DefaultKeySortedSet;-><init>(Lscala/collection/immutable/SortedMap;)V

    return-object p2
.end method

.method public bridge synthetic repr()Lscala/collection/generic/Sorted;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lscala/collection/immutable/SortedMap$DefaultKeySortedSet;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Sorted;

    return-object v0
.end method

.method public bridge synthetic repr()Lscala/collection/generic/Subtractable;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lscala/collection/immutable/SortedMap$DefaultKeySortedSet;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Subtractable;

    return-object v0
.end method

.method public synthetic scala$collection$immutable$SortedMap$DefaultKeySortedSet$$$outer()Lscala/collection/immutable/SortedMap;
    .locals 1

    .line 45
    iget-object v0, p0, Lscala/collection/immutable/SortedMap$DefaultKeySortedSet;->$outer:Lscala/collection/MapLike;

    check-cast v0, Lscala/collection/immutable/SortedMap;

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lscala/collection/immutable/SortedMap$DefaultKeySortedSet;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Set;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lscala/collection/immutable/SortedMap$DefaultKeySortedSet;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lscala/collection/immutable/SortedMap$DefaultKeySortedSet;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lscala/collection/immutable/SortedMap$DefaultKeySortedSet;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/immutable/Iterable;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lscala/collection/immutable/SortedMap$DefaultKeySortedSet;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/immutable/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Set<",
            "TA;>;"
        }
    .end annotation

    .line 45
    invoke-static {p0}, Lscala/collection/immutable/Set$class;->seq(Lscala/collection/immutable/Set;)Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/immutable/Traversable;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lscala/collection/immutable/SortedMap$DefaultKeySortedSet;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lscala/collection/immutable/SortedMap$DefaultKeySortedSet;->thisCollection()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SortedMap$DefaultKeySortedSet;->toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lscala/collection/immutable/SortedMap$DefaultKeySortedSet;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lscala/collection/immutable/SortedMap$DefaultKeySortedSet;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSet()Lscala/collection/GenSet;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lscala/collection/immutable/SortedMap$DefaultKeySortedSet;->toSet()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public toSet()Lscala/collection/immutable/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/immutable/Set<",
            "TB;>;"
        }
    .end annotation

    .line 45
    invoke-static {p0}, Lscala/collection/immutable/Set$class;->toSet(Lscala/collection/immutable/Set;)Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lscala/collection/immutable/SortedMap$DefaultKeySortedSet;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic union(Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SortedMap$DefaultKeySortedSet;->union(Lscala/collection/GenSet;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic until(Ljava/lang/Object;)Lscala/collection/generic/Sorted;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SortedMap$DefaultKeySortedSet;->until(Ljava/lang/Object;)Lscala/collection/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lscala/collection/immutable/SortedMap$DefaultKeySortedSet;->view()Lscala/collection/IterableView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 45
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/SortedMap$DefaultKeySortedSet;->view(II)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method
