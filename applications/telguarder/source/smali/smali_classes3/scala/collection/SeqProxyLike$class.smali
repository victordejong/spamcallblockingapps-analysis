.class public abstract Lscala/collection/SeqProxyLike$class;
.super Ljava/lang/Object;
.source "SeqProxyLike.scala"


# direct methods
.method public static $colon$plus(Lscala/collection/SeqProxyLike;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0

    .line 63
    invoke-interface {p0}, Lscala/collection/SeqProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/SeqLike;

    invoke-interface {p0, p1, p2}, Lscala/collection/SeqLike;->$colon$plus(Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static $init$(Lscala/collection/SeqProxyLike;)V
    .locals 0

    return-void
.end method

.method public static $plus$colon(Lscala/collection/SeqProxyLike;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0

    .line 62
    invoke-interface {p0}, Lscala/collection/SeqProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/SeqLike;

    invoke-interface {p0, p1, p2}, Lscala/collection/SeqLike;->$plus$colon(Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static apply(Lscala/collection/SeqProxyLike;I)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-interface {p0}, Lscala/collection/SeqProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/Function1;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static contains(Lscala/collection/SeqProxyLike;Ljava/lang/Object;)Z
    .locals 0

    .line 55
    invoke-interface {p0}, Lscala/collection/SeqProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/SeqLike;

    invoke-interface {p0, p1}, Lscala/collection/SeqLike;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static containsSlice(Lscala/collection/SeqProxyLike;Lscala/collection/GenSeq;)Z
    .locals 0

    .line 54
    invoke-interface {p0}, Lscala/collection/SeqProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/SeqLike;

    invoke-interface {p0, p1}, Lscala/collection/SeqLike;->indexOfSlice(Lscala/collection/GenSeq;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static corresponds(Lscala/collection/SeqProxyLike;Lscala/collection/GenSeq;Lscala/Function2;)Z
    .locals 0

    .line 65
    invoke-interface {p0}, Lscala/collection/SeqProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/SeqLike;

    invoke-interface {p0, p1, p2}, Lscala/collection/SeqLike;->corresponds(Lscala/collection/GenSeq;Lscala/Function2;)Z

    move-result p0

    return p0
.end method

.method public static diff(Lscala/collection/SeqProxyLike;Lscala/collection/GenSeq;)Lscala/collection/Seq;
    .locals 0

    .line 57
    invoke-interface {p0}, Lscala/collection/SeqProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/SeqLike;

    invoke-interface {p0, p1}, Lscala/collection/SeqLike;->diff(Lscala/collection/GenSeq;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/Seq;

    return-object p0
.end method

.method public static distinct(Lscala/collection/SeqProxyLike;)Lscala/collection/Seq;
    .locals 0

    .line 59
    invoke-interface {p0}, Lscala/collection/SeqProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/SeqLike;

    invoke-interface {p0}, Lscala/collection/SeqLike;->distinct()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/Seq;

    return-object p0
.end method

.method public static endsWith(Lscala/collection/SeqProxyLike;Lscala/collection/GenSeq;)Z
    .locals 0

    .line 49
    invoke-interface {p0}, Lscala/collection/SeqProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/SeqLike;

    invoke-interface {p0, p1}, Lscala/collection/SeqLike;->endsWith(Lscala/collection/GenSeq;)Z

    move-result p0

    return p0
.end method

.method public static indexOf(Lscala/collection/SeqProxyLike;Ljava/lang/Object;)I
    .locals 0

    .line 38
    invoke-interface {p0}, Lscala/collection/SeqProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/GenSeqLike;

    invoke-interface {p0, p1}, Lscala/collection/GenSeqLike;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static indexOf(Lscala/collection/SeqProxyLike;Ljava/lang/Object;I)I
    .locals 0

    .line 39
    invoke-interface {p0}, Lscala/collection/SeqProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/GenSeqLike;

    invoke-interface {p0, p1, p2}, Lscala/collection/GenSeqLike;->indexOf(Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public static indexOfSlice(Lscala/collection/SeqProxyLike;Lscala/collection/GenSeq;)I
    .locals 0

    .line 50
    invoke-interface {p0}, Lscala/collection/SeqProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/SeqLike;

    invoke-interface {p0, p1}, Lscala/collection/SeqLike;->indexOfSlice(Lscala/collection/GenSeq;)I

    move-result p0

    return p0
.end method

.method public static indexOfSlice(Lscala/collection/SeqProxyLike;Lscala/collection/GenSeq;I)I
    .locals 0

    .line 51
    invoke-interface {p0}, Lscala/collection/SeqProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/SeqLike;

    invoke-interface {p0, p1}, Lscala/collection/SeqLike;->indexOfSlice(Lscala/collection/GenSeq;)I

    move-result p0

    return p0
.end method

.method public static indexWhere(Lscala/collection/SeqProxyLike;Lscala/Function1;)I
    .locals 0

    .line 36
    invoke-interface {p0}, Lscala/collection/SeqProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/GenSeqLike;

    invoke-interface {p0, p1}, Lscala/collection/GenSeqLike;->indexWhere(Lscala/Function1;)I

    move-result p0

    return p0
.end method

.method public static indexWhere(Lscala/collection/SeqProxyLike;Lscala/Function1;I)I
    .locals 0

    .line 37
    invoke-interface {p0}, Lscala/collection/SeqProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/SeqLike;

    invoke-interface {p0, p1, p2}, Lscala/collection/SeqLike;->indexWhere(Lscala/Function1;I)I

    move-result p0

    return p0
.end method

.method public static indices(Lscala/collection/SeqProxyLike;)Lscala/collection/immutable/Range;
    .locals 0

    .line 69
    invoke-interface {p0}, Lscala/collection/SeqProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/SeqLike;

    invoke-interface {p0}, Lscala/collection/SeqLike;->indices()Lscala/collection/immutable/Range;

    move-result-object p0

    return-object p0
.end method

.method public static intersect(Lscala/collection/SeqProxyLike;Lscala/collection/GenSeq;)Lscala/collection/Seq;
    .locals 0

    .line 58
    invoke-interface {p0}, Lscala/collection/SeqProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/SeqLike;

    invoke-interface {p0, p1}, Lscala/collection/SeqLike;->intersect(Lscala/collection/GenSeq;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/Seq;

    return-object p0
.end method

.method public static isDefinedAt(Lscala/collection/SeqProxyLike;I)Z
    .locals 0

    .line 33
    invoke-interface {p0}, Lscala/collection/SeqProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/GenSeqLike;

    invoke-interface {p0, p1}, Lscala/collection/GenSeqLike;->isDefinedAt(I)Z

    move-result p0

    return p0
.end method

.method public static lastIndexOf(Lscala/collection/SeqProxyLike;Ljava/lang/Object;)I
    .locals 0

    .line 40
    invoke-interface {p0}, Lscala/collection/SeqProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/GenSeqLike;

    invoke-interface {p0, p1}, Lscala/collection/GenSeqLike;->lastIndexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static lastIndexOf(Lscala/collection/SeqProxyLike;Ljava/lang/Object;I)I
    .locals 2

    .line 41
    invoke-interface {p0}, Lscala/collection/SeqProxyLike;->self()Lscala/collection/Traversable;

    move-result-object v0

    check-cast v0, Lscala/collection/SeqLike;

    new-instance v1, Lscala/collection/SeqProxyLike$$anonfun$lastIndexOf$1;

    invoke-direct {v1, p0, p1}, Lscala/collection/SeqProxyLike$$anonfun$lastIndexOf$1;-><init>(Lscala/collection/SeqProxyLike;Ljava/lang/Object;)V

    invoke-interface {v0, v1, p2}, Lscala/collection/SeqLike;->lastIndexWhere(Lscala/Function1;I)I

    move-result p0

    return p0
.end method

.method public static lastIndexOfSlice(Lscala/collection/SeqProxyLike;Lscala/collection/GenSeq;)I
    .locals 0

    .line 52
    invoke-interface {p0}, Lscala/collection/SeqProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/SeqLike;

    invoke-interface {p0, p1}, Lscala/collection/SeqLike;->lastIndexOfSlice(Lscala/collection/GenSeq;)I

    move-result p0

    return p0
.end method

.method public static lastIndexOfSlice(Lscala/collection/SeqProxyLike;Lscala/collection/GenSeq;I)I
    .locals 0

    .line 53
    invoke-interface {p0}, Lscala/collection/SeqProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/SeqLike;

    invoke-interface {p0, p1, p2}, Lscala/collection/SeqLike;->lastIndexOfSlice(Lscala/collection/GenSeq;I)I

    move-result p0

    return p0
.end method

.method public static lastIndexWhere(Lscala/collection/SeqProxyLike;Lscala/Function1;)I
    .locals 1

    .line 42
    invoke-interface {p0}, Lscala/collection/SeqProxyLike;->self()Lscala/collection/Traversable;

    move-result-object v0

    check-cast v0, Lscala/collection/SeqLike;

    invoke-interface {p0}, Lscala/collection/SeqProxyLike;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {v0, p1, p0}, Lscala/collection/SeqLike;->lastIndexWhere(Lscala/Function1;I)I

    move-result p0

    return p0
.end method

.method public static lastIndexWhere(Lscala/collection/SeqProxyLike;Lscala/Function1;I)I
    .locals 0

    .line 43
    invoke-interface {p0}, Lscala/collection/SeqProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/GenSeqLike;

    invoke-interface {p0, p1}, Lscala/collection/GenSeqLike;->lastIndexWhere(Lscala/Function1;)I

    move-result p0

    return p0
.end method

.method public static length(Lscala/collection/SeqProxyLike;)I
    .locals 0

    .line 30
    invoke-interface {p0}, Lscala/collection/SeqProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/SeqLike;

    invoke-interface {p0}, Lscala/collection/SeqLike;->length()I

    move-result p0

    return p0
.end method

.method public static lengthCompare(Lscala/collection/SeqProxyLike;I)I
    .locals 0

    .line 32
    invoke-interface {p0}, Lscala/collection/SeqProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/SeqLike;

    invoke-interface {p0, p1}, Lscala/collection/SeqLike;->lengthCompare(I)I

    move-result p0

    return p0
.end method

.method public static padTo(Lscala/collection/SeqProxyLike;ILjava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0

    .line 64
    invoke-interface {p0}, Lscala/collection/SeqProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/SeqLike;

    invoke-interface {p0, p1, p2, p3}, Lscala/collection/SeqLike;->padTo(ILjava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static patch(Lscala/collection/SeqProxyLike;ILscala/collection/GenSeq;ILscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0

    .line 60
    invoke-interface {p0}, Lscala/collection/SeqProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/SeqLike;

    invoke-interface {p0, p1, p2, p3, p4}, Lscala/collection/SeqLike;->patch(ILscala/collection/GenSeq;ILscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static prefixLength(Lscala/collection/SeqProxyLike;Lscala/Function1;)I
    .locals 0

    .line 35
    invoke-interface {p0}, Lscala/collection/SeqProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/GenSeqLike;

    invoke-interface {p0, p1}, Lscala/collection/GenSeqLike;->prefixLength(Lscala/Function1;)I

    move-result p0

    return p0
.end method

.method public static reverse(Lscala/collection/SeqProxyLike;)Lscala/collection/Seq;
    .locals 0

    .line 44
    invoke-interface {p0}, Lscala/collection/SeqProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/SeqLike;

    invoke-interface {p0}, Lscala/collection/SeqLike;->reverse()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/Seq;

    return-object p0
.end method

.method public static reverseIterator(Lscala/collection/SeqProxyLike;)Lscala/collection/Iterator;
    .locals 0

    .line 46
    invoke-interface {p0}, Lscala/collection/SeqProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/SeqLike;

    invoke-interface {p0}, Lscala/collection/SeqLike;->reverseIterator()Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static reverseMap(Lscala/collection/SeqProxyLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-interface {p0}, Lscala/collection/SeqProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/SeqLike;

    invoke-interface {p0, p1, p2}, Lscala/collection/SeqLike;->reverseMap(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static segmentLength(Lscala/collection/SeqProxyLike;Lscala/Function1;I)I
    .locals 0

    .line 34
    invoke-interface {p0}, Lscala/collection/SeqProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/SeqLike;

    invoke-interface {p0, p1, p2}, Lscala/collection/SeqLike;->segmentLength(Lscala/Function1;I)I

    move-result p0

    return p0
.end method

.method public static size(Lscala/collection/SeqProxyLike;)I
    .locals 0

    .line 28
    invoke-interface {p0}, Lscala/collection/SeqProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/SeqLike;

    invoke-interface {p0}, Lscala/collection/SeqLike;->size()I

    move-result p0

    return p0
.end method

.method public static sortBy(Lscala/collection/SeqProxyLike;Lscala/Function1;Lscala/math/Ordering;)Lscala/collection/Seq;
    .locals 0

    .line 67
    invoke-interface {p0}, Lscala/collection/SeqProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/SeqLike;

    invoke-interface {p0, p1, p2}, Lscala/collection/SeqLike;->sortBy(Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/Seq;

    return-object p0
.end method

.method public static sortWith(Lscala/collection/SeqProxyLike;Lscala/Function2;)Lscala/collection/Seq;
    .locals 0

    .line 66
    invoke-interface {p0}, Lscala/collection/SeqProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/SeqLike;

    invoke-interface {p0, p1}, Lscala/collection/SeqLike;->sortWith(Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/Seq;

    return-object p0
.end method

.method public static sorted(Lscala/collection/SeqProxyLike;Lscala/math/Ordering;)Lscala/collection/Seq;
    .locals 0

    .line 68
    invoke-interface {p0}, Lscala/collection/SeqProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/SeqLike;

    invoke-interface {p0, p1}, Lscala/collection/SeqLike;->sorted(Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/Seq;

    return-object p0
.end method

.method public static startsWith(Lscala/collection/SeqProxyLike;Lscala/collection/GenSeq;)Z
    .locals 0

    .line 48
    invoke-interface {p0}, Lscala/collection/SeqProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/GenSeqLike;

    invoke-interface {p0, p1}, Lscala/collection/GenSeqLike;->startsWith(Lscala/collection/GenSeq;)Z

    move-result p0

    return p0
.end method

.method public static startsWith(Lscala/collection/SeqProxyLike;Lscala/collection/GenSeq;I)Z
    .locals 0

    .line 47
    invoke-interface {p0}, Lscala/collection/SeqProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/SeqLike;

    invoke-interface {p0, p1, p2}, Lscala/collection/SeqLike;->startsWith(Lscala/collection/GenSeq;I)Z

    move-result p0

    return p0
.end method

.method public static toSeq(Lscala/collection/SeqProxyLike;)Lscala/collection/Seq;
    .locals 0

    .line 29
    invoke-interface {p0}, Lscala/collection/SeqProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/SeqLike;

    invoke-interface {p0}, Lscala/collection/SeqLike;->toSeq()Lscala/collection/Seq;

    move-result-object p0

    return-object p0
.end method

.method public static union(Lscala/collection/SeqProxyLike;Lscala/collection/GenSeq;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0

    .line 56
    invoke-interface {p0}, Lscala/collection/SeqProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/SeqLike;

    invoke-interface {p0, p1, p2}, Lscala/collection/SeqLike;->union(Lscala/collection/GenSeq;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static updated(Lscala/collection/SeqProxyLike;ILjava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-interface {p0}, Lscala/collection/SeqProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/SeqLike;

    invoke-interface {p0, p1, p2, p3}, Lscala/collection/SeqLike;->updated(ILjava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static view(Lscala/collection/SeqProxyLike;)Lscala/collection/SeqView;
    .locals 0

    .line 70
    invoke-interface {p0}, Lscala/collection/SeqProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/SeqLike;

    invoke-interface {p0}, Lscala/collection/SeqLike;->view()Lscala/collection/SeqView;

    move-result-object p0

    return-object p0
.end method

.method public static view(Lscala/collection/SeqProxyLike;II)Lscala/collection/SeqView;
    .locals 0

    .line 71
    invoke-interface {p0}, Lscala/collection/SeqProxyLike;->self()Lscala/collection/Traversable;

    move-result-object p0

    check-cast p0, Lscala/collection/SeqLike;

    invoke-interface {p0, p1, p2}, Lscala/collection/SeqLike;->view(II)Lscala/collection/SeqView;

    move-result-object p0

    return-object p0
.end method
