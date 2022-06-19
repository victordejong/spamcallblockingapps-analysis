.class public Lcom/allinone/callerid/customview/CirclePageIndicator;
.super Landroid/view/View;
.source "CirclePageIndicator.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/customview/CirclePageIndicator$SavedState;
    }
.end annotation


# instance fields
.field private d:F

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Paint;

.field private final g:Landroid/graphics/Paint;

.field private h:Landroidx/viewpager/widget/ViewPager;

.field private i:Landroidx/viewpager/widget/ViewPager$i;

.field private j:I

.field private k:I

.field private l:F

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:I

.field private r:F

.field private s:I

.field private t:Z

.field private u:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/allinone/callerid/customview/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f04056c

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/allinone/callerid/customview/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17

    move-object/from16 v0, p0

    .line 3
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/allinone/callerid/customview/CirclePageIndicator;->e:Landroid/graphics/Paint;

    .line 5
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lcom/allinone/callerid/customview/CirclePageIndicator;->f:Landroid/graphics/Paint;

    .line 6
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, v0, Lcom/allinone/callerid/customview/CirclePageIndicator;->g:Landroid/graphics/Paint;

    const/high16 v5, -0x40800000    # -1.0f

    .line 7
    iput v5, v0, Lcom/allinone/callerid/customview/CirclePageIndicator;->r:F

    const/4 v5, -0x1

    .line 8
    iput v5, v0, Lcom/allinone/callerid/customview/CirclePageIndicator;->s:I

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    .line 10
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06006e

    .line 11
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const v7, 0x7f06006d

    .line 12
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    const v8, 0x7f0a0006

    .line 13
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    const v9, 0x7f06006f

    .line 14
    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    const v10, 0x7f070061

    .line 15
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    const v11, 0x7f070060

    .line 16
    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    const v12, 0x7f050002

    .line 17
    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    const v13, 0x7f050003

    .line 18
    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 19
    sget-object v13, Lcom/allinone/callerid/R$styleable;->CirclePageIndicator:[I

    const/4 v14, 0x0

    move-object/from16 v15, p1

    move-object/from16 v2, p2

    move/from16 v16, v5

    move/from16 v5, p3

    invoke-virtual {v15, v2, v13, v5, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v5, 0x2

    .line 20
    invoke-virtual {v2, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v0, Lcom/allinone/callerid/customview/CirclePageIndicator;->o:Z

    .line 21
    invoke-virtual {v2, v14, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v0, Lcom/allinone/callerid/customview/CirclePageIndicator;->n:I

    .line 22
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v5, 0x4

    .line 23
    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x7

    .line 25
    invoke-virtual {v2, v1, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v1, 0x8

    .line 26
    invoke-virtual {v2, v1, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 27
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x3

    .line 28
    invoke-virtual {v2, v1, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x5

    .line 29
    invoke-virtual {v2, v1, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, v0, Lcom/allinone/callerid/customview/CirclePageIndicator;->d:F

    const/4 v1, 0x6

    move/from16 v3, v16

    .line 30
    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Lcom/allinone/callerid/customview/CirclePageIndicator;->p:Z

    const/4 v1, 0x1

    .line 31
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 34
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 35
    invoke-static {v1}, Lb/h/l/x;->d(Landroid/view/ViewConfiguration;)I

    move-result v1

    iput v1, v0, Lcom/allinone/callerid/customview/CirclePageIndicator;->q:I

    return-void
.end method

.method private b(I)I
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->h:Landroidx/viewpager/widget/ViewPager;

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/a;->e()I

    move-result v1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->d:F

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float v1, v1, v4

    add-float/2addr v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v2, v1

    float-to-int v1, v2

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    .line 6
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v1

    :cond_2
    :goto_0
    return p1
.end method

.method private e(I)I
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    .line 3
    iget v2, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->d:F

    mul-float v2, v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v2, v1

    float-to-int v1, v2

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    .line 4
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    return p1
.end method


# virtual methods
.method public a(IFI)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->j:I

    .line 2
    iput p2, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->l:F

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->i:Landroidx/viewpager/widget/ViewPager$i;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$i;->a(IFI)V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->m:I

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->i:Landroidx/viewpager/widget/ViewPager$i;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$i;->c(I)V

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->p:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->m:I

    if-nez v0, :cond_1

    .line 2
    :cond_0
    iput p1, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->j:I

    .line 3
    iput p1, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->k:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->i:Landroidx/viewpager/widget/ViewPager$i;

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$i;->d(I)V

    :cond_2
    return-void
.end method

.method public getFillColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->g:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->n:I

    return v0
.end method

.method public getPageColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->e:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getRadius()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->d:F

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->h:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->e()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget v1, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->j:I

    const/4 v2, 0x1

    if-lt v1, v0, :cond_2

    sub-int/2addr v0, v2

    .line 5
    invoke-virtual {p0, v0}, Lcom/allinone/callerid/customview/CirclePageIndicator;->setCurrentItem(I)V

    return-void

    .line 6
    :cond_2
    iget v1, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->n:I

    if-nez v1, :cond_3

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    .line 15
    :goto_0
    iget v6, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->u:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_4

    .line 16
    iget v6, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->d:F

    iput v6, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->u:F

    .line 17
    :cond_4
    iget v6, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->d:F

    const/high16 v8, 0x40000000    # 2.0f

    mul-float v9, v6, v8

    iget v10, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->u:F

    add-float/2addr v9, v10

    int-to-float v5, v5

    add-float/2addr v5, v6

    int-to-float v11, v3

    add-float/2addr v11, v6

    .line 18
    iget-boolean v12, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->o:Z

    if-eqz v12, :cond_6

    if-le v0, v2, :cond_5

    sub-int/2addr v1, v3

    sub-int/2addr v1, v4

    int-to-float v1, v1

    div-float/2addr v1, v8

    mul-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    mul-float v2, v2, v6

    add-int/lit8 v3, v0, -0x1

    int-to-float v3, v3

    mul-float v3, v3, v10

    add-float/2addr v2, v3

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    goto :goto_1

    :cond_5
    sub-int/2addr v1, v3

    sub-int/2addr v1, v4

    int-to-float v1, v1

    div-float/2addr v1, v8

    sub-float/2addr v1, v6

    :goto_1
    add-float/2addr v11, v1

    .line 19
    :cond_6
    iget-object v1, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->f:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    cmpl-float v1, v1, v7

    if-lez v1, :cond_7

    .line 20
    iget-object v1, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->f:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    div-float/2addr v1, v8

    sub-float/2addr v6, v1

    :cond_7
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_b

    int-to-float v2, v1

    mul-float v2, v2, v9

    add-float/2addr v2, v11

    .line 21
    iget v3, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->n:I

    if-nez v3, :cond_8

    move v3, v5

    goto :goto_3

    :cond_8
    move v3, v2

    move v2, v5

    .line 22
    :goto_3
    iget-object v4, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->e:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    if-lez v4, :cond_9

    .line 23
    iget-object v4, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v6, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 24
    :cond_9
    iget v4, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->d:F

    cmpl-float v7, v6, v4

    if-eqz v7, :cond_a

    .line 25
    iget-object v7, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 26
    :cond_b
    iget-boolean v0, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->p:Z

    if-eqz v0, :cond_c

    iget v1, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->k:I

    goto :goto_4

    :cond_c
    iget v1, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->j:I

    :goto_4
    int-to-float v1, v1

    mul-float v1, v1, v9

    if-nez v0, :cond_d

    .line 27
    iget v0, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->l:F

    mul-float v0, v0, v9

    add-float/2addr v1, v0

    .line 28
    :cond_d
    iget v0, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->n:I

    if-nez v0, :cond_e

    add-float/2addr v11, v1

    move v13, v11

    move v11, v5

    move v5, v13

    goto :goto_5

    :cond_e
    add-float/2addr v11, v1

    .line 29
    :goto_5
    iget v0, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->d:F

    iget-object v1, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v11, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->n:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/allinone/callerid/customview/CirclePageIndicator;->b(I)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/allinone/callerid/customview/CirclePageIndicator;->e(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/allinone/callerid/customview/CirclePageIndicator;->e(I)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/allinone/callerid/customview/CirclePageIndicator;->b(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/allinone/callerid/customview/CirclePageIndicator$SavedState;

    .line 2
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3
    iget p1, p1, Lcom/allinone/callerid/customview/CirclePageIndicator$SavedState;->d:I

    iput p1, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->j:I

    .line 4
    iput p1, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->k:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/allinone/callerid/customview/CirclePageIndicator$SavedState;

    invoke-direct {v1, v0}, Lcom/allinone/callerid/customview/CirclePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget v0, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->j:I

    iput v0, v1, Lcom/allinone/callerid/customview/CirclePageIndicator$SavedState;->d:I

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->h:Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->e()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_e

    const/4 v3, 0x3

    if-eq v0, v1, :cond_9

    const/4 v4, 0x2

    if-eq v0, v4, :cond_6

    if-eq v0, v3, :cond_9

    const/4 v3, 0x5

    if-eq v0, v3, :cond_5

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    goto/16 :goto_0

    .line 4
    :cond_2
    invoke-static {p1}, Lb/h/l/j;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 5
    invoke-static {p1, v0}, Lb/h/l/j;->d(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 6
    iget v4, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->s:I

    if-ne v3, v4, :cond_4

    if-nez v0, :cond_3

    const/4 v2, 0x1

    .line 7
    :cond_3
    invoke-static {p1, v2}, Lb/h/l/j;->d(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->s:I

    .line 8
    :cond_4
    iget v0, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->s:I

    invoke-static {p1, v0}, Lb/h/l/j;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Lb/h/l/j;->e(Landroid/view/MotionEvent;I)F

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->r:F

    goto/16 :goto_0

    .line 9
    :cond_5
    invoke-static {p1}, Lb/h/l/j;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 10
    invoke-static {p1, v0}, Lb/h/l/j;->e(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->r:F

    .line 11
    invoke-static {p1, v0}, Lb/h/l/j;->d(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->s:I

    goto/16 :goto_0

    .line 12
    :cond_6
    :try_start_0
    iget v4, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->s:I

    invoke-static {p1, v4}, Lb/h/l/j;->a(Landroid/view/MotionEvent;I)I

    move-result v4

    .line 13
    invoke-static {p1, v4}, Lb/h/l/j;->e(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 14
    iget v5, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->r:F

    sub-float v5, v4, v5

    .line 15
    iget-boolean v6, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->t:Z

    if-nez v6, :cond_7

    .line 16
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->q:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_7

    .line 17
    iput-boolean v1, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->t:Z

    .line 18
    :cond_7
    iget-boolean v6, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->t:Z

    if-eqz v6, :cond_f

    .line 19
    iput v4, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->r:F

    .line 20
    iget-object v4, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->h:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v4}, Landroidx/viewpager/widget/ViewPager;->A()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->h:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v4}, Landroidx/viewpager/widget/ViewPager;->e()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 21
    :cond_8
    iget-object v4, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->h:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v4, v5}, Landroidx/viewpager/widget/ViewPager;->s(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v4

    .line 22
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 23
    :cond_9
    :try_start_1
    iget-boolean v4, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->t:Z

    if-nez v4, :cond_d

    .line 24
    iget-object v4, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->h:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v4}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/viewpager/widget/a;->e()I

    move-result v4

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v5, v6

    const/high16 v7, 0x40c00000    # 6.0f

    div-float/2addr v5, v7

    .line 26
    iget v7, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->j:I

    if-lez v7, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float v8, v6, v5

    cmpg-float v7, v7, v8

    if-gez v7, :cond_b

    if-eq v0, v3, :cond_a

    .line 27
    iget-object p1, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->h:Landroidx/viewpager/widget/ViewPager;

    iget v0, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->j:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_a
    return v1

    .line 28
    :cond_b
    iget v7, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->j:I

    sub-int/2addr v4, v1

    if-ge v7, v4, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    add-float/2addr v6, v5

    cmpl-float p1, p1, v6

    if-lez p1, :cond_d

    if-eq v0, v3, :cond_c

    .line 29
    iget-object p1, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->h:Landroidx/viewpager/widget/ViewPager;

    iget v0, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->j:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_c
    return v1

    .line 30
    :cond_d
    iput-boolean v2, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->t:Z

    const/4 p1, -0x1

    .line 31
    iput p1, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->s:I

    .line 32
    iget-object p1, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->h:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->A()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->h:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->q()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 34
    :cond_e
    invoke-static {p1, v2}, Lb/h/l/j;->d(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->s:I

    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->r:F

    :cond_f
    :goto_0
    return v1

    :cond_10
    :goto_1
    return v2
.end method

.method public setCentered(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->o:Z

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->h:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 3
    iput p1, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->j:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager has not been bound."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFillColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->i:Landroidx/viewpager/widget/ViewPager$i;

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Orientation must be either HORIZONTAL or VERTICAL."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iput p1, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->n:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setPaddind(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->u:F

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPageColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->d:F

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSnap(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->p:Z

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->h:Landroidx/viewpager/widget/ViewPager;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$i;)V

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    iput-object p1, p0, Lcom/allinone/callerid/customview/CirclePageIndicator;->h:Landroidx/viewpager/widget/ViewPager;

    .line 5
    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$i;)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager does not have adapter instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;I)V
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/allinone/callerid/customview/CirclePageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 9
    invoke-virtual {p0, p2}, Lcom/allinone/callerid/customview/CirclePageIndicator;->setCurrentItem(I)V

    return-void
.end method
