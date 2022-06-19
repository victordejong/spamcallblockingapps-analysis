.class public Lnc1;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(F)F
    .locals 6

    float-to-double v0, p0

    const/high16 p0, 0x40000000    # 2.0f

    const-wide v2, 0x3fa999999999999aL    # 0.05

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-wide v3, 0x3fb999999999999aL    # 0.1

    cmpg-double v5, v0, v3

    if-gez v5, :cond_1

    add-float/2addr v2, p0

    :cond_1
    const-wide v3, 0x3fc999999999999aL    # 0.2

    cmpg-double v5, v0, v3

    if-gez v5, :cond_2

    add-float/2addr v2, p0

    :cond_2
    const-wide v3, 0x3fd3333333333333L    # 0.3

    cmpg-double v5, v0, v3

    if-gez v5, :cond_3

    add-float/2addr v2, p0

    :cond_3
    const-wide v3, 0x3fd999999999999aL    # 0.4

    cmpg-double v5, v0, v3

    if-gez v5, :cond_4

    add-float/2addr v2, p0

    :cond_4
    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    cmpg-double v5, v0, v3

    if-gez v5, :cond_5

    add-float/2addr v2, p0

    :cond_5
    return v2
.end method
