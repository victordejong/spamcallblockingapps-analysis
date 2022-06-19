.class public abstract Lscala/collection/TraversableProxyLike$class;
.super Ljava/lang/Object;
.source "TraversableProxyLike.scala"


# direct methods
.method public static $colon$bslash(Lscala/collection/TraversableProxyLike;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0

    .line 51
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lscala/collection/Traversable;->$colon$bslash(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static $div$colon(Lscala/collection/TraversableProxyLike;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0

    .line 49
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lscala/collection/Traversable;->$div$colon(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static $init$(Lscala/collection/TraversableProxyLike;)V
    .locals 0

    return-void
.end method

.method public static $plus$plus(Lscala/collection/TraversableProxyLike;Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lscala/collection/Traversable;->$plus$plus(Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static addString(Lscala/collection/TraversableProxyLike;Lscala/collection/mutable/StringBuilder;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 95
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->addString(Lscala/collection/mutable/StringBuilder;)Lscala/collection/mutable/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static addString(Lscala/collection/TraversableProxyLike;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 94
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lscala/collection/Traversable;->addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static addString(Lscala/collection/TraversableProxyLike;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 93
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lscala/collection/Traversable;->addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static collect(Lscala/collection/TraversableProxyLike;Lscala/PartialFunction;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lscala/collection/Traversable;->collect(Lscala/PartialFunction;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static copyToArray(Lscala/collection/TraversableProxyLike;Ljava/lang/Object;)V
    .locals 0

    .line 78
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->copyToArray(Ljava/lang/Object;)V

    return-void
.end method

.method public static copyToArray(Lscala/collection/TraversableProxyLike;Ljava/lang/Object;I)V
    .locals 0

    .line 77
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lscala/collection/Traversable;->copyToArray(Ljava/lang/Object;I)V

    return-void
.end method

.method public static copyToArray(Lscala/collection/TraversableProxyLike;Ljava/lang/Object;II)V
    .locals 0

    .line 76
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lscala/collection/Traversable;->copyToArray(Ljava/lang/Object;II)V

    return-void
.end method

.method public static copyToBuffer(Lscala/collection/TraversableProxyLike;Lscala/collection/mutable/Buffer;)V
    .locals 0

    .line 75
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->copyToBuffer(Lscala/collection/mutable/Buffer;)V

    return-void
.end method

.method public static count(Lscala/collection/TraversableProxyLike;Lscala/Function1;)I
    .locals 0

    .line 46
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->count(Lscala/Function1;)I

    move-result p0

    return p0
.end method

.method public static drop(Lscala/collection/TraversableProxyLike;I)Lscala/collection/Traversable;
    .locals 0

    .line 69
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->drop(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/Traversable;

    return-object p0
.end method

.method public static dropWhile(Lscala/collection/TraversableProxyLike;Lscala/Function1;)Lscala/collection/Traversable;
    .locals 0

    .line 72
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->dropWhile(Lscala/Function1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/Traversable;

    return-object p0
.end method

.method public static exists(Lscala/collection/TraversableProxyLike;Lscala/Function1;)Z
    .locals 0

    .line 45
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->exists(Lscala/Function1;)Z

    move-result p0

    return p0
.end method

.method public static filter(Lscala/collection/TraversableProxyLike;Lscala/Function1;)Lscala/collection/Traversable;
    .locals 0

    .line 39
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->filter(Lscala/Function1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/Traversable;

    return-object p0
.end method

.method public static filterNot(Lscala/collection/TraversableProxyLike;Lscala/Function1;)Lscala/collection/Traversable;
    .locals 0

    .line 40
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->filterNot(Lscala/Function1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/Traversable;

    return-object p0
.end method

.method public static find(Lscala/collection/TraversableProxyLike;Lscala/Function1;)Lscala/Option;
    .locals 0

    .line 47
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->find(Lscala/Function1;)Lscala/Option;

    move-result-object p0

    return-object p0
.end method

.method public static flatMap(Lscala/collection/TraversableProxyLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lscala/collection/Traversable;->flatMap(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static foldLeft(Lscala/collection/TraversableProxyLike;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lscala/collection/Traversable;->foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static foldRight(Lscala/collection/TraversableProxyLike;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lscala/collection/Traversable;->foldRight(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static forall(Lscala/collection/TraversableProxyLike;Lscala/Function1;)Z
    .locals 0

    .line 44
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->forall(Lscala/Function1;)Z

    move-result p0

    return p0
.end method

.method public static foreach(Lscala/collection/TraversableProxyLike;Lscala/Function1;)V
    .locals 0

    .line 31
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->foreach(Lscala/Function1;)V

    return-void
.end method

.method public static groupBy(Lscala/collection/TraversableProxyLike;Lscala/Function1;)Lscala/collection/immutable/Map;
    .locals 0

    .line 43
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p0

    return-object p0
.end method

.method public static hasDefiniteSize(Lscala/collection/TraversableProxyLike;)Z
    .locals 0

    .line 35
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Traversable;->hasDefiniteSize()Z

    move-result p0

    return p0
.end method

.method public static head(Lscala/collection/TraversableProxyLike;)Ljava/lang/Object;
    .locals 0

    .line 62
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Traversable;->head()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static headOption(Lscala/collection/TraversableProxyLike;)Lscala/Option;
    .locals 0

    .line 63
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Traversable;->headOption()Lscala/Option;

    move-result-object p0

    return-object p0
.end method

.method public static init(Lscala/collection/TraversableProxyLike;)Lscala/collection/Traversable;
    .locals 0

    .line 67
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Traversable;->init()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/Traversable;

    return-object p0
.end method

.method public static isEmpty(Lscala/collection/TraversableProxyLike;)Z
    .locals 0

    .line 32
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Traversable;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public static last(Lscala/collection/TraversableProxyLike;)Ljava/lang/Object;
    .locals 0

    .line 65
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Traversable;->last()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static lastOption(Lscala/collection/TraversableProxyLike;)Lscala/Option;
    .locals 0

    .line 66
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Traversable;->lastOption()Lscala/Option;

    move-result-object p0

    return-object p0
.end method

.method public static map(Lscala/collection/TraversableProxyLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lscala/collection/Traversable;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static max(Lscala/collection/TraversableProxyLike;Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->max(Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static min(Lscala/collection/TraversableProxyLike;Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0

    .line 60
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->min(Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static mkString(Lscala/collection/TraversableProxyLike;)Ljava/lang/String;
    .locals 0

    .line 92
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Traversable;->mkString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static mkString(Lscala/collection/TraversableProxyLike;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 91
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->mkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static mkString(Lscala/collection/TraversableProxyLike;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 90
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lscala/collection/Traversable;->mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static nonEmpty(Lscala/collection/TraversableProxyLike;)Z
    .locals 0

    .line 33
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Traversable;->nonEmpty()Z

    move-result p0

    return p0
.end method

.method public static partition(Lscala/collection/TraversableProxyLike;Lscala/Function1;)Lscala/Tuple2;
    .locals 0

    .line 42
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->partition(Lscala/Function1;)Lscala/Tuple2;

    move-result-object p0

    return-object p0
.end method

.method public static product(Lscala/collection/TraversableProxyLike;Lscala/math/Numeric;)Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->product(Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static reduceLeft(Lscala/collection/TraversableProxyLike;Lscala/Function2;)Ljava/lang/Object;
    .locals 0

    .line 52
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->reduceLeft(Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static reduceLeftOption(Lscala/collection/TraversableProxyLike;Lscala/Function2;)Lscala/Option;
    .locals 0

    .line 53
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->reduceLeftOption(Lscala/Function2;)Lscala/Option;

    move-result-object p0

    return-object p0
.end method

.method public static reduceRight(Lscala/collection/TraversableProxyLike;Lscala/Function2;)Ljava/lang/Object;
    .locals 0

    .line 54
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->reduceRight(Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static reduceRightOption(Lscala/collection/TraversableProxyLike;Lscala/Function2;)Lscala/Option;
    .locals 0

    .line 55
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->reduceRightOption(Lscala/Function2;)Lscala/Option;

    move-result-object p0

    return-object p0
.end method

.method public static scanLeft(Lscala/collection/TraversableProxyLike;Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0

    .line 56
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lscala/collection/Traversable;->scanLeft(Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static scanRight(Lscala/collection/TraversableProxyLike;Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lscala/collection/Traversable;->scanRight(Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static size(Lscala/collection/TraversableProxyLike;)I
    .locals 0

    .line 34
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Traversable;->size()I

    move-result p0

    return p0
.end method

.method public static slice(Lscala/collection/TraversableProxyLike;II)Lscala/collection/Traversable;
    .locals 0

    .line 70
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lscala/collection/Traversable;->slice(II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/Traversable;

    return-object p0
.end method

.method public static span(Lscala/collection/TraversableProxyLike;Lscala/Function1;)Lscala/Tuple2;
    .locals 0

    .line 73
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->span(Lscala/Function1;)Lscala/Tuple2;

    move-result-object p0

    return-object p0
.end method

.method public static splitAt(Lscala/collection/TraversableProxyLike;I)Lscala/Tuple2;
    .locals 0

    .line 74
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->splitAt(I)Lscala/Tuple2;

    move-result-object p0

    return-object p0
.end method

.method public static stringPrefix(Lscala/collection/TraversableProxyLike;)Ljava/lang/String;
    .locals 0

    .line 96
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Traversable;->stringPrefix()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sum(Lscala/collection/TraversableProxyLike;Lscala/math/Numeric;)Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->sum(Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static tail(Lscala/collection/TraversableProxyLike;)Lscala/collection/Traversable;
    .locals 0

    .line 64
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Traversable;->tail()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/Traversable;

    return-object p0
.end method

.method public static take(Lscala/collection/TraversableProxyLike;I)Lscala/collection/Traversable;
    .locals 0

    .line 68
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->take(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/Traversable;

    return-object p0
.end method

.method public static takeWhile(Lscala/collection/TraversableProxyLike;Lscala/Function1;)Lscala/collection/Traversable;
    .locals 0

    .line 71
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->takeWhile(Lscala/Function1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/Traversable;

    return-object p0
.end method

.method public static toArray(Lscala/collection/TraversableProxyLike;Lscala/reflect/ClassTag;)Ljava/lang/Object;
    .locals 0

    .line 79
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->toArray(Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static toBuffer(Lscala/collection/TraversableProxyLike;)Lscala/collection/mutable/Buffer;
    .locals 0

    .line 84
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Traversable;->toBuffer()Lscala/collection/mutable/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public static toIndexedSeq(Lscala/collection/TraversableProxyLike;)Lscala/collection/immutable/IndexedSeq;
    .locals 0

    .line 83
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Traversable;->toIndexedSeq()Lscala/collection/immutable/IndexedSeq;

    move-result-object p0

    return-object p0
.end method

.method public static toIterable(Lscala/collection/TraversableProxyLike;)Lscala/collection/Iterable;
    .locals 0

    .line 81
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Traversable;->toIterable()Lscala/collection/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public static toIterator(Lscala/collection/TraversableProxyLike;)Lscala/collection/Iterator;
    .locals 0

    .line 89
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Traversable;->toIterator()Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static toList(Lscala/collection/TraversableProxyLike;)Lscala/collection/immutable/List;
    .locals 0

    .line 80
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Traversable;->toList()Lscala/collection/immutable/List;

    move-result-object p0

    return-object p0
.end method

.method public static toMap(Lscala/collection/TraversableProxyLike;Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;
    .locals 0

    .line 87
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;

    move-result-object p0

    return-object p0
.end method

.method public static toSeq(Lscala/collection/TraversableProxyLike;)Lscala/collection/Seq;
    .locals 0

    .line 82
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Traversable;->toSeq()Lscala/collection/Seq;

    move-result-object p0

    return-object p0
.end method

.method public static toSet(Lscala/collection/TraversableProxyLike;)Lscala/collection/immutable/Set;
    .locals 0

    .line 86
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Traversable;->toSet()Lscala/collection/immutable/Set;

    move-result-object p0

    return-object p0
.end method

.method public static toStream(Lscala/collection/TraversableProxyLike;)Lscala/collection/immutable/Stream;
    .locals 0

    .line 85
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Traversable;->toStream()Lscala/collection/immutable/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static toTraversable(Lscala/collection/TraversableProxyLike;)Lscala/collection/Traversable;
    .locals 0

    .line 88
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Traversable;->toTraversable()Lscala/collection/Traversable;

    move-result-object p0

    return-object p0
.end method

.method public static view(Lscala/collection/TraversableProxyLike;)Lscala/collection/TraversableView;
    .locals 0

    .line 97
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Traversable;->view()Lscala/collection/TraversableView;

    move-result-object p0

    return-object p0
.end method

.method public static view(Lscala/collection/TraversableProxyLike;II)Lscala/collection/TraversableView;
    .locals 0

    .line 98
    invoke-interface {p0}, Lscala/collection/TraversableProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lscala/collection/Traversable;->view(II)Lscala/collection/TraversableView;

    move-result-object p0

    return-object p0
.end method
