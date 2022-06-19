.class public final Lscala/runtime/Statics;
.super Ljava/lang/Object;
.source "Statics.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static anyHash(Ljava/lang/Object;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 78
    :cond_0
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 79
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lscala/runtime/Statics;->longHash(J)I

    move-result p0

    return p0

    .line 81
    :cond_1
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 82
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lscala/runtime/Statics;->doubleHash(D)I

    move-result p0

    return p0

    .line 84
    :cond_2
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 85
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Lscala/runtime/Statics;->floatHash(F)I

    move-result p0

    return p0

    .line 87
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public static avalanche(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    const v0, -0x7a143595

    mul-int p0, p0, v0

    ushr-int/lit8 v0, p0, 0xd

    xor-int/2addr p0, v0

    const v0, -0x3d4d51cb

    mul-int p0, p0, v0

    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    return p0
.end method

.method public static doubleHash(D)I
    .locals 5

    double-to-int v0, p0

    int-to-double v1, v0

    cmpl-double v3, v1, p0

    if-nez v3, :cond_0

    return v0

    :cond_0
    double-to-float v0, p0

    float-to-double v1, v0

    cmpl-double v3, v1, p0

    if-nez v3, :cond_1

    .line 52
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    return p0

    :cond_1
    double-to-long v0, p0

    long-to-double v2, v0

    cmpl-double v4, v2, p0

    if-nez v4, :cond_2

    long-to-int p0, v0

    return p0

    .line 58
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method public static finalizeHash(II)I
    .locals 0

    xor-int/2addr p0, p1

    .line 24
    invoke-static {p0}, Lscala/runtime/Statics;->avalanche(I)I

    move-result p0

    return p0
.end method

.method public static floatHash(F)I
    .locals 4

    float-to-int v0, p0

    int-to-float v1, v0

    cmpl-float v1, v1, p0

    if-nez v1, :cond_0

    return v0

    :cond_0
    float-to-long v0, p0

    long-to-float v2, v0

    cmpl-float v2, v2, p0

    if-nez v2, :cond_1

    const/16 p0, 0x20

    ushr-long v2, v0, p0

    xor-long/2addr v0, v2

    long-to-int p0, v0

    return p0

    .line 71
    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    return p0
.end method

.method public static longHash(J)I
    .locals 4

    long-to-int v0, p0

    int-to-long v1, v0

    cmp-long v3, v1, p0

    if-nez v3, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method public static mix(II)I
    .locals 0

    .line 8
    invoke-static {p0, p1}, Lscala/runtime/Statics;->mixLast(II)I

    move-result p0

    const/16 p1, 0xd

    .line 9
    invoke-static {p0, p1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    mul-int/lit8 p0, p0, 0x5

    const p1, -0x19ab949c

    add-int/2addr p0, p1

    return p0
.end method

.method public static mixLast(II)I
    .locals 1

    const v0, -0x3361d2af    # -8.2930312E7f

    mul-int p1, p1, v0

    const/16 v0, 0xf

    .line 17
    invoke-static {p1, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p1

    const v0, 0x1b873593

    mul-int p1, p1, v0

    xor-int/2addr p0, p1

    return p0
.end method
