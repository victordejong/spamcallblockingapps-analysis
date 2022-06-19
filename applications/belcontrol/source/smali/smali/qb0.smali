.class public Lqb0;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements Le9;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqb0$c;
    }
.end annotation


# instance fields
.field public a:F

.field public b:I

.field public c:Landroid/animation/ValueAnimator;

.field public final d:Landroid/content/Context;

.field public final f:I

.field public final g:I

.field public final h:I

.field public j:Landroid/graphics/Paint;

.field public k:Landroid/graphics/Paint;

.field public l:Landroid/graphics/PorterDuffXfermode;

.field public m:Landroid/graphics/PorterDuffXfermode;

.field public n:Landroid/graphics/Bitmap;

.field public o:Landroid/graphics/Bitmap;

.field public p:Landroid/graphics/Bitmap;

.field public q:Landroid/graphics/Bitmap;

.field public r:Landroid/graphics/Canvas;

.field public s:F

.field public t:Z

.field public u:Lqb0$c;

.field public v:Landroid/graphics/BitmapShader;

.field public w:Landroid/graphics/PointF;

.field public x:Landroid/content/res/ColorStateList;

.field public y:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILandroid/graphics/PointF;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lqb0;->j:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lqb0;->k:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lqb0;->l:Landroid/graphics/PorterDuffXfermode;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lqb0;->m:Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Lqb0$c;->a:Lqb0$c;

    iput-object v0, p0, Lqb0;->u:Lqb0$c;

    iput-object p1, p0, Lqb0;->d:Landroid/content/Context;

    iput p2, p0, Lqb0;->f:I

    iput p3, p0, Lqb0;->g:I

    iput p4, p0, Lqb0;->h:I

    iput-object p5, p0, Lqb0;->w:Landroid/graphics/PointF;

    iget-object p1, p0, Lqb0;->k:Landroid/graphics/Paint;

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lqb0;->k:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public static synthetic d(Lqb0;)Landroid/animation/ValueAnimator;
    .locals 0

    invoke-virtual {p0}, Lqb0;->f()Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lqb0;)Landroid/animation/ValueAnimator;
    .locals 0

    invoke-virtual {p0}, Lqb0;->g()Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method private synthetic j(Landroid/animation/ValueAnimator;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lqb0;->b:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v0, p0, Lqb0;->s:F

    mul-float p1, p1, v0

    iput p1, p0, Lqb0;->a:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private synthetic l(Landroid/animation/ValueAnimator;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lqb0;->b:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v0, p0, Lqb0;->s:F

    mul-float p1, p1, v0

    iput p1, p0, Lqb0;->a:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private synthetic n(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private synthetic p(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lqb0;->n:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lqb0;->r()V

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lqb0;->j:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, p0, Lqb0;->x:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v4

    iget-object v5, p0, Lqb0;->x:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iget-object v4, p0, Lqb0;->y:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v1, p0, Lqb0;->c:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v0, p0, Lqb0;->b:I

    if-nez v0, :cond_1

    iget v0, p0, Lqb0;->a:F

    invoke-virtual {p0, p1, v0}, Lqb0;->i(Landroid/graphics/Canvas;F)V

    goto :goto_1

    :cond_1
    iget v0, p0, Lqb0;->a:F

    invoke-virtual {p0, p1, v0}, Lqb0;->h(Landroid/graphics/Canvas;F)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lqb0;->u:Lqb0$c;

    sget-object v2, Lqb0$c;->b:Lqb0$c;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lqb0;->n:Landroid/graphics/Bitmap;

    :goto_0
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v3, p0, Lqb0;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    sget-object v2, Lqb0$c;->a:Lqb0$c;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lqb0;->o:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lqb0;->p:Landroid/graphics/Bitmap;

    goto :goto_0

    :goto_1
    return-void
.end method

.method public final f()Landroid/animation/ValueAnimator;
    .locals 3

    iget-object v0, p0, Lqb0;->c:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqb0;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lqb0;->c:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lqb0;->c:Landroid/animation/ValueAnimator;

    new-instance v1, Lnb0;

    invoke-direct {v1, p0}, Lnb0;-><init>(Lqb0;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lqb0;->c:Landroid/animation/ValueAnimator;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final g()Landroid/animation/ValueAnimator;
    .locals 3

    iget-object v0, p0, Lqb0;->c:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqb0;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lqb0;->c:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lqb0;->c:Landroid/animation/ValueAnimator;

    new-instance v1, Lmb0;

    invoke-direct {v1, p0}, Lmb0;-><init>(Lqb0;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lqb0;->c:Landroid/animation/ValueAnimator;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public getDirtyBounds()Landroid/graphics/Rect;
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    invoke-virtual {p0}, Lqb0;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    iget-object v0, p0, Lqb0;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lj80;->carbon_iconSize:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final h(Landroid/graphics/Canvas;F)V
    .locals 6

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lqb0;->j:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, p0, Lqb0;->o:Landroid/graphics/Bitmap;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, p0, Lqb0;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lqb0;->r:Landroid/graphics/Canvas;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v1, p0, Lqb0;->k:Landroid/graphics/Paint;

    iget-object v2, p0, Lqb0;->l:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v1, p0, Lqb0;->r:Landroid/graphics/Canvas;

    iget-object v2, p0, Lqb0;->q:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lqb0;->w:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lqb0;->q:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lqb0;->w:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lqb0;->k:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, p2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lqb0;->k:Landroid/graphics/Paint;

    iget-object v2, p0, Lqb0;->m:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v1, p0, Lqb0;->r:Landroid/graphics/Canvas;

    iget-object v2, p0, Lqb0;->p:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lqb0;->k:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lqb0;->q:Landroid/graphics/Bitmap;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, p0, Lqb0;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lqb0;->j:Landroid/graphics/Paint;

    iget-object v2, p0, Lqb0;->v:Landroid/graphics/BitmapShader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lqb0;->w:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lqb0;->w:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float v0, v0, v3

    add-float/2addr v2, v0

    iget-object v0, p0, Lqb0;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, p2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final i(Landroid/graphics/Canvas;F)V
    .locals 5

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lqb0;->o:Landroid/graphics/Bitmap;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, p0, Lqb0;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lqb0;->r:Landroid/graphics/Canvas;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v1, p0, Lqb0;->k:Landroid/graphics/Paint;

    iget-object v2, p0, Lqb0;->l:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v1, p0, Lqb0;->r:Landroid/graphics/Canvas;

    iget-object v2, p0, Lqb0;->q:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lqb0;->q:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lqb0;->k:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, p2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lqb0;->k:Landroid/graphics/Paint;

    iget-object v1, p0, Lqb0;->m:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object p2, p0, Lqb0;->r:Landroid/graphics/Canvas;

    iget-object v1, p0, Lqb0;->p:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lqb0;->k:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lqb0;->q:Landroid/graphics/Bitmap;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v2, p0, Lqb0;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    iget-object v0, p0, Lqb0;->c:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public synthetic k(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lqb0;->j(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic m(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lqb0;->l(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic o(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lqb0;->n(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public onStateChange([I)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_7

    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget v7, p1, v3

    const v8, 0x10100a0

    if-ne v7, v8, :cond_0

    const/4 v5, 0x1

    :cond_0
    sget v8, Lh80;->carbon_state_indeterminate:I

    if-ne v7, v8, :cond_1

    const/4 v4, 0x1

    :cond_1
    const v8, 0x101009e

    if-ne v7, v8, :cond_2

    const/4 v6, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    sget-object v2, Lqb0$c;->c:Lqb0$c;

    goto :goto_1

    :cond_4
    if-eqz v5, :cond_5

    sget-object v2, Lqb0$c;->b:Lqb0$c;

    goto :goto_1

    :cond_5
    sget-object v2, Lqb0$c;->a:Lqb0$c;

    :goto_1
    iget-object v3, p0, Lqb0;->u:Lqb0$c;

    if-eq v3, v2, :cond_6

    invoke-virtual {p0, v2}, Lqb0;->s(Lqb0$c;)V

    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    iget-boolean v3, p0, Lqb0;->t:Z

    if-eq v3, v6, :cond_8

    invoke-virtual {p0, v6}, Lqb0;->t(Z)V

    const/4 v2, 0x1

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    :cond_8
    :goto_3
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v3

    if-eqz v2, :cond_9

    iget-object v4, p0, Lqb0;->x:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_9

    instance-of v5, v4, Lcarbon/animation/AnimatedColorStateList;

    if-eqz v5, :cond_9

    check-cast v4, Lcarbon/animation/AnimatedColorStateList;

    invoke-virtual {v4, p1}, Lcarbon/animation/AnimatedColorStateList;->e([I)V

    :cond_9
    if-eqz v3, :cond_a

    if-eqz v2, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public synthetic q(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lqb0;->p(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public final r()V
    .locals 7

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-gtz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-gtz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lqb0;->d:Landroid/content/Context;

    iget v2, p0, Lqb0;->f:I

    invoke-static {v1, v2}, Lzh0;->f(Landroid/content/Context;I)Lzh0;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lqb0;->n:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lqb0;->n:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lqb0;->n:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lzh0;->p(F)V

    iget-object v3, p0, Lqb0;->n:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lzh0;->o(F)V

    invoke-virtual {v1, v2}, Lzh0;->k(Landroid/graphics/Canvas;)V

    new-instance v1, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lqb0;->n:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v2, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lqb0;->v:Landroid/graphics/BitmapShader;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v2, p0, Lqb0;->v:Landroid/graphics/BitmapShader;

    invoke-virtual {v2, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lqb0;->d:Landroid/content/Context;

    iget v2, p0, Lqb0;->g:I

    invoke-static {v1, v2}, Lzh0;->f(Landroid/content/Context;I)Lzh0;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lqb0;->o:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lqb0;->o:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lqb0;->o:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lzh0;->p(F)V

    iget-object v3, p0, Lqb0;->o:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lzh0;->o(F)V

    invoke-virtual {v1, v2}, Lzh0;->k(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lqb0;->d:Landroid/content/Context;

    iget v2, p0, Lqb0;->h:I

    invoke-static {v1, v2}, Lzh0;->f(Landroid/content/Context;I)Lzh0;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lqb0;->p:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lqb0;->p:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lqb0;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lzh0;->p(F)V

    iget-object v3, p0, Lqb0;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lzh0;->o(F)V

    invoke-virtual {v1, v2}, Lzh0;->k(Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lqb0;->q:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lqb0;->q:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lqb0;->r:Landroid/graphics/Canvas;

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-double v5, v0

    mul-double v3, v3, v5

    div-double/2addr v3, v1

    double-to-float v0, v3

    iput v0, p0, Lqb0;->s:F
    :try_end_0
    .catch Lci0; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    const-class v0, Lqb0;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "There was an error parsing SVG"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    :goto_0
    return-void
.end method

.method public s(Lqb0$c;)V
    .locals 3

    iget-object v0, p0, Lqb0;->u:Lqb0$c;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lqb0$c;->a:Lqb0$c;

    if-ne v0, v1, :cond_2

    sget-object v0, Lqb0$c;->b:Lqb0$c;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lqb0;->g()Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v2, Lqb0$a;

    invoke-direct {v2, p0}, Lqb0$a;-><init>(Lqb0;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lqb0;->g()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    :goto_0
    iget-object v0, p0, Lqb0;->u:Lqb0$c;

    sget-object v2, Lqb0$c;->b:Lqb0$c;

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Lqb0;->f()Landroid/animation/ValueAnimator;

    move-result-object v0

    if-ne p1, v1, :cond_3

    new-instance v1, Lqb0$b;

    invoke-direct {v1, p0}, Lqb0$b;-><init>(Lqb0;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    :cond_4
    iget-object v0, p0, Lqb0;->u:Lqb0$c;

    sget-object v1, Lqb0$c;->c:Lqb0$c;

    if-ne v0, v1, :cond_6

    if-ne p1, v2, :cond_5

    invoke-virtual {p0}, Lqb0;->f()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lqb0;->g()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    :cond_6
    :goto_1
    iput-object p1, p0, Lqb0;->u:Lqb0$c;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lqb0;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setBounds(IIII)V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-ne v1, p1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-ne v1, p3, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v1, p4, :cond_0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-eq v0, p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lqb0;->p:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lqb0;->o:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lqb0;->n:Landroid/graphics/Bitmap;

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lqb0;->p:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lqb0;->o:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lqb0;->n:Landroid/graphics/Bitmap;

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lqb0;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setState([I)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return p1
.end method

.method public setTint(I)V
    .locals 1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    new-instance v0, Lkb0;

    invoke-direct {v0, p0}, Lkb0;-><init>(Lqb0;)V

    invoke-static {p1, v0}, Lcarbon/animation/AnimatedColorStateList;->b(Landroid/content/res/ColorStateList;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Lcarbon/animation/AnimatedColorStateList;

    move-result-object p1

    iput-object p1, p0, Lqb0;->x:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    instance-of v0, p1, Lcarbon/animation/AnimatedColorStateList;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Llb0;

    invoke-direct {v0, p0}, Llb0;-><init>(Lqb0;)V

    invoke-static {p1, v0}, Lcarbon/animation/AnimatedColorStateList;->b(Landroid/content/res/ColorStateList;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Lcarbon/animation/AnimatedColorStateList;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lqb0;->x:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iput-object p1, p0, Lqb0;->y:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method public t(Z)V
    .locals 0

    iput-boolean p1, p0, Lqb0;->t:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
