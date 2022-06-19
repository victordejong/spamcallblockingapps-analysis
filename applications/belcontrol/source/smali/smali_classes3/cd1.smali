.class public Lcd1;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(F)F
    .locals 6

    float-to-double v0, p0

    const/high16 p0, 0x3f800000    # 1.0f

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-wide v3, 0x3feccccccccccccdL    # 0.9

    cmpg-double v5, v0, v3

    if-gez v5, :cond_1

    add-float/2addr v2, p0

    :cond_1
    const-wide v3, 0x3fe6666666666666L    # 0.7

    cmpg-double v5, v0, v3

    if-gez v5, :cond_2

    add-float/2addr v2, p0

    :cond_2
    return v2
.end method
