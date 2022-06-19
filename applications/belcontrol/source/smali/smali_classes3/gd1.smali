.class public Lgd1;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(F)F
    .locals 6

    float-to-double v0, p0

    const/high16 p0, 0x3f800000    # 1.0f

    const-wide v2, 0x3faeb851eb851eb8L    # 0.06

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-wide v3, 0x3fc3333333333333L    # 0.15

    cmpl-double v5, v0, v3

    if-lez v5, :cond_1

    add-float/2addr v2, p0

    :cond_1
    const-wide v3, 0x3fd3333333333333L    # 0.3

    cmpl-double v5, v0, v3

    if-lez v5, :cond_2

    add-float/2addr v2, p0

    :cond_2
    const-wide v3, 0x3fe3333333333333L    # 0.6

    cmpl-double v5, v0, v3

    if-lez v5, :cond_3

    add-float/2addr v2, p0

    :cond_3
    return v2
.end method
