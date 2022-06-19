.class public final Lscala/runtime/BoxesRunTime;
.super Ljava/lang/Object;
.source "BoxesRunTime.java"


# static fields
.field private static final CHAR:I = 0x0

.field private static final DOUBLE:I = 0x6

.field private static final FLOAT:I = 0x5

.field private static final INT:I = 0x3

.field private static final LONG:I = 0x4

.field private static final OTHER:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 294
    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->typeCode(Ljava/lang/Object;)I

    move-result v0

    .line 295
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->typeCode(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/4 v3, 0x3

    if-gt v2, v3, :cond_1

    .line 298
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrInt(Ljava/lang/Object;I)I

    move-result p0

    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrInt(Ljava/lang/Object;I)I

    move-result p1

    add-int/2addr p0, p1

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v3, 0x4

    if-gt v2, v3, :cond_2

    .line 301
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrLong(Ljava/lang/Object;I)J

    move-result-wide v2

    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrLong(Ljava/lang/Object;I)J

    move-result-wide p0

    add-long/2addr v2, p0

    invoke-static {v2, v3}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v3, 0x5

    if-gt v2, v3, :cond_3

    .line 304
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrFloat(Ljava/lang/Object;I)F

    move-result p0

    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrFloat(Ljava/lang/Object;I)F

    move-result p1

    add-float/2addr p0, p1

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 v3, 0x6

    if-gt v2, v3, :cond_4

    .line 307
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrDouble(Ljava/lang/Object;I)D

    move-result-wide v2

    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrDouble(Ljava/lang/Object;I)D

    move-result-wide p0

    add-double/2addr v2, p0

    invoke-static {v2, v3}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 309
    :cond_4
    new-instance p0, Ljava/lang/NoSuchMethodException;

    invoke-direct {p0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw p0
.end method

.method public static boxToBoolean(Z)Ljava/lang/Boolean;
    .locals 0

    .line 49
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static boxToByte(B)Ljava/lang/Byte;
    .locals 0

    .line 57
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public static boxToCharacter(C)Ljava/lang/Character;
    .locals 0

    .line 53
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0
.end method

.method public static boxToDouble(D)Ljava/lang/Double;
    .locals 0

    .line 79
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static boxToFloat(F)Ljava/lang/Float;
    .locals 0

    .line 73
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static boxToInteger(I)Ljava/lang/Integer;
    .locals 0

    .line 65
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static boxToLong(J)Ljava/lang/Long;
    .locals 0

    .line 69
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static boxToShort(S)Ljava/lang/Short;
    .locals 0

    .line 61
    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method public static complement(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 593
    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->typeCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 595
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrInt(Ljava/lang/Object;I)I

    move-result p0

    not-int p0, p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    .line 598
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrLong(Ljava/lang/Object;I)J

    move-result-wide v0

    not-long v0, v0

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 600
    :cond_1
    new-instance p0, Ljava/lang/NoSuchMethodException;

    invoke-direct {p0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw p0
.end method

.method public static divide(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 354
    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->typeCode(Ljava/lang/Object;)I

    move-result v0

    .line 355
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->typeCode(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/4 v3, 0x3

    if-gt v2, v3, :cond_1

    .line 359
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrInt(Ljava/lang/Object;I)I

    move-result p0

    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrInt(Ljava/lang/Object;I)I

    move-result p1

    div-int/2addr p0, p1

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v3, 0x4

    if-gt v2, v3, :cond_2

    .line 361
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrLong(Ljava/lang/Object;I)J

    move-result-wide v2

    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrLong(Ljava/lang/Object;I)J

    move-result-wide p0

    div-long/2addr v2, p0

    invoke-static {v2, v3}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v3, 0x5

    if-gt v2, v3, :cond_3

    .line 363
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrFloat(Ljava/lang/Object;I)F

    move-result p0

    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrFloat(Ljava/lang/Object;I)F

    move-result p1

    div-float/2addr p0, p1

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 v3, 0x6

    if-gt v2, v3, :cond_4

    .line 365
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrDouble(Ljava/lang/Object;I)D

    move-result-wide v2

    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrDouble(Ljava/lang/Object;I)D

    move-result-wide p0

    div-double/2addr v2, p0

    invoke-static {v2, v3}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 367
    :cond_4
    new-instance p0, Ljava/lang/NoSuchMethodException;

    invoke-direct {p0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw p0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 121
    :cond_0
    invoke-static {p0, p1}, Lscala/runtime/BoxesRunTime;->equals2(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static equals2(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 128
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 129
    check-cast p0, Ljava/lang/Number;

    invoke-static {p0, p1}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 130
    :cond_0
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_1

    .line 131
    check-cast p0, Ljava/lang/Character;

    invoke-static {p0, p1}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    if-nez p0, :cond_3

    if-nez p1, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 135
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z
    .locals 3

    .line 172
    instance-of v0, p1, Ljava/lang/Character;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 173
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 174
    :cond_1
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 175
    check-cast p1, Ljava/lang/Number;

    invoke-static {p1, p0}, Lscala/runtime/BoxesRunTime;->equalsNumChar(Ljava/lang/Number;Ljava/lang/Character;)Z

    move-result p0

    return p0

    :cond_2
    if-nez p0, :cond_4

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 179
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static equalsNumChar(Ljava/lang/Number;Ljava/lang/Character;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 186
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v2

    .line 187
    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->typeCode(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_8

    const/4 v4, 0x4

    if-eq v3, v4, :cond_6

    const/4 v4, 0x5

    if-eq v3, v4, :cond_4

    const/4 v4, 0x6

    if-eq v3, v4, :cond_2

    .line 197
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 195
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    int-to-double v2, v2

    cmpl-double v4, p0, v2

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 193
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    int-to-float p1, v2

    cmpl-float p0, p0, p1

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    return v0

    .line 191
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    int-to-long v2, v2

    cmp-long v4, p0, v2

    if-nez v4, :cond_7

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :goto_3
    return v0

    .line 189
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-ne p0, v2, :cond_9

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    :goto_4
    return v0
.end method

.method public static equalsNumNum(Ljava/lang/Number;Ljava/lang/Number;)Z
    .locals 5

    .line 150
    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->typeCode(Ljava/lang/Object;)I

    move-result v0

    .line 151
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->typeCode(Ljava/lang/Object;)I

    move-result v1

    if-le v1, v0, :cond_0

    move v0, v1

    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_a

    const/4 v1, 0x4

    if-eq v0, v1, :cond_8

    const/4 v1, 0x5

    if-eq v0, v1, :cond_6

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    .line 162
    instance-of v0, p1, Lscala/math/ScalaNumber;

    if-eqz v0, :cond_1

    instance-of v0, p0, Lscala/math/ScalaNumber;

    if-nez v0, :cond_1

    .line 163
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    if-nez p0, :cond_3

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 168
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 160
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    cmpl-double v4, v0, p0

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 158
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    cmpl-float p0, p0, p1

    if-nez p0, :cond_7

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    return v2

    .line 156
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    cmp-long v4, v0, p0

    if-nez v4, :cond_9

    goto :goto_3

    :cond_9
    const/4 v2, 0x0

    :goto_3
    return v2

    .line 154
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-ne p0, p1, :cond_b

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    return v2
.end method

.method public static equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z
    .locals 1

    .line 139
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 140
    check-cast p1, Ljava/lang/Number;

    invoke-static {p0, p1}, Lscala/runtime/BoxesRunTime;->equalsNumNum(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result p0

    return p0

    .line 141
    :cond_0
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_1

    .line 142
    check-cast p1, Ljava/lang/Character;

    invoke-static {p0, p1}, Lscala/runtime/BoxesRunTime;->equalsNumChar(Ljava/lang/Number;Ljava/lang/Character;)Z

    move-result p0

    return p0

    :cond_1
    if-nez p0, :cond_3

    if-nez p1, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 146
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static hashFromDouble(Ljava/lang/Double;)I
    .locals 7

    .line 234
    invoke-virtual {p0}, Ljava/lang/Double;->intValue()I

    move-result v0

    .line 235
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    int-to-double v3, v0

    cmpl-double v5, v3, v1

    if-nez v5, :cond_0

    return v0

    .line 238
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->longValue()J

    move-result-wide v3

    long-to-double v5, v3

    cmpl-double v0, v5, v1

    if-nez v0, :cond_1

    .line 239
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->hashCode()I

    move-result p0

    return p0

    .line 241
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    float-to-double v3, v0

    cmpl-double v5, v3, v1

    if-nez v5, :cond_2

    .line 242
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->hashCode()I

    move-result p0

    return p0

    .line 243
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Double;->hashCode()I

    move-result p0

    return p0
.end method

.method public static hashFromFloat(Ljava/lang/Float;)I
    .locals 4

    .line 246
    invoke-virtual {p0}, Ljava/lang/Float;->intValue()I

    move-result v0

    .line 247
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    int-to-float v2, v0

    cmpl-float v2, v2, v1

    if-nez v2, :cond_0

    return v0

    .line 250
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Float;->longValue()J

    move-result-wide v2

    long-to-float v0, v2

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 251
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->hashCode()I

    move-result p0

    return p0

    .line 252
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Float;->hashCode()I

    move-result p0

    return p0
.end method

.method public static hashFromLong(Ljava/lang/Long;)I
    .locals 6

    .line 229
    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    move-result v0

    int-to-long v1, v0

    .line 230
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    return v0

    .line 231
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->hashCode()I

    move-result p0

    return p0
.end method

.method public static hashFromNumber(Ljava/lang/Number;)I
    .locals 1

    .line 255
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Long;

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->hashFromLong(Ljava/lang/Long;)I

    move-result p0

    return p0

    .line 256
    :cond_0
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Double;

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->hashFromDouble(Ljava/lang/Double;)I

    move-result p0

    return p0

    .line 257
    :cond_1
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/Float;

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->hashFromFloat(Ljava/lang/Float;)I

    move-result p0

    return p0

    .line 258
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public static hashFromObject(Ljava/lang/Object;)I
    .locals 1

    .line 261
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->hashFromNumber(Ljava/lang/Number;)I

    move-result p0

    return p0

    .line 262
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public static isBoxedNumber(Ljava/lang/Object;)Z
    .locals 1

    .line 731
    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Character;

    if-nez v0, :cond_1

    instance-of p0, p0, Ljava/lang/Byte;

    if-eqz p0, :cond_0

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

.method public static isBoxedNumberOrBoolean(Ljava/lang/Object;)Z
    .locals 1

    .line 728
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->isBoxedNumber(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public static multiply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 334
    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->typeCode(Ljava/lang/Object;)I

    move-result v0

    .line 335
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->typeCode(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/4 v3, 0x3

    if-gt v2, v3, :cond_1

    .line 338
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrInt(Ljava/lang/Object;I)I

    move-result p0

    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrInt(Ljava/lang/Object;I)I

    move-result p1

    mul-int p0, p0, p1

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v3, 0x4

    if-gt v2, v3, :cond_2

    .line 341
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrLong(Ljava/lang/Object;I)J

    move-result-wide v2

    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrLong(Ljava/lang/Object;I)J

    move-result-wide p0

    mul-long v2, v2, p0

    invoke-static {v2, v3}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v3, 0x5

    if-gt v2, v3, :cond_3

    .line 344
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrFloat(Ljava/lang/Object;I)F

    move-result p0

    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrFloat(Ljava/lang/Object;I)F

    move-result p1

    mul-float p0, p0, p1

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 v3, 0x6

    if-gt v2, v3, :cond_4

    .line 347
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrDouble(Ljava/lang/Object;I)D

    move-result-wide v2

    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrDouble(Ljava/lang/Object;I)D

    move-result-wide p0

    mul-double v2, v2, p0

    invoke-static {v2, v3}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 349
    :cond_4
    new-instance p0, Ljava/lang/NoSuchMethodException;

    invoke-direct {p0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw p0
.end method

.method public static negate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 477
    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->typeCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 479
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrInt(Ljava/lang/Object;I)I

    move-result p0

    neg-int p0, p0

    .line 480
    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    .line 483
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrLong(Ljava/lang/Object;I)J

    move-result-wide v0

    neg-long v0, v0

    .line 484
    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v1, 0x5

    if-gt v0, v1, :cond_2

    .line 487
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrFloat(Ljava/lang/Object;I)F

    move-result p0

    neg-float p0, p0

    .line 488
    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v1, 0x6

    if-gt v0, v1, :cond_3

    .line 491
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrDouble(Ljava/lang/Object;I)D

    move-result-wide v0

    neg-double v0, v0

    .line 492
    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 494
    :cond_3
    new-instance p0, Ljava/lang/NoSuchMethodException;

    invoke-direct {p0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw p0
.end method

.method public static positive(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 499
    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->typeCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 501
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrInt(Ljava/lang/Object;I)I

    move-result p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    .line 504
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrLong(Ljava/lang/Object;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v1, 0x5

    if-gt v0, v1, :cond_2

    .line 507
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrFloat(Ljava/lang/Object;I)F

    move-result p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v1, 0x6

    if-gt v0, v1, :cond_3

    .line 510
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrDouble(Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 512
    :cond_3
    new-instance p0, Ljava/lang/NoSuchMethodException;

    invoke-direct {p0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw p0
.end method

.method public static shiftLogicalRight(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 448
    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->typeCode(Ljava/lang/Object;)I

    move-result v0

    .line 449
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->typeCode(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-gt v0, v3, :cond_1

    .line 451
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrInt(Ljava/lang/Object;I)I

    move-result v4

    if-gt v1, v3, :cond_0

    .line 453
    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrInt(Ljava/lang/Object;I)I

    move-result p0

    ushr-int p0, v4, p0

    .line 454
    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    if-gt v1, v2, :cond_1

    .line 457
    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrLong(Ljava/lang/Object;I)J

    move-result-wide p0

    long-to-int p1, p0

    ushr-int p0, v4, p1

    .line 458
    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    if-gt v0, v2, :cond_3

    .line 462
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrLong(Ljava/lang/Object;I)J

    move-result-wide v4

    if-gt v1, v3, :cond_2

    .line 464
    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrInt(Ljava/lang/Object;I)I

    move-result p0

    ushr-long p0, v4, p0

    .line 465
    invoke-static {p0, p1}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_2
    if-gt v1, v2, :cond_3

    .line 468
    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrLong(Ljava/lang/Object;I)J

    move-result-wide p0

    long-to-int p1, p0

    ushr-long p0, v4, p1

    .line 469
    invoke-static {p0, p1}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 472
    :cond_3
    new-instance p0, Ljava/lang/NoSuchMethodException;

    invoke-direct {p0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw p0
.end method

.method public static shiftSignedLeft(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 419
    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->typeCode(Ljava/lang/Object;)I

    move-result v0

    .line 420
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->typeCode(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-gt v0, v3, :cond_1

    .line 422
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrInt(Ljava/lang/Object;I)I

    move-result v4

    if-gt v1, v3, :cond_0

    .line 424
    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrInt(Ljava/lang/Object;I)I

    move-result p0

    shl-int p0, v4, p0

    .line 425
    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    if-gt v1, v2, :cond_1

    .line 428
    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrLong(Ljava/lang/Object;I)J

    move-result-wide p0

    long-to-int p1, p0

    shl-int p0, v4, p1

    .line 429
    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    if-gt v0, v2, :cond_3

    .line 433
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrLong(Ljava/lang/Object;I)J

    move-result-wide v4

    if-gt v1, v3, :cond_2

    .line 435
    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrInt(Ljava/lang/Object;I)I

    move-result p0

    shl-long p0, v4, p0

    .line 436
    invoke-static {p0, p1}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_2
    if-gt v1, v2, :cond_3

    .line 439
    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrLong(Ljava/lang/Object;I)J

    move-result-wide p0

    long-to-int p1, p0

    shl-long p0, v4, p1

    .line 440
    invoke-static {p0, p1}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 443
    :cond_3
    new-instance p0, Ljava/lang/NoSuchMethodException;

    invoke-direct {p0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw p0
.end method

.method public static shiftSignedRight(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 390
    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->typeCode(Ljava/lang/Object;)I

    move-result v0

    .line 391
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->typeCode(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-gt v0, v3, :cond_1

    .line 393
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrInt(Ljava/lang/Object;I)I

    move-result v4

    if-gt v1, v3, :cond_0

    .line 395
    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrInt(Ljava/lang/Object;I)I

    move-result p0

    shr-int p0, v4, p0

    .line 396
    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    if-gt v1, v2, :cond_1

    .line 399
    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrLong(Ljava/lang/Object;I)J

    move-result-wide p0

    long-to-int p1, p0

    shr-int p0, v4, p1

    .line 400
    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    if-gt v0, v2, :cond_3

    .line 404
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrLong(Ljava/lang/Object;I)J

    move-result-wide v4

    if-gt v1, v3, :cond_2

    .line 406
    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrInt(Ljava/lang/Object;I)I

    move-result p0

    shr-long p0, v4, p0

    .line 407
    invoke-static {p0, p1}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_2
    if-gt v1, v2, :cond_3

    .line 410
    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrLong(Ljava/lang/Object;I)J

    move-result-wide p0

    long-to-int p1, p0

    shr-long p0, v4, p1

    .line 411
    invoke-static {p0, p1}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 414
    :cond_3
    new-instance p0, Ljava/lang/NoSuchMethodException;

    invoke-direct {p0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw p0
.end method

.method public static subtract(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 314
    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->typeCode(Ljava/lang/Object;)I

    move-result v0

    .line 315
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->typeCode(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/4 v3, 0x3

    if-gt v2, v3, :cond_1

    .line 318
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrInt(Ljava/lang/Object;I)I

    move-result p0

    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrInt(Ljava/lang/Object;I)I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v3, 0x4

    if-gt v2, v3, :cond_2

    .line 321
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrLong(Ljava/lang/Object;I)J

    move-result-wide v2

    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrLong(Ljava/lang/Object;I)J

    move-result-wide p0

    sub-long/2addr v2, p0

    invoke-static {v2, v3}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v3, 0x5

    if-gt v2, v3, :cond_3

    .line 324
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrFloat(Ljava/lang/Object;I)F

    move-result p0

    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrFloat(Ljava/lang/Object;I)F

    move-result p1

    sub-float/2addr p0, p1

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 v3, 0x6

    if-gt v2, v3, :cond_4

    .line 327
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrDouble(Ljava/lang/Object;I)D

    move-result-wide v2

    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrDouble(Ljava/lang/Object;I)D

    move-result-wide p0

    sub-double/2addr v2, p0

    invoke-static {v2, v3}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 329
    :cond_4
    new-instance p0, Ljava/lang/NoSuchMethodException;

    invoke-direct {p0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw p0
.end method

.method public static takeAnd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 517
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_4

    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 523
    :cond_0
    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->typeCode(Ljava/lang/Object;)I

    move-result v0

    .line 524
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->typeCode(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    const/4 v3, 0x3

    if-gt v2, v3, :cond_2

    .line 528
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrInt(Ljava/lang/Object;I)I

    move-result p0

    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrInt(Ljava/lang/Object;I)I

    move-result p1

    and-int/2addr p0, p1

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v3, 0x4

    if-gt v2, v3, :cond_3

    .line 530
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrLong(Ljava/lang/Object;I)J

    move-result-wide v2

    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrLong(Ljava/lang/Object;I)J

    move-result-wide p0

    and-long/2addr p0, v2

    invoke-static {p0, p1}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 532
    :cond_3
    new-instance p0, Ljava/lang/NoSuchMethodException;

    invoke-direct {p0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw p0

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    .line 518
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 519
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    and-int/2addr p0, p1

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 521
    :cond_5
    new-instance p0, Ljava/lang/NoSuchMethodException;

    invoke-direct {p0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw p0
.end method

.method public static takeConditionalAnd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 577
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 578
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 580
    :cond_1
    new-instance p0, Ljava/lang/NoSuchMethodException;

    invoke-direct {p0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw p0
.end method

.method public static takeConditionalOr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 585
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 586
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 588
    :cond_2
    new-instance p0, Ljava/lang/NoSuchMethodException;

    invoke-direct {p0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw p0
.end method

.method public static takeModulo(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 372
    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->typeCode(Ljava/lang/Object;)I

    move-result v0

    .line 373
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->typeCode(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/4 v3, 0x3

    if-gt v2, v3, :cond_1

    .line 377
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrInt(Ljava/lang/Object;I)I

    move-result p0

    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrInt(Ljava/lang/Object;I)I

    move-result p1

    rem-int/2addr p0, p1

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v3, 0x4

    if-gt v2, v3, :cond_2

    .line 379
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrLong(Ljava/lang/Object;I)J

    move-result-wide v2

    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrLong(Ljava/lang/Object;I)J

    move-result-wide p0

    rem-long/2addr v2, p0

    invoke-static {v2, v3}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v3, 0x5

    if-gt v2, v3, :cond_3

    .line 381
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrFloat(Ljava/lang/Object;I)F

    move-result p0

    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrFloat(Ljava/lang/Object;I)F

    move-result p1

    rem-float/2addr p0, p1

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 v3, 0x6

    if-gt v2, v3, :cond_4

    .line 383
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrDouble(Ljava/lang/Object;I)D

    move-result-wide v2

    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrDouble(Ljava/lang/Object;I)D

    move-result-wide p0

    rem-double/2addr v2, p0

    invoke-static {v2, v3}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 385
    :cond_4
    new-instance p0, Ljava/lang/NoSuchMethodException;

    invoke-direct {p0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw p0
.end method

.method public static takeNot(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 605
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 606
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 608
    :cond_0
    new-instance p0, Ljava/lang/NoSuchMethodException;

    invoke-direct {p0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw p0
.end method

.method public static takeOr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 537
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_4

    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 543
    :cond_0
    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->typeCode(Ljava/lang/Object;)I

    move-result v0

    .line 544
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->typeCode(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    const/4 v3, 0x3

    if-gt v2, v3, :cond_2

    .line 548
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrInt(Ljava/lang/Object;I)I

    move-result p0

    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrInt(Ljava/lang/Object;I)I

    move-result p1

    or-int/2addr p0, p1

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v3, 0x4

    if-gt v2, v3, :cond_3

    .line 550
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrLong(Ljava/lang/Object;I)J

    move-result-wide v2

    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrLong(Ljava/lang/Object;I)J

    move-result-wide p0

    or-long/2addr p0, v2

    invoke-static {p0, p1}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 552
    :cond_3
    new-instance p0, Ljava/lang/NoSuchMethodException;

    invoke-direct {p0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw p0

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    .line 538
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 539
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    or-int/2addr p0, p1

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 541
    :cond_5
    new-instance p0, Ljava/lang/NoSuchMethodException;

    invoke-direct {p0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw p0
.end method

.method public static takeXor(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 557
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_4

    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 563
    :cond_0
    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->typeCode(Ljava/lang/Object;)I

    move-result v0

    .line 564
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->typeCode(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    const/4 v3, 0x3

    if-gt v2, v3, :cond_2

    .line 568
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrInt(Ljava/lang/Object;I)I

    move-result p0

    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrInt(Ljava/lang/Object;I)I

    move-result p1

    xor-int/2addr p0, p1

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v3, 0x4

    if-gt v2, v3, :cond_3

    .line 570
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrLong(Ljava/lang/Object;I)J

    move-result-wide v2

    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrLong(Ljava/lang/Object;I)J

    move-result-wide p0

    xor-long/2addr p0, v2

    invoke-static {p0, p1}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 572
    :cond_3
    new-instance p0, Ljava/lang/NoSuchMethodException;

    invoke-direct {p0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw p0

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    .line 558
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 559
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/2addr p0, p1

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 561
    :cond_5
    new-instance p0, Ljava/lang/NoSuchMethodException;

    invoke-direct {p0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw p0
.end method

.method public static testEqual(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 612
    :goto_0
    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static testGreaterOrEqualThan(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 674
    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->typeCode(Ljava/lang/Object;)I

    move-result v0

    .line 675
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->typeCode(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gt v2, v3, :cond_2

    .line 678
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrInt(Ljava/lang/Object;I)I

    move-result p0

    .line 679
    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrInt(Ljava/lang/Object;I)I

    move-result p1

    if-lt p0, p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 680
    :goto_1
    invoke-static {v4}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v3, 0x4

    if-gt v2, v3, :cond_4

    .line 683
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrLong(Ljava/lang/Object;I)J

    move-result-wide v2

    .line 684
    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrLong(Ljava/lang/Object;I)J

    move-result-wide p0

    cmp-long v0, v2, p0

    if-ltz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 685
    :goto_2
    invoke-static {v4}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 v3, 0x5

    if-gt v2, v3, :cond_6

    .line 688
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrFloat(Ljava/lang/Object;I)F

    move-result p0

    .line 689
    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrFloat(Ljava/lang/Object;I)F

    move-result p1

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    .line 690
    :goto_3
    invoke-static {v4}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_6
    const/4 v3, 0x6

    if-gt v2, v3, :cond_8

    .line 693
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrDouble(Ljava/lang/Object;I)D

    move-result-wide v2

    .line 694
    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrDouble(Ljava/lang/Object;I)D

    move-result-wide p0

    cmpl-double v0, v2, p0

    if-ltz v0, :cond_7

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    .line 695
    :goto_4
    invoke-static {v4}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 697
    :cond_8
    new-instance p0, Ljava/lang/NoSuchMethodException;

    invoke-direct {p0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw p0
.end method

.method public static testGreaterThan(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 701
    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->typeCode(Ljava/lang/Object;)I

    move-result v0

    .line 702
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->typeCode(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gt v2, v3, :cond_2

    .line 705
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrInt(Ljava/lang/Object;I)I

    move-result p0

    .line 706
    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrInt(Ljava/lang/Object;I)I

    move-result p1

    if-le p0, p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 707
    :goto_1
    invoke-static {v4}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v3, 0x4

    if-gt v2, v3, :cond_4

    .line 710
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrLong(Ljava/lang/Object;I)J

    move-result-wide v2

    .line 711
    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrLong(Ljava/lang/Object;I)J

    move-result-wide p0

    cmp-long v0, v2, p0

    if-lez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 712
    :goto_2
    invoke-static {v4}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 v3, 0x5

    if-gt v2, v3, :cond_6

    .line 715
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrFloat(Ljava/lang/Object;I)F

    move-result p0

    .line 716
    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrFloat(Ljava/lang/Object;I)F

    move-result p1

    cmpl-float p0, p0, p1

    if-lez p0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    .line 717
    :goto_3
    invoke-static {v4}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_6
    const/4 v3, 0x6

    if-gt v2, v3, :cond_8

    .line 720
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrDouble(Ljava/lang/Object;I)D

    move-result-wide v2

    .line 721
    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrDouble(Ljava/lang/Object;I)D

    move-result-wide p0

    cmpl-double v0, v2, p0

    if-lez v0, :cond_7

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    .line 722
    :goto_4
    invoke-static {v4}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 724
    :cond_8
    new-instance p0, Ljava/lang/NoSuchMethodException;

    invoke-direct {p0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw p0
.end method

.method public static testLessOrEqualThan(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 647
    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->typeCode(Ljava/lang/Object;)I

    move-result v0

    .line 648
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->typeCode(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gt v2, v3, :cond_2

    .line 651
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrInt(Ljava/lang/Object;I)I

    move-result p0

    .line 652
    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrInt(Ljava/lang/Object;I)I

    move-result p1

    if-gt p0, p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 653
    :goto_1
    invoke-static {v4}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v3, 0x4

    if-gt v2, v3, :cond_4

    .line 656
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrLong(Ljava/lang/Object;I)J

    move-result-wide v2

    .line 657
    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrLong(Ljava/lang/Object;I)J

    move-result-wide p0

    cmp-long v0, v2, p0

    if-gtz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 658
    :goto_2
    invoke-static {v4}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 v3, 0x5

    if-gt v2, v3, :cond_6

    .line 661
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrFloat(Ljava/lang/Object;I)F

    move-result p0

    .line 662
    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrFloat(Ljava/lang/Object;I)F

    move-result p1

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    .line 663
    :goto_3
    invoke-static {v4}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_6
    const/4 v3, 0x6

    if-gt v2, v3, :cond_8

    .line 666
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrDouble(Ljava/lang/Object;I)D

    move-result-wide v2

    .line 667
    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrDouble(Ljava/lang/Object;I)D

    move-result-wide p0

    cmpg-double v0, v2, p0

    if-gtz v0, :cond_7

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    .line 668
    :goto_4
    invoke-static {v4}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 670
    :cond_8
    new-instance p0, Ljava/lang/NoSuchMethodException;

    invoke-direct {p0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw p0
.end method

.method public static testLessThan(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 620
    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->typeCode(Ljava/lang/Object;)I

    move-result v0

    .line 621
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->typeCode(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gt v2, v3, :cond_2

    .line 624
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrInt(Ljava/lang/Object;I)I

    move-result p0

    .line 625
    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrInt(Ljava/lang/Object;I)I

    move-result p1

    if-ge p0, p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 626
    :goto_1
    invoke-static {v4}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v3, 0x4

    if-gt v2, v3, :cond_4

    .line 629
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrLong(Ljava/lang/Object;I)J

    move-result-wide v2

    .line 630
    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrLong(Ljava/lang/Object;I)J

    move-result-wide p0

    cmp-long v0, v2, p0

    if-gez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 631
    :goto_2
    invoke-static {v4}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 v3, 0x5

    if-gt v2, v3, :cond_6

    .line 634
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrFloat(Ljava/lang/Object;I)F

    move-result p0

    .line 635
    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrFloat(Ljava/lang/Object;I)F

    move-result p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    .line 636
    :goto_3
    invoke-static {v4}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_6
    const/4 v3, 0x6

    if-gt v2, v3, :cond_8

    .line 639
    invoke-static {p0, v0}, Lscala/runtime/BoxesRunTime;->unboxCharOrDouble(Ljava/lang/Object;I)D

    move-result-wide v2

    .line 640
    invoke-static {p1, v1}, Lscala/runtime/BoxesRunTime;->unboxCharOrDouble(Ljava/lang/Object;I)D

    move-result-wide p0

    cmpg-double v0, v2, p0

    if-gez v0, :cond_7

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    .line 641
    :goto_4
    invoke-static {v4}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 643
    :cond_8
    new-instance p0, Ljava/lang/NoSuchMethodException;

    invoke-direct {p0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw p0
.end method

.method public static testNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 616
    :goto_0
    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static toByte(Ljava/lang/Object;)Ljava/lang/Byte;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 756
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p0

    int-to-byte p0, p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToByte(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 757
    :cond_0
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_1

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result p0

    int-to-byte p0, p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToByte(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 758
    :cond_1
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/Byte;

    return-object p0

    .line 759
    :cond_2
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_3

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    long-to-int p0, v0

    int-to-byte p0, p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToByte(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 760
    :cond_3
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_4

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToShort(Ljava/lang/Object;)S

    move-result p0

    int-to-byte p0, p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToByte(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 761
    :cond_4
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_5

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p0

    float-to-int p0, p0

    int-to-byte p0, p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToByte(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 762
    :cond_5
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_6

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    double-to-int p0, v0

    int-to-byte p0, p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToByte(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 763
    :cond_6
    new-instance p0, Ljava/lang/NoSuchMethodException;

    invoke-direct {p0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw p0
.end method

.method public static toCharacter(Ljava/lang/Object;)Ljava/lang/Character;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 744
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p0

    int-to-char p0, p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    .line 745
    :cond_0
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_1

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToShort(Ljava/lang/Object;)S

    move-result p0

    int-to-char p0, p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    .line 746
    :cond_1
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/Character;

    return-object p0

    .line 747
    :cond_2
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_3

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    long-to-int p0, v0

    int-to-char p0, p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    .line 748
    :cond_3
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_4

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToByte(Ljava/lang/Object;)B

    move-result p0

    int-to-char p0, p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    .line 749
    :cond_4
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_5

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p0

    float-to-int p0, p0

    int-to-char p0, p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    .line 750
    :cond_5
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_6

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    double-to-int p0, v0

    int-to-char p0, p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    .line 751
    :cond_6
    new-instance p0, Ljava/lang/NoSuchMethodException;

    invoke-direct {p0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw p0
.end method

.method public static toDouble(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 816
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p0

    int-to-double v0, p0

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 817
    :cond_0
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_1

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 818
    :cond_1
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/Double;

    return-object p0

    .line 819
    :cond_2
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_3

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 820
    :cond_3
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_4

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result p0

    int-to-double v0, p0

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 821
    :cond_4
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_5

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToByte(Ljava/lang/Object;)B

    move-result p0

    int-to-double v0, p0

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 822
    :cond_5
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_6

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToShort(Ljava/lang/Object;)S

    move-result p0

    int-to-double v0, p0

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 823
    :cond_6
    new-instance p0, Ljava/lang/NoSuchMethodException;

    invoke-direct {p0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw p0
.end method

.method public static toFloat(Ljava/lang/Object;)Ljava/lang/Float;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 804
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p0

    int-to-float p0, p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 805
    :cond_0
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    long-to-float p0, v0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 806
    :cond_1
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/Float;

    return-object p0

    .line 807
    :cond_2
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_3

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    double-to-float p0, v0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 808
    :cond_3
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_4

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result p0

    int-to-float p0, p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 809
    :cond_4
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_5

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToByte(Ljava/lang/Object;)B

    move-result p0

    int-to-float p0, p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 810
    :cond_5
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_6

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToShort(Ljava/lang/Object;)S

    move-result p0

    int-to-float p0, p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 811
    :cond_6
    new-instance p0, Ljava/lang/NoSuchMethodException;

    invoke-direct {p0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw p0
.end method

.method public static toInteger(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 780
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Integer;

    return-object p0

    .line 781
    :cond_0
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    long-to-int p0, v0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 782
    :cond_1
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_2

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    double-to-int p0, v0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 783
    :cond_2
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_3

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p0

    float-to-int p0, p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 784
    :cond_3
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_4

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 785
    :cond_4
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_5

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToByte(Ljava/lang/Object;)B

    move-result p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 786
    :cond_5
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_6

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToShort(Ljava/lang/Object;)S

    move-result p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 787
    :cond_6
    new-instance p0, Ljava/lang/NoSuchMethodException;

    invoke-direct {p0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw p0
.end method

.method public static toLong(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 792
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 793
    :cond_0
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_1

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    double-to-long v0, v0

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 794
    :cond_1
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_2

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p0

    float-to-long v0, p0

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 795
    :cond_2
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/Long;

    return-object p0

    .line 796
    :cond_3
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_4

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 797
    :cond_4
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_5

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToByte(Ljava/lang/Object;)B

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 798
    :cond_5
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_6

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToShort(Ljava/lang/Object;)S

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 799
    :cond_6
    new-instance p0, Ljava/lang/NoSuchMethodException;

    invoke-direct {p0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw p0
.end method

.method public static toShort(Ljava/lang/Object;)Ljava/lang/Short;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 768
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p0

    int-to-short p0, p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToShort(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    .line 769
    :cond_0
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    long-to-int p0, v0

    int-to-short p0, p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToShort(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    .line 770
    :cond_1
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_2

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result p0

    int-to-short p0, p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToShort(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    .line 771
    :cond_2
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_3

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToByte(Ljava/lang/Object;)B

    move-result p0

    int-to-short p0, p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToShort(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    .line 772
    :cond_3
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_4

    check-cast p0, Ljava/lang/Short;

    return-object p0

    .line 773
    :cond_4
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_5

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p0

    float-to-int p0, p0

    int-to-short p0, p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToShort(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    .line 774
    :cond_5
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_6

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    double-to-int p0, v0

    int-to-short p0, p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->boxToShort(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    .line 775
    :cond_6
    new-instance p0, Ljava/lang/NoSuchMethodException;

    invoke-direct {p0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw p0
.end method

.method private static typeCode(Ljava/lang/Object;)I
    .locals 2

    .line 37
    instance-of v0, p0, Ljava/lang/Integer;

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    return v1

    .line 38
    :cond_0
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_1

    const/4 p0, 0x6

    return p0

    .line 39
    :cond_1
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    const/4 p0, 0x4

    return p0

    .line 40
    :cond_2
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_3

    const/4 p0, 0x0

    return p0

    .line 41
    :cond_3
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_4

    const/4 p0, 0x5

    return p0

    .line 42
    :cond_4
    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_6

    instance-of p0, p0, Ljava/lang/Short;

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x7

    return p0

    :cond_6
    :goto_0
    return v1
.end method

.method private static unboxCharOrDouble(Ljava/lang/Object;I)D
    .locals 0

    if-nez p1, :cond_0

    .line 285
    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    int-to-double p0, p0

    return-wide p0

    .line 287
    :cond_0
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private static unboxCharOrFloat(Ljava/lang/Object;I)F
    .locals 0

    if-nez p1, :cond_0

    .line 279
    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    int-to-float p0, p0

    return p0

    .line 281
    :cond_0
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method private static unboxCharOrInt(Ljava/lang/Object;I)I
    .locals 0

    if-nez p1, :cond_0

    .line 267
    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    return p0

    .line 269
    :cond_0
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private static unboxCharOrLong(Ljava/lang/Object;I)J
    .locals 0

    if-nez p1, :cond_0

    .line 273
    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    int-to-long p0, p0

    return-wide p0

    .line 275
    :cond_0
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static unboxToBoolean(Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 85
    :cond_0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static unboxToByte(Ljava/lang/Object;)B
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 93
    :cond_0
    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    :goto_0
    return p0
.end method

.method public static unboxToChar(Ljava/lang/Object;)C
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 89
    :cond_0
    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    :goto_0
    return p0
.end method

.method public static unboxToDouble(Ljava/lang/Object;)D
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 114
    :cond_0
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public static unboxToFloat(Ljava/lang/Object;)F
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 109
    :cond_0
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    :goto_0
    return p0
.end method

.method public static unboxToInt(Ljava/lang/Object;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 101
    :cond_0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static unboxToLong(Ljava/lang/Object;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 105
    :cond_0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public static unboxToShort(Ljava/lang/Object;)S
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 97
    :cond_0
    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    :goto_0
    return p0
.end method
