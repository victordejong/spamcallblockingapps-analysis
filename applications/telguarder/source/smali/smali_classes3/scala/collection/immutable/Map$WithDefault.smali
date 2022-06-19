.class public Lscala/collection/immutable/Map$WithDefault;
.super Lscala/collection/Map$WithDefault;
.source "Map.scala"

# interfaces
.implements Lscala/collection/immutable/Map;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WithDefault"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/Map$WithDefault<",
        "TA;TB;>;",
        "Lscala/collection/immutable/Map<",
        "TA;TB;>;"
    }
.end annotation


# instance fields
.field private final d:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1<",
            "TA;TB;>;"
        }
    .end annotation
.end field

.field private final underlying:Lscala/collection/immutable/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/Map<",
            "TA;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/immutable/Map;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/Map<",
            "TA;TB;>;",
            "Lscala/Function1<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lscala/collection/immutable/Map$WithDefault;->underlying:Lscala/collection/immutable/Map;

    iput-object p2, p0, Lscala/collection/immutable/Map$WithDefault;->d:Lscala/Function1;

    invoke-direct {p0, p1, p2}, Lscala/collection/Map$WithDefault;-><init>(Lscala/collection/Map;Lscala/Function1;)V

    invoke-static {p0}, Lscala/collection/immutable/Traversable$class;->$init$(Lscala/collection/immutable/Traversable;)V

    invoke-static {p0}, Lscala/collection/immutable/Iterable$class;->$init$(Lscala/collection/immutable/Iterable;)V

    invoke-static {p0}, Lscala/collection/immutable/MapLike$class;->$init$(Lscala/collection/immutable/MapLike;)V

    invoke-static {p0}, Lscala/collection/immutable/Map$class;->$init$(Lscala/collection/immutable/Map;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic $minus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Map$WithDefault;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/Map$WithDefault;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/Map;
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Map$WithDefault;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/Map$WithDefault;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Map$WithDefault;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/Map$WithDefault;

    move-result-object p1

    return-object p1
.end method

.method public $minus(Ljava/lang/Object;)Lscala/collection/immutable/Map$WithDefault;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/immutable/Map$WithDefault<",
            "TA;TB;>;"
        }
    .end annotation

    .line 90
    new-instance v0, Lscala/collection/immutable/Map$WithDefault;

    iget-object v1, p0, Lscala/collection/immutable/Map$WithDefault;->underlying:Lscala/collection/immutable/Map;

    invoke-interface {v1, p1}, Lscala/collection/immutable/Map;->$minus(Ljava/lang/Object;)Lscala/collection/Map;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/Map;

    iget-object v1, p0, Lscala/collection/immutable/Map$WithDefault;->d:Lscala/Function1;

    invoke-direct {v0, p1, v1}, Lscala/collection/immutable/Map$WithDefault;-><init>(Lscala/collection/immutable/Map;Lscala/Function1;)V

    return-object v0
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/GenMap;
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Map$WithDefault;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/Map$WithDefault;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/Map;
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Map$WithDefault;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/Map$WithDefault;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/Map;
    .locals 0

    .line 86
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/immutable/Map$WithDefault;->$plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public $plus(Lscala/Tuple2;)Lscala/collection/immutable/Map$WithDefault;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple2<",
            "TA;TB1;>;)",
            "Lscala/collection/immutable/Map$WithDefault<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 89
    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lscala/collection/immutable/Map$WithDefault;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/Map$WithDefault;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/immutable/Map;
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Map$WithDefault;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/Map$WithDefault;

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

    .line 86
    invoke-static {p0, p1, p2, p3}, Lscala/collection/immutable/MapLike$class;->$plus(Lscala/collection/immutable/MapLike;Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Map;
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Map$WithDefault;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/immutable/Map;

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

    .line 86
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

    .line 86
    invoke-static {p0}, Lscala/collection/immutable/Iterable$class;->companion(Lscala/collection/immutable/Iterable;)Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/Map;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lscala/collection/immutable/Map$WithDefault;->empty()Lscala/collection/immutable/Map$WithDefault;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/immutable/Map$WithDefault;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Map$WithDefault<",
            "TA;TB;>;"
        }
    .end annotation

    .line 87
    new-instance v0, Lscala/collection/immutable/Map$WithDefault;

    iget-object v1, p0, Lscala/collection/immutable/Map$WithDefault;->underlying:Lscala/collection/immutable/Map;

    invoke-interface {v1}, Lscala/collection/immutable/Map;->empty()Lscala/collection/immutable/Map;

    move-result-object v1

    iget-object v2, p0, Lscala/collection/immutable/Map$WithDefault;->d:Lscala/Function1;

    invoke-direct {v0, v1, v2}, Lscala/collection/immutable/Map$WithDefault;-><init>(Lscala/collection/immutable/Map;Lscala/Function1;)V

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/immutable/Map;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lscala/collection/immutable/Map$WithDefault;->empty()Lscala/collection/immutable/Map$WithDefault;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic filterKeys(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Map$WithDefault;->filterKeys(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filterKeys(Lscala/Function1;)Lscala/collection/Map;
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Map$WithDefault;->filterKeys(Lscala/Function1;)Lscala/collection/immutable/Map;

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
            "TA;TB;>;"
        }
    .end annotation

    .line 86
    invoke-static {p0, p1}, Lscala/collection/immutable/MapLike$class;->filterKeys(Lscala/collection/immutable/MapLike;Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filterNot(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Map$WithDefault;->filterNot(Lscala/Function1;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Map$WithDefault;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic keySet()Lscala/collection/GenSet;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lscala/collection/immutable/Map$WithDefault;->keySet()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Lscala/collection/Set;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lscala/collection/immutable/Map$WithDefault;->keySet()Lscala/collection/immutable/Set;

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

    .line 86
    invoke-static {p0}, Lscala/collection/immutable/MapLike$class;->keySet(Lscala/collection/immutable/MapLike;)Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keys()Lscala/collection/GenIterable;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lscala/collection/immutable/Map$WithDefault;->keys()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mapValues(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Map$WithDefault;->mapValues(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mapValues(Lscala/Function1;)Lscala/collection/Map;
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Map$WithDefault;->mapValues(Lscala/Function1;)Lscala/collection/immutable/Map;

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
            "TB;TC;>;)",
            "Lscala/collection/immutable/Map<",
            "TA;TC;>;"
        }
    .end annotation

    .line 86
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
            "TA;TB;>;",
            "Lscala/collection/parallel/immutable/ParMap<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 86
    invoke-static {p0}, Lscala/collection/immutable/MapLike$class;->parCombiner(Lscala/collection/immutable/MapLike;)Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic repr()Lscala/collection/generic/Subtractable;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lscala/collection/immutable/Map$WithDefault;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Subtractable;

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lscala/collection/immutable/Map$WithDefault;->seq()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Map;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lscala/collection/immutable/Map$WithDefault;->seq()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lscala/collection/immutable/Map$WithDefault;->seq()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lscala/collection/immutable/Map$WithDefault;->seq()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/immutable/Iterable;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lscala/collection/immutable/Map$WithDefault;->seq()Lscala/collection/immutable/Map;

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

    .line 86
    invoke-static {p0}, Lscala/collection/immutable/Map$class;->seq(Lscala/collection/immutable/Map;)Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/immutable/Traversable;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lscala/collection/immutable/Map$WithDefault;->seq()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lscala/collection/immutable/Map$WithDefault;->thisCollection()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Map$WithDefault;->toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lscala/collection/immutable/Map$WithDefault;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/GenMap;
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Map$WithDefault;->toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;

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

    .line 86
    invoke-static {p0, p1}, Lscala/collection/immutable/Map$class;->toMap(Lscala/collection/immutable/Map;Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lscala/collection/immutable/Map$WithDefault;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lscala/collection/immutable/Map$WithDefault;->toTraversable()Lscala/collection/Traversable;

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
            "Lscala/collection/immutable/Map<",
            "TA;TB;>;",
            "Lscala/Tuple2<",
            "TA;TC;>;TThat;>;)TThat;"
        }
    .end annotation

    .line 86
    invoke-static {p0, p1, p2}, Lscala/collection/immutable/MapLike$class;->transform(Lscala/collection/immutable/MapLike;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/GenMap;
    .locals 0

    .line 86
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/Map$WithDefault;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/Map$WithDefault;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/Map;
    .locals 0

    .line 86
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/Map$WithDefault;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/Map$WithDefault;

    move-result-object p1

    return-object p1
.end method

.method public updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/Map$WithDefault;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(TA;TB1;)",
            "Lscala/collection/immutable/Map$WithDefault<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 88
    new-instance v0, Lscala/collection/immutable/Map$WithDefault;

    iget-object v1, p0, Lscala/collection/immutable/Map$WithDefault;->underlying:Lscala/collection/immutable/Map;

    invoke-interface {v1, p1, p2}, Lscala/collection/immutable/Map;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/Map;

    move-result-object p1

    iget-object p2, p0, Lscala/collection/immutable/Map$WithDefault;->d:Lscala/Function1;

    invoke-direct {v0, p1, p2}, Lscala/collection/immutable/Map$WithDefault;-><init>(Lscala/collection/immutable/Map;Lscala/Function1;)V

    return-object v0
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/Map;
    .locals 0

    .line 86
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/Map$WithDefault;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/Map$WithDefault;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic values()Lscala/collection/GenIterable;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lscala/collection/immutable/Map$WithDefault;->values()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lscala/collection/immutable/Map$WithDefault;->view()Lscala/collection/IterableView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 86
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/Map$WithDefault;->view(II)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method

.method public withDefault(Lscala/Function1;)Lscala/collection/immutable/Map;
    .locals 2
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

    .line 91
    new-instance v0, Lscala/collection/immutable/Map$WithDefault;

    iget-object v1, p0, Lscala/collection/immutable/Map$WithDefault;->underlying:Lscala/collection/immutable/Map;

    invoke-direct {v0, v1, p1}, Lscala/collection/immutable/Map$WithDefault;-><init>(Lscala/collection/immutable/Map;Lscala/Function1;)V

    return-object v0
.end method

.method public withDefaultValue(Ljava/lang/Object;)Lscala/collection/immutable/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(TB1;)",
            "Lscala/collection/immutable/Map<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 92
    new-instance v0, Lscala/collection/immutable/Map$WithDefault;

    iget-object v1, p0, Lscala/collection/immutable/Map$WithDefault;->underlying:Lscala/collection/immutable/Map;

    new-instance v2, Lscala/collection/immutable/Map$WithDefault$$anonfun$withDefaultValue$2;

    invoke-direct {v2, p0, p1}, Lscala/collection/immutable/Map$WithDefault$$anonfun$withDefaultValue$2;-><init>(Lscala/collection/immutable/Map$WithDefault;Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Lscala/collection/immutable/Map$WithDefault;-><init>(Lscala/collection/immutable/Map;Lscala/Function1;)V

    return-object v0
.end method
