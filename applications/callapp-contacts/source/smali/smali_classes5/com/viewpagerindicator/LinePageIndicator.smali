.class public Lcom/viewpagerindicator/LinePageIndicator;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/viewpagerindicator/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/viewpagerindicator/LinePageIndicator$SavedState;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Paint;

.field private c:Landroidx/viewpager/widget/ViewPager;

.field private d:Landroidx/viewpager/widget/ViewPager$e;

.field private e:I

.field private f:Z

.field private g:F

.field private h:F

.field private i:I

.field private j:F

.field private k:I

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/viewpagerindicator/LinePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 61
    sget v0, Lcom/viewpagerindicator/d$a;->vpiLinePageIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/viewpagerindicator/LinePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->a:Landroid/graphics/Paint;

    .line 42
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/viewpagerindicator/LinePageIndicator;->b:Landroid/graphics/Paint;

    const/high16 v1, -0x40800000    # -1.0f

    .line 51
    iput v1, p0, Lcom/viewpagerindicator/LinePageIndicator;->j:F

    const/4 v1, -0x1

    .line 52
    iput v1, p0, Lcom/viewpagerindicator/LinePageIndicator;->k:I

    .line 66
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 71
    sget v3, Lcom/viewpagerindicator/d$c;->default_line_indicator_selected_color:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 72
    sget v4, Lcom/viewpagerindicator/d$c;->default_line_indicator_unselected_color:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 73
    sget v5, Lcom/viewpagerindicator/d$d;->default_line_indicator_line_width:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 74
    sget v6, Lcom/viewpagerindicator/d$d;->default_line_indicator_gap_width:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 75
    sget v7, Lcom/viewpagerindicator/d$d;->default_line_indicator_stroke_width:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 76
    sget v8, Lcom/viewpagerindicator/d$b;->default_line_indicator_centered:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 79
    sget-object v8, Lcom/viewpagerindicator/d$f;->LinePageIndicator:[I

    const/4 v9, 0x0

    invoke-virtual {p1, p2, v8, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 81
    sget p3, Lcom/viewpagerindicator/d$f;->LinePageIndicator_centered:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/viewpagerindicator/LinePageIndicator;->f:Z

    .line 82
    sget p3, Lcom/viewpagerindicator/d$f;->LinePageIndicator_lineWidth:I

    invoke-virtual {p2, p3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/viewpagerindicator/LinePageIndicator;->g:F

    .line 83
    sget p3, Lcom/viewpagerindicator/d$f;->LinePageIndicator_gapWidth:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/viewpagerindicator/LinePageIndicator;->h:F

    .line 84
    sget p3, Lcom/viewpagerindicator/d$f;->LinePageIndicator_strokeWidth:I

    invoke-virtual {p2, p3, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/viewpagerindicator/LinePageIndicator;->setStrokeWidth(F)V

    .line 85
    sget p3, Lcom/viewpagerindicator/d$f;->LinePageIndicator_unselectedColor:I

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    sget p3, Lcom/viewpagerindicator/d$f;->LinePageIndicator_selectedColor:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    sget p3, Lcom/viewpagerindicator/d$f;->LinePageIndicator_android_background:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 90
    invoke-virtual {p0, p3}, Lcom/viewpagerindicator/LinePageIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 96
    invoke-static {p1}, Landroidx/core/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result p1

    iput p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->i:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 157
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 159
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 167
    :cond_1
    iget v1, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:I

    if-lt v1, v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 168
    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/LinePageIndicator;->setCurrentItem(I)V

    return-void

    .line 172
    :cond_2
    iget v1, p0, Lcom/viewpagerindicator/LinePageIndicator;->g:F

    iget v2, p0, Lcom/viewpagerindicator/LinePageIndicator;->h:F

    add-float/2addr v1, v2

    int-to-float v3, v0

    mul-float v3, v3, v1

    sub-float/2addr v3, v2

    .line 174
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    .line 175
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    .line 176
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingRight()I

    move-result v5

    int-to-float v5, v5

    .line 178
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v2

    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingBottom()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v2, v6

    .line 180
    iget-boolean v6, p0, Lcom/viewpagerindicator/LinePageIndicator;->f:Z

    if-eqz v6, :cond_3

    .line 181
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v4

    sub-float/2addr v6, v5

    div-float/2addr v6, v7

    div-float/2addr v3, v7

    sub-float/2addr v6, v3

    add-float/2addr v4, v6

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_5

    int-to-float v5, v3

    mul-float v5, v5, v1

    add-float v9, v4, v5

    .line 187
    iget v5, p0, Lcom/viewpagerindicator/LinePageIndicator;->g:F

    add-float v11, v9, v5

    .line 188
    iget v5, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:I

    if-ne v3, v5, :cond_4

    iget-object v5, p0, Lcom/viewpagerindicator/LinePageIndicator;->b:Landroid/graphics/Paint;

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/viewpagerindicator/LinePageIndicator;->a:Landroid/graphics/Paint;

    :goto_1
    move-object v13, v5

    move-object v8, p1

    move v10, v2

    move v12, v2

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 1356
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1357
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v2, :cond_1

    .line 1359
    iget-object v3, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroidx/viewpager/widget/ViewPager;

    if-nez v3, :cond_0

    goto :goto_0

    .line 1364
    :cond_0
    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/viewpager/widget/a;->getCount()I

    move-result v3

    .line 1365
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v5, v3

    iget v6, p0, Lcom/viewpagerindicator/LinePageIndicator;->g:F

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    iget v5, p0, Lcom/viewpagerindicator/LinePageIndicator;->h:F

    mul-float v3, v3, v5

    add-float/2addr v4, v3

    if-ne v0, v1, :cond_2

    int-to-float p1, p1

    .line 1368
    invoke-static {v4, p1}, Ljava/lang/Math;->min(FF)F

    move-result v4

    goto :goto_1

    :cond_1
    :goto_0
    int-to-float v4, p1

    :cond_2
    :goto_1
    float-to-double v3, v4

    .line 1371
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p1, v3

    .line 1383
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1384
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-ne v0, v2, :cond_3

    int-to-float p2, p2

    goto :goto_2

    .line 1391
    :cond_3
    iget-object v2, p0, Lcom/viewpagerindicator/LinePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingBottom()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    if-ne v0, v1, :cond_4

    int-to-float p2, p2

    .line 1394
    invoke-static {v2, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_2

    :cond_4
    move p2, v2

    :goto_2
    float-to-double v0, p2

    .line 1397
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p2, v0

    .line 344
    invoke-virtual {p0, p1, p2}, Lcom/viewpagerindicator/LinePageIndicator;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->d:Landroidx/viewpager/widget/ViewPager$e;

    if-eqz v0, :cond_0

    .line 316
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$e;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->d:Landroidx/viewpager/widget/ViewPager$e;

    if-eqz v0, :cond_0

    .line 323
    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$e;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 329
    iput p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:I

    .line 330
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    .line 332
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->d:Landroidx/viewpager/widget/ViewPager$e;

    if-eqz v0, :cond_0

    .line 333
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$e;->onPageSelected(I)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 402
    check-cast p1, Lcom/viewpagerindicator/LinePageIndicator$SavedState;

    .line 403
    invoke-virtual {p1}, Lcom/viewpagerindicator/LinePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 404
    iget p1, p1, Lcom/viewpagerindicator/LinePageIndicator$SavedState;->currentPage:I

    iput p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:I

    .line 405
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 410
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 411
    new-instance v1, Lcom/viewpagerindicator/LinePageIndicator$SavedState;

    invoke-direct {v1, v0}, Lcom/viewpagerindicator/LinePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 412
    iget v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:I

    iput v0, v1, Lcom/viewpagerindicator/LinePageIndicator$SavedState;->currentPage:I

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 193
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 200
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

    .line 262
    :cond_2
    invoke-static {p1}, Landroidx/core/view/i;->a(Landroid/view/MotionEvent;)I

    move-result v0

    .line 263
    invoke-static {p1, v0}, Landroidx/core/view/i;->b(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 264
    iget v4, p0, Lcom/viewpagerindicator/LinePageIndicator;->k:I

    if-ne v3, v4, :cond_4

    if-nez v0, :cond_3

    const/4 v2, 0x1

    .line 266
    :cond_3
    invoke-static {p1, v2}, Landroidx/core/view/i;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->k:I

    .line 268
    :cond_4
    iget v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->k:I

    invoke-static {p1, v0}, Landroidx/core/view/i;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/view/i;->c(Landroid/view/MotionEvent;I)F

    move-result p1

    iput p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->j:F

    goto/16 :goto_0

    .line 255
    :cond_5
    invoke-static {p1}, Landroidx/core/view/i;->a(Landroid/view/MotionEvent;)I

    move-result v0

    .line 256
    invoke-static {p1, v0}, Landroidx/core/view/i;->c(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Lcom/viewpagerindicator/LinePageIndicator;->j:F

    .line 257
    invoke-static {p1, v0}, Landroidx/core/view/i;->b(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->k:I

    goto/16 :goto_0

    .line 208
    :cond_6
    iget v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->k:I

    invoke-static {p1, v0}, Landroidx/core/view/i;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 209
    invoke-static {p1, v0}, Landroidx/core/view/i;->c(Landroid/view/MotionEvent;I)F

    move-result p1

    .line 210
    iget v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->j:F

    sub-float v0, p1, v0

    .line 212
    iget-boolean v2, p0, Lcom/viewpagerindicator/LinePageIndicator;->l:Z

    if-nez v2, :cond_7

    .line 213
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/viewpagerindicator/LinePageIndicator;->i:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    .line 214
    iput-boolean v1, p0, Lcom/viewpagerindicator/LinePageIndicator;->l:Z

    .line 218
    :cond_7
    iget-boolean v2, p0, Lcom/viewpagerindicator/LinePageIndicator;->l:Z

    if-eqz v2, :cond_f

    .line 219
    iput p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->j:F

    .line 220
    iget-object p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->isFakeDragging()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->beginFakeDrag()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 221
    :cond_8
    iget-object p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->fakeDragBy(F)V

    goto :goto_0

    .line 230
    :cond_9
    iget-boolean v4, p0, Lcom/viewpagerindicator/LinePageIndicator;->l:Z

    if-nez v4, :cond_d

    .line 231
    iget-object v4, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v4}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/viewpager/widget/a;->getCount()I

    move-result v4

    .line 232
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v5, v6

    const/high16 v7, 0x40c00000    # 6.0f

    div-float/2addr v5, v7

    .line 236
    iget v7, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:I

    if-lez v7, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float v8, v6, v5

    cmpg-float v7, v7, v8

    if-gez v7, :cond_b

    if-eq v0, v3, :cond_a

    .line 238
    iget-object p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroidx/viewpager/widget/ViewPager;

    iget v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_a
    return v1

    .line 241
    :cond_b
    iget v7, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:I

    sub-int/2addr v4, v1

    if-ge v7, v4, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    add-float/2addr v6, v5

    cmpl-float p1, p1, v6

    if-lez p1, :cond_d

    if-eq v0, v3, :cond_c

    .line 243
    iget-object p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroidx/viewpager/widget/ViewPager;

    iget v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_c
    return v1

    .line 249
    :cond_d
    iput-boolean v2, p0, Lcom/viewpagerindicator/LinePageIndicator;->l:Z

    const/4 p1, -0x1

    .line 250
    iput p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->k:I

    .line 251
    iget-object p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->isFakeDragging()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->endFakeDrag()V

    goto :goto_0

    .line 203
    :cond_e
    invoke-static {p1, v2}, Landroidx/core/view/i;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->k:I

    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->j:F

    :cond_f
    :goto_0
    return v1

    :cond_10
    :goto_1
    return v2
.end method

.method public setCentered(Z)V
    .locals 0

    .line 101
    iput-boolean p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->f:Z

    .line 102
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 304
    iput p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:I

    .line 305
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    return-void

    .line 301
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager has not been bound."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setGapWidth(F)V
    .locals 0

    .line 147
    iput p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->h:F

    .line 148
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    return-void
.end method

.method public setLineWidth(F)V
    .locals 0

    .line 128
    iput p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->g:F

    .line 129
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$e;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->d:Landroidx/viewpager/widget/ViewPager$e;

    return-void
.end method

.method public setSelectedColor(I)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 138
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 139
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    return-void
.end method

.method public setUnselectedColor(I)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroidx/viewpager/widget/ViewPager;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 282
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$e;)V

    .line 284
    :cond_1
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 287
    iput-object p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroidx/viewpager/widget/ViewPager;

    .line 288
    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$e;)V

    .line 289
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    return-void

    .line 285
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager does not have adapter instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;I)V
    .locals 0

    .line 294
    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/LinePageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 295
    invoke-virtual {p0, p2}, Lcom/viewpagerindicator/LinePageIndicator;->setCurrentItem(I)V

    return-void
.end method
