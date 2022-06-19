.class Lcom/telguarder/helpers/ui/PathProvider;
.super Ljava/lang/Object;
.source "PathProvider.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getClipPath(IIIII)Landroid/graphics/Path;
    .locals 2

    .line 53
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/4 v1, 0x0

    if-nez p3, :cond_1

    if-nez p4, :cond_0

    sub-int p3, p1, p2

    int-to-float p3, p3

    .line 58
    invoke-virtual {v0, v1, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 59
    div-int/lit8 p4, p0, 0x2

    int-to-float p4, p4

    add-int/2addr p2, p1

    int-to-float p2, p2

    int-to-float p0, p0

    invoke-virtual {v0, p4, p2, p0, p3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 61
    invoke-virtual {v0, p0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float p1, p1

    .line 62
    invoke-virtual {v0, p0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 63
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 64
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float p1, p0

    .line 67
    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float p3, p2

    .line 68
    invoke-virtual {v0, p1, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 69
    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    neg-int p1, p2

    int-to-float p1, p1

    invoke-virtual {v0, p0, p1, v1, p3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 71
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 72
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    goto :goto_0

    :cond_1
    if-nez p4, :cond_2

    int-to-float p3, p1

    .line 76
    invoke-virtual {v0, v1, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 77
    div-int/lit8 p4, p0, 0x2

    int-to-float p4, p4

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    int-to-float p0, p0

    invoke-virtual {v0, p4, p1, p0, p3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 79
    invoke-virtual {v0, p0, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 80
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float p1, p0

    .line 83
    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 84
    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    mul-int/lit8 p2, p2, 0x2

    int-to-float p1, p2

    invoke-virtual {v0, p0, p1, v1, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 86
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 87
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    :goto_0
    return-object v0
.end method

.method static getOutlinePath(IIIII)Landroid/graphics/Path;
    .locals 9

    .line 9
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    const/4 v8, 0x0

    if-nez p3, :cond_1

    if-nez p4, :cond_0

    .line 13
    invoke-virtual {v7, v8, v8}, Landroid/graphics/Path;->moveTo(FF)V

    sub-int p3, p1, p2

    int-to-float p3, p3

    .line 14
    invoke-virtual {v7, v8, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 15
    div-int/lit8 p4, p0, 0x2

    int-to-float p4, p4

    add-int/2addr p1, p2

    int-to-float p1, p1

    int-to-float p0, p0

    invoke-virtual {v7, p4, p1, p0, p3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 17
    invoke-virtual {v7, p0, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 18
    invoke-virtual {v7, v8, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 19
    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    .line 21
    invoke-virtual {v7, v8, p1}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float p3, p2

    .line 22
    invoke-virtual {v7, v8, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 23
    div-int/lit8 p4, p0, 0x2

    int-to-float p4, p4

    neg-int p2, p2

    int-to-float p2, p2

    int-to-float p0, p0

    invoke-virtual {v7, p4, p2, p0, p3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 25
    invoke-virtual {v7, p0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 26
    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    goto :goto_0

    :cond_1
    if-nez p4, :cond_2

    .line 30
    invoke-virtual {v7, v8, v8}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float p3, p1

    .line 31
    invoke-virtual {v7, v8, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 32
    div-int/lit8 p4, p0, 0x2

    int-to-float p4, p4

    sub-int/2addr p1, p2

    int-to-float p1, p1

    int-to-float p0, p0

    invoke-virtual {v7, p4, p1, p0, p3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 34
    invoke-virtual {v7, p0, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 35
    invoke-virtual {v7, v8, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 36
    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    goto :goto_0

    :cond_2
    int-to-float p1, p1

    .line 38
    invoke-virtual {v7, v8, p1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 39
    invoke-virtual {v7, v8, v8}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 40
    div-int/lit8 p3, p0, 0x2

    int-to-float v3, p3

    int-to-float v6, p2

    int-to-float p0, p0

    move-object v0, v7

    move v4, v6

    move v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 43
    invoke-virtual {v7, p0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 44
    invoke-virtual {v7, v8, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 45
    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    :goto_0
    return-object v7
.end method
