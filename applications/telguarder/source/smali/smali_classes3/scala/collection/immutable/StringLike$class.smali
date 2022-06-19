.class public abstract Lscala/collection/immutable/StringLike$class;
.super Ljava/lang/Object;
.source "StringLike.scala"


# direct methods
.method public static $init$(Lscala/collection/immutable/StringLike;)V
    .locals 0

    return-void
.end method

.method public static $times(Lscala/collection/immutable/StringLike;I)Ljava/lang/String;
    .locals 9

    .line 69
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    .line 70
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v1, Lscala/collection/immutable/Range$;->MODULE$:Lscala/collection/immutable/Range$;

    new-instance v1, Lscala/collection/immutable/Range;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, p1, v3}, Lscala/collection/immutable/Range;-><init>(III)V

    invoke-virtual {v1}, Lscala/collection/immutable/Range;->scala$collection$immutable$Range$$validateMaxLength()V

    invoke-virtual {v1}, Lscala/collection/immutable/Range;->start()I

    move-result p1

    const/high16 v4, -0x80000000

    if-ne p1, v4, :cond_1

    invoke-virtual {v1}, Lscala/collection/immutable/Range;->end()I

    move-result p1

    if-eq p1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {v1}, Lscala/collection/immutable/Range;->start()I

    move-result v4

    invoke-virtual {v1}, Lscala/collection/immutable/Range;->terminalElement()I

    move-result v5

    invoke-virtual {v1}, Lscala/collection/immutable/Range;->step()I

    move-result v6

    const/4 v7, 0x0

    :goto_2
    if-eqz p1, :cond_2

    if-eq v4, v5, :cond_3

    goto :goto_3

    :cond_2
    invoke-virtual {v1}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v8

    if-ge v7, v8, :cond_3

    :goto_3
    const/4 v8, 0x1

    goto :goto_4

    :cond_3
    const/4 v8, 0x0

    :goto_4
    if-eqz v8, :cond_4

    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v4, v6

    goto :goto_2

    .line 71
    :cond_4
    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static apply(Lscala/collection/immutable/StringLike;I)C
    .locals 0

    .line 52
    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method public static capitalize(Lscala/collection/immutable/StringLike;)Ljava/lang/String;
    .locals 3

    .line 142
    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 143
    :cond_0
    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-string p0, ""

    goto :goto_0

    :cond_1
    sget-object v0, Lscala/runtime/RichChar$;->MODULE$:Lscala/runtime/RichChar$;

    .line 144
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Lscala/runtime/RichChar$;->isUpper$extension(C)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 146
    :cond_2
    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 147
    sget-object v0, Lscala/runtime/RichChar$;->MODULE$:Lscala/runtime/RichChar$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    aget-char v1, p0, v2

    invoke-virtual {v0, v1}, Lscala/runtime/RichChar$;->toUpper$extension(C)C

    move-result v0

    aput-char v0, p0, v2

    .line 148
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static compare(Lscala/collection/immutable/StringLike;Ljava/lang/String;)I
    .locals 0

    .line 74
    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static format(Lscala/collection/immutable/StringLike;Lscala/collection/Seq;)Ljava/lang/String;
    .locals 2

    .line 318
    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lscala/collection/immutable/StringLike$$anonfun$format$1;

    invoke-direct {v1, p0}, Lscala/collection/immutable/StringLike$$anonfun$format$1;-><init>(Lscala/collection/immutable/StringLike;)V

    sget-object p0, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {p0}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object p0

    invoke-interface {p1, v1, p0}, Lscala/collection/Seq;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/TraversableOnce;

    sget-object p1, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p1}, Lscala/reflect/ClassTag$;->AnyRef()Lscala/reflect/ClassTag;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/TraversableOnce;->toArray(Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatLocal(Lscala/collection/immutable/StringLike;Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;
    .locals 2

    .line 335
    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lscala/collection/immutable/StringLike$$anonfun$formatLocal$1;

    invoke-direct {v1, p0}, Lscala/collection/immutable/StringLike$$anonfun$formatLocal$1;-><init>(Lscala/collection/immutable/StringLike;)V

    sget-object p0, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {p0}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object p0

    invoke-interface {p2, v1, p0}, Lscala/collection/Seq;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/TraversableOnce;

    sget-object p2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p2}, Lscala/reflect/ClassTag$;->AnyRef()Lscala/reflect/ClassTag;

    move-result-object p2

    invoke-interface {p0, p2}, Lscala/collection/TraversableOnce;->toArray(Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p1, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static length(Lscala/collection/immutable/StringLike;)I
    .locals 0

    .line 54
    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public static lines(Lscala/collection/immutable/StringLike;)Lscala/collection/Iterator;
    .locals 2

    .line 128
    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->linesWithSeparators()Lscala/collection/Iterator;

    move-result-object v0

    new-instance v1, Lscala/collection/immutable/StringLike$$anonfun$lines$1;

    invoke-direct {v1, p0}, Lscala/collection/immutable/StringLike$$anonfun$lines$1;-><init>(Lscala/collection/immutable/StringLike;)V

    invoke-interface {v0, v1}, Lscala/collection/Iterator;->map(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static linesIterator(Lscala/collection/immutable/StringLike;)Lscala/collection/Iterator;
    .locals 2

    .line 136
    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->linesWithSeparators()Lscala/collection/Iterator;

    move-result-object v0

    new-instance v1, Lscala/collection/immutable/StringLike$$anonfun$linesIterator$1;

    invoke-direct {v1, p0}, Lscala/collection/immutable/StringLike$$anonfun$linesIterator$1;-><init>(Lscala/collection/immutable/StringLike;)V

    invoke-interface {v0, v1}, Lscala/collection/Iterator;->map(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static linesWithSeparators(Lscala/collection/immutable/StringLike;)Lscala/collection/Iterator;
    .locals 1

    .line 109
    new-instance v0, Lscala/collection/immutable/StringLike$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/immutable/StringLike$$anon$1;-><init>(Lscala/collection/immutable/StringLike;)V

    return-object v0
.end method

.method public static mkString(Lscala/collection/immutable/StringLike;)Ljava/lang/String;
    .locals 0

    .line 56
    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static parseBoolean(Lscala/collection/immutable/StringLike;Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_2

    .line 287
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "true"

    .line 288
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "false"

    .line 289
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    :goto_0
    return p0

    .line 290
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "For input string: \""

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    const-string v0, "\""

    invoke-virtual {p1, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 293
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "For input string: \"null\""

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static r(Lscala/collection/immutable/StringLike;)Lscala/util/matching/Regex;
    .locals 1

    .line 244
    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-interface {p0, v0}, Lscala/collection/immutable/StringLike;->r(Lscala/collection/Seq;)Lscala/util/matching/Regex;

    move-result-object p0

    return-object p0
.end method

.method public static r(Lscala/collection/immutable/StringLike;Lscala/collection/Seq;)Lscala/util/matching/Regex;
    .locals 1

    .line 255
    new-instance v0, Lscala/util/matching/Regex;

    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lscala/util/matching/Regex;-><init>(Ljava/lang/String;Lscala/collection/Seq;)V

    return-object v0
.end method

.method public static replaceAllLiterally(Lscala/collection/immutable/StringLike;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 174
    sget-object v0, Lscala/util/matching/Regex$;->MODULE$:Lscala/util/matching/Regex$;

    invoke-virtual {v0, p1}, Lscala/util/matching/Regex$;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 175
    sget-object v0, Lscala/util/matching/Regex$;->MODULE$:Lscala/util/matching/Regex$;

    invoke-virtual {v0, p2}, Lscala/util/matching/Regex$;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 177
    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static scala$collection$immutable$StringLike$$escape(Lscala/collection/immutable/StringLike;C)Ljava/lang/String;
    .locals 1

    .line 204
    new-instance p0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v0, "\\Q"

    invoke-virtual {p0, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p0

    const-string p1, "\\E"

    invoke-virtual {p0, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static scala$collection$immutable$StringLike$$isLineBreak(Lscala/collection/immutable/StringLike;C)Z
    .locals 0

    const/16 p0, 0xa

    if-eq p1, p0, :cond_1

    const/16 p0, 0xc

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static scala$collection$immutable$StringLike$$unwrapArg(Lscala/collection/immutable/StringLike;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 298
    instance-of p0, p1, Lscala/math/ScalaNumber;

    if-eqz p0, :cond_0

    check-cast p1, Lscala/math/ScalaNumber;

    invoke-virtual {p1}, Lscala/math/ScalaNumber;->underlying()Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static slice(Lscala/collection/immutable/StringLike;II)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 59
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lscala/runtime/RichInt$;->max$extension(II)I

    move-result p1

    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 60
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->length()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result p2

    if-lt p1, p2, :cond_0

    .line 62
    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 63
    :cond_0
    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    new-instance v1, Lscala/collection/immutable/StringOps;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object p0

    check-cast p0, Lscala/collection/mutable/Builder;

    invoke-interface {p0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static split(Lscala/collection/immutable/StringLike;C)[Ljava/lang/String;
    .locals 7

    .line 207
    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object p0

    .line 208
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v2, :cond_3

    .line 211
    new-instance v4, Lscala/collection/mutable/ArrayBuilder$ofRef;

    sget-object v5, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    const-class v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object v5

    invoke-direct {v4, v5}, Lscala/collection/mutable/ArrayBuilder$ofRef;-><init>(Lscala/reflect/ClassTag;)V

    .line 214
    :cond_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lscala/collection/mutable/ArrayBuilder$ofRef;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuilder$ofRef;

    add-int/lit8 v1, v0, 0x1

    .line 217
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 220
    new-instance p1, Lscala/collection/immutable/StringOps;

    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-direct {p1, p0}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lscala/collection/immutable/StringOps;->size()I

    move-result p1

    if-eq v1, p1, :cond_1

    .line 221
    new-instance p1, Lscala/collection/immutable/StringOps;

    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-direct {p1, p0}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lscala/collection/immutable/StringOps;->size()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lscala/collection/mutable/ArrayBuilder$ofRef;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuilder$ofRef;

    goto :goto_0

    .line 220
    :cond_1
    sget-object p0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 223
    :goto_0
    invoke-virtual {v4}, Lscala/collection/mutable/ArrayBuilder$ofRef;->result()[Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, [Ljava/lang/String;

    .line 224
    array-length p0, v1

    :goto_1
    move v5, p0

    if-lez v5, :cond_2

    add-int/lit8 p0, v5, -0x1

    .line 225
    aget-object p1, v1, p0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 226
    :cond_2
    array-length p0, v1

    if-eq v5, p0, :cond_4

    .line 227
    new-array p0, v5, [Ljava/lang/String;

    .line 228
    sget-object v0, Lscala/Array$;->MODULE$:Lscala/Array$;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, p0

    goto :goto_2

    :cond_3
    new-array p1, v3, [Ljava/lang/String;

    aput-object p0, p1, v1

    .line 231
    check-cast p1, [Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, [Ljava/lang/String;

    :cond_4
    :goto_2
    return-object v1
.end method

.method public static split(Lscala/collection/immutable/StringLike;[C)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/regex/PatternSyntaxException;
        }
    .end annotation

    .line 236
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v1, p1}, Lscala/Predef$;->charArrayOps([C)Lscala/collection/mutable/ArrayOps;

    move-result-object p1

    new-instance v1, Lscala/collection/immutable/StringLike$$anonfun$1;

    invoke-direct {v1, p0}, Lscala/collection/immutable/StringLike$$anonfun$1;-><init>(Lscala/collection/immutable/StringLike;)V

    const-string v2, "["

    invoke-interface {p1, v2, v1}, Lscala/collection/mutable/ArrayOps;->foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 237
    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static stripLineEnd(Lscala/collection/immutable/StringLike;)Ljava/lang/String;
    .locals 6

    .line 89
    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 90
    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, -0x1

    .line 92
    invoke-interface {p0, v1}, Lscala/collection/immutable/StringLike;->apply(I)C

    move-result v2

    .line 93
    invoke-static {p0, v2}, Lscala/collection/immutable/StringLike$class;->scala$collection$immutable$StringLike$$isLineBreak(Lscala/collection/immutable/StringLike;C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 94
    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0xa

    if-ne v2, v5, :cond_1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    sub-int/2addr v0, v2

    invoke-interface {p0, v0}, Lscala/collection/immutable/StringLike;->apply(I)C

    move-result p0

    const/16 v2, 0xd

    if-ne p0, v2, :cond_1

    move v1, v0

    :cond_1
    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 96
    :cond_2
    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static stripMargin(Lscala/collection/immutable/StringLike;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x7c

    .line 202
    invoke-interface {p0, v0}, Lscala/collection/immutable/StringLike;->stripMargin(C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static stripMargin(Lscala/collection/immutable/StringLike;C)Ljava/lang/String;
    .locals 3

    .line 186
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    .line 187
    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->linesWithSeparators()Lscala/collection/Iterator;

    move-result-object v1

    new-instance v2, Lscala/collection/immutable/StringLike$$anonfun$stripMargin$1;

    invoke-direct {v2, p0, v0, p1}, Lscala/collection/immutable/StringLike$$anonfun$stripMargin$1;-><init>(Lscala/collection/immutable/StringLike;Lscala/collection/mutable/StringBuilder;C)V

    invoke-interface {v1, v2}, Lscala/collection/Iterator;->foreach(Lscala/Function1;)V

    .line 194
    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static stripPrefix(Lscala/collection/immutable/StringLike;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 155
    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 156
    :cond_0
    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static stripSuffix(Lscala/collection/immutable/StringLike;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 162
    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p0, p1

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 163
    :cond_0
    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static toArray(Lscala/collection/immutable/StringLike;Lscala/reflect/ClassTag;)Ljava/lang/Object;
    .locals 0

    .line 296
    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    return-object p0
.end method

.method public static toBoolean(Lscala/collection/immutable/StringLike;)Z
    .locals 1

    .line 260
    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lscala/collection/immutable/StringLike$class;->parseBoolean(Lscala/collection/immutable/StringLike;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static toByte(Lscala/collection/immutable/StringLike;)B
    .locals 0

    .line 264
    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result p0

    return p0
.end method

.method public static toDouble(Lscala/collection/immutable/StringLike;)D
    .locals 2

    .line 284
    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toFloat(Lscala/collection/immutable/StringLike;)F
    .locals 0

    .line 280
    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static toInt(Lscala/collection/immutable/StringLike;)I
    .locals 0

    .line 272
    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static toLong(Lscala/collection/immutable/StringLike;)J
    .locals 2

    .line 276
    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static toShort(Lscala/collection/immutable/StringLike;)S
    .locals 0

    .line 268
    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result p0

    return p0
.end method
