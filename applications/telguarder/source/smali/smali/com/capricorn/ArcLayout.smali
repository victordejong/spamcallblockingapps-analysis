.class public Lcom/capricorn/ArcLayout;
.super Landroid/view/ViewGroup;
.source "ArcLayout.java"


# static fields
.field public static final DEFAULT_FROM_DEGREES:F = 270.0f

.field public static final DEFAULT_TO_DEGREES:F = 360.0f

.field private static MIN_RADIUS:I = 0x64


# instance fields
.field private mChildPadding:I

.field private mChildSize:I

.field private mExpanded:Z

.field private mFromDegrees:F

.field private mLayoutPadding:I

.field private mRadius:I

.field private mToDegrees:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x5

    .line 46
    iput p1, p0, Lcom/capricorn/ArcLayout;->mChildPadding:I

    const/16 p1, 0xa

    .line 48
    iput p1, p0, Lcom/capricorn/ArcLayout;->mLayoutPadding:I

    const/high16 p1, 0x43870000    # 270.0f

    .line 54
    iput p1, p0, Lcom/capricorn/ArcLayout;->mFromDegrees:F

    const/high16 p1, 0x43b40000    # 360.0f

    .line 56
    iput p1, p0, Lcom/capricorn/ArcLayout;->mToDegrees:F

    const/4 p1, 0x0

    .line 63
    iput-boolean p1, p0, Lcom/capricorn/ArcLayout;->mExpanded:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x5

    .line 46
    iput v0, p0, Lcom/capricorn/ArcLayout;->mChildPadding:I

    const/16 v0, 0xa

    .line 48
    iput v0, p0, Lcom/capricorn/ArcLayout;->mLayoutPadding:I

    const/high16 v0, 0x43870000    # 270.0f

    .line 54
    iput v0, p0, Lcom/capricorn/ArcLayout;->mFromDegrees:F

    const/high16 v1, 0x43b40000    # 360.0f

    .line 56
    iput v1, p0, Lcom/capricorn/ArcLayout;->mToDegrees:F

    const/4 v2, 0x0

    .line 63
    iput-boolean v2, p0, Lcom/capricorn/ArcLayout;->mExpanded:Z

    if-eqz p2, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/capricorn/ArcLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/capricorn/R$styleable;->ArcLayout:[I

    invoke-virtual {v3, p2, v4, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 74
    sget v3, Lcom/capricorn/R$styleable;->ArcLayout_fromDegrees:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/capricorn/ArcLayout;->mFromDegrees:F

    .line 75
    sget v0, Lcom/capricorn/R$styleable;->ArcLayout_toDegrees:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/capricorn/ArcLayout;->mToDegrees:F

    .line 76
    sget v0, Lcom/capricorn/R$styleable;->ArcLayout_childSize:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/capricorn/ArcLayout;->mChildSize:I

    .line 78
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    const/high16 p2, 0x40a00000    # 5.0f

    .line 81
    invoke-static {p1, p2}, Lcom/capricorn/ArcLayout;->dpToPixel(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/capricorn/ArcLayout;->mChildPadding:I

    const/high16 p2, 0x41200000    # 10.0f

    .line 82
    invoke-static {p1, p2}, Lcom/capricorn/ArcLayout;->dpToPixel(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/capricorn/ArcLayout;->mLayoutPadding:I

    const/high16 p2, 0x42900000    # 72.0f

    .line 83
    invoke-static {p1, p2}, Lcom/capricorn/ArcLayout;->dpToPixel(Landroid/content/Context;F)I

    move-result p1

    sput p1, Lcom/capricorn/ArcLayout;->MIN_RADIUS:I

    return-void
.end method

.method static synthetic access$000(Lcom/capricorn/ArcLayout;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/capricorn/ArcLayout;->onAllAnimationsEnd()V

    return-void
.end method

.method private bindChildAnimation(Landroid/view/View;IJLandroid/view/animation/Animation$AnimationListener;)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v8, p2

    .line 217
    iget-boolean v9, v0, Lcom/capricorn/ArcLayout;->mExpanded:Z

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/capricorn/ArcLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/capricorn/ArcLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/4 v10, 0x0

    if-eqz v9, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 220
    :cond_0
    iget v3, v0, Lcom/capricorn/ArcLayout;->mRadius:I

    .line 222
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/capricorn/ArcLayout;->getChildCount()I

    move-result v11

    const/4 v4, 0x0

    const/4 v12, 0x1

    if-le v11, v12, :cond_1

    .line 226
    iget v4, v0, Lcom/capricorn/ArcLayout;->mToDegrees:F

    iget v5, v0, Lcom/capricorn/ArcLayout;->mFromDegrees:F

    sub-float/2addr v4, v5

    add-int/lit8 v5, v11, -0x1

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 229
    :cond_1
    iget v5, v0, Lcom/capricorn/ArcLayout;->mFromDegrees:F

    int-to-float v6, v8

    mul-float v6, v6, v4

    add-float/2addr v5, v6

    iget v4, v0, Lcom/capricorn/ArcLayout;->mChildSize:I

    invoke-static {v1, v2, v3, v5, v4}, Lcom/capricorn/ArcLayout;->computeChildFrame(IIIFI)Landroid/graphics/Rect;

    move-result-object v1

    .line 231
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v13, v2, v3

    .line 232
    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v14, v1, v2

    .line 234
    iget-boolean v1, v0, Lcom/capricorn/ArcLayout;->mExpanded:Z

    if-eqz v1, :cond_2

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    goto :goto_1

    :cond_2
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    :goto_1
    move-object/from16 v23, v1

    .line 235
    iget-boolean v2, v0, Lcom/capricorn/ArcLayout;->mExpanded:Z

    const v4, 0x3dcccccd    # 0.1f

    move v1, v11

    move/from16 v3, p2

    move-wide/from16 v5, p3

    move-object/from16 v7, v23

    invoke-static/range {v1 .. v7}, Lcom/capricorn/ArcLayout;->computeStartOffset(IZIFJLandroid/view/animation/Interpolator;)J

    move-result-wide v19

    .line 237
    iget-boolean v1, v0, Lcom/capricorn/ArcLayout;->mExpanded:Z

    const/4 v15, 0x0

    if-eqz v1, :cond_3

    int-to-float v1, v13

    const/16 v17, 0x0

    int-to-float v2, v14

    move/from16 v16, v1

    move/from16 v18, v2

    move-wide/from16 v21, p3

    invoke-static/range {v15 .. v23}, Lcom/capricorn/ArcLayout;->createShrinkAnimation(FFFFJJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_2

    :cond_3
    int-to-float v1, v13

    const/16 v17, 0x0

    int-to-float v2, v14

    move/from16 v16, v1

    move/from16 v18, v2

    move-wide/from16 v21, p3

    .line 238
    invoke-static/range {v15 .. v23}, Lcom/capricorn/ArcLayout;->createExpandAnimation(FFFFJJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    .line 240
    :goto_2
    invoke-static {v9, v11, v8}, Lcom/capricorn/ArcLayout;->getTransformedIndex(ZII)I

    move-result v2

    sub-int/2addr v11, v12

    if-ne v2, v11, :cond_4

    const/4 v10, 0x1

    .line 241
    :cond_4
    new-instance v2, Lcom/capricorn/ArcLayout$1;

    move-object/from16 v3, p5

    invoke-direct {v2, v0, v3, v10}, Lcom/capricorn/ArcLayout$1;-><init>(Lcom/capricorn/ArcLayout;Landroid/view/animation/Animation$AnimationListener;Z)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    move-object/from16 v2, p1

    .line 272
    invoke-virtual {v2, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private static computeChildFrame(IIIFI)Landroid/graphics/Rect;
    .locals 6

    int-to-double v0, p0

    int-to-double v2, p2

    float-to-double p2, p3

    .line 109
    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v4, v4, v2

    add-double/2addr v0, v4

    int-to-double p0, p1

    .line 110
    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    mul-double v2, v2, p2

    add-double/2addr p0, v2

    .line 112
    new-instance p2, Landroid/graphics/Rect;

    div-int/lit8 p4, p4, 0x2

    int-to-double p3, p4

    sub-double v2, v0, p3

    double-to-int v2, v2

    sub-double v3, p0, p3

    double-to-int v3, v3

    add-double/2addr v0, p3

    double-to-int v0, v0

    add-double/2addr p0, p3

    double-to-int p0, p0

    invoke-direct {p2, v2, v3, v0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p2
.end method

.method private static computeRadius(FIIII)I
    .locals 2

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    return p4

    :cond_0
    add-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    div-float/2addr p0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    add-int/2addr p2, p3

    .line 101
    div-int/2addr p2, v0

    int-to-double p1, p2

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    div-double/2addr p1, v0

    double-to-int p0, p1

    .line 103
    invoke-static {p0, p4}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static computeStartOffset(IZIFJLandroid/view/animation/Interpolator;)J
    .locals 0

    long-to-float p4, p4

    mul-float p3, p3, p4

    .line 154
    invoke-static {p1, p0, p2}, Lcom/capricorn/ArcLayout;->getTransformedIndex(ZII)I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, p3

    float-to-long p1, p1

    int-to-float p0, p0

    mul-float p3, p3, p0

    long-to-float p0, p1

    div-float/2addr p0, p3

    .line 158
    invoke-interface {p6, p0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    mul-float p0, p0, p3

    float-to-long p0, p0

    return-wide p0
.end method

.method private static createExpandAnimation(FFFFJJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .locals 7

    .line 173
    new-instance p0, Lcom/capricorn/RotateAndTranslateAnimation;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x44340000    # 720.0f

    move-object v0, p0

    move v2, p1

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/capricorn/RotateAndTranslateAnimation;-><init>(FFFFFF)V

    .line 174
    invoke-virtual {p0, p4, p5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 175
    invoke-virtual {p0, p6, p7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 176
    invoke-virtual {p0, p8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 p1, 0x1

    .line 177
    invoke-virtual {p0, p1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    return-object p0
.end method

.method private static createShrinkAnimation(FFFFJJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .locals 7

    .line 203
    new-instance p0, Lcom/capricorn/RotateAndTranslateAnimation;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x44340000    # 720.0f

    move-object v0, p0

    move v2, p1

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/capricorn/RotateAndTranslateAnimation;-><init>(FFFFFF)V

    .line 204
    invoke-virtual {p0, p6, p7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 205
    invoke-virtual {p0, p8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 p1, 0x1

    .line 206
    invoke-virtual {p0, p1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    return-object p0
.end method

.method public static dpToPixel(Landroid/content/Context;F)I
    .locals 2

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 88
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    float-to-double p0, p1

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method private static getTransformedIndex(ZII)I
    .locals 0

    if-eqz p0, :cond_0

    add-int/lit8 p1, p1, -0x1

    sub-int/2addr p1, p2

    return p1

    :cond_0
    return p2
.end method

.method private onAllAnimationsEnd()V
    .locals 3

    .line 331
    invoke-virtual {p0}, Lcom/capricorn/ArcLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 333
    invoke-virtual {p0, v1}, Lcom/capricorn/ArcLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    :cond_0
    invoke-virtual {p0}, Lcom/capricorn/ArcLayout;->requestLayout()V

    return-void
.end method


# virtual methods
.method public getChildSize()I
    .locals 1

    .line 301
    iget v0, p0, Lcom/capricorn/ArcLayout;->mChildSize:I

    return v0
.end method

.method public isExpanded()Z
    .locals 1

    .line 276
    iget-boolean v0, p0, Lcom/capricorn/ArcLayout;->mExpanded:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .line 133
    invoke-virtual {p0}, Lcom/capricorn/ArcLayout;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    .line 134
    invoke-virtual {p0}, Lcom/capricorn/ArcLayout;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    .line 135
    iget-boolean p3, p0, Lcom/capricorn/ArcLayout;->mExpanded:Z

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    iget p3, p0, Lcom/capricorn/ArcLayout;->mRadius:I

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 137
    :goto_0
    invoke-virtual {p0}, Lcom/capricorn/ArcLayout;->getChildCount()I

    move-result p5

    .line 138
    iget v0, p0, Lcom/capricorn/ArcLayout;->mToDegrees:F

    iget v1, p0, Lcom/capricorn/ArcLayout;->mFromDegrees:F

    sub-float/2addr v0, v1

    add-int/lit8 v2, p5, -0x1

    int-to-float v2, v2

    div-float/2addr v0, v2

    :goto_1
    if-ge p4, p5, :cond_1

    .line 142
    iget v2, p0, Lcom/capricorn/ArcLayout;->mChildSize:I

    invoke-static {p1, p2, p3, v1, v2}, Lcom/capricorn/ArcLayout;->computeChildFrame(IIIFI)Landroid/graphics/Rect;

    move-result-object v2

    add-float/2addr v1, v0

    .line 144
    invoke-virtual {p0, p4}, Lcom/capricorn/ArcLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 118
    iget p1, p0, Lcom/capricorn/ArcLayout;->mToDegrees:F

    iget p2, p0, Lcom/capricorn/ArcLayout;->mFromDegrees:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p0}, Lcom/capricorn/ArcLayout;->getChildCount()I

    move-result p2

    iget v0, p0, Lcom/capricorn/ArcLayout;->mChildSize:I

    iget v1, p0, Lcom/capricorn/ArcLayout;->mChildPadding:I

    sget v2, Lcom/capricorn/ArcLayout;->MIN_RADIUS:I

    invoke-static {p1, p2, v0, v1, v2}, Lcom/capricorn/ArcLayout;->computeRadius(FIIII)I

    move-result p1

    iput p1, p0, Lcom/capricorn/ArcLayout;->mRadius:I

    mul-int/lit8 p1, p1, 0x2

    .line 120
    iget p2, p0, Lcom/capricorn/ArcLayout;->mChildSize:I

    add-int/2addr p1, p2

    iget p2, p0, Lcom/capricorn/ArcLayout;->mChildPadding:I

    add-int/2addr p1, p2

    iget p2, p0, Lcom/capricorn/ArcLayout;->mLayoutPadding:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    .line 122
    invoke-virtual {p0, p1, p1}, Lcom/capricorn/ArcLayout;->setMeasuredDimension(II)V

    .line 124
    invoke-virtual {p0}, Lcom/capricorn/ArcLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 126
    invoke-virtual {p0, p2}, Lcom/capricorn/ArcLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/capricorn/ArcLayout;->mChildSize:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v3, p0, Lcom/capricorn/ArcLayout;->mChildSize:I

    .line 127
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 126
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setArc(FF)V
    .locals 1

    .line 280
    iget v0, p0, Lcom/capricorn/ArcLayout;->mFromDegrees:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/capricorn/ArcLayout;->mToDegrees:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    return-void

    .line 284
    :cond_0
    iput p1, p0, Lcom/capricorn/ArcLayout;->mFromDegrees:F

    .line 285
    iput p2, p0, Lcom/capricorn/ArcLayout;->mToDegrees:F

    .line 287
    invoke-virtual {p0}, Lcom/capricorn/ArcLayout;->requestLayout()V

    return-void
.end method

.method public setChildSize(I)V
    .locals 1

    .line 291
    iget v0, p0, Lcom/capricorn/ArcLayout;->mChildSize:I

    if-eq v0, p1, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 295
    :cond_0
    iput p1, p0, Lcom/capricorn/ArcLayout;->mChildSize:I

    .line 297
    invoke-virtual {p0}, Lcom/capricorn/ArcLayout;->requestLayout()V

    :cond_1
    :goto_0
    return-void
.end method

.method public switchState(ZLandroid/view/animation/Animation$AnimationListener;)V
    .locals 8

    if-eqz p1, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/capricorn/ArcLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 313
    invoke-virtual {p0, v1}, Lcom/capricorn/ArcLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const-wide/16 v5, 0x12c

    move-object v2, p0

    move v4, v1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/capricorn/ArcLayout;->bindChildAnimation(Landroid/view/View;IJLandroid/view/animation/Animation$AnimationListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    .line 317
    invoke-interface {p2, v0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 321
    :cond_1
    iget-boolean p2, p0, Lcom/capricorn/ArcLayout;->mExpanded:Z

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p0, Lcom/capricorn/ArcLayout;->mExpanded:Z

    if-nez p1, :cond_2

    .line 324
    invoke-virtual {p0}, Lcom/capricorn/ArcLayout;->requestLayout()V

    .line 327
    :cond_2
    invoke-virtual {p0}, Lcom/capricorn/ArcLayout;->invalidate()V

    return-void
.end method
