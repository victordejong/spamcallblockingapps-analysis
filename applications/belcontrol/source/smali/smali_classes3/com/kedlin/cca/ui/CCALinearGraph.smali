.class public Lcom/kedlin/cca/ui/CCALinearGraph;
.super Landroid/view/View;
.source ""


# instance fields
.field public a:Landroid/content/Context;

.field public b:[I

.field public c:Landroid/graphics/Paint;

.field public d:Landroid/graphics/Paint;

.field public f:Landroid/graphics/Paint;

.field public g:Landroid/graphics/Paint;

.field public h:Landroid/graphics/Paint;

.field public j:[Ljava/lang/String;

.field public k:[Ljava/lang/String;

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/kedlin/cca/ui/CCALinearGraph;->p:I

    iput p1, p0, Lcom/kedlin/cca/ui/CCALinearGraph;->q:I

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/CCALinearGraph;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/kedlin/cca/ui/CCALinearGraph;->p:I

    iput p1, p0, Lcom/kedlin/cca/ui/CCALinearGraph;->q:I

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/CCALinearGraph;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/kedlin/cca/ui/CCALinearGraph;->p:I

    iput p1, p0, Lcom/kedlin/cca/ui/CCALinearGraph;->q:I

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/CCALinearGraph;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kedlin/cca/ui/CCALinearGraph;->c:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CCALinearGraph;->c:Landroid/graphics/Paint;

    const/4 v3, 0x3

    invoke-static {v3}, Loe1;->c(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kedlin/cca/ui/CCALinearGraph;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CCALinearGraph;->g:Landroid/graphics/Paint;

    const/4 v4, 0x4

    invoke-static {v4}, Loe1;->c(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kedlin/cca/ui/CCALinearGraph;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CCALinearGraph;->h:Landroid/graphics/Paint;

    const/16 v2, 0xb

    invoke-static {v2}, Loe1;->c(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CCALinearGraph;->h:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kedlin/cca/ui/CCALinearGraph;->d:Landroid/graphics/Paint;

    const v2, -0x333334

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CCALinearGraph;->d:Landroid/graphics/Paint;

    invoke-static {v3}, Loe1;->c(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CCALinearGraph;->d:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/kedlin/cca/ui/CCALinearGraph;->d:Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/kedlin/cca/ui/CCALinearGraph;->f:Landroid/graphics/Paint;

    invoke-static {v1}, Loe1;->c(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CCALinearGraph;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CCALinearGraph;->f:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    invoke-static {v4}, Loe1;->c(I)I

    move-result v0

    iput v0, p0, Lcom/kedlin/cca/ui/CCALinearGraph;->o:I

    return-void

    nop

    :array_0
    .array-data 4
        0x425c0000    # 55.0f
        0x425c0000    # 55.0f
    .end array-data
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v1, v0, Lcom/kedlin/cca/ui/CCALinearGraph;->b:[I

    if-eqz v1, :cond_3

    array-length v2, v1

    if-gtz v2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget v2, v0, Lcom/kedlin/cca/ui/CCALinearGraph;->m:I

    iget v3, v0, Lcom/kedlin/cca/ui/CCALinearGraph;->n:I

    sub-int v8, v2, v3

    iget v2, v0, Lcom/kedlin/cca/ui/CCALinearGraph;->l:I

    div-int/lit8 v3, v3, 0x2

    sub-int v9, v2, v3

    int-to-float v2, v9

    iget v3, v0, Lcom/kedlin/cca/ui/CCALinearGraph;->q:I

    int-to-float v4, v3

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float v4, v4, v5

    sub-float/2addr v2, v4

    const/high16 v4, 0x42c80000    # 100.0f

    div-float v10, v2, v4

    iget v2, v0, Lcom/kedlin/cca/ui/CCALinearGraph;->p:I

    sub-int v4, v8, v2

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    div-int v11, v4, v1

    int-to-float v4, v2

    div-int/lit8 v1, v3, 0x2

    const/4 v12, 0x0

    add-int/2addr v1, v12

    int-to-float v5, v1

    int-to-float v6, v2

    sub-int v1, v9, v3

    int-to-float v13, v1

    iget-object v14, v0, Lcom/kedlin/cca/ui/CCALinearGraph;->d:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v13

    move-object v6, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/kedlin/cca/ui/CCALinearGraph;->p:I

    int-to-float v2, v1

    iget v1, v0, Lcom/kedlin/cca/ui/CCALinearGraph;->q:I

    sub-int v3, v9, v1

    int-to-float v3, v3

    int-to-float v8, v8

    sub-int v1, v9, v1

    int-to-float v5, v1

    iget-object v6, v0, Lcom/kedlin/cca/ui/CCALinearGraph;->d:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v4, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/kedlin/cca/ui/CCALinearGraph;->k:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v13, v1, -0x1

    int-to-double v1, v9

    iget v3, v0, Lcom/kedlin/cca/ui/CCALinearGraph;->q:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    mul-double v3, v3, v5

    sub-double/2addr v1, v3

    double-to-int v1, v1

    div-int v14, v1, v13

    const/4 v6, 0x0

    const/4 v15, 0x0

    :goto_0
    iget-object v1, v0, Lcom/kedlin/cca/ui/CCALinearGraph;->k:[Ljava/lang/String;

    if-ge v15, v13, :cond_1

    aget-object v1, v1, v15

    iget v2, v0, Lcom/kedlin/cca/ui/CCALinearGraph;->p:I

    iget v3, v0, Lcom/kedlin/cca/ui/CCALinearGraph;->o:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v3, v6

    iget v4, v0, Lcom/kedlin/cca/ui/CCALinearGraph;->q:I

    int-to-float v4, v4

    const v5, 0x3f333333    # 0.7f

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    iget-object v4, v0, Lcom/kedlin/cca/ui/CCALinearGraph;->h:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/kedlin/cca/ui/CCALinearGraph;->p:I

    int-to-float v2, v1

    iget v1, v0, Lcom/kedlin/cca/ui/CCALinearGraph;->q:I

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, v6

    int-to-float v3, v3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v6

    int-to-float v5, v1

    iget-object v4, v0, Lcom/kedlin/cca/ui/CCALinearGraph;->f:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v16, v4

    move v4, v8

    move/from16 v17, v6

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v15, v15, 0x1

    add-int v6, v17, v14

    goto :goto_0

    :cond_1
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    iget v2, v0, Lcom/kedlin/cca/ui/CCALinearGraph;->p:I

    iget v3, v0, Lcom/kedlin/cca/ui/CCALinearGraph;->o:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v0, Lcom/kedlin/cca/ui/CCALinearGraph;->l:I

    iget v4, v0, Lcom/kedlin/cca/ui/CCALinearGraph;->q:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const v4, 0x3f8ccccd    # 1.1f

    div-float/2addr v3, v4

    iget-object v4, v0, Lcom/kedlin/cca/ui/CCALinearGraph;->h:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/kedlin/cca/ui/CCALinearGraph;->j:[Ljava/lang/String;

    aget-object v2, v1, v12

    iget v3, v0, Lcom/kedlin/cca/ui/CCALinearGraph;->p:I

    add-int/2addr v3, v12

    int-to-float v3, v3

    iget-object v4, v0, Lcom/kedlin/cca/ui/CCALinearGraph;->h:Landroid/graphics/Paint;

    aget-object v1, v1, v12

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    add-float/2addr v3, v1

    add-int/lit8 v1, v9, 0x5

    int-to-float v1, v1

    iget-object v5, v0, Lcom/kedlin/cca/ui/CCALinearGraph;->h:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3, v1, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/kedlin/cca/ui/CCALinearGraph;->j:[Ljava/lang/String;

    iget-object v3, v0, Lcom/kedlin/cca/ui/CCALinearGraph;->b:[I

    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v2, v5

    iget v6, v0, Lcom/kedlin/cca/ui/CCALinearGraph;->p:I

    array-length v8, v3

    add-int/lit8 v8, v8, -0x1

    mul-int v8, v8, v11

    add-int/2addr v6, v8

    int-to-float v6, v6

    iget-object v8, v0, Lcom/kedlin/cca/ui/CCALinearGraph;->h:Landroid/graphics/Paint;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v6, v2

    iget-object v2, v0, Lcom/kedlin/cca/ui/CCALinearGraph;->h:Landroid/graphics/Paint;

    invoke-virtual {v7, v5, v6, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/kedlin/cca/ui/CCALinearGraph;->b:[I

    array-length v8, v1

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    if-ge v13, v8, :cond_3

    iget v1, v0, Lcom/kedlin/cca/ui/CCALinearGraph;->p:I

    add-int v2, v1, v14

    int-to-float v2, v2

    iget v3, v0, Lcom/kedlin/cca/ui/CCALinearGraph;->q:I

    div-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v12

    int-to-float v4, v4

    add-int/2addr v1, v14

    int-to-float v5, v1

    sub-int v1, v9, v3

    int-to-float v6, v1

    iget-object v15, v0, Lcom/kedlin/cca/ui/CCALinearGraph;->f:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v15

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/kedlin/cca/ui/CCALinearGraph;->p:I

    add-int/2addr v1, v14

    int-to-float v1, v1

    iget v2, v0, Lcom/kedlin/cca/ui/CCALinearGraph;->q:I

    sub-int v2, v9, v2

    int-to-float v2, v2

    iget-object v3, v0, Lcom/kedlin/cca/ui/CCALinearGraph;->b:[I

    aget v3, v3, v13

    int-to-float v3, v3

    mul-float v3, v3, v10

    sub-float/2addr v2, v3

    iget v3, v0, Lcom/kedlin/cca/ui/CCALinearGraph;->o:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/kedlin/cca/ui/CCALinearGraph;->g:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    if-nez v13, :cond_2

    goto :goto_2

    :cond_2
    iget v1, v0, Lcom/kedlin/cca/ui/CCALinearGraph;->p:I

    add-int v2, v1, v14

    sub-int/2addr v2, v11

    int-to-float v2, v2

    iget v3, v0, Lcom/kedlin/cca/ui/CCALinearGraph;->q:I

    sub-int v4, v9, v3

    int-to-float v4, v4

    iget-object v5, v0, Lcom/kedlin/cca/ui/CCALinearGraph;->b:[I

    add-int/lit8 v6, v13, -0x1

    aget v6, v5, v6

    int-to-float v6, v6

    mul-float v6, v6, v10

    sub-float/2addr v4, v6

    add-int/2addr v1, v14

    int-to-float v6, v1

    sub-int v1, v9, v3

    int-to-float v1, v1

    aget v3, v5, v13

    int-to-float v3, v3

    mul-float v3, v3, v10

    sub-float v5, v1, v3

    iget-object v15, v0, Lcom/kedlin/cca/ui/CCALinearGraph;->c:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v4

    move v4, v6

    move-object v6, v15

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_2
    add-int/lit8 v13, v13, 0x1

    add-int/2addr v14, v11

    goto :goto_1

    :cond_3
    :goto_3
    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/kedlin/cca/ui/CCALinearGraph;->l:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/kedlin/cca/ui/CCALinearGraph;->m:I

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/kedlin/cca/ui/CCALinearGraph;->a:Landroid/content/Context;

    return-void
.end method

.method public setData([I)V
    .locals 10

    if-eqz p1, :cond_4

    array-length v0, p1

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    array-length v0, p1

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v0

    iput-object v0, p0, Lcom/kedlin/cca/ui/CCALinearGraph;->b:[I

    iget-object v0, p0, Lcom/kedlin/cca/ui/CCALinearGraph;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f030008

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-nez v2, :cond_1

    invoke-static {}, Ljava/text/DateFormatSymbols;->getInstance()Ljava/text/DateFormatSymbols;

    move-result-object v2

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    :cond_1
    const/4 v2, 0x0

    aget p1, p1, v2

    sub-int/2addr p1, v1

    iget-object v3, p0, Lcom/kedlin/cca/ui/CCALinearGraph;->b:[I

    array-length v3, v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/kedlin/cca/ui/CCALinearGraph;->j:[Ljava/lang/String;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/kedlin/cca/ui/CCALinearGraph;->b:[I

    array-length v4, v4

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x2

    if-ge v5, v4, :cond_2

    iget-object v7, p0, Lcom/kedlin/cca/ui/CCALinearGraph;->j:[Ljava/lang/String;

    rem-int/lit8 v8, p1, 0xc

    aget-object v8, v0, v8

    aput-object v8, v7, v5

    iget-object v8, p0, Lcom/kedlin/cca/ui/CCALinearGraph;->h:Landroid/graphics/Paint;

    aget-object v9, v7, v5

    aget-object v7, v7, v5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v8, v9, v2, v7, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v7, p0, Lcom/kedlin/cca/ui/CCALinearGraph;->q:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/kedlin/cca/ui/CCALinearGraph;->q:I

    iget v7, p0, Lcom/kedlin/cca/ui/CCALinearGraph;->n:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v8

    div-int/2addr v8, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/kedlin/cca/ui/CCALinearGraph;->n:I

    add-int/lit8 v5, v5, 0x1

    add-int/2addr p1, v1

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/String;

    iget-object v0, p0, Lcom/kedlin/cca/ui/CCALinearGraph;->a:Landroid/content/Context;

    const v3, 0x7f110400

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    iget-object v0, p0, Lcom/kedlin/cca/ui/CCALinearGraph;->a:Landroid/content/Context;

    const v3, 0x7f110402

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/kedlin/cca/ui/CCALinearGraph;->a:Landroid/content/Context;

    const v1, 0x7f110401

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v6

    iput-object p1, p0, Lcom/kedlin/cca/ui/CCALinearGraph;->k:[Ljava/lang/String;

    array-length v0, p1

    :goto_1
    if-ge v2, v0, :cond_3

    aget-object v1, p1, v2

    iget v3, p0, Lcom/kedlin/cca/ui/CCALinearGraph;->p:I

    iget-object v4, p0, Lcom/kedlin/cca/ui/CCALinearGraph;->h:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/kedlin/cca/ui/CCALinearGraph;->p:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget p1, p0, Lcom/kedlin/cca/ui/CCALinearGraph;->p:I

    iget v0, p0, Lcom/kedlin/cca/ui/CCALinearGraph;->o:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/kedlin/cca/ui/CCALinearGraph;->p:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_4
    :goto_2
    return-void
.end method
