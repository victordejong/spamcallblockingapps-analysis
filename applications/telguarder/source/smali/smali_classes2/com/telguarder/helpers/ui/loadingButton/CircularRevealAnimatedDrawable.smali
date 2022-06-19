.class public Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircularRevealAnimatedDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# instance fields
.field private bitMapXOffset:F

.field private bitMapYOffset:F

.field private isRunning:Z

.field private mAnimatedView:Landroid/view/View;

.field private mCenterHeith:F

.field private mCenterWidth:F

.field private mFinalRadius:F

.field private mImageReadyAlpha:I

.field private mIsFilled:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintImageReady:Landroid/graphics/Paint;

.field private mRadius:F

.field private mReadyImage:Landroid/graphics/Bitmap;

.field private mRevealInAnimation:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/view/View;ILandroid/graphics/Bitmap;)V
    .locals 3

    .line 47
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->mAnimatedView:Landroid/view/View;

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->isRunning:Z

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 52
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 53
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->mPaintImageReady:Landroid/graphics/Paint;

    .line 57
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    iget-object p2, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->mPaintImageReady:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    iget-object p2, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->mPaintImageReady:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iput-object p3, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->mReadyImage:Landroid/graphics/Bitmap;

    .line 62
    iput p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->mImageReadyAlpha:I

    const/4 p1, 0x0

    .line 64
    iput p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->mRadius:F

    return-void
.end method

.method static synthetic access$002(Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->mImageReadyAlpha:I

    return p1
.end method

.method static synthetic access$100(Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;)Landroid/view/View;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->mAnimatedView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$202(Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;F)F
    .locals 0

    .line 24
    iput p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->mRadius:F

    return p1
.end method

.method static synthetic access$302(Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->mIsFilled:Z

    return p1
.end method

.method private setupAnimations()V
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 98
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x50

    .line 99
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 100
    new-instance v2, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable$1;

    invoke-direct {v2, p0}, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable$1;-><init>(Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v0, v2

    .line 109
    iget v2, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->mFinalRadius:F

    const/4 v3, 0x1

    aput v2, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->mRevealInAnimation:Landroid/animation/ValueAnimator;

    .line 110
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 111
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->mRevealInAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x78

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 112
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->mRevealInAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable$2;

    invoke-direct {v2, p0}, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable$2;-><init>(Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 120
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->mRevealInAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable$3;

    invoke-direct {v2, p0, v1}, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable$3;-><init>(Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->mRevealInAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 191
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->mRevealInAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 192
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->mRevealInAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 195
    iput-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->mRevealInAnimation:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 169
    iget v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->mCenterWidth:F

    iget v1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->mCenterHeith:F

    iget v2, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->mRadius:F

    iget-object v3, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 171
    iget-boolean v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->mIsFilled:Z

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->mPaintImageReady:Landroid/graphics/Paint;

    iget v1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->mImageReadyAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 173
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->mReadyImage:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->bitMapXOffset:F

    iget v2, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->bitMapYOffset:F

    iget-object v3, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->mPaintImageReady:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public isFilled()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->mIsFilled:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->isRunning:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 6

    .line 78
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 80
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    const-wide v2, 0x3fe3333333333333L    # 0.6

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 81
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v4

    int-to-double v4, v1

    mul-double v4, v4, v2

    double-to-int v1, v4

    .line 83
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iput v2, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->bitMapXOffset:F

    .line 84
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iput v2, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->bitMapYOffset:F

    .line 86
    iget-object v2, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->mReadyImage:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->mReadyImage:Landroid/graphics/Bitmap;

    .line 88
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->mFinalRadius:F

    .line 89
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->mCenterWidth:F

    .line 90
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    int-to-float p1, v0

    iput p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->mCenterHeith:F

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 1

    .line 136
    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->setupAnimations()V

    const/4 v0, 0x1

    .line 141
    iput-boolean v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->isRunning:Z

    .line 142
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->mRevealInAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 150
    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 154
    iput-boolean v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->isRunning:Z

    .line 155
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->mRevealInAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method
