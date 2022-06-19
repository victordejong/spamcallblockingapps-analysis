.class public Lcom/capricorn/RotateAndTranslateAnimation;
.super Landroid/view/animation/Animation;
.source "RotateAndTranslateAnimation.java"


# instance fields
.field private mFromDegrees:F

.field private mFromXDelta:F

.field private mFromXType:I

.field private mFromXValue:F

.field private mFromYDelta:F

.field private mFromYType:I

.field private mFromYValue:F

.field private mPivotX:F

.field private mPivotXType:I

.field private mPivotXValue:F

.field private mPivotY:F

.field private mPivotYType:I

.field private mPivotYValue:F

.field private mToDegrees:F

.field private mToXDelta:F

.field private mToXType:I

.field private mToXValue:F

.field private mToYDelta:F

.field private mToYType:I

.field private mToYValue:F


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 2

    .line 86
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mFromXType:I

    .line 30
    iput v0, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mToXType:I

    .line 32
    iput v0, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mFromYType:I

    .line 34
    iput v0, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mToYType:I

    const/4 v1, 0x0

    .line 36
    iput v1, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mFromXValue:F

    .line 38
    iput v1, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mToXValue:F

    .line 40
    iput v1, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mFromYValue:F

    .line 42
    iput v1, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mToYValue:F

    .line 56
    iput v0, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mPivotXType:I

    .line 58
    iput v0, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mPivotYType:I

    .line 60
    iput v1, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mPivotXValue:F

    .line 62
    iput v1, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mPivotYValue:F

    .line 87
    iput p1, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mFromXValue:F

    .line 88
    iput p2, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mToXValue:F

    .line 89
    iput p3, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mFromYValue:F

    .line 90
    iput p4, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mToYValue:F

    .line 92
    iput v0, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mFromXType:I

    .line 93
    iput v0, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mToXType:I

    .line 94
    iput v0, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mFromYType:I

    .line 95
    iput v0, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mToYType:I

    .line 97
    iput p5, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mFromDegrees:F

    .line 98
    iput p6, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mToDegrees:F

    const/high16 p1, 0x3f000000    # 0.5f

    .line 100
    iput p1, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mPivotXValue:F

    const/4 p2, 0x1

    .line 101
    iput p2, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mPivotXType:I

    .line 102
    iput p1, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mPivotYValue:F

    .line 103
    iput p2, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mPivotYType:I

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4

    .line 108
    iget v0, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mFromDegrees:F

    iget v1, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mToDegrees:F

    sub-float/2addr v1, v0

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    .line 109
    iget v1, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mPivotX:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mPivotY:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 110
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mPivotX:F

    iget v3, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mPivotY:F

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 115
    :goto_0
    iget v0, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mFromXDelta:F

    .line 116
    iget v1, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mFromYDelta:F

    .line 117
    iget v2, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mToXDelta:F

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_1

    sub-float/2addr v2, v0

    mul-float v2, v2, p1

    add-float/2addr v0, v2

    .line 120
    :cond_1
    iget v2, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mToYDelta:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_2

    sub-float/2addr v2, v1

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    .line 124
    :cond_2
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public initialize(IIII)V
    .locals 2

    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 130
    iget v0, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mFromXType:I

    iget v1, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mFromXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Lcom/capricorn/RotateAndTranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mFromXDelta:F

    .line 131
    iget v0, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mToXType:I

    iget v1, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mToXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Lcom/capricorn/RotateAndTranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mToXDelta:F

    .line 132
    iget v0, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mFromYType:I

    iget v1, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mFromYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Lcom/capricorn/RotateAndTranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mFromYDelta:F

    .line 133
    iget v0, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mToYType:I

    iget v1, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mToYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Lcom/capricorn/RotateAndTranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mToYDelta:F

    .line 135
    iget v0, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mPivotXType:I

    iget v1, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mPivotXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Lcom/capricorn/RotateAndTranslateAnimation;->resolveSize(IFII)F

    move-result p1

    iput p1, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mPivotX:F

    .line 136
    iget p1, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mPivotYType:I

    iget p3, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mPivotYValue:F

    invoke-virtual {p0, p1, p3, p2, p4}, Lcom/capricorn/RotateAndTranslateAnimation;->resolveSize(IFII)F

    move-result p1

    iput p1, p0, Lcom/capricorn/RotateAndTranslateAnimation;->mPivotY:F

    return-void
.end method
