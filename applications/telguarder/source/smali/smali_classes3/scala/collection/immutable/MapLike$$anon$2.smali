.class public final Lscala/collection/immutable/MapLike$$anon$2;
.super Lscala/collection/MapLike$MappedValues;
.source "MapLike.scala"

# interfaces
.implements Lscala/collection/immutable/DefaultMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/MapLike;->mapValues(Lscala/Function1;)Lscala/collection/immutable/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/MapLike<",
        "TA;TB;TThis;>.MappedValues<TC;>;",
        "Lscala/collection/immutable/DefaultMap<",
        "TA;TC;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lscala/collection/immutable/MapLike;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/MapLike<",
            "TA;TB;TThis;>;)V"
        }
    .end annotation

    .line 102
    invoke-direct {p0, p1, p2}, Lscala/collection/MapLike$MappedValues;-><init>(Lscala/collection/MapLike;Lscala/Function1;)V

    invoke-static {p0}, Lscala/collection/immutable/Traversable$class;->$init$(Lscala/collection/immutable/Traversable;)V

    invoke-static {p0}, Lscala/collection/immutable/Iterable$class;->$init$(Lscala/collection/immutable/Iterable;)V

    invoke-static {p0}, Lscala/collection/immutable/MapLike$class;->$init$(Lscala/collection/immutable/MapLike;)V

    invoke-static {p0}, Lscala/collection/immutable/Map$class;->$init$(Lscala/collection/immutable/Map;)V

    invoke-static {p0}, Lscala/collection/immutable/DefaultMap$class;->$init$(Lscala/collection/immutable/DefaultMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic $minus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapLike$$anon$2;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/Map;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapLike$$anon$2;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapLike$$anon$2;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public $minus(Ljava/lang/Object;)Lscala/collection/immutable/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/immutable/Map<",
            "TA;TC;>;"
        }
    .end annotation

    .line 102
    invoke-static {p0, p1}, Lscala/collection/immutable/DefaultMap$class;->$minus(Lscala/collection/immutable/DefaultMap;Ljava/lang/Object;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/GenMap;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapLike$$anon$2;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/Map;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapLike$$anon$2;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/Map;
    .locals 0

    .line 102
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/immutable/MapLike$$anon$2;->$plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public $plus(Lscala/Tuple2;)Lscala/collection/immutable/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple2<",
            "TA;TB1;>;)",
            "Lscala/collection/immutable/Map<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 102
    invoke-static {p0, p1}, Lscala/collection/immutable/DefaultMap$class;->$plus(Lscala/collection/immutable/DefaultMap;Lscala/Tuple2;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public $plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/immutable/Map;
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
            "Lscala/collection/immutable/Map<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 102
    invoke-static {p0, p1, p2, p3}, Lscala/collection/immutable/MapLike$class;->$plus(Lscala/collection/immutable/MapLike;Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Map;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapLike$$anon$2;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/immutable/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenTraversableOnce<",
            "Lscala/Tuple2<",
            "TA;TB1;>;>;)",
            "Lscala/collection/immutable/Map<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 102
    invoke-static {p0, p1}, Lscala/collection/immutable/MapLike$class;->$plus$plus(Lscala/collection/immutable/MapLike;Lscala/collection/GenTraversableOnce;)Lscala/collection/immutable/Map;

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

    .line 102
    invoke-static {p0}, Lscala/collection/immutable/Iterable$class;->companion(Lscala/collection/immutable/Iterable;)Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/Map;
    .locals 1

    .line 102
    invoke-virtual {p0}, Lscala/collection/immutable/MapLike$$anon$2;->empty()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/immutable/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Map<",
            "TA;TC;>;"
        }
    .end annotation

    .line 102
    invoke-static {p0}, Lscala/collection/immutable/Map$class;->empty(Lscala/collection/immutable/Map;)Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic filterKeys(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapLike$$anon$2;->filterKeys(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filterKeys(Lscala/Function1;)Lscala/collection/Map;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapLike$$anon$2;->filterKeys(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public filterKeys(Lscala/Function1;)Lscala/collection/immutable/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/immutable/Map<",
            "TA;TC;>;"
        }
    .end annotation

    .line 102
    invoke-static {p0, p1}, Lscala/collection/immutable/MapLike$class;->filterKeys(Lscala/collection/immutable/MapLike;Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filterNot(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapLike$$anon$2;->filterNot(Lscala/Function1;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapLike$$anon$2;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic keySet()Lscala/collection/GenSet;
    .locals 1

    .line 102
    invoke-virtual {p0}, Lscala/collection/immutable/MapLike$$anon$2;->keySet()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Lscala/collection/Set;
    .locals 1

    .line 102
    invoke-virtual {p0}, Lscala/collection/immutable/MapLike$$anon$2;->keySet()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Lscala/collection/immutable/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Set<",
            "TA;>;"
        }
    .end annotation

    .line 102
    invoke-static {p0}, Lscala/collection/immutable/MapLike$class;->keySet(Lscala/collection/immutable/MapLike;)Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keys()Lscala/collection/GenIterable;
    .locals 1

    .line 102
    invoke-virtual {p0}, Lscala/collection/immutable/MapLike$$anon$2;->keys()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mapValues(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapLike$$anon$2;->mapValues(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mapValues(Lscala/Function1;)Lscala/collection/Map;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapLike$$anon$2;->mapValues(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public mapValues(Lscala/Function1;)Lscala/collection/immutable/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TC;TC;>;)",
            "Lscala/collection/immutable/Map<",
            "TA;TC;>;"
        }
    .end annotation

    .line 102
    invoke-static {p0, p1}, Lscala/collection/immutable/MapLike$class;->mapValues(Lscala/collection/immutable/MapLike;Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public parCombiner()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "Lscala/Tuple2<",
            "TA;TC;>;",
            "Lscala/collection/parallel/immutable/ParMap<",
            "TA;TC;>;>;"
        }
    .end annotation

    .line 102
    invoke-static {p0}, Lscala/collection/immutable/MapLike$class;->parCombiner(Lscala/collection/immutable/MapLike;)Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic repr()Lscala/collection/generic/Subtractable;
    .locals 1

    .line 102
    invoke-virtual {p0}, Lscala/collection/immutable/MapLike$$anon$2;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Subtractable;

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .line 102
    invoke-virtual {p0}, Lscala/collection/immutable/MapLike$$anon$2;->seq()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Map;
    .locals 1

    .line 102
    invoke-virtual {p0}, Lscala/collection/immutable/MapLike$$anon$2;->seq()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .line 102
    invoke-virtual {p0}, Lscala/collection/immutable/MapLike$$anon$2;->seq()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 102
    invoke-virtual {p0}, Lscala/collection/immutable/MapLike$$anon$2;->seq()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/immutable/Iterable;
    .locals 1

    .line 102
    invoke-virtual {p0}, Lscala/collection/immutable/MapLike$$anon$2;->seq()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/immutable/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Map<",
            "TA;TC;>;"
        }
    .end annotation

    .line 102
    invoke-static {p0}, Lscala/collection/immutable/Map$class;->seq(Lscala/collection/immutable/Map;)Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/immutable/Traversable;
    .locals 1

    .line 102
    invoke-virtual {p0}, Lscala/collection/immutable/MapLike$$anon$2;->seq()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 102
    invoke-virtual {p0}, Lscala/collection/immutable/MapLike$$anon$2;->thisCollection()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapLike$$anon$2;->toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 102
    invoke-virtual {p0}, Lscala/collection/immutable/MapLike$$anon$2;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/GenMap;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapLike$$anon$2;->toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;

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
            "TA;TC;>;",
            "Lscala/Tuple2<",
            "TT;TU;>;>;)",
            "Lscala/collection/immutable/Map<",
            "TT;TU;>;"
        }
    .end annotation

    .line 102
    invoke-static {p0, p1}, Lscala/collection/immutable/Map$class;->toMap(Lscala/collection/immutable/Map;Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 102
    invoke-virtual {p0}, Lscala/collection/immutable/MapLike$$anon$2;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 102
    invoke-virtual {p0}, Lscala/collection/immutable/MapLike$$anon$2;->toTraversable()Lscala/collection/Traversable;

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
            "TA;TC;TC;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Map<",
            "TA;TC;>;",
            "Lscala/Tuple2<",
            "TA;TC;>;TThat;>;)TThat;"
        }
    .end annotation

    .line 102
    invoke-static {p0, p1, p2}, Lscala/collection/immutable/MapLike$class;->transform(Lscala/collection/immutable/MapLike;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/GenMap;
    .locals 0

    .line 102
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/MapLike$$anon$2;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/Map;
    .locals 0

    .line 102
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/MapLike$$anon$2;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(TA;TB1;)",
            "Lscala/collection/immutable/Map<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 102
    invoke-static {p0, p1, p2}, Lscala/collection/immutable/MapLike$class;->updated(Lscala/collection/immutable/MapLike;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic values()Lscala/collection/GenIterable;
    .locals 1

    .line 102
    invoke-virtual {p0}, Lscala/collection/immutable/MapLike$$anon$2;->values()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 102
    invoke-virtual {p0}, Lscala/collection/immutable/MapLike$$anon$2;->view()Lscala/collection/IterableView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 102
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/MapLike$$anon$2;->view(II)Lscala/collection/IterableView;

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

    .line 102
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

    .line 102
    invoke-static {p0, p1}, Lscala/collection/immutable/Map$class;->withDefaultValue(Lscala/collection/immutable/Map;Ljava/lang/Object;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method
