.class public final Lscala/collection/immutable/MapProxy$$anon$1;
.super Ljava/lang/Object;
.source "MapProxy.scala"

# interfaces
.implements Lscala/collection/immutable/MapProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/MapProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/immutable/MapProxy<",
        "TA;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final self:Lscala/collection/immutable/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/Map<",
            "TA;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/immutable/MapProxy;Lscala/collection/immutable/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/MapProxy<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->$init$(Lscala/collection/TraversableOnce;)V

    invoke-static {p0}, Lscala/collection/Parallelizable$class;->$init$(Lscala/collection/Parallelizable;)V

    invoke-static {p0}, Lscala/collection/TraversableLike$class;->$init$(Lscala/collection/TraversableLike;)V

    invoke-static {p0}, Lscala/collection/generic/GenericTraversableTemplate$class;->$init$(Lscala/collection/generic/GenericTraversableTemplate;)V

    invoke-static {p0}, Lscala/collection/GenTraversable$class;->$init$(Lscala/collection/GenTraversable;)V

    invoke-static {p0}, Lscala/collection/Traversable$class;->$init$(Lscala/collection/Traversable;)V

    invoke-static {p0}, Lscala/collection/immutable/Traversable$class;->$init$(Lscala/collection/immutable/Traversable;)V

    invoke-static {p0}, Lscala/collection/GenIterable$class;->$init$(Lscala/collection/GenIterable;)V

    invoke-static {p0}, Lscala/collection/IterableLike$class;->$init$(Lscala/collection/IterableLike;)V

    invoke-static {p0}, Lscala/collection/Iterable$class;->$init$(Lscala/collection/Iterable;)V

    invoke-static {p0}, Lscala/collection/immutable/Iterable$class;->$init$(Lscala/collection/immutable/Iterable;)V

    invoke-static {p0}, Lscala/collection/GenMapLike$class;->$init$(Lscala/collection/GenMapLike;)V

    invoke-static {p0}, Lscala/Function1$class;->$init$(Lscala/Function1;)V

    invoke-static {p0}, Lscala/PartialFunction$class;->$init$(Lscala/PartialFunction;)V

    invoke-static {p0}, Lscala/collection/generic/Subtractable$class;->$init$(Lscala/collection/generic/Subtractable;)V

    invoke-static {p0}, Lscala/collection/MapLike$class;->$init$(Lscala/collection/MapLike;)V

    invoke-static {p0}, Lscala/collection/Map$class;->$init$(Lscala/collection/Map;)V

    invoke-static {p0}, Lscala/collection/immutable/MapLike$class;->$init$(Lscala/collection/immutable/MapLike;)V

    invoke-static {p0}, Lscala/collection/immutable/Map$class;->$init$(Lscala/collection/immutable/Map;)V

    invoke-static {p0}, Lscala/Proxy$class;->$init$(Lscala/Proxy;)V

    invoke-static {p0}, Lscala/collection/TraversableProxyLike$class;->$init$(Lscala/collection/TraversableProxyLike;)V

    invoke-static {p0}, Lscala/collection/IterableProxyLike$class;->$init$(Lscala/collection/IterableProxyLike;)V

    invoke-static {p0}, Lscala/collection/MapProxyLike$class;->$init$(Lscala/collection/MapProxyLike;)V

    invoke-static {p0}, Lscala/collection/immutable/MapProxy$class;->$init$(Lscala/collection/immutable/MapProxy;)V

    iput-object p2, p0, Lscala/collection/immutable/MapProxy$$anon$1;->self:Lscala/collection/immutable/Map;

    return-void
.end method


# virtual methods
.method public $colon$bslash(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "Lscala/Tuple2<",
            "TA;",
            "Ljava/lang/Object;",
            ">;TB;TB;>;)TB;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableProxyLike$class;->$colon$bslash(Lscala/collection/TraversableProxyLike;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public $div$colon(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "TB;",
            "Lscala/Tuple2<",
            "TA;",
            "Ljava/lang/Object;",
            ">;TB;>;)TB;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableProxyLike$class;->$div$colon(Lscala/collection/TraversableProxyLike;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapProxy$$anon$1;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/MapProxy;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/Map;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapProxy$$anon$1;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/MapProxy;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapProxy$$anon$1;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/MapProxy;

    move-result-object p1

    return-object p1
.end method

.method public $minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 30
    invoke-static {p0, p1, p2, p3}, Lscala/collection/generic/Subtractable$class;->$minus(Lscala/collection/generic/Subtractable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Subtractable;

    move-result-object p1

    return-object p1
.end method

.method public $minus(Ljava/lang/Object;)Lscala/collection/immutable/MapProxy;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/immutable/MapProxy<",
            "TA;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lscala/collection/immutable/MapProxy$class;->$minus(Lscala/collection/immutable/MapProxy;Ljava/lang/Object;)Lscala/collection/immutable/MapProxy;

    move-result-object p1

    return-object p1
.end method

.method public $minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lscala/collection/generic/Subtractable$class;->$minus$minus(Lscala/collection/generic/Subtractable;Lscala/collection/GenTraversableOnce;)Lscala/collection/generic/Subtractable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/GenMap;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapProxy$$anon$1;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/Map;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapProxy$$anon$1;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/Map;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/immutable/MapProxy$$anon$1;->$plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/immutable/MapProxy;

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

    .line 30
    invoke-static {p0, p1}, Lscala/collection/immutable/MapProxy$class;->$plus(Lscala/collection/immutable/MapProxy;Lscala/Tuple2;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/immutable/Map;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/immutable/MapProxy$$anon$1;->$plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/immutable/MapProxy;

    move-result-object p1

    return-object p1
.end method

.method public $plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/immutable/MapProxy;
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
            "Lscala/collection/immutable/MapProxy<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1, p2, p3}, Lscala/collection/immutable/MapProxy$class;->$plus(Lscala/collection/immutable/MapProxy;Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/immutable/MapProxy;

    move-result-object p1

    return-object p1
.end method

.method public $plus$plus(Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenTraversableOnce<",
            "TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Map<",
            "TA;",
            "Ljava/lang/Object;",
            ">;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableProxyLike$class;->$plus$plus(Lscala/collection/TraversableProxyLike;Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Map;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapProxy$$anon$1;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/immutable/MapProxy;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/immutable/Map;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapProxy$$anon$1;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/immutable/MapProxy;

    move-result-object p1

    return-object p1
.end method

.method public $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/immutable/MapProxy;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenTraversableOnce<",
            "Lscala/Tuple2<",
            "TA;TB1;>;>;)",
            "Lscala/collection/immutable/MapProxy<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lscala/collection/immutable/MapProxy$class;->$plus$plus(Lscala/collection/immutable/MapProxy;Lscala/collection/GenTraversableOnce;)Lscala/collection/immutable/MapProxy;

    move-result-object p1

    return-object p1
.end method

.method public $plus$plus$colon(Lscala/collection/Traversable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Traversable<",
            "TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Map<",
            "TA;",
            "Ljava/lang/Object;",
            ">;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->$plus$plus$colon(Lscala/collection/TraversableLike;Lscala/collection/Traversable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public $plus$plus$colon(Lscala/collection/TraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/TraversableOnce<",
            "TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Map<",
            "TA;",
            "Ljava/lang/Object;",
            ">;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->$plus$plus$colon(Lscala/collection/TraversableLike;Lscala/collection/TraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->addString(Lscala/collection/TraversableProxyLike;Lscala/collection/mutable/StringBuilder;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 30
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableProxyLike$class;->addString(Lscala/collection/TraversableProxyLike;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 30
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/MapProxyLike$class;->addString(Lscala/collection/MapProxyLike;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public aggregate(Lscala/Function0;Lscala/Function2;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "TB;>;",
            "Lscala/Function2<",
            "TB;",
            "Lscala/Tuple2<",
            "TA;",
            "Ljava/lang/Object;",
            ">;TB;>;",
            "Lscala/Function2<",
            "TB;TB;TB;>;)TB;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableOnce$class;->aggregate(Lscala/collection/TraversableOnce;Lscala/Function0;Lscala/Function2;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic andThen(Lscala/Function1;)Lscala/Function1;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapProxy$$anon$1;->andThen(Lscala/Function1;)Lscala/PartialFunction;

    move-result-object p1

    return-object p1
.end method

.method public andThen(Lscala/Function1;)Lscala/PartialFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "TC;>;)",
            "Lscala/PartialFunction<",
            "TA;TC;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lscala/PartialFunction$class;->andThen(Lscala/PartialFunction;Lscala/Function1;)Lscala/PartialFunction;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lscala/collection/MapProxyLike$class;->apply(Lscala/collection/MapProxyLike;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply$mcDD$sp(D)D
    .locals 0

    .line 30
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcDD$sp(Lscala/Function1;D)D

    move-result-wide p1

    return-wide p1
.end method

.method public apply$mcDF$sp(F)D
    .locals 2

    .line 30
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcDF$sp(Lscala/Function1;F)D

    move-result-wide v0

    return-wide v0
.end method

.method public apply$mcDI$sp(I)D
    .locals 2

    .line 30
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcDI$sp(Lscala/Function1;I)D

    move-result-wide v0

    return-wide v0
.end method

.method public apply$mcDJ$sp(J)D
    .locals 0

    .line 30
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcDJ$sp(Lscala/Function1;J)D

    move-result-wide p1

    return-wide p1
.end method

.method public apply$mcFD$sp(D)F
    .locals 0

    .line 30
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcFD$sp(Lscala/Function1;D)F

    move-result p1

    return p1
.end method

.method public apply$mcFF$sp(F)F
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcFF$sp(Lscala/Function1;F)F

    move-result p1

    return p1
.end method

.method public apply$mcFI$sp(I)F
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcFI$sp(Lscala/Function1;I)F

    move-result p1

    return p1
.end method

.method public apply$mcFJ$sp(J)F
    .locals 0

    .line 30
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcFJ$sp(Lscala/Function1;J)F

    move-result p1

    return p1
.end method

.method public apply$mcID$sp(D)I
    .locals 0

    .line 30
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcID$sp(Lscala/Function1;D)I

    move-result p1

    return p1
.end method

.method public apply$mcIF$sp(F)I
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcIF$sp(Lscala/Function1;F)I

    move-result p1

    return p1
.end method

.method public apply$mcII$sp(I)I
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcII$sp(Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public apply$mcIJ$sp(J)I
    .locals 0

    .line 30
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcIJ$sp(Lscala/Function1;J)I

    move-result p1

    return p1
.end method

.method public apply$mcJD$sp(D)J
    .locals 0

    .line 30
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcJD$sp(Lscala/Function1;D)J

    move-result-wide p1

    return-wide p1
.end method

.method public apply$mcJF$sp(F)J
    .locals 2

    .line 30
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcJF$sp(Lscala/Function1;F)J

    move-result-wide v0

    return-wide v0
.end method

.method public apply$mcJI$sp(I)J
    .locals 2

    .line 30
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcJI$sp(Lscala/Function1;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public apply$mcJJ$sp(J)J
    .locals 0

    .line 30
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcJJ$sp(Lscala/Function1;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public apply$mcVD$sp(D)V
    .locals 0

    .line 30
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcVD$sp(Lscala/Function1;D)V

    return-void
.end method

.method public apply$mcVF$sp(F)V
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcVF$sp(Lscala/Function1;F)V

    return-void
.end method

.method public apply$mcVI$sp(I)V
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcVI$sp(Lscala/Function1;I)V

    return-void
.end method

.method public apply$mcVJ$sp(J)V
    .locals 0

    .line 30
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcVJ$sp(Lscala/Function1;J)V

    return-void
.end method

.method public apply$mcZD$sp(D)Z
    .locals 0

    .line 30
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcZD$sp(Lscala/Function1;D)Z

    move-result p1

    return p1
.end method

.method public apply$mcZF$sp(F)Z
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcZF$sp(Lscala/Function1;F)Z

    move-result p1

    return p1
.end method

.method public apply$mcZI$sp(I)Z
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcZI$sp(Lscala/Function1;I)Z

    move-result p1

    return p1
.end method

.method public apply$mcZJ$sp(J)Z
    .locals 0

    .line 30
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcZJ$sp(Lscala/Function1;J)Z

    move-result p1

    return p1
.end method

.method public applyOrElse(Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:TA;B1:",
            "Ljava/lang/Object;",
            ">(TA1;",
            "Lscala/Function1<",
            "TA1;TB1;>;)TB1;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1, p2}, Lscala/PartialFunction$class;->applyOrElse(Lscala/PartialFunction;Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->canEqual(Lscala/collection/IterableLike;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public collect(Lscala/PartialFunction;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/PartialFunction<",
            "Lscala/Tuple2<",
            "TA;",
            "Ljava/lang/Object;",
            ">;TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Map<",
            "TA;",
            "Ljava/lang/Object;",
            ">;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableProxyLike$class;->collect(Lscala/collection/TraversableProxyLike;Lscala/PartialFunction;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public collectFirst(Lscala/PartialFunction;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/PartialFunction<",
            "Lscala/Tuple2<",
            "TA;",
            "Ljava/lang/Object;",
            ">;TB;>;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->collectFirst(Lscala/collection/TraversableOnce;Lscala/PartialFunction;)Lscala/Option;

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

    .line 30
    invoke-static {p0}, Lscala/collection/immutable/Iterable$class;->companion(Lscala/collection/immutable/Iterable;)Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    return-object v0
.end method

.method public compose(Lscala/Function1;)Lscala/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TA;>;)",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lscala/Function1$class;->compose(Lscala/Function1;Lscala/Function1;)Lscala/Function1;

    move-result-object p1

    return-object p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lscala/collection/MapProxyLike$class;->contains(Lscala/collection/MapProxyLike;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public copyToArray(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->copyToArray(Lscala/collection/TraversableProxyLike;Ljava/lang/Object;)V

    return-void
.end method

.method public copyToArray(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableProxyLike$class;->copyToArray(Lscala/collection/TraversableProxyLike;Ljava/lang/Object;I)V

    return-void
.end method

.method public copyToArray(Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableProxyLike$class;->copyToArray(Lscala/collection/TraversableProxyLike;Ljava/lang/Object;II)V

    return-void
.end method

.method public copyToBuffer(Lscala/collection/mutable/Buffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/mutable/Buffer<",
            "TB;>;)V"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->copyToBuffer(Lscala/collection/TraversableProxyLike;Lscala/collection/mutable/Buffer;)V

    return-void
.end method

.method public count(Lscala/Function1;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TA;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->count(Lscala/collection/TraversableProxyLike;Lscala/Function1;)I

    move-result p1

    return p1
.end method

.method public default(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lscala/collection/MapProxyLike$class;->default(Lscala/collection/MapProxyLike;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic drop(I)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapProxy$$anon$1;->drop(I)Lscala/collection/Traversable;

    move-result-object p1

    return-object p1
.end method

.method public drop(I)Lscala/collection/Traversable;
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->drop(Lscala/collection/TraversableProxyLike;I)Lscala/collection/Traversable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dropRight(I)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapProxy$$anon$1;->dropRight(I)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public dropRight(I)Lscala/collection/Iterable;
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lscala/collection/IterableProxyLike$class;->dropRight(Lscala/collection/IterableProxyLike;I)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dropWhile(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapProxy$$anon$1;->dropWhile(Lscala/Function1;)Lscala/collection/Traversable;

    move-result-object p1

    return-object p1
.end method

.method public dropWhile(Lscala/Function1;)Lscala/collection/Traversable;
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->dropWhile(Lscala/collection/TraversableProxyLike;Lscala/Function1;)Lscala/collection/Traversable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic empty()Lscala/collection/Map;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/immutable/MapProxy$$anon$1;->empty()Lscala/collection/immutable/MapProxy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/immutable/Map;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/immutable/MapProxy$$anon$1;->empty()Lscala/collection/immutable/MapProxy;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/immutable/MapProxy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/MapProxy<",
            "TA;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 30
    invoke-static {p0}, Lscala/collection/immutable/MapProxy$class;->empty(Lscala/collection/immutable/MapProxy;)Lscala/collection/immutable/MapProxy;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lscala/Proxy$class;->equals(Lscala/Proxy;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public exists(Lscala/Function1;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TA;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->exists(Lscala/collection/TraversableProxyLike;Lscala/Function1;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic filter(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapProxy$$anon$1;->filter(Lscala/Function1;)Lscala/collection/Traversable;

    move-result-object p1

    return-object p1
.end method

.method public filter(Lscala/Function1;)Lscala/collection/Traversable;
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->filter(Lscala/collection/TraversableProxyLike;Lscala/Function1;)Lscala/collection/Traversable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filterKeys(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapProxy$$anon$1;->filterKeys(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filterKeys(Lscala/Function1;)Lscala/collection/Map;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapProxy$$anon$1;->filterKeys(Lscala/Function1;)Lscala/collection/immutable/Map;

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
            "TA;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lscala/collection/immutable/MapProxy$class;->filterKeys(Lscala/collection/immutable/MapProxy;Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filterNot(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapProxy$$anon$1;->filterNot(Lscala/Function1;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public filterNot(Lscala/Function1;)Lscala/collection/Map;
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lscala/collection/MapProxyLike$class;->filterNot(Lscala/collection/MapProxyLike;Lscala/Function1;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filterNot(Lscala/Function1;)Lscala/collection/Traversable;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapProxy$$anon$1;->filterNot(Lscala/Function1;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public find(Lscala/Function1;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TA;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "TA;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->find(Lscala/collection/TraversableProxyLike;Lscala/Function1;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public flatMap(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TA;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/collection/GenTraversableOnce<",
            "TB;>;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Map<",
            "TA;",
            "Ljava/lang/Object;",
            ">;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableProxyLike$class;->flatMap(Lscala/collection/TraversableProxyLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public flatten(Lscala/Function1;)Lscala/collection/GenTraversable;
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lscala/collection/generic/GenericTraversableTemplate$class;->flatten(Lscala/collection/generic/GenericTraversableTemplate;Lscala/Function1;)Lscala/collection/GenTraversable;

    move-result-object p1

    return-object p1
.end method

.method public fold(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">(TA1;",
            "Lscala/Function2<",
            "TA1;TA1;TA1;>;)TA1;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->fold(Lscala/collection/TraversableOnce;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "TB;",
            "Lscala/Tuple2<",
            "TA;",
            "Ljava/lang/Object;",
            ">;TB;>;)TB;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableProxyLike$class;->foldLeft(Lscala/collection/TraversableProxyLike;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public foldRight(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "Lscala/Tuple2<",
            "TA;",
            "Ljava/lang/Object;",
            ">;TB;TB;>;)TB;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableProxyLike$class;->foldRight(Lscala/collection/TraversableProxyLike;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public forall(Lscala/Function1;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TA;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->forall(Lscala/collection/TraversableProxyLike;Lscala/Function1;)Z

    move-result p1

    return p1
.end method

.method public foreach(Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TA;",
            "Ljava/lang/Object;",
            ">;TB;>;)V"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->foreach(Lscala/collection/TraversableProxyLike;Lscala/Function1;)V

    return-void
.end method

.method public genericBuilder()Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Builder<",
            "TB;",
            "Lscala/collection/immutable/Iterable<",
            "TB;>;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0}, Lscala/collection/generic/GenericTraversableTemplate$class;->genericBuilder(Lscala/collection/generic/GenericTraversableTemplate;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/Option<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lscala/collection/MapProxyLike$class;->get(Lscala/collection/MapProxyLike;Ljava/lang/Object;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public getOrElse(Ljava/lang/Object;Lscala/Function0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(TA;",
            "Lscala/Function0<",
            "TB1;>;)TB1;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1, p2}, Lscala/collection/MapProxyLike$class;->getOrElse(Lscala/collection/MapProxyLike;Ljava/lang/Object;Lscala/Function0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapProxy$$anon$1;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TA;",
            "Ljava/lang/Object;",
            ">;TK;>;)",
            "Lscala/collection/immutable/Map<",
            "TK;",
            "Lscala/collection/immutable/Map<",
            "TA;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->groupBy(Lscala/collection/TraversableProxyLike;Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public grouped(I)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/Iterator<",
            "Lscala/collection/immutable/Map<",
            "TA;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lscala/collection/IterableProxyLike$class;->grouped(Lscala/collection/IterableProxyLike;I)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public hasDefiniteSize()Z
    .locals 1

    .line 30
    invoke-static {p0}, Lscala/collection/TraversableProxyLike$class;->hasDefiniteSize(Lscala/collection/TraversableProxyLike;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 30
    invoke-static {p0}, Lscala/Proxy$class;->hashCode(Lscala/Proxy;)I

    move-result v0

    return v0
.end method

.method public head()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-static {p0}, Lscala/collection/TraversableProxyLike$class;->head(Lscala/collection/TraversableProxyLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headOption()Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "TA;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0}, Lscala/collection/TraversableProxyLike$class;->headOption(Lscala/collection/TraversableProxyLike;)Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic init()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/immutable/MapProxy$$anon$1;->init()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public init()Lscala/collection/Traversable;
    .locals 1

    .line 30
    invoke-static {p0}, Lscala/collection/TraversableProxyLike$class;->init(Lscala/collection/TraversableProxyLike;)Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public inits()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/collection/immutable/Map<",
            "TA;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->inits(Lscala/collection/TraversableLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public isDefinedAt(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lscala/collection/MapProxyLike$class;->isDefinedAt(Lscala/collection/MapProxyLike;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 30
    invoke-static {p0}, Lscala/collection/MapProxyLike$class;->isEmpty(Lscala/collection/MapProxyLike;)Z

    move-result v0

    return v0
.end method

.method public final isTraversableAgain()Z
    .locals 1

    .line 30
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->isTraversableAgain(Lscala/collection/TraversableLike;)Z

    move-result v0

    return v0
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TA;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0}, Lscala/collection/MapProxyLike$class;->iterator(Lscala/collection/MapProxyLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Lscala/collection/GenSet;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/immutable/MapProxy$$anon$1;->keySet()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Lscala/collection/Set;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/immutable/MapProxy$$anon$1;->keySet()Lscala/collection/immutable/Set;

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

    .line 30
    invoke-static {p0}, Lscala/collection/immutable/MapProxy$class;->keySet(Lscala/collection/immutable/MapProxy;)Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keys()Lscala/collection/GenIterable;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/immutable/MapProxy$$anon$1;->keys()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lscala/collection/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterable<",
            "TA;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0}, Lscala/collection/MapProxyLike$class;->keys(Lscala/collection/MapProxyLike;)Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public keysIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0}, Lscala/collection/MapProxyLike$class;->keysIterator(Lscala/collection/MapProxyLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-static {p0}, Lscala/collection/TraversableProxyLike$class;->last(Lscala/collection/TraversableProxyLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lastOption()Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "TA;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0}, Lscala/collection/TraversableProxyLike$class;->lastOption(Lscala/collection/TraversableProxyLike;)Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public lift()Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function1<",
            "TA;",
            "Lscala/Option<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0}, Lscala/PartialFunction$class;->lift(Lscala/PartialFunction;)Lscala/Function1;

    move-result-object v0

    return-object v0
.end method

.method public map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TA;",
            "Ljava/lang/Object;",
            ">;TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Map<",
            "TA;",
            "Ljava/lang/Object;",
            ">;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableProxyLike$class;->map(Lscala/collection/TraversableProxyLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mapValues(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapProxy$$anon$1;->mapValues(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mapValues(Lscala/Function1;)Lscala/collection/Map;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapProxy$$anon$1;->mapValues(Lscala/Function1;)Lscala/collection/immutable/Map;

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
            "Ljava/lang/Object;",
            "TC;>;)",
            "Lscala/collection/immutable/Map<",
            "TA;TC;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lscala/collection/immutable/MapProxy$class;->mapValues(Lscala/collection/immutable/MapProxy;Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public max(Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->max(Lscala/collection/TraversableProxyLike;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public maxBy(Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->maxBy(Lscala/collection/TraversableOnce;Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public min(Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->min(Lscala/collection/TraversableProxyLike;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public minBy(Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->minBy(Lscala/collection/TraversableOnce;Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public mkString()Ljava/lang/String;
    .locals 1

    .line 30
    invoke-static {p0}, Lscala/collection/TraversableProxyLike$class;->mkString(Lscala/collection/TraversableProxyLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mkString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->mkString(Lscala/collection/TraversableProxyLike;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 30
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableProxyLike$class;->mkString(Lscala/collection/TraversableProxyLike;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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
            "TA;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/collection/immutable/Map<",
            "TA;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0}, Lscala/collection/MapLike$class;->newBuilder(Lscala/collection/MapLike;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public nonEmpty()Z
    .locals 1

    .line 30
    invoke-static {p0}, Lscala/collection/TraversableProxyLike$class;->nonEmpty(Lscala/collection/TraversableProxyLike;)Z

    move-result v0

    return v0
.end method

.method public orElse(Lscala/PartialFunction;)Lscala/PartialFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:TA;B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/PartialFunction<",
            "TA1;TB1;>;)",
            "Lscala/PartialFunction<",
            "TA1;TB1;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lscala/PartialFunction$class;->orElse(Lscala/PartialFunction;Lscala/PartialFunction;)Lscala/PartialFunction;

    move-result-object p1

    return-object p1
.end method

.method public par()Lscala/collection/Parallel;
    .locals 1

    .line 30
    invoke-static {p0}, Lscala/collection/Parallelizable$class;->par(Lscala/collection/Parallelizable;)Lscala/collection/Parallel;

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
            "TA;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/collection/parallel/immutable/ParMap<",
            "TA;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0}, Lscala/collection/immutable/MapLike$class;->parCombiner(Lscala/collection/immutable/MapLike;)Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public partition(Lscala/Function1;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TA;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Tuple2<",
            "Lscala/collection/immutable/Map<",
            "TA;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/collection/immutable/Map<",
            "TA;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->partition(Lscala/collection/TraversableProxyLike;Lscala/Function1;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public product(Lscala/math/Numeric;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Numeric<",
            "TB;>;)TB;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->product(Lscala/collection/TraversableProxyLike;Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reduce(Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TA1;TA1;TA1;>;)TA1;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduce(Lscala/collection/TraversableOnce;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reduceLeft(Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TB;",
            "Lscala/Tuple2<",
            "TA;",
            "Ljava/lang/Object;",
            ">;TB;>;)TB;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->reduceLeft(Lscala/collection/TraversableProxyLike;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reduceLeftOption(Lscala/Function2;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TB;",
            "Lscala/Tuple2<",
            "TA;",
            "Ljava/lang/Object;",
            ">;TB;>;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->reduceLeftOption(Lscala/collection/TraversableProxyLike;Lscala/Function2;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public reduceOption(Lscala/Function2;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TA1;TA1;TA1;>;)",
            "Lscala/Option<",
            "TA1;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduceOption(Lscala/collection/TraversableOnce;Lscala/Function2;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public reduceRight(Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "Lscala/Tuple2<",
            "TA;",
            "Ljava/lang/Object;",
            ">;TB;TB;>;)TB;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->reduceRight(Lscala/collection/TraversableProxyLike;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reduceRightOption(Lscala/Function2;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "Lscala/Tuple2<",
            "TA;",
            "Ljava/lang/Object;",
            ">;TB;TB;>;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->reduceRightOption(Lscala/collection/TraversableProxyLike;Lscala/Function2;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic repr()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/immutable/MapProxy$$anon$1;->repr()Lscala/collection/immutable/MapProxy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic repr()Lscala/collection/generic/Subtractable;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/immutable/MapProxy$$anon$1;->repr()Lscala/collection/immutable/MapProxy;

    move-result-object v0

    return-object v0
.end method

.method public repr()Lscala/collection/immutable/MapProxy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/MapProxy<",
            "TA;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 30
    invoke-static {p0}, Lscala/collection/immutable/MapProxy$class;->repr(Lscala/collection/immutable/MapProxy;)Lscala/collection/immutable/MapProxy;

    move-result-object v0

    return-object v0
.end method

.method public reversed()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "Lscala/Tuple2<",
            "TA;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->reversed(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public runWith(Lscala/Function1;)Lscala/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "TU;>;)",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lscala/PartialFunction$class;->runWith(Lscala/PartialFunction;Lscala/Function1;)Lscala/Function1;

    move-result-object p1

    return-object p1
.end method

.method public sameElements(Lscala/collection/GenIterable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenIterable<",
            "TB;>;)Z"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lscala/collection/IterableProxyLike$class;->sameElements(Lscala/collection/IterableProxyLike;Lscala/collection/GenIterable;)Z

    move-result p1

    return p1
.end method

.method public scan(Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "TB;TB;TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Map<",
            "TA;",
            "Ljava/lang/Object;",
            ">;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableLike$class;->scan(Lscala/collection/TraversableLike;Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public scanLeft(Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "TB;",
            "Lscala/Tuple2<",
            "TA;",
            "Ljava/lang/Object;",
            ">;TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Map<",
            "TA;",
            "Ljava/lang/Object;",
            ">;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableProxyLike$class;->scanLeft(Lscala/collection/TraversableProxyLike;Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public scanRight(Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "Lscala/Tuple2<",
            "TA;",
            "Ljava/lang/Object;",
            ">;TB;TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Map<",
            "TA;",
            "Ljava/lang/Object;",
            ">;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableProxyLike$class;->scanRight(Lscala/collection/TraversableProxyLike;Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic self()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/immutable/MapProxy$$anon$1;->self()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic self()Lscala/collection/Traversable;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/immutable/MapProxy$$anon$1;->self()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public self()Lscala/collection/immutable/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Map<",
            "TA;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lscala/collection/immutable/MapProxy$$anon$1;->self:Lscala/collection/immutable/Map;

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/immutable/MapProxy$$anon$1;->seq()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Map;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/immutable/MapProxy$$anon$1;->seq()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/immutable/MapProxy$$anon$1;->seq()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/immutable/MapProxy$$anon$1;->seq()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/immutable/Iterable;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/immutable/MapProxy$$anon$1;->seq()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/immutable/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Map<",
            "TA;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 30
    invoke-static {p0}, Lscala/collection/immutable/Map$class;->seq(Lscala/collection/immutable/Map;)Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/immutable/Traversable;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/immutable/MapProxy$$anon$1;->seq()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 30
    invoke-static {p0}, Lscala/collection/TraversableProxyLike$class;->size(Lscala/collection/TraversableProxyLike;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic slice(II)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/MapProxy$$anon$1;->slice(II)Lscala/collection/Traversable;

    move-result-object p1

    return-object p1
.end method

.method public slice(II)Lscala/collection/Traversable;
    .locals 0

    .line 30
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableProxyLike$class;->slice(Lscala/collection/TraversableProxyLike;II)Lscala/collection/Traversable;

    move-result-object p1

    return-object p1
.end method

.method public sliceWithKnownBound(II)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->sliceWithKnownBound(Lscala/collection/TraversableLike;II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public sliceWithKnownDelta(III)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableLike$class;->sliceWithKnownDelta(Lscala/collection/TraversableLike;III)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public sliding(I)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/Iterator<",
            "Lscala/collection/immutable/Map<",
            "TA;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lscala/collection/IterableProxyLike$class;->sliding(Lscala/collection/IterableProxyLike;I)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public sliding(II)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lscala/collection/Iterator<",
            "Lscala/collection/immutable/Map<",
            "TA;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1, p2}, Lscala/collection/IterableProxyLike$class;->sliding(Lscala/collection/IterableProxyLike;II)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public span(Lscala/Function1;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TA;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Tuple2<",
            "Lscala/collection/immutable/Map<",
            "TA;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/collection/immutable/Map<",
            "TA;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->span(Lscala/collection/TraversableProxyLike;Lscala/Function1;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public splitAt(I)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/Tuple2<",
            "Lscala/collection/immutable/Map<",
            "TA;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/collection/immutable/Map<",
            "TA;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->splitAt(Lscala/collection/TraversableProxyLike;I)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public stringPrefix()Ljava/lang/String;
    .locals 1

    .line 30
    invoke-static {p0}, Lscala/collection/TraversableProxyLike$class;->stringPrefix(Lscala/collection/TraversableProxyLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sum(Lscala/math/Numeric;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Numeric<",
            "TB;>;)TB;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->sum(Lscala/collection/TraversableProxyLike;Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tail()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/immutable/MapProxy$$anon$1;->tail()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public tail()Lscala/collection/Traversable;
    .locals 1

    .line 30
    invoke-static {p0}, Lscala/collection/TraversableProxyLike$class;->tail(Lscala/collection/TraversableProxyLike;)Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public tails()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/collection/immutable/Map<",
            "TA;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->tails(Lscala/collection/TraversableLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic take(I)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapProxy$$anon$1;->take(I)Lscala/collection/Traversable;

    move-result-object p1

    return-object p1
.end method

.method public take(I)Lscala/collection/Traversable;
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->take(Lscala/collection/TraversableProxyLike;I)Lscala/collection/Traversable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic takeRight(I)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapProxy$$anon$1;->takeRight(I)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public takeRight(I)Lscala/collection/Iterable;
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lscala/collection/IterableProxyLike$class;->takeRight(Lscala/collection/IterableProxyLike;I)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic takeWhile(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapProxy$$anon$1;->takeWhile(Lscala/Function1;)Lscala/collection/Traversable;

    move-result-object p1

    return-object p1
.end method

.method public takeWhile(Lscala/Function1;)Lscala/collection/Traversable;
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->takeWhile(Lscala/collection/TraversableProxyLike;Lscala/Function1;)Lscala/collection/Traversable;

    move-result-object p1

    return-object p1
.end method

.method public thisCollection()Lscala/collection/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterable<",
            "Lscala/Tuple2<",
            "TA;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0}, Lscala/collection/IterableLike$class;->thisCollection(Lscala/collection/IterableLike;)Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/immutable/MapProxy$$anon$1;->thisCollection()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public to(Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Col:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/runtime/Nothing$;",
            "Lscala/Tuple2<",
            "TA;",
            "Ljava/lang/Object;",
            ">;TCol;>;)TCol;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lscala/collection/TraversableLike$class;->to(Lscala/collection/TraversableLike;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toArray(Lscala/reflect/ClassTag;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/reflect/ClassTag<",
            "TB;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->toArray(Lscala/collection/TraversableProxyLike;Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toBuffer()Lscala/collection/mutable/Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Buffer<",
            "TB;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0}, Lscala/collection/TraversableProxyLike$class;->toBuffer(Lscala/collection/TraversableProxyLike;)Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->toCollection(Lscala/collection/IterableLike;Ljava/lang/Object;)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapProxy$$anon$1;->toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public toIndexedSeq()Lscala/collection/immutable/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/IndexedSeq<",
            "Lscala/Tuple2<",
            "TA;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0}, Lscala/collection/TraversableProxyLike$class;->toIndexedSeq(Lscala/collection/TraversableProxyLike;)Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/immutable/MapProxy$$anon$1;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public toIterable()Lscala/collection/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterable<",
            "Lscala/Tuple2<",
            "TA;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0}, Lscala/collection/TraversableProxyLike$class;->toIterable(Lscala/collection/TraversableProxyLike;)Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public toIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TA;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0}, Lscala/collection/TraversableProxyLike$class;->toIterator(Lscala/collection/TraversableProxyLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toList()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "Lscala/Tuple2<",
            "TA;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0}, Lscala/collection/TraversableProxyLike$class;->toList(Lscala/collection/TraversableProxyLike;)Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/GenMap;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapProxy$$anon$1;->toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;

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
            "TA;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/Tuple2<",
            "TT;TU;>;>;)",
            "Lscala/collection/immutable/Map<",
            "TT;TU;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->toMap(Lscala/collection/TraversableProxyLike;Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/immutable/MapProxy$$anon$1;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toSeq()Lscala/collection/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "Lscala/Tuple2<",
            "TA;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0}, Lscala/collection/TraversableProxyLike$class;->toSeq(Lscala/collection/TraversableProxyLike;)Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSet()Lscala/collection/GenSet;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/immutable/MapProxy$$anon$1;->toSet()Lscala/collection/immutable/Set;

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

    .line 30
    invoke-static {p0}, Lscala/collection/TraversableProxyLike$class;->toSet(Lscala/collection/TraversableProxyLike;)Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public toStream()Lscala/collection/immutable/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream<",
            "Lscala/Tuple2<",
            "TA;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0}, Lscala/collection/TraversableProxyLike$class;->toStream(Lscala/collection/TraversableProxyLike;)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 30
    invoke-static {p0}, Lscala/Proxy$class;->toString(Lscala/Proxy;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/immutable/MapProxy$$anon$1;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public toTraversable()Lscala/collection/Traversable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Traversable<",
            "Lscala/Tuple2<",
            "TA;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0}, Lscala/collection/TraversableProxyLike$class;->toTraversable(Lscala/collection/TraversableProxyLike;)Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public toVector()Lscala/collection/immutable/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Vector<",
            "Lscala/Tuple2<",
            "TA;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toVector(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/Vector;

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
            "TA;",
            "Ljava/lang/Object;",
            "TC;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Map<",
            "TA;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/Tuple2<",
            "TA;TC;>;TThat;>;)TThat;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1, p2}, Lscala/collection/immutable/MapLike$class;->transform(Lscala/collection/immutable/MapLike;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public transpose(Lscala/Function1;)Lscala/collection/GenTraversable;
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lscala/collection/generic/GenericTraversableTemplate$class;->transpose(Lscala/collection/generic/GenericTraversableTemplate;Lscala/Function1;)Lscala/collection/GenTraversable;

    move-result-object p1

    return-object p1
.end method

.method public unzip(Lscala/Function1;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            "A2:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TA;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/Tuple2<",
            "TA1;TA2;>;>;)",
            "Lscala/Tuple2<",
            "Lscala/collection/immutable/Iterable<",
            "TA1;>;",
            "Lscala/collection/immutable/Iterable<",
            "TA2;>;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lscala/collection/generic/GenericTraversableTemplate$class;->unzip(Lscala/collection/generic/GenericTraversableTemplate;Lscala/Function1;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public unzip3(Lscala/Function1;)Lscala/Tuple3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            "A2:",
            "Ljava/lang/Object;",
            "A3:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TA;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/Tuple3<",
            "TA1;TA2;TA3;>;>;)",
            "Lscala/Tuple3<",
            "Lscala/collection/immutable/Iterable<",
            "TA1;>;",
            "Lscala/collection/immutable/Iterable<",
            "TA2;>;",
            "Lscala/collection/immutable/Iterable<",
            "TA3;>;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lscala/collection/generic/GenericTraversableTemplate$class;->unzip3(Lscala/collection/generic/GenericTraversableTemplate;Lscala/Function1;)Lscala/Tuple3;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/GenMap;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/MapProxy$$anon$1;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/MapProxy;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/Map;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/MapProxy$$anon$1;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/MapProxy;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/Map;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/MapProxy$$anon$1;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/MapProxy;

    move-result-object p1

    return-object p1
.end method

.method public updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/MapProxy;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(TA;TB1;)",
            "Lscala/collection/immutable/MapProxy<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1, p2}, Lscala/collection/immutable/MapProxy$class;->updated(Lscala/collection/immutable/MapProxy;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/MapProxy;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic values()Lscala/collection/GenIterable;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/immutable/MapProxy$$anon$1;->values()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public values()Lscala/collection/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 30
    invoke-static {p0}, Lscala/collection/MapProxyLike$class;->values(Lscala/collection/MapProxyLike;)Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public valuesIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 30
    invoke-static {p0}, Lscala/collection/MapProxyLike$class;->valuesIterator(Lscala/collection/MapProxyLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public view()Lscala/collection/IterableView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 30
    invoke-static {p0}, Lscala/collection/IterableProxyLike$class;->view(Lscala/collection/IterableProxyLike;)Lscala/collection/IterableView;

    move-result-object v0

    return-object v0
.end method

.method public view(II)Lscala/collection/IterableView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lscala/collection/IterableView<",
            "Lscala/Tuple2<",
            "TA;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/collection/immutable/Map<",
            "TA;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1, p2}, Lscala/collection/IterableProxyLike$class;->view(Lscala/collection/IterableProxyLike;II)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/immutable/MapProxy$$anon$1;->view()Lscala/collection/IterableView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/MapProxy$$anon$1;->view(II)Lscala/collection/IterableView;

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

    .line 30
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

    .line 30
    invoke-static {p0, p1}, Lscala/collection/immutable/Map$class;->withDefaultValue(Lscala/collection/immutable/Map;Ljava/lang/Object;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public withFilter(Lscala/Function1;)Lscala/collection/generic/FilterMonadic;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TA;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/generic/FilterMonadic<",
            "Lscala/Tuple2<",
            "TA;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/collection/immutable/Map<",
            "TA;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lscala/collection/TraversableLike$class;->withFilter(Lscala/collection/TraversableLike;Lscala/Function1;)Lscala/collection/generic/FilterMonadic;

    move-result-object p1

    return-object p1
.end method

.method public zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenIterable<",
            "TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Map<",
            "TA;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/Tuple2<",
            "TA1;TB;>;TThat;>;)TThat;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1, p2}, Lscala/collection/IterableProxyLike$class;->zip(Lscala/collection/IterableProxyLike;Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public zipAll(Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "A1:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenIterable<",
            "TB;>;TA1;TB;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Map<",
            "TA;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/Tuple2<",
            "TA1;TB;>;TThat;>;)TThat;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/IterableProxyLike$class;->zipAll(Lscala/collection/IterableProxyLike;Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public zipWithIndex(Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Map<",
            "TA;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/Tuple2<",
            "TA1;",
            "Ljava/lang/Object;",
            ">;TThat;>;)TThat;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lscala/collection/IterableProxyLike$class;->zipWithIndex(Lscala/collection/IterableProxyLike;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
