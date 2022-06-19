.class public final Lscala/collection/immutable/SortedMap$$anon$1;
.super Lscala/collection/MapLike$FilteredKeys;
.source "SortedMap.scala"

# interfaces
.implements Lscala/collection/immutable/SortedMap$Default;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/SortedMap;->filterKeys(Lscala/Function1;)Lscala/collection/immutable/SortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/MapLike<",
        "TA;TB;",
        "Lscala/collection/immutable/SortedMap<",
        "TA;TB;>;>.FilteredKeys;",
        "Lscala/collection/immutable/SortedMap$Default<",
        "TA;TB;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/immutable/SortedMap;

.field public final p$1:Lscala/Function1;


# direct methods
.method public constructor <init>(Lscala/collection/immutable/SortedMap;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/SortedMap<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 83
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/immutable/SortedMap$$anon$1;->$outer:Lscala/collection/immutable/SortedMap;

    iput-object p2, p0, Lscala/collection/immutable/SortedMap$$anon$1;->p$1:Lscala/Function1;

    invoke-direct {p0, p1, p2}, Lscala/collection/MapLike$FilteredKeys;-><init>(Lscala/collection/MapLike;Lscala/Function1;)V

    invoke-static {p0}, Lscala/collection/immutable/Traversable$class;->$init$(Lscala/collection/immutable/Traversable;)V

    invoke-static {p0}, Lscala/collection/immutable/Iterable$class;->$init$(Lscala/collection/immutable/Iterable;)V

    invoke-static {p0}, Lscala/collection/immutable/MapLike$class;->$init$(Lscala/collection/immutable/MapLike;)V

    invoke-static {p0}, Lscala/collection/immutable/Map$class;->$init$(Lscala/collection/immutable/Map;)V

    invoke-static {p0}, Lscala/collection/generic/Sorted$class;->$init$(Lscala/collection/generic/Sorted;)V

    invoke-static {p0}, Lscala/collection/SortedMapLike$class;->$init$(Lscala/collection/SortedMapLike;)V

    invoke-static {p0}, Lscala/collection/SortedMap$class;->$init$(Lscala/collection/SortedMap;)V

    invoke-static {p0}, Lscala/collection/immutable/SortedMap$class;->$init$(Lscala/collection/immutable/SortedMap;)V

    invoke-static {p0}, Lscala/collection/SortedMap$Default$class;->$init$(Lscala/collection/SortedMap$Default;)V

    invoke-static {p0}, Lscala/collection/immutable/SortedMap$Default$class;->$init$(Lscala/collection/immutable/SortedMap$Default;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic $minus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SortedMap$$anon$1;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/Map;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SortedMap$$anon$1;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/SortedMap;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SortedMap$$anon$1;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SortedMap$$anon$1;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public $minus(Ljava/lang/Object;)Lscala/collection/immutable/SortedMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/immutable/SortedMap<",
            "TA;TB;>;"
        }
    .end annotation

    .line 83
    invoke-static {p0, p1}, Lscala/collection/immutable/SortedMap$Default$class;->$minus(Lscala/collection/immutable/SortedMap$Default;Ljava/lang/Object;)Lscala/collection/immutable/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/GenMap;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SortedMap$$anon$1;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/Map;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SortedMap$$anon$1;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/Map;
    .locals 0

    .line 83
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/immutable/SortedMap$$anon$1;->$plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/immutable/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/SortedMap;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SortedMap$$anon$1;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/SortedMap;
    .locals 0

    .line 83
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/immutable/SortedMap$$anon$1;->$plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/immutable/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/immutable/Map;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SortedMap$$anon$1;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/immutable/Map;
    .locals 0

    .line 83
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/immutable/SortedMap$$anon$1;->$plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/immutable/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public $plus(Lscala/Tuple2;)Lscala/collection/immutable/SortedMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple2<",
            "TA;TB1;>;)",
            "Lscala/collection/immutable/SortedMap<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 83
    invoke-static {p0, p1}, Lscala/collection/immutable/SortedMap$Default$class;->$plus(Lscala/collection/immutable/SortedMap$Default;Lscala/Tuple2;)Lscala/collection/immutable/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public $plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/immutable/SortedMap;
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
            "Lscala/collection/immutable/SortedMap<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 83
    invoke-static {p0, p1, p2, p3}, Lscala/collection/immutable/SortedMap$class;->$plus(Lscala/collection/immutable/SortedMap;Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/immutable/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Map;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SortedMap$$anon$1;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/immutable/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/SortedMap;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SortedMap$$anon$1;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/immutable/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/immutable/Map;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SortedMap$$anon$1;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/immutable/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/immutable/SortedMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenTraversableOnce<",
            "Lscala/Tuple2<",
            "TA;TB1;>;>;)",
            "Lscala/collection/immutable/SortedMap<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 83
    invoke-static {p0, p1}, Lscala/collection/immutable/SortedMap$class;->$plus$plus(Lscala/collection/immutable/SortedMap;Lscala/collection/GenTraversableOnce;)Lscala/collection/immutable/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "Lscala/collection/immutable/Iterable;",
            ">;"
        }
    .end annotation

    .line 83
    invoke-static {p0}, Lscala/collection/immutable/Iterable$class;->companion(Lscala/collection/immutable/Iterable;)Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    return-object v0
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TA;)I"
        }
    .end annotation

    .line 83
    invoke-static {p0, p1, p2}, Lscala/collection/generic/Sorted$class;->compare(Lscala/collection/generic/Sorted;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic empty()Lscala/collection/Map;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lscala/collection/immutable/SortedMap$$anon$1;->empty()Lscala/collection/immutable/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/SortedMap;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lscala/collection/immutable/SortedMap$$anon$1;->empty()Lscala/collection/immutable/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/immutable/Map;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lscala/collection/immutable/SortedMap$$anon$1;->empty()Lscala/collection/immutable/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/immutable/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/SortedMap<",
            "TA;TB;>;"
        }
    .end annotation

    .line 83
    invoke-static {p0}, Lscala/collection/immutable/SortedMap$class;->empty(Lscala/collection/immutable/SortedMap;)Lscala/collection/immutable/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic filterKeys(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SortedMap$$anon$1;->filterKeys(Lscala/Function1;)Lscala/collection/immutable/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filterKeys(Lscala/Function1;)Lscala/collection/Map;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SortedMap$$anon$1;->filterKeys(Lscala/Function1;)Lscala/collection/immutable/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filterKeys(Lscala/Function1;)Lscala/collection/SortedMap;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SortedMap$$anon$1;->filterKeys(Lscala/Function1;)Lscala/collection/immutable/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filterKeys(Lscala/Function1;)Lscala/collection/immutable/Map;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SortedMap$$anon$1;->filterKeys(Lscala/Function1;)Lscala/collection/immutable/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public filterKeys(Lscala/Function1;)Lscala/collection/immutable/SortedMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/immutable/SortedMap<",
            "TA;TB;>;"
        }
    .end annotation

    .line 83
    invoke-static {p0, p1}, Lscala/collection/immutable/SortedMap$class;->filterKeys(Lscala/collection/immutable/SortedMap;Lscala/Function1;)Lscala/collection/immutable/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filterNot(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SortedMap$$anon$1;->filterNot(Lscala/Function1;)Lscala/collection/Map;

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

    .line 83
    invoke-static {p0}, Lscala/collection/SortedMapLike$class;->firstKey(Lscala/collection/SortedMapLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public from(Ljava/lang/Object;)Lscala/collection/generic/Sorted;
    .locals 0

    .line 83
    invoke-static {p0, p1}, Lscala/collection/generic/Sorted$class;->from(Lscala/collection/generic/Sorted;Ljava/lang/Object;)Lscala/collection/generic/Sorted;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SortedMap$$anon$1;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

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

    .line 83
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

    .line 86
    iget-object v0, p0, Lscala/collection/immutable/SortedMap$$anon$1;->$outer:Lscala/collection/immutable/SortedMap;

    invoke-interface {v0, p1}, Lscala/collection/immutable/SortedMap;->iteratorFrom(Ljava/lang/Object;)Lscala/collection/Iterator;

    move-result-object p1

    new-instance v0, Lscala/collection/immutable/SortedMap$$anon$1$$anonfun$iteratorFrom$1;

    invoke-direct {v0, p0}, Lscala/collection/immutable/SortedMap$$anon$1$$anonfun$iteratorFrom$1;-><init>(Lscala/collection/immutable/SortedMap$$anon$1;)V

    invoke-interface {p1, v0}, Lscala/collection/Iterator;->filter(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic keySet()Lscala/collection/GenSet;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lscala/collection/immutable/SortedMap$$anon$1;->keySet()Lscala/collection/immutable/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Lscala/collection/Set;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lscala/collection/immutable/SortedMap$$anon$1;->keySet()Lscala/collection/immutable/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Lscala/collection/SortedSet;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lscala/collection/immutable/SortedMap$$anon$1;->keySet()Lscala/collection/immutable/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Lscala/collection/immutable/Set;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lscala/collection/immutable/SortedMap$$anon$1;->keySet()Lscala/collection/immutable/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Lscala/collection/immutable/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/SortedSet<",
            "TA;>;"
        }
    .end annotation

    .line 83
    invoke-static {p0}, Lscala/collection/immutable/SortedMap$class;->keySet(Lscala/collection/immutable/SortedMap;)Lscala/collection/immutable/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keys()Lscala/collection/GenIterable;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lscala/collection/immutable/SortedMap$$anon$1;->keys()Lscala/collection/Iterable;

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

    .line 87
    iget-object v0, p0, Lscala/collection/immutable/SortedMap$$anon$1;->$outer:Lscala/collection/immutable/SortedMap;

    invoke-interface {v0, p1}, Lscala/collection/immutable/SortedMap;->keysIteratorFrom(Ljava/lang/Object;)Lscala/collection/Iterator;

    move-result-object p1

    iget-object v0, p0, Lscala/collection/immutable/SortedMap$$anon$1;->p$1:Lscala/Function1;

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

    .line 83
    invoke-static {p0}, Lscala/collection/SortedMapLike$class;->lastKey(Lscala/collection/SortedMapLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mapValues(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SortedMap$$anon$1;->mapValues(Lscala/Function1;)Lscala/collection/immutable/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mapValues(Lscala/Function1;)Lscala/collection/Map;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SortedMap$$anon$1;->mapValues(Lscala/Function1;)Lscala/collection/immutable/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mapValues(Lscala/Function1;)Lscala/collection/SortedMap;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SortedMap$$anon$1;->mapValues(Lscala/Function1;)Lscala/collection/immutable/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mapValues(Lscala/Function1;)Lscala/collection/immutable/Map;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SortedMap$$anon$1;->mapValues(Lscala/Function1;)Lscala/collection/immutable/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public mapValues(Lscala/Function1;)Lscala/collection/immutable/SortedMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TB;TC;>;)",
            "Lscala/collection/immutable/SortedMap<",
            "TA;TC;>;"
        }
    .end annotation

    .line 83
    invoke-static {p0, p1}, Lscala/collection/immutable/SortedMap$class;->mapValues(Lscala/collection/immutable/SortedMap;Lscala/Function1;)Lscala/collection/immutable/SortedMap;

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
            "Lscala/collection/immutable/SortedMap<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 83
    invoke-static {p0}, Lscala/collection/immutable/SortedMap$class;->newBuilder(Lscala/collection/immutable/SortedMap;)Lscala/collection/mutable/Builder;

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

    .line 84
    iget-object v0, p0, Lscala/collection/immutable/SortedMap$$anon$1;->$outer:Lscala/collection/immutable/SortedMap;

    invoke-interface {v0}, Lscala/collection/immutable/SortedMap;->ordering()Lscala/math/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public parCombiner()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "Lscala/Tuple2<",
            "TA;TB;>;",
            "Lscala/collection/parallel/immutable/ParMap<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 83
    invoke-static {p0}, Lscala/collection/immutable/MapLike$class;->parCombiner(Lscala/collection/immutable/MapLike;)Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public range(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/generic/Sorted;
    .locals 0

    .line 83
    invoke-static {p0, p1, p2}, Lscala/collection/generic/Sorted$class;->range(Lscala/collection/generic/Sorted;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/generic/Sorted;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic rangeImpl(Lscala/Option;Lscala/Option;)Lscala/collection/SortedMap;
    .locals 0

    .line 83
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/SortedMap$$anon$1;->rangeImpl(Lscala/Option;Lscala/Option;)Lscala/collection/immutable/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic rangeImpl(Lscala/Option;Lscala/Option;)Lscala/collection/generic/Sorted;
    .locals 0

    .line 83
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/SortedMap$$anon$1;->rangeImpl(Lscala/Option;Lscala/Option;)Lscala/collection/immutable/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public rangeImpl(Lscala/Option;Lscala/Option;)Lscala/collection/immutable/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "TA;>;",
            "Lscala/Option<",
            "TA;>;)",
            "Lscala/collection/immutable/SortedMap<",
            "TA;TB;>;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lscala/collection/immutable/SortedMap$$anon$1;->$outer:Lscala/collection/immutable/SortedMap;

    invoke-interface {v0, p1, p2}, Lscala/collection/immutable/SortedMap;->rangeImpl(Lscala/Option;Lscala/Option;)Lscala/collection/SortedMap;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/SortedMap;

    iget-object p2, p0, Lscala/collection/immutable/SortedMap$$anon$1;->p$1:Lscala/Function1;

    invoke-interface {p1, p2}, Lscala/collection/immutable/SortedMap;->filterKeys(Lscala/Function1;)Lscala/collection/immutable/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic repr()Lscala/collection/generic/Sorted;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lscala/collection/immutable/SortedMap$$anon$1;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Sorted;

    return-object v0
.end method

.method public bridge synthetic repr()Lscala/collection/generic/Subtractable;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lscala/collection/immutable/SortedMap$$anon$1;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Subtractable;

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lscala/collection/immutable/SortedMap$$anon$1;->seq()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Map;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lscala/collection/immutable/SortedMap$$anon$1;->seq()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lscala/collection/immutable/SortedMap$$anon$1;->seq()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lscala/collection/immutable/SortedMap$$anon$1;->seq()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/immutable/Iterable;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lscala/collection/immutable/SortedMap$$anon$1;->seq()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/immutable/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Map<",
            "TA;TB;>;"
        }
    .end annotation

    .line 83
    invoke-static {p0}, Lscala/collection/immutable/Map$class;->seq(Lscala/collection/immutable/Map;)Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/immutable/Traversable;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lscala/collection/immutable/SortedMap$$anon$1;->seq()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lscala/collection/immutable/SortedMap$$anon$1;->thisCollection()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public to(Ljava/lang/Object;)Lscala/collection/generic/Sorted;
    .locals 0

    .line 83
    invoke-static {p0, p1}, Lscala/collection/generic/Sorted$class;->to(Lscala/collection/generic/Sorted;Ljava/lang/Object;)Lscala/collection/generic/Sorted;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SortedMap$$anon$1;->toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lscala/collection/immutable/SortedMap$$anon$1;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/GenMap;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SortedMap$$anon$1;->toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Predef$$less$colon$less<",
            "Lscala/Tuple2<",
            "TA;TB;>;",
            "Lscala/Tuple2<",
            "TT;TU;>;>;)",
            "Lscala/collection/immutable/Map<",
            "TT;TU;>;"
        }
    .end annotation

    .line 83
    invoke-static {p0, p1}, Lscala/collection/immutable/Map$class;->toMap(Lscala/collection/immutable/Map;Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lscala/collection/immutable/SortedMap$$anon$1;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lscala/collection/immutable/SortedMap$$anon$1;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TA;TB;TC;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/SortedMap<",
            "TA;TB;>;",
            "Lscala/Tuple2<",
            "TA;TC;>;TThat;>;)TThat;"
        }
    .end annotation

    .line 83
    invoke-static {p0, p1, p2}, Lscala/collection/immutable/MapLike$class;->transform(Lscala/collection/immutable/MapLike;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public until(Ljava/lang/Object;)Lscala/collection/generic/Sorted;
    .locals 0

    .line 83
    invoke-static {p0, p1}, Lscala/collection/generic/Sorted$class;->until(Lscala/collection/generic/Sorted;Ljava/lang/Object;)Lscala/collection/generic/Sorted;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/GenMap;
    .locals 0

    .line 83
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/SortedMap$$anon$1;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/Map;
    .locals 0

    .line 83
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/SortedMap$$anon$1;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/SortedMap;
    .locals 0

    .line 83
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/SortedMap$$anon$1;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/Map;
    .locals 0

    .line 83
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/SortedMap$$anon$1;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/SortedMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(TA;TB1;)",
            "Lscala/collection/immutable/SortedMap<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 83
    invoke-static {p0, p1, p2}, Lscala/collection/immutable/SortedMap$class;->updated(Lscala/collection/immutable/SortedMap;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic values()Lscala/collection/GenIterable;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lscala/collection/immutable/SortedMap$$anon$1;->values()Lscala/collection/Iterable;

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

    .line 88
    iget-object v0, p0, Lscala/collection/immutable/SortedMap$$anon$1;->$outer:Lscala/collection/immutable/SortedMap;

    invoke-interface {v0, p1}, Lscala/collection/immutable/SortedMap;->iteratorFrom(Ljava/lang/Object;)Lscala/collection/Iterator;

    move-result-object p1

    new-instance v0, Lscala/collection/immutable/SortedMap$$anon$1$$anonfun$valuesIteratorFrom$1;

    invoke-direct {v0, p0}, Lscala/collection/immutable/SortedMap$$anon$1$$anonfun$valuesIteratorFrom$1;-><init>(Lscala/collection/immutable/SortedMap$$anon$1;)V

    invoke-interface {p1, v0}, Lscala/collection/Iterator;->collect(Lscala/PartialFunction;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lscala/collection/immutable/SortedMap$$anon$1;->view()Lscala/collection/IterableView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 83
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/SortedMap$$anon$1;->view(II)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method

.method public withDefault(Lscala/Function1;)Lscala/collection/immutable/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TB1;>;)",
            "Lscala/collection/immutable/Map<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 83
    invoke-static {p0, p1}, Lscala/collection/immutable/Map$class;->withDefault(Lscala/collection/immutable/Map;Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public withDefaultValue(Ljava/lang/Object;)Lscala/collection/immutable/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(TB1;)",
            "Lscala/collection/immutable/Map<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 83
    invoke-static {p0, p1}, Lscala/collection/immutable/Map$class;->withDefaultValue(Lscala/collection/immutable/Map;Ljava/lang/Object;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method
