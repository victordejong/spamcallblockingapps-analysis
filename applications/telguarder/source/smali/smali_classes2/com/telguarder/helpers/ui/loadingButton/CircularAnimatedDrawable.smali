.class public Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircularAnimatedDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field private static final ANGLE_ANIMATOR_DURATION:I = 0x7d0

.field private static final ANGLE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final MAX_PROGRESS:I = 0x64

.field public static final MIN_PROGRESS:I = 0x0

.field private static final MIN_SWEEP_ANGLE:Ljava/lang/Float;

.field private static final PROGRESS_ANIMATOR_DURATION:I = 0xc8

.field private static final SWEEP_ANIMATOR_DURATION:I = 0x2bc

.field private static final SWEEP_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private final fBounds:Landroid/graphics/RectF;

.field private mAnimatedView:Landroid/view/View;

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mBorderWidth:F

.field private mCurrentGlobalAngle:F

.field private mCurrentGlobalAngleOffset:F

.field private mCurrentSweepAngle:F

.field private mModeAppearing:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mRunning:Z

.field private mValueAnimatorAngle:Landroid/animation/ValueAnimator;

.field private mValueAnimatorProgress:Landroid/animation/ValueAnimator;

.field private mValueAnimatorSweep:Landroid/animation/ValueAnimator;

.field private progress:I

.field private shouldDraw:Z

.field private shownProgress:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->ANGLE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 30
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->SWEEP_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/high16 v0, 0x42480000    # 50.0f

    .line 34
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->MIN_SWEEP_ANGLE:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;FI)V
    .locals 2

    .line 49
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->fBounds:Landroid/graphics/RectF;

    .line 50
    iput-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mAnimatedView:Landroid/view/View;

    .line 51
    iput p2, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mBorderWidth:F

    .line 52
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 53
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    iget-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    iget-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 56
    iget-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    invoke-direct {p0}, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->setupAnimations()V

    .line 58
    iput-boolean v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->shouldDraw:Z

    .line 59
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mAnimatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static synthetic access$002(Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;F)F
    .locals 0

    .line 21
    iput p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mCurrentGlobalAngle:F

    return p1
.end method

.method static synthetic access$100(Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->toggleAppearingMode()V

    return-void
.end method

.method static synthetic access$200(Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->shouldDraw:Z

    return p0
.end method

.method static synthetic access$202(Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->shouldDraw:Z

    return p1
.end method

.method static synthetic access$300(Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;)F
    .locals 0

    .line 21
    iget p0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mCurrentSweepAngle:F

    return p0
.end method

.method static synthetic access$302(Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;F)F
    .locals 0

    .line 21
    iput p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mCurrentSweepAngle:F

    return p1
.end method

.method static synthetic access$400(Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;)Landroid/view/View;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mAnimatedView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$502(Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;F)F
    .locals 0

    .line 21
    iput p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->shownProgress:F

    return p1
.end method

.method private setupAnimations()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 140
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mValueAnimatorAngle:Landroid/animation/ValueAnimator;

    .line 141
    sget-object v2, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->ANGLE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 142
    iget-object v1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mValueAnimatorAngle:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 143
    iget-object v1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mValueAnimatorAngle:Landroid/animation/ValueAnimator;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 144
    iget-object v1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mValueAnimatorAngle:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable$1;

    invoke-direct {v3, p0}, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable$1;-><init>(Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v3, 0x0

    aput v3, v0, v1

    .line 150
    sget-object v1, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->MIN_SWEEP_ANGLE:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v1, v1, v3

    const/high16 v3, 0x43b40000    # 360.0f

    sub-float/2addr v3, v1

    const/4 v1, 0x1

    aput v3, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mValueAnimatorSweep:Landroid/animation/ValueAnimator;

    .line 151
    sget-object v1, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->SWEEP_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 152
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mValueAnimatorSweep:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x2bc

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 153
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mValueAnimatorSweep:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 154
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mValueAnimatorSweep:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable$2;

    invoke-direct {v1, p0}, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable$2;-><init>(Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 161
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mValueAnimatorSweep:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable$3;

    invoke-direct {v1, p0}, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable$3;-><init>(Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private toggleAppearingMode()V
    .locals 3

    .line 177
    iget-boolean v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mModeAppearing:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mModeAppearing:Z

    if-eqz v0, :cond_0

    .line 179
    iget v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mCurrentGlobalAngleOffset:F

    sget-object v1, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->MIN_SWEEP_ANGLE:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mCurrentGlobalAngleOffset:F

    :cond_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mValueAnimatorAngle:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 187
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mValueAnimatorAngle:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 188
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mValueAnimatorAngle:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 190
    iput-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mValueAnimatorAngle:Landroid/animation/ValueAnimator;

    .line 191
    iget-object v1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mValueAnimatorSweep:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    .line 192
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    .line 193
    iget-object v1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mValueAnimatorSweep:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 194
    iget-object v1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mValueAnimatorSweep:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 196
    :cond_1
    iput-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mValueAnimatorSweep:Landroid/animation/ValueAnimator;

    .line 197
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mValueAnimatorProgress:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    .line 198
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mValueAnimatorProgress:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mValueAnimatorProgress:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 200
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mValueAnimatorProgress:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 202
    :cond_3
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_4

    .line 203
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 204
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_4
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 106
    iget v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mCurrentGlobalAngle:F

    iget v1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mCurrentGlobalAngleOffset:F

    sub-float/2addr v0, v1

    .line 107
    iget v1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mCurrentSweepAngle:F

    .line 108
    iget v2, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->progress:I

    if-ltz v2, :cond_0

    const/16 v3, 0x64

    if-gt v2, v3, :cond_0

    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 110
    iget v1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->shownProgress:F

    move v5, v1

    const/high16 v4, -0x3d4c0000    # -90.0f

    goto :goto_1

    .line 111
    :cond_0
    iget-boolean v2, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mModeAppearing:Z

    if-nez v2, :cond_1

    add-float/2addr v0, v1

    const/high16 v2, 0x43b40000    # 360.0f

    sub-float/2addr v2, v1

    .line 113
    sget-object v1, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->MIN_SWEEP_ANGLE:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float v1, v2, v1

    goto :goto_0

    .line 115
    :cond_1
    sget-object v2, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->MIN_SWEEP_ANGLE:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v1, v2

    :goto_0
    move v4, v0

    move v5, v1

    .line 117
    :goto_1
    iget-object v3, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->fBounds:Landroid/graphics/RectF;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mRunning:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 5

    .line 65
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 66
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->fBounds:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mBorderWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 67
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->fBounds:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v4, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mBorderWidth:F

    div-float/2addr v4, v3

    sub-float/2addr v1, v4

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 68
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->fBounds:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v4, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mBorderWidth:F

    div-float/2addr v4, v3

    add-float/2addr v1, v4

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 69
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->fBounds:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    iget v1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mBorderWidth:F

    div-float/2addr v1, v3

    sub-float/2addr p1, v1

    sub-float/2addr p1, v2

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setLoadingBarColor(I)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setProgress(I)V
    .locals 6

    .line 210
    iget v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->progress:I

    if-ne v0, p1, :cond_0

    return-void

    .line 211
    :cond_0
    iput p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->progress:I

    if-gez p1, :cond_1

    const/4 v0, 0x0

    .line 212
    iput v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->shownProgress:F

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mValueAnimatorProgress:Landroid/animation/ValueAnimator;

    const v1, 0x40666666    # 3.6f

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-nez v0, :cond_2

    new-array v0, v4, [F

    .line 214
    iget v4, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->shownProgress:F

    aput v4, v0, v3

    int-to-float v3, p1

    mul-float v3, v3, v1

    aput v3, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mValueAnimatorProgress:Landroid/animation/ValueAnimator;

    .line 215
    sget-object v1, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->SWEEP_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 216
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mValueAnimatorProgress:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 217
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mValueAnimatorProgress:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable$4;

    invoke-direct {v1, p0}, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable$4;-><init>(Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 225
    :cond_2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mValueAnimatorProgress:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 226
    :cond_3
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mValueAnimatorProgress:Landroid/animation/ValueAnimator;

    new-array v4, v4, [F

    iget v5, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->shownProgress:F

    aput v5, v4, v3

    int-to-float v3, p1

    mul-float v3, v3, v1

    aput v3, v4, v2

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 228
    :goto_0
    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    if-ltz p1, :cond_4

    iget-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mValueAnimatorProgress:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    return-void
.end method

.method public start()V
    .locals 5

    .line 80
    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mRunning:Z

    .line 82
    iget-object v1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mValueAnimatorAngle:Landroid/animation/ValueAnimator;

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mValueAnimatorSweep:Landroid/animation/ValueAnimator;

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 83
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 84
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mValueAnimatorProgress:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mValueAnimatorProgress:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mRunning:Z

    .line 94
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    return-void
.end method
