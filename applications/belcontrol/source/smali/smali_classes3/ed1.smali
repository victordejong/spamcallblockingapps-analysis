.class public Led1;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(F)F
    .locals 6

    float-to-double v0, p0

    const/high16 p0, 0x3f800000    # 1.0f

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-wide v3, 0x400199999999999aL    # 2.2

    cmpg-double v5, v0, v3

    if-gez v5, :cond_1

    add-float/2addr v2, p0

    :cond_1
    const-wide v3, 0x4041800000000000L    # 35.0

    cmpl-double v5, v0, v3

    if-lez v5, :cond_2

    add-float/2addr v2, p0

    :cond_2
    const-wide/high16 v3, 0x4049000000000000L    # 50.0

    cmpl-double v5, v0, v3

    if-lez v5, :cond_3

    add-float/2addr v2, p0

    :cond_3
    return v2
.end method
