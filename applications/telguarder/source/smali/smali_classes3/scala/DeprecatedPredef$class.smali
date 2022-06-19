.class public abstract Lscala/DeprecatedPredef$class;
.super Ljava/lang/Object;
.source "Predef.scala"


# direct methods
.method public static $init$(Lscala/Predef$;)V
    .locals 0

    return-void
.end method

.method public static any2ArrowAssoc(Lscala/Predef$;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public static any2Ensuring(Lscala/Predef$;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public static any2stringfmt(Lscala/Predef$;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public static arrayToCharSequence(Lscala/Predef$;[C)Ljava/lang/CharSequence;
    .locals 0

    .line 427
    new-instance p0, Lscala/Predef$ArrayCharSequence;

    invoke-direct {p0, p1}, Lscala/Predef$ArrayCharSequence;-><init>([C)V

    return-object p0
.end method

.method public static exceptionWrapper(Lscala/Predef$;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    return-object p1
.end method

.method public static readBoolean(Lscala/Predef$;)Z
    .locals 0

    .line 431
    sget-object p0, Lscala/io/StdIn$;->MODULE$:Lscala/io/StdIn$;

    invoke-virtual {p0}, Lscala/io/StdIn$;->readBoolean()Z

    move-result p0

    return p0
.end method

.method public static readByte(Lscala/Predef$;)B
    .locals 0

    .line 432
    sget-object p0, Lscala/io/StdIn$;->MODULE$:Lscala/io/StdIn$;

    invoke-virtual {p0}, Lscala/io/StdIn$;->readByte()B

    move-result p0

    return p0
.end method

.method public static readChar(Lscala/Predef$;)C
    .locals 0

    .line 434
    sget-object p0, Lscala/io/StdIn$;->MODULE$:Lscala/io/StdIn$;

    invoke-virtual {p0}, Lscala/io/StdIn$;->readChar()C

    move-result p0

    return p0
.end method

.method public static readDouble(Lscala/Predef$;)D
    .locals 2

    .line 438
    sget-object p0, Lscala/io/StdIn$;->MODULE$:Lscala/io/StdIn$;

    invoke-virtual {p0}, Lscala/io/StdIn$;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public static readFloat(Lscala/Predef$;)F
    .locals 0

    .line 437
    sget-object p0, Lscala/io/StdIn$;->MODULE$:Lscala/io/StdIn$;

    invoke-virtual {p0}, Lscala/io/StdIn$;->readFloat()F

    move-result p0

    return p0
.end method

.method public static readInt(Lscala/Predef$;)I
    .locals 0

    .line 435
    sget-object p0, Lscala/io/StdIn$;->MODULE$:Lscala/io/StdIn$;

    invoke-virtual {p0}, Lscala/io/StdIn$;->readInt()I

    move-result p0

    return p0
.end method

.method public static readLine(Lscala/Predef$;)Ljava/lang/String;
    .locals 0

    .line 429
    sget-object p0, Lscala/io/StdIn$;->MODULE$:Lscala/io/StdIn$;

    invoke-virtual {p0}, Lscala/io/StdIn$;->readLine()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readLine(Lscala/Predef$;Ljava/lang/String;Lscala/collection/Seq;)Ljava/lang/String;
    .locals 0

    .line 430
    sget-object p0, Lscala/io/StdIn$;->MODULE$:Lscala/io/StdIn$;

    invoke-virtual {p0, p1, p2}, Lscala/io/StdIn$;->readLine(Ljava/lang/String;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readLong(Lscala/Predef$;)J
    .locals 2

    .line 436
    sget-object p0, Lscala/io/StdIn$;->MODULE$:Lscala/io/StdIn$;

    invoke-virtual {p0}, Lscala/io/StdIn$;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static readShort(Lscala/Predef$;)S
    .locals 0

    .line 433
    sget-object p0, Lscala/io/StdIn$;->MODULE$:Lscala/io/StdIn$;

    invoke-virtual {p0}, Lscala/io/StdIn$;->readShort()S

    move-result p0

    return p0
.end method

.method public static readf(Lscala/Predef$;Ljava/lang/String;)Lscala/collection/immutable/List;
    .locals 0

    .line 439
    sget-object p0, Lscala/io/StdIn$;->MODULE$:Lscala/io/StdIn$;

    invoke-virtual {p0, p1}, Lscala/io/StdIn$;->readf(Ljava/lang/String;)Lscala/collection/immutable/List;

    move-result-object p0

    return-object p0
.end method

.method public static readf1(Lscala/Predef$;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 440
    sget-object p0, Lscala/io/StdIn$;->MODULE$:Lscala/io/StdIn$;

    invoke-virtual {p0, p1}, Lscala/io/StdIn$;->readf1(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static readf2(Lscala/Predef$;Ljava/lang/String;)Lscala/Tuple2;
    .locals 0

    .line 441
    sget-object p0, Lscala/io/StdIn$;->MODULE$:Lscala/io/StdIn$;

    invoke-virtual {p0, p1}, Lscala/io/StdIn$;->readf2(Ljava/lang/String;)Lscala/Tuple2;

    move-result-object p0

    return-object p0
.end method

.method public static readf3(Lscala/Predef$;Ljava/lang/String;)Lscala/Tuple3;
    .locals 0

    .line 442
    sget-object p0, Lscala/io/StdIn$;->MODULE$:Lscala/io/StdIn$;

    invoke-virtual {p0, p1}, Lscala/io/StdIn$;->readf3(Ljava/lang/String;)Lscala/Tuple3;

    move-result-object p0

    return-object p0
.end method

.method public static seqToCharSequence(Lscala/Predef$;Lscala/collection/IndexedSeq;)Ljava/lang/CharSequence;
    .locals 0

    .line 426
    new-instance p0, Lscala/Predef$SeqCharSequence;

    invoke-direct {p0, p1}, Lscala/Predef$SeqCharSequence;-><init>(Lscala/collection/IndexedSeq;)V

    return-object p0
.end method
