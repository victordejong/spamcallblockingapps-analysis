.class public Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;
.super Lcom/viewpagerindicator/CirclePageIndicator;
.source "SourceFile"


# instance fields
.field private a:Landroid/animation/ValueAnimator;

.field private b:I

.field private c:I

.field private d:Landroidx/viewpager/widget/ViewPager;

.field private e:F

.field private f:F

.field private g:F

.field private h:Z

.field private i:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 33
    invoke-direct {p0, p1}, Lcom/viewpagerindicator/CirclePageIndicator;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 22
    iput p1, p0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->b:I

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->c:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 25
    iput v0, p0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->e:F

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->f:F

    const v0, 0x3dcccccd    # 0.1f

    .line 27
    iput v0, p0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->g:F

    .line 28
    iput-boolean p1, p0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->h:Z

    const-wide/16 v0, 0x190

    .line 30
    iput-wide v0, p0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->i:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/viewpagerindicator/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 22
    iput p1, p0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->b:I

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->c:I

    const/high16 p2, -0x40800000    # -1.0f

    .line 25
    iput p2, p0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->e:F

    const/4 p2, 0x0

    .line 26
    iput p2, p0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->f:F

    const p2, 0x3dcccccd    # 0.1f

    .line 27
    iput p2, p0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->g:F

    .line 28
    iput-boolean p1, p0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->h:Z

    const-wide/16 p1, 0x190

    .line 30
    iput-wide p1, p0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->i:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/viewpagerindicator/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 22
    iput p1, p0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->b:I

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->c:I

    const/high16 p2, -0x40800000    # -1.0f

    .line 25
    iput p2, p0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->e:F

    const/4 p2, 0x0

    .line 26
    iput p2, p0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->f:F

    const p2, 0x3dcccccd    # 0.1f

    .line 27
    iput p2, p0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->g:F

    .line 28
    iput-boolean p1, p0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->h:Z

    const-wide/16 p1, 0x190

    .line 30
    iput-wide p1, p0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->i:J

    return-void
.end method

.method private synthetic a(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 148
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->b:I

    .line 149
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->invalidate()V

    return-void
.end method

.method public static synthetic lambda$MtnuzpHMz0uwdQngSSygNOUKv78(Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->a(Landroid/animation/ValueAnimator;)V

    return-void
.end method


# virtual methods
.method public getSeparationLineLength()F
    .locals 2

    .line 176
    iget v0, p0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->e:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->getRadius()F

    move-result v0

    :cond_0
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 46
    iget-object v1, v0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->d:Landroidx/viewpager/widget/ViewPager;

    if-nez v1, :cond_0

    return-void

    .line 49
    :cond_0
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/a;->getCount()I

    move-result v8

    if-nez v8, :cond_1

    return-void

    .line 54
    :cond_1
    iget-object v1, v0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->d:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v9

    const/4 v10, 0x1

    if-lt v9, v8, :cond_2

    sub-int/2addr v8, v10

    .line 56
    invoke-virtual {v0, v8}, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->setCurrentItem(I)V

    return-void

    .line 64
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->getOrientation()I

    move-result v11

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->getRadius()F

    move-result v12

    if-nez v11, :cond_3

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->getWidth()I

    move-result v1

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->getPaddingLeft()I

    move-result v2

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->getPaddingRight()I

    move-result v3

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->getPaddingTop()I

    move-result v4

    goto :goto_0

    .line 72
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->getHeight()I

    move-result v1

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->getPaddingTop()I

    move-result v2

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->getPaddingBottom()I

    move-result v3

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->getPaddingLeft()I

    move-result v4

    .line 79
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->getSeparationLineLength()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v13, v12, v6

    add-float v14, v5, v13

    int-to-float v4, v4

    add-float v15, v4, v12

    int-to-float v4, v2

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->isCentered()Z

    move-result v5

    if-eqz v5, :cond_4

    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    int-to-float v1, v1

    add-int/lit8 v2, v8, -0x1

    int-to-float v2, v2

    mul-float v2, v2, v14

    add-float/2addr v2, v13

    sub-float/2addr v1, v2

    div-float/2addr v1, v6

    add-float/2addr v4, v1

    :cond_4
    move/from16 v16, v4

    add-float v17, v16, v12

    .line 91
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v10}, Landroid/graphics/Paint;-><init>(I)V

    .line 92
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->getFillColor()I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 96
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v10}, Landroid/graphics/Paint;-><init>(I)V

    .line 97
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->getStrokeColor()I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move/from16 v18, v15

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v8, :cond_9

    int-to-float v1, v3

    mul-float v1, v1, v14

    add-float v1, v17, v1

    if-nez v11, :cond_5

    move v2, v15

    goto :goto_2

    :cond_5
    move v2, v1

    move v1, v15

    :goto_2
    if-ge v3, v9, :cond_6

    .line 113
    invoke-virtual {v7, v1, v2, v12, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 115
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->getStrokeWidth()F

    move-result v18

    sub-float v4, v12, v18

    invoke-virtual {v7, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_3
    add-int/lit8 v4, v8, -0x1

    if-eq v3, v4, :cond_8

    if-ge v3, v9, :cond_7

    add-float v4, v1, v12

    add-float/2addr v1, v14

    sub-float v18, v1, v12

    move-object/from16 v1, p1

    move/from16 v20, v2

    move v2, v4

    move/from16 v21, v3

    move/from16 v3, v20

    move/from16 v4, v18

    move-object/from16 v19, v5

    move/from16 v5, v20

    move-object/from16 v22, v6

    .line 120
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_7
    move/from16 v20, v2

    move/from16 v21, v3

    move-object/from16 v19, v5

    move-object/from16 v22, v6

    add-float v2, v1, v12

    add-float/2addr v1, v14

    sub-float v4, v1, v12

    move-object/from16 v1, p1

    move/from16 v3, v20

    move/from16 v5, v20

    move-object/from16 v6, v19

    .line 122
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_8
    move/from16 v20, v2

    move/from16 v21, v3

    move-object/from16 v19, v5

    move-object/from16 v22, v6

    :goto_4
    add-int/lit8 v3, v21, 0x1

    move-object/from16 v5, v19

    move/from16 v18, v20

    move-object/from16 v6, v22

    goto :goto_1

    :cond_9
    move-object/from16 v22, v6

    .line 128
    iget v1, v0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->c:I

    if-ne v9, v1, :cond_a

    int-to-float v1, v9

    mul-float v1, v1, v14

    add-float v1, v17, v1

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v12

    move-object/from16 v6, v22

    invoke-virtual {v7, v1, v2, v12, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_a
    move-object/from16 v6, v22

    .line 133
    :goto_5
    iget-object v1, v0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->a:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_b

    int-to-float v1, v9

    mul-float v1, v1, v14

    add-float v1, v17, v1

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v12

    iget v3, v0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->b:I

    int-to-float v3, v3

    invoke-virtual {v7, v1, v2, v3, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_6

    .line 135
    :cond_b
    iget v1, v0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->b:I

    float-to-int v2, v12

    if-ne v1, v2, :cond_c

    int-to-float v1, v9

    mul-float v1, v1, v14

    add-float v1, v17, v1

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v12

    invoke-virtual {v7, v1, v2, v12, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 138
    iput v10, v0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->b:I

    .line 139
    iput v9, v0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->c:I

    const/4 v1, 0x0

    .line 140
    iput-boolean v1, v0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->h:Z

    goto :goto_7

    :cond_c
    :goto_6
    const/4 v1, 0x0

    .line 143
    :goto_7
    iget v2, v0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->f:F

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-nez v4, :cond_e

    iget v4, v0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->g:F

    cmpl-float v4, v4, v3

    if-eqz v4, :cond_e

    .line 144
    iget-object v2, v0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->a:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-nez v2, :cond_f

    :cond_d
    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v10, v2, v1

    float-to-int v1, v12

    aput v1, v2, v10

    .line 146
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->a:Landroid/animation/ValueAnimator;

    .line 147
    new-instance v2, Lcom/callapp/contacts/widget/-$$Lambda$CallAppAnimatedViewPagerIndicator$MtnuzpHMz0uwdQngSSygNOUKv78;

    invoke-direct {v2, v0}, Lcom/callapp/contacts/widget/-$$Lambda$CallAppAnimatedViewPagerIndicator$MtnuzpHMz0uwdQngSSygNOUKv78;-><init>(Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 151
    iget-object v1, v0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->a:Landroid/animation/ValueAnimator;

    iget-wide v2, v0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->i:J

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 152
    iget-object v1, v0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_8

    :cond_e
    cmpl-float v1, v2, v3

    if-eqz v1, :cond_f

    .line 154
    iget-boolean v1, v0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->h:Z

    if-nez v1, :cond_f

    int-to-float v1, v9

    mul-float v1, v1, v14

    add-float v16, v16, v1

    add-float v3, v16, v13

    sub-float/2addr v14, v13

    mul-float v2, v2, v14

    add-float v4, v3, v2

    move-object/from16 v1, p1

    move v2, v3

    move/from16 v3, v18

    move/from16 v5, v18

    .line 158
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 160
    :cond_f
    :goto_8
    iget v1, v0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->f:F

    iput v1, v0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->g:F

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 191
    iput p2, p0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->f:F

    .line 192
    invoke-super {p0, p1, p2, p3}, Lcom/viewpagerindicator/CirclePageIndicator;->onPageScrolled(IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .line 201
    invoke-super {p0, p1}, Lcom/viewpagerindicator/CirclePageIndicator;->onPageSelected(I)V

    const/4 p1, 0x1

    .line 202
    iput-boolean p1, p0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->h:Z

    return-void
.end method

.method public setDotAnimationDuration(J)V
    .locals 0

    .line 196
    iput-wide p1, p0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->i:J

    return-void
.end method

.method public setSeparationLineLength(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    .line 186
    iput p1, p0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->e:F

    return-void

    .line 185
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "separation must be > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    .line 165
    invoke-super {p0, p1}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 166
    iput-object p1, p0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->d:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;I)V
    .locals 0

    .line 171
    invoke-super {p0, p1, p2}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;I)V

    .line 172
    iput-object p1, p0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->d:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method
