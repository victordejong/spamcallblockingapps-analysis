.class public final Lcom/google/android/material/l/a;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method public static a(FFF)F
    .locals 2

    .prologue
    .line 37
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float v1, p2, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public static a(FFFF)F
    .locals 4

    .prologue
    .line 28
    sub-float v0, p2, p0

    .line 29
    sub-float v1, p3, p1

    .line 30
    float-to-double v2, v0

    float-to-double v0, v1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static a(FFFFFF)F
    .locals 4

    .prologue
    .line 65
    .line 66
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/material/l/a;->a(FFFF)F

    move-result v0

    .line 67
    invoke-static {p0, p1, p4, p3}, Lcom/google/android/material/l/a;->a(FFFF)F

    move-result v1

    .line 68
    invoke-static {p0, p1, p4, p5}, Lcom/google/android/material/l/a;->a(FFFF)F

    move-result v2

    .line 69
    invoke-static {p0, p1, p2, p5}, Lcom/google/android/material/l/a;->a(FFFF)F

    move-result v3

    .line 65
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/material/l/a;->b(FFFF)F

    move-result v0

    return v0
.end method

.method private static b(FFFF)F
    .locals 1

    .prologue
    .line 74
    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    cmpl-float v0, p0, p3

    if-lez v0, :cond_0

    :goto_0
    return p0

    :cond_0
    cmpl-float v0, p1, p2

    if-lez v0, :cond_1

    cmpl-float v0, p1, p3

    if-lez v0, :cond_1

    move p0, p1

    goto :goto_0

    :cond_1
    cmpl-float v0, p2, p3

    if-lez v0, :cond_2

    move p0, p2

    goto :goto_0

    :cond_2
    move p0, p3

    goto :goto_0
.end method

.method public static b(FFF)Z
    .locals 1

    .prologue
    .line 49
    add-float v0, p0, p2

    cmpl-float v0, v0, p1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
