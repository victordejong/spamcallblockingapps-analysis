.class public abstract Lscala/util/matching/Regex$MatchData$class;
.super Ljava/lang/Object;
.source "Regex.scala"


# direct methods
.method public static $init$(Lscala/util/matching/Regex$MatchData;)V
    .locals 0

    return-void
.end method

.method public static after(Lscala/util/matching/Regex$MatchData;)Ljava/lang/CharSequence;
    .locals 2

    .line 641
    invoke-interface {p0}, Lscala/util/matching/Regex$MatchData;->end()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-interface {p0}, Lscala/util/matching/Regex$MatchData;->source()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p0}, Lscala/util/matching/Regex$MatchData;->end()I

    move-result v1

    invoke-interface {p0}, Lscala/util/matching/Regex$MatchData;->source()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    invoke-interface {v0, v1, p0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static after(Lscala/util/matching/Regex$MatchData;I)Ljava/lang/CharSequence;
    .locals 1

    .line 648
    invoke-interface {p0, p1}, Lscala/util/matching/Regex$MatchData;->end(I)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-interface {p0}, Lscala/util/matching/Regex$MatchData;->source()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p0, p1}, Lscala/util/matching/Regex$MatchData;->end(I)I

    move-result p1

    invoke-interface {p0}, Lscala/util/matching/Regex$MatchData;->source()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    invoke-interface {v0, p1, p0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static before(Lscala/util/matching/Regex$MatchData;)Ljava/lang/CharSequence;
    .locals 2

    .line 627
    invoke-interface {p0}, Lscala/util/matching/Regex$MatchData;->start()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-interface {p0}, Lscala/util/matching/Regex$MatchData;->source()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0}, Lscala/util/matching/Regex$MatchData;->start()I

    move-result p0

    invoke-interface {v0, v1, p0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static before(Lscala/util/matching/Regex$MatchData;I)Ljava/lang/CharSequence;
    .locals 2

    .line 634
    invoke-interface {p0, p1}, Lscala/util/matching/Regex$MatchData;->start(I)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-interface {p0}, Lscala/util/matching/Regex$MatchData;->source()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, p1}, Lscala/util/matching/Regex$MatchData;->start(I)I

    move-result p0

    invoke-interface {v0, v1, p0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static group(Lscala/util/matching/Regex$MatchData;I)Ljava/lang/String;
    .locals 2

    .line 617
    invoke-interface {p0, p1}, Lscala/util/matching/Regex$MatchData;->start(I)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-interface {p0}, Lscala/util/matching/Regex$MatchData;->source()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p0, p1}, Lscala/util/matching/Regex$MatchData;->start(I)I

    move-result v1

    invoke-interface {p0, p1}, Lscala/util/matching/Regex$MatchData;->end(I)I

    move-result p0

    invoke-interface {v0, v1, p0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static group(Lscala/util/matching/Regex$MatchData;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 659
    invoke-interface {p0}, Lscala/util/matching/Regex$MatchData;->scala$util$matching$Regex$MatchData$$nameToIndex()Lscala/collection/immutable/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/immutable/Map;->get(Ljava/lang/Object;)Lscala/Option;

    move-result-object v0

    .line 660
    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 661
    instance-of p1, v0, Lscala/Some;

    if-eqz p1, :cond_0

    check-cast v0, Lscala/Some;

    invoke-virtual {v0}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {p0, p1}, Lscala/util/matching/Regex$MatchData;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 659
    :cond_0
    new-instance p0, Lscala/MatchError;

    invoke-direct {p0, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 660
    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "group name "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    const-string v0, " not defined"

    invoke-virtual {p1, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static matched(Lscala/util/matching/Regex$MatchData;)Ljava/lang/String;
    .locals 2

    .line 610
    invoke-interface {p0}, Lscala/util/matching/Regex$MatchData;->start()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-interface {p0}, Lscala/util/matching/Regex$MatchData;->source()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p0}, Lscala/util/matching/Regex$MatchData;->start()I

    move-result v1

    invoke-interface {p0}, Lscala/util/matching/Regex$MatchData;->end()I

    move-result p0

    invoke-interface {v0, v1, p0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static scala$util$matching$Regex$MatchData$$nameToIndex(Lscala/util/matching/Regex$MatchData;)Lscala/collection/immutable/Map;
    .locals 2

    .line 651
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v0}, Lscala/Predef$;->Map()Lscala/collection/immutable/Map$;

    move-result-object v0

    sget-object v1, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-virtual {v0, v1}, Lscala/collection/immutable/Map$;->apply(Lscala/collection/Seq;)Lscala/collection/GenMap;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/MapLike;

    invoke-interface {p0}, Lscala/util/matching/Regex$MatchData;->groupNames()Lscala/collection/Seq;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Seq;->toList()Lscala/collection/immutable/List;

    move-result-object p0

    const-string v1, ""

    invoke-virtual {p0, v1}, Lscala/collection/immutable/List;->$colon$colon(Ljava/lang/Object;)Lscala/collection/immutable/List;

    move-result-object p0

    sget-object v1, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    invoke-virtual {v1}, Lscala/collection/immutable/List$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v1

    invoke-virtual {p0, v1}, Lscala/collection/immutable/List;->zipWithIndex(Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/GenTraversableOnce;

    invoke-interface {v0, p0}, Lscala/collection/immutable/MapLike;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/immutable/Map;

    move-result-object p0

    return-object p0
.end method

.method public static subgroups(Lscala/util/matching/Regex$MatchData;)Lscala/collection/immutable/List;
    .locals 3

    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 621
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p0}, Lscala/util/matching/Regex$MatchData;->groupCount()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lscala/runtime/RichInt$;->to$extension0(II)Lscala/collection/immutable/Range$Inclusive;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/Range$Inclusive;->toList()Lscala/collection/immutable/List;

    move-result-object v0

    new-instance v1, Lscala/util/matching/Regex$MatchData$$anonfun$subgroups$1;

    invoke-direct {v1, p0}, Lscala/util/matching/Regex$MatchData$$anonfun$subgroups$1;-><init>(Lscala/util/matching/Regex$MatchData;)V

    sget-object p0, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    invoke-virtual {p0}, Lscala/collection/immutable/List$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lscala/collection/immutable/List;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/immutable/List;

    return-object p0
.end method

.method public static toString(Lscala/util/matching/Regex$MatchData;)Ljava/lang/String;
    .locals 0

    .line 665
    invoke-interface {p0}, Lscala/util/matching/Regex$MatchData;->matched()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
