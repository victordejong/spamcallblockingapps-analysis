.class public abstract Lscala/math/ScalaNumericAnyConversions$class;
.super Ljava/lang/Object;
.source "ScalaNumericConversions.scala"


# direct methods
.method public static $init$(Lscala/math/ScalaNumericAnyConversions;)V
    .locals 0

    return-void
.end method

.method public static isValidByte(Lscala/math/ScalaNumericAnyConversions;)Z
    .locals 1

    .line 72
    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->isWhole()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->toInt()I

    move-result v0

    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->toByte()B

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isValidChar(Lscala/math/ScalaNumericAnyConversions;)Z
    .locals 1

    .line 87
    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->isWhole()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->toInt()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->toInt()I

    move-result p0

    const v0, 0xffff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isValidInt(Lscala/math/ScalaNumericAnyConversions;)Z
    .locals 4

    .line 82
    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->isWhole()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->toLong()J

    move-result-wide v0

    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->toInt()I

    move-result p0

    int-to-long v2, p0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isValidShort(Lscala/math/ScalaNumericAnyConversions;)Z
    .locals 1

    .line 77
    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->isWhole()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->toInt()I

    move-result v0

    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->toShort()S

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static toByte(Lscala/math/ScalaNumericAnyConversions;)B
    .locals 0

    .line 42
    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->byteValue()B

    move-result p0

    return p0
.end method

.method public static toChar(Lscala/math/ScalaNumericAnyConversions;)C
    .locals 0

    .line 37
    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->intValue()I

    move-result p0

    int-to-char p0, p0

    return p0
.end method

.method public static toDouble(Lscala/math/ScalaNumericAnyConversions;)D
    .locals 2

    .line 67
    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static toFloat(Lscala/math/ScalaNumericAnyConversions;)F
    .locals 0

    .line 62
    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->floatValue()F

    move-result p0

    return p0
.end method

.method public static toInt(Lscala/math/ScalaNumericAnyConversions;)I
    .locals 0

    .line 52
    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->intValue()I

    move-result p0

    return p0
.end method

.method public static toLong(Lscala/math/ScalaNumericAnyConversions;)J
    .locals 2

    .line 57
    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static toShort(Lscala/math/ScalaNumericAnyConversions;)S
    .locals 0

    .line 47
    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->shortValue()S

    move-result p0

    return p0
.end method

.method public static unifiedPrimitiveEquals(Lscala/math/ScalaNumericAnyConversions;Ljava/lang/Object;)Z
    .locals 5

    .line 109
    instance-of v0, p1, Ljava/lang/Character;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result p1

    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->isValidChar()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->toInt()I

    move-result p0

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v2, v1

    goto/16 :goto_1

    .line 111
    :cond_1
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_2

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToByte(Ljava/lang/Object;)B

    move-result p1

    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->isValidByte()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->toByte()B

    move-result p0

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 112
    :cond_2
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_3

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToShort(Ljava/lang/Object;)S

    move-result p1

    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->isValidShort()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->toShort()S

    move-result p0

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 113
    :cond_3
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->isValidInt()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->toInt()I

    move-result p0

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 114
    :cond_4
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_5

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v3

    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->toLong()J

    move-result-wide p0

    cmp-long v0, p0, v3

    if-nez v0, :cond_0

    goto :goto_0

    .line 115
    :cond_5
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_6

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->toFloat()F

    move-result p0

    cmpl-float p0, p0, p1

    if-nez p0, :cond_0

    goto :goto_0

    .line 116
    :cond_6
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_7

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v3

    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->toDouble()D

    move-result-wide p0

    cmpl-double v0, p0, v3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_7
    :goto_1
    return v2
.end method

.method public static unifiedPrimitiveHashcode(Lscala/math/ScalaNumericAnyConversions;)I
    .locals 4

    .line 90
    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->toLong()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    long-to-int p0, v0

    goto :goto_0

    .line 91
    :cond_0
    sget-object p0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    .line 92
    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/runtime/ScalaRunTime$;->hash(Ljava/lang/Object;)I

    move-result p0

    :goto_0
    return p0
.end method
