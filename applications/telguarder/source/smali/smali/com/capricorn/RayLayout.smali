.class public Lcom/capricorn/RayLayout;
.super Landroid/view/ViewGroup;
.source "RayLayout.java"


# instance fields
.field private mChildGap:I

.field private mChildSize:I

.field private mExpanded:Z

.field private mLeftHolderWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lcom/capricorn/RayLayout;->mExpanded:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lcom/capricorn/RayLayout;->mExpanded:Z

    if-eqz p2, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/capricorn/RayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/capricorn/R$styleable;->ArcLayout:[I

    invoke-virtual {v0, p2, v1, p1, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 42
    sget v1, Lcom/capricorn/R$styleable;->ArcLayout_childSize:I

    invoke-virtual {v0, v1, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/capricorn/RayLayout;->mChildSize:I

    .line 43
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 45
    invoke-virtual {p0}, Lcom/capricorn/RayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/capricorn/R$styleable;->RayLayout:[I

    invoke-virtual {v0, p2, v1, p1, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 46
    sget v0, Lcom/capricorn/R$styleable;->RayLayout_leftHolderWidth:I

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/capricorn/RayLayout;->mLeftHolderWidth:I

    .line 47
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/capricorn/RayLayout;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/capricorn/RayLayout;->onAllAnimationsEnd()V

    return-void
.end method

.method private bindChildAnimation(Landroid/view/View;IJ)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v8, p2

    .line 153
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_3

    .line 154
    iget-boolean v9, v0, Lcom/capricorn/RayLayout;->mExpanded:Z

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/capricorn/RayLayout;->getChildCount()I

    move-result v10

    xor-int/lit8 v1, v9, 0x1

    .line 156
    iget v2, v0, Lcom/capricorn/RayLayout;->mLeftHolderWidth:I

    iget v3, v0, Lcom/capricorn/RayLayout;->mChildGap:I

    iget v4, v0, Lcom/capricorn/RayLayout;->mChildSize:I

    invoke-static {v1, v2, v8, v3, v4}, Lcom/capricorn/RayLayout;->computeChildFrame(ZIIII)Landroid/graphics/Rect;

    move-result-object v1

    .line 158
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v11, v2, v3

    .line 159
    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v12, v1, v2

    .line 161
    iget-boolean v1, v0, Lcom/capricorn/RayLayout;->mExpanded:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    :goto_0
    move-object/from16 v21, v1

    .line 162
    iget-boolean v2, v0, Lcom/capricorn/RayLayout;->mExpanded:Z

    const v4, 0x3dcccccd    # 0.1f

    move v1, v10

    move/from16 v3, p2

    move-wide/from16 v5, p3

    move-object/from16 v7, v21

    invoke-static/range {v1 .. v7}, Lcom/capricorn/RayLayout;->computeStartOffset(IZIFJLandroid/view/animation/Interpolator;)J

    move-result-wide v17

    .line 164
    iget-boolean v1, v0, Lcom/capricorn/RayLayout;->mExpanded:Z

    const/4 v13, 0x0

    int-to-float v14, v11

    const/4 v15, 0x0

    if-eqz v1, :cond_1

    int-to-float v1, v12

    move/from16 v16, v1

    move-wide/from16 v19, p3

    invoke-static/range {v13 .. v21}, Lcom/capricorn/RayLayout;->createShrinkAnimation(FFFFJJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_1

    :cond_1
    int-to-float v1, v12

    move/from16 v16, v1

    move-wide/from16 v19, p3

    .line 165
    invoke-static/range {v13 .. v21}, Lcom/capricorn/RayLayout;->createExpandAnimation(FFFFJJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    .line 167
    :goto_1
    invoke-static {v9, v10, v8}, Lcom/capricorn/RayLayout;->getTransformedIndex(ZII)I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v10, v3

    if-ne v2, v10, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 168
    :goto_2
    new-instance v2, Lcom/capricorn/RayLayout$1;

    invoke-direct {v2, v0, v3}, Lcom/capricorn/RayLayout$1;-><init>(Lcom/capricorn/RayLayout;Z)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    move-object/from16 v2, p1

    .line 194
    invoke-virtual {v2, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    return-void
.end method

.method private static computeChildFrame(ZIIII)Landroid/graphics/Rect;
    .locals 0

    if-eqz p0, :cond_0

    add-int p0, p3, p4

    mul-int p2, p2, p0

    add-int/2addr p1, p2

    add-int/2addr p1, p3

    goto :goto_0

    :cond_0
    sub-int/2addr p1, p4

    .line 58
    div-int/lit8 p1, p1, 0x2

    .line 60
    :goto_0
    new-instance p0, Landroid/graphics/Rect;

    const/4 p2, 0x0

    add-int p3, p1, p4

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method private static computeChildGap(FIII)I
    .locals 0

    int-to-float p1, p1

    div-float/2addr p0, p1

    int-to-float p1, p2

    sub-float/2addr p0, p1

    float-to-int p0, p0

    .line 53
    invoke-static {p0, p3}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static computeStartOffset(IZIFJLandroid/view/animation/Interpolator;)J
    .locals 0

    long-to-float p4, p4

    mul-float p3, p3, p4

    .line 102
    invoke-static {p1, p0, p2}, Lcom/capricorn/RayLayout;->getTransformedIndex(ZII)I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, p3

    float-to-long p1, p1

    int-to-float p0, p0

    mul-float p3, p3, p0

    long-to-float p0, p1

    div-float/2addr p0, p3

    .line 106
    invoke-interface {p6, p0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    mul-float p0, p0, p3

    float-to-long p0, p0

    return-wide p0
.end method

.method private static createExpandAnimation(FFFFJJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .locals 7

    .line 117
    new-instance p0, Lcom/capricorn/RotateAndTranslateAnimation;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x44340000    # 720.0f

    move-object v0, p0

    move v2, p1

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/capricorn/RotateAndTranslateAnimation;-><init>(FFFFFF)V

    .line 118
    invoke-virtual {p0, p4, p5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 119
    invoke-virtual {p0, p6, p7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 120
    invoke-virtual {p0, p8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 p1, 0x1

    .line 121
    invoke-virtual {p0, p1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    return-object p0
.end method

.method private static createShrinkAnimation(FFFFJJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .locals 21

    move-wide/from16 v0, p4

    .line 128
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v3, 0x1

    .line 129
    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    const-wide/16 v4, 0x2

    .line 131
    div-long v4, p6, v4

    .line 132
    new-instance v13, Landroid/view/animation/RotateAnimation;

    const/4 v7, 0x0

    const/high16 v8, 0x43b40000    # 360.0f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v11, 0x1

    const/high16 v12, 0x3f000000    # 0.5f

    move-object v6, v13

    invoke-direct/range {v6 .. v12}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 134
    invoke-virtual {v13, v0, v1}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 135
    invoke-virtual {v13, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 136
    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v13, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 137
    invoke-virtual {v13, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 139
    invoke-virtual {v2, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 141
    new-instance v6, Lcom/capricorn/RotateAndTranslateAnimation;

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/high16 v19, 0x43b40000    # 360.0f

    const/high16 v20, 0x44340000    # 720.0f

    move-object v14, v6

    move/from16 v16, p1

    move/from16 v18, p3

    invoke-direct/range {v14 .. v20}, Lcom/capricorn/RotateAndTranslateAnimation;-><init>(FFFFFF)V

    add-long/2addr v0, v4

    .line 142
    invoke-virtual {v6, v0, v1}, Landroid/view/animation/Animation;->setStartOffset(J)V

    sub-long v0, p6, v4

    .line 143
    invoke-virtual {v6, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    move-object/from16 v0, p8

    .line 144
    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 145
    invoke-virtual {v6, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 147
    invoke-virtual {v2, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-object v2
.end method

.method private static getTransformedIndex(ZII)I
    .locals 0

    add-int/lit8 p1, p1, -0x1

    sub-int/2addr p1, p2

    return p1
.end method

.method private onAllAnimationsEnd()V
    .locals 3

    .line 235
    invoke-virtual {p0}, Lcom/capricorn/RayLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 237
    invoke-virtual {p0, v1}, Lcom/capricorn/RayLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    :cond_0
    invoke-virtual {p0}, Lcom/capricorn/RayLayout;->requestLayout()V

    return-void
.end method


# virtual methods
.method protected getSuggestedMinimumHeight()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/capricorn/RayLayout;->mChildSize:I

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 3

    .line 70
    iget v0, p0, Lcom/capricorn/RayLayout;->mLeftHolderWidth:I

    iget v1, p0, Lcom/capricorn/RayLayout;->mChildSize:I

    invoke-virtual {p0}, Lcom/capricorn/RayLayout;->getChildCount()I

    move-result v2

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public isExpanded()Z
    .locals 1

    .line 199
    iget-boolean v0, p0, Lcom/capricorn/RayLayout;->mExpanded:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 88
    iget p1, p0, Lcom/capricorn/RayLayout;->mLeftHolderWidth:I

    .line 89
    invoke-virtual {p0}, Lcom/capricorn/RayLayout;->getChildCount()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    .line 92
    iget-boolean p4, p0, Lcom/capricorn/RayLayout;->mExpanded:Z

    iget p5, p0, Lcom/capricorn/RayLayout;->mChildGap:I

    iget v0, p0, Lcom/capricorn/RayLayout;->mChildSize:I

    invoke-static {p4, p1, p3, p5, v0}, Lcom/capricorn/RayLayout;->computeChildFrame(ZIIII)Landroid/graphics/Rect;

    move-result-object p4

    .line 93
    invoke-virtual {p0, p3}, Lcom/capricorn/RayLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    iget v0, p4, Landroid/graphics/Rect;->left:I

    iget v1, p4, Landroid/graphics/Rect;->top:I

    iget v2, p4, Landroid/graphics/Rect;->right:I

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p5, v0, v1, v2, p4}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 75
    invoke-virtual {p0}, Lcom/capricorn/RayLayout;->getSuggestedMinimumHeight()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 77
    invoke-virtual {p0}, Lcom/capricorn/RayLayout;->getChildCount()I

    move-result p1

    .line 78
    invoke-virtual {p0}, Lcom/capricorn/RayLayout;->getMeasuredWidth()I

    move-result p2

    iget v1, p0, Lcom/capricorn/RayLayout;->mLeftHolderWidth:I

    sub-int/2addr p2, v1

    int-to-float p2, p2

    iget v1, p0, Lcom/capricorn/RayLayout;->mChildSize:I

    const/4 v2, 0x0

    invoke-static {p2, p1, v1, v2}, Lcom/capricorn/RayLayout;->computeChildGap(FIII)I

    move-result p2

    iput p2, p0, Lcom/capricorn/RayLayout;->mChildGap:I

    :goto_0
    if-ge v2, p1, :cond_0

    .line 81
    invoke-virtual {p0, v2}, Lcom/capricorn/RayLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    iget v1, p0, Lcom/capricorn/RayLayout;->mChildSize:I

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v3, p0, Lcom/capricorn/RayLayout;->mChildSize:I

    .line 82
    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 81
    invoke-virtual {p2, v1, v3}, Landroid/view/View;->measure(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setChildSize(I)V
    .locals 1

    .line 203
    iget v0, p0, Lcom/capricorn/RayLayout;->mChildSize:I

    if-eq v0, p1, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    iput p1, p0, Lcom/capricorn/RayLayout;->mChildSize:I

    .line 209
    invoke-virtual {p0}, Lcom/capricorn/RayLayout;->requestLayout()V

    :cond_1
    :goto_0
    return-void
.end method

.method public switchState(Z)V
    .locals 5

    if-eqz p1, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/capricorn/RayLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 221
    invoke-virtual {p0, v1}, Lcom/capricorn/RayLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-wide/16 v3, 0x12c

    invoke-direct {p0, v2, v1, v3, v4}, Lcom/capricorn/RayLayout;->bindChildAnimation(Landroid/view/View;IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 225
    :cond_0
    iget-boolean v0, p0, Lcom/capricorn/RayLayout;->mExpanded:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/capricorn/RayLayout;->mExpanded:Z

    if-nez p1, :cond_1

    .line 228
    invoke-virtual {p0}, Lcom/capricorn/RayLayout;->requestLayout()V

    .line 231
    :cond_1
    invoke-virtual {p0}, Lcom/capricorn/RayLayout;->invalidate()V

    return-void
.end method
