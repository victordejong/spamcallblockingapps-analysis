.class public Lcom/allinone/callerid/indicator/a;
.super Lcom/allinone/callerid/indicator/BaseIndicatorController;
.source "BallClipRotatePulseIndicator.java"


# instance fields
.field c:F

.field d:F

.field e:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/indicator/BaseIndicatorController;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc/f/a/a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    invoke-static {v1}, Lc/f/a/i;->D([F)Lc/f/a/i;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    .line 2
    invoke-virtual {v1, v2, v3}, Lc/f/a/i;->F(J)Lc/f/a/i;

    const/4 v4, -0x1

    .line 3
    invoke-virtual {v1, v4}, Lc/f/a/i;->H(I)V

    .line 4
    new-instance v5, Lcom/allinone/callerid/indicator/a$a;

    invoke-direct {v5, p0}, Lcom/allinone/callerid/indicator/a$a;-><init>(Lcom/allinone/callerid/indicator/a;)V

    invoke-virtual {v1, v5}, Lc/f/a/i;->s(Lc/f/a/i$g;)V

    .line 5
    invoke-virtual {v1}, Lc/f/a/i;->d()V

    new-array v5, v0, [F

    .line 6
    fill-array-data v5, :array_1

    invoke-static {v5}, Lc/f/a/i;->D([F)Lc/f/a/i;

    move-result-object v5

    .line 7
    invoke-virtual {v5, v2, v3}, Lc/f/a/i;->F(J)Lc/f/a/i;

    .line 8
    invoke-virtual {v5, v4}, Lc/f/a/i;->H(I)V

    .line 9
    new-instance v6, Lcom/allinone/callerid/indicator/a$b;

    invoke-direct {v6, p0}, Lcom/allinone/callerid/indicator/a$b;-><init>(Lcom/allinone/callerid/indicator/a;)V

    invoke-virtual {v5, v6}, Lc/f/a/i;->s(Lc/f/a/i$g;)V

    .line 10
    invoke-virtual {v5}, Lc/f/a/i;->d()V

    new-array v0, v0, [F

    .line 11
    fill-array-data v0, :array_2

    invoke-static {v0}, Lc/f/a/i;->D([F)Lc/f/a/i;

    move-result-object v0

    .line 12
    invoke-virtual {v0, v2, v3}, Lc/f/a/i;->F(J)Lc/f/a/i;

    .line 13
    invoke-virtual {v0, v4}, Lc/f/a/i;->H(I)V

    .line 14
    new-instance v2, Lcom/allinone/callerid/indicator/a$c;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/indicator/a$c;-><init>(Lcom/allinone/callerid/indicator/a;)V

    invoke-virtual {v0, v2}, Lc/f/a/i;->s(Lc/f/a/i$g;)V

    .line 15
    invoke-virtual {v0}, Lc/f/a/i;->d()V

    .line 16
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x43340000    # 180.0f
        0x43b40000    # 360.0f
    .end array-data
.end method

.method public b(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/allinone/callerid/indicator/BaseIndicatorController;->e()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    int-to-float v0, v0

    .line 2
    invoke-virtual {p0}, Lcom/allinone/callerid/indicator/BaseIndicatorController;->c()I

    move-result v2

    div-int/2addr v2, v1

    int-to-float v2, v2

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5
    iget v3, p0, Lcom/allinone/callerid/indicator/a;->c:F

    invoke-virtual {p1, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 6
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v3, 0x40200000    # 2.5f

    div-float v3, v0, v3

    const/4 v4, 0x0

    .line 7
    invoke-virtual {p1, v4, v4, v3, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 9
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10
    iget v3, p0, Lcom/allinone/callerid/indicator/a;->d:F

    invoke-virtual {p1, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 11
    iget v3, p0, Lcom/allinone/callerid/indicator/a;->e:F

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    const/high16 v3, 0x40400000    # 3.0f

    .line 12
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 13
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-array v3, v1, [F

    .line 14
    fill-array-data v3, :array_0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    .line 15
    new-instance v6, Landroid/graphics/RectF;

    neg-float v5, v0

    const/high16 v7, 0x41400000    # 12.0f

    add-float/2addr v5, v7

    neg-float v8, v2

    add-float/2addr v8, v7

    sub-float v9, v0, v7

    sub-float v7, v2, v7

    invoke-direct {v6, v5, v8, v9, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 16
    aget v7, v3, v4

    const/high16 v8, 0x42b40000    # 90.0f

    const/4 v9, 0x0

    move-object v5, p1

    move-object v10, p2

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x43610000    # 225.0f
        0x42340000    # 45.0f
    .end array-data
.end method
