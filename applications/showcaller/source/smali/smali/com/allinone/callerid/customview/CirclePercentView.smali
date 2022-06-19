.class public Lcom/allinone/callerid/customview/CirclePercentView;
.super Landroid/view/View;
.source "CirclePercentView.java"


# instance fields
.field private d:Landroid/graphics/Paint;

.field private e:F

.field private f:F

.field private g:Landroid/graphics/RectF;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Landroid/graphics/LinearGradient;

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/allinone/callerid/customview/CirclePercentView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    sget-object v0, Lcom/allinone/callerid/R$styleable;->CirclePercentView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f06002f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/allinone/callerid/customview/CirclePercentView;->h:I

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f060126

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    const/4 v3, 0x3

    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/allinone/callerid/customview/CirclePercentView;->i:I

    const/4 p2, 0x4

    const/high16 v3, 0x41000000    # 8.0f

    .line 7
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/allinone/callerid/customview/CirclePercentView;->f:F

    const/4 p2, 0x2

    .line 8
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/allinone/callerid/customview/CirclePercentView;->m:Z

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    const/4 v1, 0x5

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/allinone/callerid/customview/CirclePercentView;->j:I

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/allinone/callerid/customview/CirclePercentView;->k:I

    .line 11
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 12
    invoke-direct {p0}, Lcom/allinone/callerid/customview/CirclePercentView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    invoke-direct {p0}, Lcom/allinone/callerid/customview/CirclePercentView;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/customview/CirclePercentView;->d:Landroid/graphics/Paint;

    .line 2
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/customview/CirclePercentView;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/customview/CirclePercentView;->d:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    .line 3
    iget v2, p0, Lcom/allinone/callerid/customview/CirclePercentView;->f:F

    div-float v2, v1, v2

    .line 4
    iget-object v3, p0, Lcom/allinone/callerid/customview/CirclePercentView;->d:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 5
    iget-object v3, p0, Lcom/allinone/callerid/customview/CirclePercentView;->d:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6
    iget-object v3, p0, Lcom/allinone/callerid/customview/CirclePercentView;->d:Landroid/graphics/Paint;

    iget v4, p0, Lcom/allinone/callerid/customview/CirclePercentView;->h:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v3, v1, v2

    .line 7
    iget-object v4, p0, Lcom/allinone/callerid/customview/CirclePercentView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 8
    iget-object v1, p0, Lcom/allinone/callerid/customview/CirclePercentView;->g:Landroid/graphics/RectF;

    if-nez v1, :cond_0

    .line 9
    new-instance v1, Landroid/graphics/RectF;

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v0, v2

    invoke-direct {v1, v2, v2, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/allinone/callerid/customview/CirclePercentView;->g:Landroid/graphics/RectF;

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/allinone/callerid/customview/CirclePercentView;->m:Z

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/allinone/callerid/customview/CirclePercentView;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/allinone/callerid/customview/CirclePercentView;->l:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/customview/CirclePercentView;->d:Landroid/graphics/Paint;

    iget v1, p0, Lcom/allinone/callerid/customview/CirclePercentView;->i:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    :goto_0
    iget-object v3, p0, Lcom/allinone/callerid/customview/CirclePercentView;->g:Landroid/graphics/RectF;

    const/high16 v4, -0x3d4c0000    # -90.0f

    const v0, 0x40666666    # 3.6f

    iget v1, p0, Lcom/allinone/callerid/customview/CirclePercentView;->e:F

    mul-float v5, v1, v0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/allinone/callerid/customview/CirclePercentView;->d:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 8

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    new-instance p1, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float v1, p2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float v3, p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float v4, p2

    iget v5, p0, Lcom/allinone/callerid/customview/CirclePercentView;->j:I

    iget v6, p0, Lcom/allinone/callerid/customview/CirclePercentView;->k:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lcom/allinone/callerid/customview/CirclePercentView;->l:Landroid/graphics/LinearGradient;

    return-void
.end method

.method public setBgColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/customview/CirclePercentView;->h:I

    return-void
.end method

.method public setEndColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/customview/CirclePercentView;->k:I

    return-void
.end method

.method public setGradient(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/customview/CirclePercentView;->m:Z

    return-void
.end method

.method public setPercentage(F)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iput p1, p0, Lcom/allinone/callerid/customview/CirclePercentView;->e:F

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setProgressColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/customview/CirclePercentView;->i:I

    return-void
.end method

.method public setRadius(I)V
    .locals 0

    int-to-float p1, p1

    .line 1
    iput p1, p0, Lcom/allinone/callerid/customview/CirclePercentView;->f:F

    return-void
.end method

.method public setStartColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/customview/CirclePercentView;->j:I

    return-void
.end method
