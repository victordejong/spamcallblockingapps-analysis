.class public abstract Lscala/collection/generic/SeqForwarder$class;
.super Ljava/lang/Object;
.source "SeqForwarder.scala"


# direct methods
.method public static $init$(Lscala/collection/generic/SeqForwarder;)V
    .locals 0

    return-void
.end method

.method public static apply(Lscala/collection/generic/SeqForwarder;I)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-interface {p0}, Lscala/collection/generic/SeqForwarder;->underlying()Lscala/collection/Seq;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Seq;->apply(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static contains(Lscala/collection/generic/SeqForwarder;Ljava/lang/Object;)Z
    .locals 0

    .line 56
    invoke-interface {p0}, Lscala/collection/generic/SeqForwarder;->underlying()Lscala/collection/Seq;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Seq;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static containsSlice(Lscala/collection/generic/SeqForwarder;Lscala/collection/GenSeq;)Z
    .locals 0

    .line 55
    invoke-interface {p0}, Lscala/collection/generic/SeqForwarder;->underlying()Lscala/collection/Seq;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Seq;->containsSlice(Lscala/collection/GenSeq;)Z

    move-result p0

    return p0
.end method

.method public static corresponds(Lscala/collection/generic/SeqForwarder;Lscala/collection/GenSeq;Lscala/Function2;)Z
    .locals 0

    .line 57
    invoke-interface {p0}, Lscala/collection/generic/SeqForwarder;->underlying()Lscala/collection/Seq;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lscala/collection/Seq;->corresponds(Lscala/collection/GenSeq;Lscala/Function2;)Z

    move-result p0

    return p0
.end method

.method public static endsWith(Lscala/collection/generic/SeqForwarder;Lscala/collection/GenSeq;)Z
    .locals 0

    .line 50
    invoke-interface {p0}, Lscala/collection/generic/SeqForwarder;->underlying()Lscala/collection/Seq;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Seq;->endsWith(Lscala/collection/GenSeq;)Z

    move-result p0

    return p0
.end method

.method public static indexOf(Lscala/collection/generic/SeqForwarder;Ljava/lang/Object;)I
    .locals 0

    .line 41
    invoke-interface {p0}, Lscala/collection/generic/SeqForwarder;->underlying()Lscala/collection/Seq;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Seq;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static indexOf(Lscala/collection/generic/SeqForwarder;Ljava/lang/Object;I)I
    .locals 0

    .line 42
    invoke-interface {p0}, Lscala/collection/generic/SeqForwarder;->underlying()Lscala/collection/Seq;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lscala/collection/Seq;->indexOf(Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public static indexOfSlice(Lscala/collection/generic/SeqForwarder;Lscala/collection/GenSeq;)I
    .locals 0

    .line 51
    invoke-interface {p0}, Lscala/collection/generic/SeqForwarder;->underlying()Lscala/collection/Seq;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Seq;->indexOfSlice(Lscala/collection/GenSeq;)I

    move-result p0

    return p0
.end method

.method public static indexOfSlice(Lscala/collection/generic/SeqForwarder;Lscala/collection/GenSeq;I)I
    .locals 0

    .line 52
    invoke-interface {p0}, Lscala/collection/generic/SeqForwarder;->underlying()Lscala/collection/Seq;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lscala/collection/Seq;->indexOfSlice(Lscala/collection/GenSeq;I)I

    move-result p0

    return p0
.end method

.method public static indexWhere(Lscala/collection/generic/SeqForwarder;Lscala/Function1;)I
    .locals 0

    .line 39
    invoke-interface {p0}, Lscala/collection/generic/SeqForwarder;->underlying()Lscala/collection/Seq;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Seq;->indexWhere(Lscala/Function1;)I

    move-result p0

    return p0
.end method

.method public static indexWhere(Lscala/collection/generic/SeqForwarder;Lscala/Function1;I)I
    .locals 0

    .line 40
    invoke-interface {p0}, Lscala/collection/generic/SeqForwarder;->underlying()Lscala/collection/Seq;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lscala/collection/Seq;->indexWhere(Lscala/Function1;I)I

    move-result p0

    return p0
.end method

.method public static indices(Lscala/collection/generic/SeqForwarder;)Lscala/collection/immutable/Range;
    .locals 0

    .line 58
    invoke-interface {p0}, Lscala/collection/generic/SeqForwarder;->underlying()Lscala/collection/Seq;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Seq;->indices()Lscala/collection/immutable/Range;

    move-result-object p0

    return-object p0
.end method

.method public static isDefinedAt(Lscala/collection/generic/SeqForwarder;I)Z
    .locals 0

    .line 36
    invoke-interface {p0}, Lscala/collection/generic/SeqForwarder;->underlying()Lscala/collection/Seq;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Seq;->isDefinedAt(I)Z

    move-result p0

    return p0
.end method

.method public static lastIndexOf(Lscala/collection/generic/SeqForwarder;Ljava/lang/Object;)I
    .locals 0

    .line 43
    invoke-interface {p0}, Lscala/collection/generic/SeqForwarder;->underlying()Lscala/collection/Seq;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Seq;->lastIndexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static lastIndexOf(Lscala/collection/generic/SeqForwarder;Ljava/lang/Object;I)I
    .locals 0

    .line 44
    invoke-interface {p0}, Lscala/collection/generic/SeqForwarder;->underlying()Lscala/collection/Seq;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lscala/collection/Seq;->lastIndexOf(Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public static lastIndexOfSlice(Lscala/collection/generic/SeqForwarder;Lscala/collection/GenSeq;)I
    .locals 0

    .line 53
    invoke-interface {p0}, Lscala/collection/generic/SeqForwarder;->underlying()Lscala/collection/Seq;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Seq;->lastIndexOfSlice(Lscala/collection/GenSeq;)I

    move-result p0

    return p0
.end method

.method public static lastIndexOfSlice(Lscala/collection/generic/SeqForwarder;Lscala/collection/GenSeq;I)I
    .locals 0

    .line 54
    invoke-interface {p0}, Lscala/collection/generic/SeqForwarder;->underlying()Lscala/collection/Seq;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lscala/collection/Seq;->lastIndexOfSlice(Lscala/collection/GenSeq;I)I

    move-result p0

    return p0
.end method

.method public static lastIndexWhere(Lscala/collection/generic/SeqForwarder;Lscala/Function1;)I
    .locals 0

    .line 45
    invoke-interface {p0}, Lscala/collection/generic/SeqForwarder;->underlying()Lscala/collection/Seq;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Seq;->lastIndexWhere(Lscala/Function1;)I

    move-result p0

    return p0
.end method

.method public static lastIndexWhere(Lscala/collection/generic/SeqForwarder;Lscala/Function1;I)I
    .locals 0

    .line 46
    invoke-interface {p0}, Lscala/collection/generic/SeqForwarder;->underlying()Lscala/collection/Seq;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lscala/collection/Seq;->lastIndexWhere(Lscala/Function1;I)I

    move-result p0

    return p0
.end method

.method public static length(Lscala/collection/generic/SeqForwarder;)I
    .locals 0

    .line 33
    invoke-interface {p0}, Lscala/collection/generic/SeqForwarder;->underlying()Lscala/collection/Seq;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Seq;->length()I

    move-result p0

    return p0
.end method

.method public static lengthCompare(Lscala/collection/generic/SeqForwarder;I)I
    .locals 0

    .line 35
    invoke-interface {p0}, Lscala/collection/generic/SeqForwarder;->underlying()Lscala/collection/Seq;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Seq;->lengthCompare(I)I

    move-result p0

    return p0
.end method

.method public static prefixLength(Lscala/collection/generic/SeqForwarder;Lscala/Function1;)I
    .locals 0

    .line 38
    invoke-interface {p0}, Lscala/collection/generic/SeqForwarder;->underlying()Lscala/collection/Seq;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Seq;->prefixLength(Lscala/Function1;)I

    move-result p0

    return p0
.end method

.method public static reverseIterator(Lscala/collection/generic/SeqForwarder;)Lscala/collection/Iterator;
    .locals 0

    .line 47
    invoke-interface {p0}, Lscala/collection/generic/SeqForwarder;->underlying()Lscala/collection/Seq;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Seq;->reverseIterator()Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static segmentLength(Lscala/collection/generic/SeqForwarder;Lscala/Function1;I)I
    .locals 0

    .line 37
    invoke-interface {p0}, Lscala/collection/generic/SeqForwarder;->underlying()Lscala/collection/Seq;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lscala/collection/Seq;->segmentLength(Lscala/Function1;I)I

    move-result p0

    return p0
.end method

.method public static startsWith(Lscala/collection/generic/SeqForwarder;Lscala/collection/GenSeq;)Z
    .locals 0

    .line 49
    invoke-interface {p0}, Lscala/collection/generic/SeqForwarder;->underlying()Lscala/collection/Seq;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Seq;->startsWith(Lscala/collection/GenSeq;)Z

    move-result p0

    return p0
.end method

.method public static startsWith(Lscala/collection/generic/SeqForwarder;Lscala/collection/GenSeq;I)Z
    .locals 0

    .line 48
    invoke-interface {p0}, Lscala/collection/generic/SeqForwarder;->underlying()Lscala/collection/Seq;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lscala/collection/Seq;->startsWith(Lscala/collection/GenSeq;I)Z

    move-result p0

    return p0
.end method
