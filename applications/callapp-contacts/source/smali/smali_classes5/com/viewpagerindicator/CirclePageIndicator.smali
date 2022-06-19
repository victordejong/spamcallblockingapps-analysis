.class public Lcom/viewpagerindicator/CirclePageIndicator;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/viewpagerindicator/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/viewpagerindicator/CirclePageIndicator$SavedState;
    }
.end annotation


# instance fields
.field private a:F

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/Paint;

.field private e:Landroidx/viewpager/widget/ViewPager;

.field private f:Landroidx/viewpager/widget/ViewPager$e;

.field private g:I

.field private h:I

.field private i:F

.field private j:I

.field private k:I

.field private l:Z

.field private m:Z

.field private n:I

.field private o:F

.field private p:I

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, v0}, Lcom/viewpagerindicator/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 72
    sget v0, Lcom/viewpagerindicator/d$a;->vpiCirclePageIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/viewpagerindicator/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17

    move-object/from16 v0, p0

    .line 76
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/viewpagerindicator/CirclePageIndicator;->b:Landroid/graphics/Paint;

    .line 49
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lcom/viewpagerindicator/CirclePageIndicator;->c:Landroid/graphics/Paint;

    .line 50
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, v0, Lcom/viewpagerindicator/CirclePageIndicator;->d:Landroid/graphics/Paint;

    const/high16 v2, -0x40800000    # -1.0f

    .line 62
    iput v2, v0, Lcom/viewpagerindicator/CirclePageIndicator;->o:F

    const/4 v2, -0x1

    .line 63
    iput v2, v0, Lcom/viewpagerindicator/CirclePageIndicator;->p:I

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/CirclePageIndicator;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 81
    sget v5, Lcom/viewpagerindicator/d$c;->default_circle_indicator_page_color:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 82
    sget v6, Lcom/viewpagerindicator/d$c;->default_circle_indicator_fill_color:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 83
    sget v7, Lcom/viewpagerindicator/d$e;->default_circle_indicator_orientation:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 84
    sget v8, Lcom/viewpagerindicator/d$c;->default_circle_indicator_stroke_color:I

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 85
    sget v9, Lcom/viewpagerindicator/d$d;->default_circle_indicator_stroke_width:I

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    .line 86
    sget v10, Lcom/viewpagerindicator/d$d;->default_circle_indicator_radius:I

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    .line 87
    sget v11, Lcom/viewpagerindicator/d$b;->default_circle_indicator_centered:I

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    .line 88
    sget v12, Lcom/viewpagerindicator/d$b;->default_circle_indicator_snap:I

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 91
    sget-object v12, Lcom/viewpagerindicator/d$f;->CirclePageIndicator:[I

    const/4 v13, 0x0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move/from16 v16, v2

    move/from16 v2, p3

    invoke-virtual {v14, v15, v12, v2, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 93
    sget v12, Lcom/viewpagerindicator/d$f;->CirclePageIndicator_centered:I

    invoke-virtual {v2, v12, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, v0, Lcom/viewpagerindicator/CirclePageIndicator;->l:Z

    .line 94
    sget v11, Lcom/viewpagerindicator/d$f;->CirclePageIndicator_android_orientation:I

    invoke-virtual {v2, v11, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lcom/viewpagerindicator/CirclePageIndicator;->k:I

    .line 95
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    sget v7, Lcom/viewpagerindicator/d$f;->CirclePageIndicator_pageColor:I

    invoke-virtual {v2, v7, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 98
    sget v1, Lcom/viewpagerindicator/d$f;->CirclePageIndicator_strokeColor:I

    invoke-virtual {v2, v1, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    sget v1, Lcom/viewpagerindicator/d$f;->CirclePageIndicator_strokeWidth:I

    invoke-virtual {v2, v1, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 100
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    sget v1, Lcom/viewpagerindicator/d$f;->CirclePageIndicator_fillColor:I

    invoke-virtual {v2, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    sget v1, Lcom/viewpagerindicator/d$f;->CirclePageIndicator_radius:I

    invoke-virtual {v2, v1, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, v0, Lcom/viewpagerindicator/CirclePageIndicator;->a:F

    .line 103
    sget v1, Lcom/viewpagerindicator/d$f;->CirclePageIndicator_snap:I

    move/from16 v3, v16

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Lcom/viewpagerindicator/CirclePageIndicator;->m:Z

    .line 105
    sget v1, Lcom/viewpagerindicator/d$f;->CirclePageIndicator_android_background:I

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 107
    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 112
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 113
    invoke-static {v1}, Landroidx/core/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v1

    iput v1, v0, Lcom/viewpagerindicator/CirclePageIndicator;->n:I

    return-void
.end method

.method private a(I)I
    .locals 5

    .line 462
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 463
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_2

    .line 465
    iget-object v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroidx/viewpager/widget/ViewPager;

    if-nez v1, :cond_0

    goto :goto_0

    .line 470
    :cond_0
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/a;->getCount()I

    move-result v1

    .line 471
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/viewpagerindicator/CirclePageIndicator;->a:F

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

    .line 475
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v1

    :cond_2
    :goto_0
    return p1
.end method

.method private b(I)I
    .locals 3

    .line 490
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 491
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    .line 498
    iget v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->a:F

    mul-float v2, v2, v1

    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingBottom()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v2, v1

    float-to-int v1, v2

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    .line 501
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    return p1
.end method


# virtual methods
.method public getFillColor()I
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->k:I

    return v0
.end method

.method public getRadius()F
    .locals 1

    .line 185
    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->a:F

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public isCentered()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->l:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 199
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 201
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_0

    return-void

    .line 204
    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 209
    :cond_1
    iget v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:I

    if-lt v1, v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 210
    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/CirclePageIndicator;->setCurrentItem(I)V

    return-void

    .line 218
    :cond_2
    iget v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->k:I

    if-nez v1, :cond_3

    .line 219
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getWidth()I

    move-result v1

    .line 220
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingLeft()I

    move-result v2

    .line 221
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingRight()I

    move-result v3

    .line 222
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingTop()I

    move-result v4

    goto :goto_0

    .line 224
    :cond_3
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getHeight()I

    move-result v1

    .line 225
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingTop()I

    move-result v2

    .line 226
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingBottom()I

    move-result v3

    .line 227
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingLeft()I

    move-result v4

    .line 230
    :goto_0
    iget v5, p0, Lcom/viewpagerindicator/CirclePageIndicator;->a:F

    const/high16 v6, 0x40400000    # 3.0f

    mul-float v6, v6, v5

    int-to-float v4, v4

    add-float/2addr v4, v5

    int-to-float v7, v2

    add-float/2addr v7, v5

    .line 233
    iget-boolean v8, p0, Lcom/viewpagerindicator/CirclePageIndicator;->l:Z

    const/high16 v9, 0x40000000    # 2.0f

    if-eqz v8, :cond_4

    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v1, v9

    int-to-float v2, v0

    mul-float v2, v2, v6

    div-float/2addr v2, v9

    sub-float/2addr v1, v2

    add-float/2addr v7, v1

    .line 241
    :cond_4
    iget-object v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    .line 242
    iget-object v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    div-float/2addr v1, v9

    sub-float/2addr v5, v1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_9

    int-to-float v2, v1

    mul-float v2, v2, v6

    add-float/2addr v2, v7

    .line 248
    iget v3, p0, Lcom/viewpagerindicator/CirclePageIndicator;->k:I

    if-nez v3, :cond_6

    move v3, v4

    goto :goto_2

    :cond_6
    move v3, v2

    move v2, v4

    .line 256
    :goto_2
    iget-object v8, p0, Lcom/viewpagerindicator/CirclePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v8

    if-lez v8, :cond_7

    .line 257
    iget-object v8, p0, Lcom/viewpagerindicator/CirclePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v5, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 261
    :cond_7
    iget v8, p0, Lcom/viewpagerindicator/CirclePageIndicator;->a:F

    cmpl-float v9, v5, v8

    if-eqz v9, :cond_8

    .line 262
    iget-object v9, p0, Lcom/viewpagerindicator/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 267
    :cond_9
    iget-boolean v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->m:Z

    if-eqz v0, :cond_a

    iget v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->h:I

    goto :goto_3

    :cond_a
    iget v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:I

    :goto_3
    int-to-float v1, v1

    mul-float v1, v1, v6

    if-nez v0, :cond_b

    .line 269
    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->i:F

    mul-float v0, v0, v6

    add-float/2addr v1, v0

    .line 271
    :cond_b
    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->k:I

    if-nez v0, :cond_c

    add-float/2addr v7, v1

    move v10, v7

    move v7, v4

    move v4, v10

    goto :goto_4

    :cond_c
    add-float/2addr v7, v1

    .line 278
    :goto_4
    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->a:F

    iget-object v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v7, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 446
    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->k:I

    if-nez v0, :cond_0

    .line 447
    invoke-direct {p0, p1}, Lcom/viewpagerindicator/CirclePageIndicator;->a(I)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/viewpagerindicator/CirclePageIndicator;->b(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/viewpagerindicator/CirclePageIndicator;->setMeasuredDimension(II)V

    return-void

    .line 449
    :cond_0
    invoke-direct {p0, p1}, Lcom/viewpagerindicator/CirclePageIndicator;->b(I)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/viewpagerindicator/CirclePageIndicator;->a(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/viewpagerindicator/CirclePageIndicator;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 403
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->j:I

    .line 405
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroidx/viewpager/widget/ViewPager$e;

    if-eqz v0, :cond_0

    .line 406
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$e;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 412
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:I

    .line 413
    iput p2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->i:F

    .line 414
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 416
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroidx/viewpager/widget/ViewPager$e;

    if-eqz v0, :cond_0

    .line 417
    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$e;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 423
    iget-boolean v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->m:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->j:I

    if-nez v0, :cond_1

    .line 424
    :cond_0
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:I

    .line 425
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->h:I

    .line 426
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroidx/viewpager/widget/ViewPager$e;

    if-eqz v0, :cond_2

    .line 430
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$e;->onPageSelected(I)V

    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 509
    check-cast p1, Lcom/viewpagerindicator/CirclePageIndicator$SavedState;

    .line 510
    invoke-virtual {p1}, Lcom/viewpagerindicator/CirclePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 511
    iget v0, p1, Lcom/viewpagerindicator/CirclePageIndicator$SavedState;->currentPage:I

    iput v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:I

    .line 512
    iget p1, p1, Lcom/viewpagerindicator/CirclePageIndicator$SavedState;->currentPage:I

    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->h:I

    .line 513
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 518
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 519
    new-instance v1, Lcom/viewpagerindicator/CirclePageIndicator$SavedState;

    invoke-direct {v1, v0}, Lcom/viewpagerindicator/CirclePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 520
    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:I

    iput v0, v1, Lcom/viewpagerindicator/CirclePageIndicator$SavedState;->currentPage:I

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 282
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 289
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

    .line 351
    :cond_2
    invoke-static {p1}, Landroidx/core/view/i;->a(Landroid/view/MotionEvent;)I

    move-result v0

    .line 352
    invoke-static {p1, v0}, Landroidx/core/view/i;->b(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 353
    iget v4, p0, Lcom/viewpagerindicator/CirclePageIndicator;->p:I

    if-ne v3, v4, :cond_4

    if-nez v0, :cond_3

    const/4 v2, 0x1

    .line 355
    :cond_3
    invoke-static {p1, v2}, Landroidx/core/view/i;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->p:I

    .line 357
    :cond_4
    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->p:I

    invoke-static {p1, v0}, Landroidx/core/view/i;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/view/i;->c(Landroid/view/MotionEvent;I)F

    move-result p1

    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->o:F

    goto/16 :goto_0

    .line 344
    :cond_5
    invoke-static {p1}, Landroidx/core/view/i;->a(Landroid/view/MotionEvent;)I

    move-result v0

    .line 345
    invoke-static {p1, v0}, Landroidx/core/view/i;->c(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->o:F

    .line 346
    invoke-static {p1, v0}, Landroidx/core/view/i;->b(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->p:I

    goto/16 :goto_0

    .line 297
    :cond_6
    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->p:I

    invoke-static {p1, v0}, Landroidx/core/view/i;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 298
    invoke-static {p1, v0}, Landroidx/core/view/i;->c(Landroid/view/MotionEvent;I)F

    move-result p1

    .line 299
    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->o:F

    sub-float v0, p1, v0

    .line 301
    iget-boolean v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->q:Z

    if-nez v2, :cond_7

    .line 302
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/viewpagerindicator/CirclePageIndicator;->n:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    .line 303
    iput-boolean v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->q:Z

    .line 307
    :cond_7
    iget-boolean v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->q:Z

    if-eqz v2, :cond_f

    .line 308
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->o:F

    .line 309
    iget-object p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->isFakeDragging()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->beginFakeDrag()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 310
    :cond_8
    iget-object p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->fakeDragBy(F)V

    goto :goto_0

    .line 319
    :cond_9
    iget-boolean v4, p0, Lcom/viewpagerindicator/CirclePageIndicator;->q:Z

    if-nez v4, :cond_d

    .line 320
    iget-object v4, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v4}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/viewpager/widget/a;->getCount()I

    move-result v4

    .line 321
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v5, v6

    const/high16 v7, 0x40c00000    # 6.0f

    div-float/2addr v5, v7

    .line 325
    iget v7, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:I

    if-lez v7, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float v8, v6, v5

    cmpg-float v7, v7, v8

    if-gez v7, :cond_b

    if-eq v0, v3, :cond_a

    .line 327
    iget-object p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroidx/viewpager/widget/ViewPager;

    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_a
    return v1

    .line 330
    :cond_b
    iget v7, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:I

    sub-int/2addr v4, v1

    if-ge v7, v4, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    add-float/2addr v6, v5

    cmpl-float p1, p1, v6

    if-lez p1, :cond_d

    if-eq v0, v3, :cond_c

    .line 332
    iget-object p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroidx/viewpager/widget/ViewPager;

    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_c
    return v1

    .line 338
    :cond_d
    iput-boolean v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->q:Z

    const/4 p1, -0x1

    .line 339
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->p:I

    .line 340
    iget-object p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->isFakeDragging()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->endFakeDrag()V

    goto :goto_0

    .line 292
    :cond_e
    invoke-static {p1, v2}, Landroidx/core/view/i;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->p:I

    .line 293
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->o:F

    :cond_f
    :goto_0
    return v1

    :cond_10
    :goto_1
    return v2
.end method

.method public setCentered(Z)V
    .locals 0

    .line 118
    iput-boolean p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->l:Z

    .line 119
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 392
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:I

    .line 393
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    return-void

    .line 389
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager has not been bound."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFillColor(I)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$e;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroidx/viewpager/widget/ViewPager$e;

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Orientation must be either HORIZONTAL or VERTICAL."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 148
    :cond_1
    :goto_0
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->k:I

    .line 149
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->requestLayout()V

    return-void
.end method

.method public setPageColor(I)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .line 180
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->a:F

    .line 181
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    return-void
.end method

.method public setSnap(Z)V
    .locals 0

    .line 189
    iput-boolean p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->m:Z

    .line 190
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 172
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroidx/viewpager/widget/ViewPager;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 370
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$e;)V

    .line 372
    :cond_1
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 375
    iput-object p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroidx/viewpager/widget/ViewPager;

    .line 376
    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$e;)V

    .line 377
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    return-void

    .line 373
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager does not have adapter instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;I)V
    .locals 0

    .line 382
    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 383
    invoke-virtual {p0, p2}, Lcom/viewpagerindicator/CirclePageIndicator;->setCurrentItem(I)V

    return-void
.end method
