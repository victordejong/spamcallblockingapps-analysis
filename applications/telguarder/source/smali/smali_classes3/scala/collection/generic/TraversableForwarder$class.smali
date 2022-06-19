.class public abstract Lscala/collection/generic/TraversableForwarder$class;
.super Ljava/lang/Object;
.source "TraversableForwarder.scala"


# direct methods
.method public static $colon$bslash(Lscala/collection/generic/TraversableForwarder;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lscala/collection/Traversable;->$colon$bslash(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static $div$colon(Lscala/collection/generic/TraversableForwarder;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lscala/collection/Traversable;->$div$colon(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static $init$(Lscala/collection/generic/TraversableForwarder;)V
    .locals 0

    return-void
.end method

.method public static addString(Lscala/collection/generic/TraversableForwarder;Lscala/collection/mutable/StringBuilder;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 78
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->addString(Lscala/collection/mutable/StringBuilder;)Lscala/collection/mutable/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static addString(Lscala/collection/generic/TraversableForwarder;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 77
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lscala/collection/Traversable;->addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static addString(Lscala/collection/generic/TraversableForwarder;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 76
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lscala/collection/Traversable;->addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static copyToArray(Lscala/collection/generic/TraversableForwarder;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->copyToArray(Ljava/lang/Object;)V

    return-void
.end method

.method public static copyToArray(Lscala/collection/generic/TraversableForwarder;Ljava/lang/Object;I)V
    .locals 0

    .line 62
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lscala/collection/Traversable;->copyToArray(Ljava/lang/Object;I)V

    return-void
.end method

.method public static copyToArray(Lscala/collection/generic/TraversableForwarder;Ljava/lang/Object;II)V
    .locals 0

    .line 61
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lscala/collection/Traversable;->copyToArray(Ljava/lang/Object;II)V

    return-void
.end method

.method public static copyToBuffer(Lscala/collection/generic/TraversableForwarder;Lscala/collection/mutable/Buffer;)V
    .locals 0

    .line 60
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->copyToBuffer(Lscala/collection/mutable/Buffer;)V

    return-void
.end method

.method public static count(Lscala/collection/generic/TraversableForwarder;Lscala/Function1;)I
    .locals 0

    .line 42
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->count(Lscala/Function1;)I

    move-result p0

    return p0
.end method

.method public static exists(Lscala/collection/generic/TraversableForwarder;Lscala/Function1;)Z
    .locals 0

    .line 41
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->exists(Lscala/Function1;)Z

    move-result p0

    return p0
.end method

.method public static find(Lscala/collection/generic/TraversableForwarder;Lscala/Function1;)Lscala/Option;
    .locals 0

    .line 43
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->find(Lscala/Function1;)Lscala/Option;

    move-result-object p0

    return-object p0
.end method

.method public static foldLeft(Lscala/collection/generic/TraversableForwarder;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lscala/collection/Traversable;->foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static foldRight(Lscala/collection/generic/TraversableForwarder;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lscala/collection/Traversable;->foldRight(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static forall(Lscala/collection/generic/TraversableForwarder;Lscala/Function1;)Z
    .locals 0

    .line 40
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->forall(Lscala/Function1;)Z

    move-result p0

    return p0
.end method

.method public static foreach(Lscala/collection/generic/TraversableForwarder;Lscala/Function1;)V
    .locals 0

    .line 35
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->foreach(Lscala/Function1;)V

    return-void
.end method

.method public static hasDefiniteSize(Lscala/collection/generic/TraversableForwarder;)Z
    .locals 0

    .line 39
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Traversable;->hasDefiniteSize()Z

    move-result p0

    return p0
.end method

.method public static head(Lscala/collection/generic/TraversableForwarder;)Ljava/lang/Object;
    .locals 0

    .line 56
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Traversable;->head()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static headOption(Lscala/collection/generic/TraversableForwarder;)Lscala/Option;
    .locals 0

    .line 57
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Traversable;->headOption()Lscala/Option;

    move-result-object p0

    return-object p0
.end method

.method public static isEmpty(Lscala/collection/generic/TraversableForwarder;)Z
    .locals 0

    .line 36
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Traversable;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public static last(Lscala/collection/generic/TraversableForwarder;)Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Traversable;->last()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static lastOption(Lscala/collection/generic/TraversableForwarder;)Lscala/Option;
    .locals 0

    .line 59
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Traversable;->lastOption()Lscala/Option;

    move-result-object p0

    return-object p0
.end method

.method public static max(Lscala/collection/generic/TraversableForwarder;Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0

    .line 55
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->max(Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static min(Lscala/collection/generic/TraversableForwarder;Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0

    .line 54
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->min(Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static mkString(Lscala/collection/generic/TraversableForwarder;)Ljava/lang/String;
    .locals 0

    .line 75
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Traversable;->mkString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static mkString(Lscala/collection/generic/TraversableForwarder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 74
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->mkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static mkString(Lscala/collection/generic/TraversableForwarder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 73
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lscala/collection/Traversable;->mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static nonEmpty(Lscala/collection/generic/TraversableForwarder;)Z
    .locals 0

    .line 37
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Traversable;->nonEmpty()Z

    move-result p0

    return p0
.end method

.method public static product(Lscala/collection/generic/TraversableForwarder;Lscala/math/Numeric;)Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->product(Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static reduceLeft(Lscala/collection/generic/TraversableForwarder;Lscala/Function2;)Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->reduceLeft(Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static reduceLeftOption(Lscala/collection/generic/TraversableForwarder;Lscala/Function2;)Lscala/Option;
    .locals 0

    .line 49
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->reduceLeftOption(Lscala/Function2;)Lscala/Option;

    move-result-object p0

    return-object p0
.end method

.method public static reduceRight(Lscala/collection/generic/TraversableForwarder;Lscala/Function2;)Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->reduceRight(Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static reduceRightOption(Lscala/collection/generic/TraversableForwarder;Lscala/Function2;)Lscala/Option;
    .locals 0

    .line 51
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->reduceRightOption(Lscala/Function2;)Lscala/Option;

    move-result-object p0

    return-object p0
.end method

.method public static size(Lscala/collection/generic/TraversableForwarder;)I
    .locals 0

    .line 38
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Traversable;->size()I

    move-result p0

    return p0
.end method

.method public static sum(Lscala/collection/generic/TraversableForwarder;Lscala/math/Numeric;)Ljava/lang/Object;
    .locals 0

    .line 52
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->sum(Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static toArray(Lscala/collection/generic/TraversableForwarder;Lscala/reflect/ClassTag;)Ljava/lang/Object;
    .locals 0

    .line 64
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->toArray(Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static toBuffer(Lscala/collection/generic/TraversableForwarder;)Lscala/collection/mutable/Buffer;
    .locals 0

    .line 69
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Traversable;->toBuffer()Lscala/collection/mutable/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public static toIndexedSeq(Lscala/collection/generic/TraversableForwarder;)Lscala/collection/immutable/IndexedSeq;
    .locals 0

    .line 68
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Traversable;->toIndexedSeq()Lscala/collection/immutable/IndexedSeq;

    move-result-object p0

    return-object p0
.end method

.method public static toIterable(Lscala/collection/generic/TraversableForwarder;)Lscala/collection/Iterable;
    .locals 0

    .line 66
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Traversable;->toIterable()Lscala/collection/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public static toList(Lscala/collection/generic/TraversableForwarder;)Lscala/collection/immutable/List;
    .locals 0

    .line 65
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Traversable;->toList()Lscala/collection/immutable/List;

    move-result-object p0

    return-object p0
.end method

.method public static toMap(Lscala/collection/generic/TraversableForwarder;Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;
    .locals 0

    .line 72
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Traversable;->toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;

    move-result-object p0

    return-object p0
.end method

.method public static toSeq(Lscala/collection/generic/TraversableForwarder;)Lscala/collection/Seq;
    .locals 0

    .line 67
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Traversable;->toSeq()Lscala/collection/Seq;

    move-result-object p0

    return-object p0
.end method

.method public static toSet(Lscala/collection/generic/TraversableForwarder;)Lscala/collection/immutable/Set;
    .locals 0

    .line 71
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Traversable;->toSet()Lscala/collection/immutable/Set;

    move-result-object p0

    return-object p0
.end method

.method public static toStream(Lscala/collection/generic/TraversableForwarder;)Lscala/collection/immutable/Stream;
    .locals 0

    .line 70
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Traversable;->toStream()Lscala/collection/immutable/Stream;

    move-result-object p0

    return-object p0
.end method
