.class public abstract Lscala/io/StdIn$class;
.super Ljava/lang/Object;
.source "StdIn.scala"


# direct methods
.method public static $init$(Lscala/io/StdIn;)V
    .locals 0

    return-void
.end method

.method public static readBoolean(Lscala/io/StdIn;)Z
    .locals 2

    .line 40
    invoke-interface {p0}, Lscala/io/StdIn;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 44
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "true"

    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "t"

    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "yes"

    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "y"

    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 42
    :cond_4
    new-instance p0, Ljava/io/EOFException;

    const-string v0, "Console has reached end of input"

    invoke-direct {p0, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readByte(Lscala/io/StdIn;)B
    .locals 2

    .line 61
    invoke-interface {p0}, Lscala/io/StdIn;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 65
    new-instance v0, Lscala/collection/immutable/StringOps;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-direct {v0, p0}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lscala/collection/immutable/StringOps;->toByte()B

    move-result p0

    return p0

    .line 63
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    const-string v0, "Console has reached end of input"

    invoke-direct {p0, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readChar(Lscala/io/StdIn;)C
    .locals 1

    .line 91
    invoke-interface {p0}, Lscala/io/StdIn;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    .line 93
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    const-string v0, "Console has reached end of input"

    invoke-direct {p0, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readDouble(Lscala/io/StdIn;)D
    .locals 2

    .line 151
    invoke-interface {p0}, Lscala/io/StdIn;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 155
    new-instance v0, Lscala/collection/immutable/StringOps;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-direct {v0, p0}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lscala/collection/immutable/StringOps;->toDouble()D

    move-result-wide v0

    return-wide v0

    .line 153
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    const-string v0, "Console has reached end of input"

    invoke-direct {p0, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readFloat(Lscala/io/StdIn;)F
    .locals 2

    .line 136
    invoke-interface {p0}, Lscala/io/StdIn;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 140
    new-instance v0, Lscala/collection/immutable/StringOps;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-direct {v0, p0}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lscala/collection/immutable/StringOps;->toFloat()F

    move-result p0

    return p0

    .line 138
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    const-string v0, "Console has reached end of input"

    invoke-direct {p0, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readInt(Lscala/io/StdIn;)I
    .locals 2

    .line 106
    invoke-interface {p0}, Lscala/io/StdIn;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 110
    new-instance v0, Lscala/collection/immutable/StringOps;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-direct {v0, p0}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lscala/collection/immutable/StringOps;->toInt()I

    move-result p0

    return p0

    .line 108
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    const-string v0, "Console has reached end of input"

    invoke-direct {p0, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readLine(Lscala/io/StdIn;)Ljava/lang/String;
    .locals 0

    .line 18
    sget-object p0, Lscala/Console$;->MODULE$:Lscala/Console$;

    invoke-virtual {p0}, Lscala/Console$;->in()Ljava/io/BufferedReader;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readLine(Lscala/io/StdIn;Ljava/lang/String;Lscala/collection/Seq;)Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lscala/Console$;->MODULE$:Lscala/Console$;

    invoke-virtual {v0, p1, p2}, Lscala/Console$;->printf(Ljava/lang/String;Lscala/collection/Seq;)V

    .line 29
    sget-object p1, Lscala/Console$;->MODULE$:Lscala/Console$;

    invoke-virtual {p1}, Lscala/Console$;->out()Ljava/io/PrintStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    .line 30
    invoke-interface {p0}, Lscala/io/StdIn;->readLine()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readLong(Lscala/io/StdIn;)J
    .locals 2

    .line 121
    invoke-interface {p0}, Lscala/io/StdIn;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 125
    new-instance v0, Lscala/collection/immutable/StringOps;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-direct {v0, p0}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lscala/collection/immutable/StringOps;->toLong()J

    move-result-wide v0

    return-wide v0

    .line 123
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    const-string v0, "Console has reached end of input"

    invoke-direct {p0, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readShort(Lscala/io/StdIn;)S
    .locals 2

    .line 76
    invoke-interface {p0}, Lscala/io/StdIn;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 80
    new-instance v0, Lscala/collection/immutable/StringOps;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-direct {v0, p0}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lscala/collection/immutable/StringOps;->toShort()S

    move-result p0

    return p0

    .line 78
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    const-string v0, "Console has reached end of input"

    invoke-direct {p0, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readf(Lscala/io/StdIn;Ljava/lang/String;)Lscala/collection/immutable/List;
    .locals 2

    .line 168
    invoke-interface {p0}, Lscala/io/StdIn;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    new-instance v1, Ljava/text/MessageFormat;

    invoke-direct {v1, p1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/MessageFormat;->parse(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lscala/io/StdIn$class;->textComponents(Lscala/io/StdIn;[Ljava/lang/Object;)Lscala/collection/immutable/List;

    move-result-object p0

    return-object p0

    .line 170
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "Console has reached end of input"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readf1(Lscala/io/StdIn;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 182
    invoke-interface {p0, p1}, Lscala/io/StdIn;->readf(Ljava/lang/String;)Lscala/collection/immutable/List;

    move-result-object p0

    invoke-virtual {p0}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static readf2(Lscala/io/StdIn;Ljava/lang/String;)Lscala/Tuple2;
    .locals 1

    .line 192
    invoke-interface {p0, p1}, Lscala/io/StdIn;->readf(Ljava/lang/String;)Lscala/collection/immutable/List;

    move-result-object p0

    .line 193
    new-instance p1, Lscala/Tuple2;

    invoke-virtual {p0}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/IterableLike;

    invoke-interface {p0}, Lscala/collection/IterableLike;->head()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public static readf3(Lscala/io/StdIn;Ljava/lang/String;)Lscala/Tuple3;
    .locals 2

    .line 204
    invoke-interface {p0, p1}, Lscala/io/StdIn;->readf(Ljava/lang/String;)Lscala/collection/immutable/List;

    move-result-object p0

    .line 205
    new-instance p1, Lscala/Tuple3;

    invoke-virtual {p0}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/IterableLike;

    invoke-interface {v1}, Lscala/collection/IterableLike;->head()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/TraversableLike;

    invoke-interface {p0}, Lscala/collection/TraversableLike;->tail()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/IterableLike;

    invoke-interface {p0}, Lscala/collection/IterableLike;->head()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Lscala/Tuple3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private static textComponents(Lscala/io/StdIn;[Ljava/lang/Object;)Lscala/collection/immutable/List;
    .locals 3

    .line 209
    array-length p0, p1

    add-int/lit8 p0, p0, -0x1

    .line 210
    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    :goto_0
    if-ltz p0, :cond_8

    .line 212
    aget-object v1, p1, p0

    .line 213
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1

    .line 214
    :cond_0
    instance-of v2, v1, Ljava/lang/Byte;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToByte(B)Ljava/lang/Byte;

    move-result-object v1

    goto :goto_1

    .line 215
    :cond_1
    instance-of v2, v1, Ljava/lang/Short;

    if-eqz v2, :cond_2

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToShort(S)Ljava/lang/Short;

    move-result-object v1

    goto :goto_1

    .line 216
    :cond_2
    instance-of v2, v1, Ljava/lang/Character;

    if-eqz v2, :cond_3

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object v1

    goto :goto_1

    .line 217
    :cond_3
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_4

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 218
    :cond_4
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_5

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1

    .line 219
    :cond_5
    instance-of v2, v1, Ljava/lang/Float;

    if-eqz v2, :cond_6

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_1

    .line 220
    :cond_6
    instance-of v2, v1, Ljava/lang/Double;

    if-eqz v2, :cond_7

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object v1

    .line 212
    :cond_7
    :goto_1
    invoke-virtual {v0, v1}, Lscala/collection/immutable/List;->$colon$colon(Ljava/lang/Object;)Lscala/collection/immutable/List;

    move-result-object v0

    add-int/lit8 p0, p0, -0x1

    goto/16 :goto_0

    :cond_8
    return-object v0
.end method
