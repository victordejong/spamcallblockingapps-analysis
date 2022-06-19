.class final Lcom/theartofdev/edmodo/cropper/d;
.super Landroid/view/animation/Animation;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private final a:Landroid/widget/ImageView;

.field private final b:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

.field private final c:[F

.field private final d:[F

.field private final e:Landroid/graphics/RectF;

.field private final f:Landroid/graphics/RectF;

.field private final g:[F

.field private final h:[F

.field private final i:Landroid/graphics/RectF;

.field private final j:[F

.field private final k:[F


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Lcom/theartofdev/edmodo/cropper/CropOverlayView;)V
    .locals 3

    .line 53
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 34
    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/d;->c:[F

    new-array v1, v0, [F

    .line 36
    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/d;->d:[F

    .line 38
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/d;->e:Landroid/graphics/RectF;

    .line 40
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/d;->f:Landroid/graphics/RectF;

    const/16 v1, 0x9

    new-array v2, v1, [F

    .line 42
    iput-object v2, p0, Lcom/theartofdev/edmodo/cropper/d;->g:[F

    new-array v2, v1, [F

    .line 44
    iput-object v2, p0, Lcom/theartofdev/edmodo/cropper/d;->h:[F

    .line 46
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/theartofdev/edmodo/cropper/d;->i:Landroid/graphics/RectF;

    new-array v0, v0, [F

    .line 48
    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/d;->j:[F

    new-array v0, v1, [F

    .line 50
    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/d;->k:[F

    .line 54
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/d;->a:Landroid/widget/ImageView;

    .line 55
    iput-object p2, p0, Lcom/theartofdev/edmodo/cropper/d;->b:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    const-wide/16 p1, 0x12c

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/theartofdev/edmodo/cropper/d;->setDuration(J)V

    const/4 p1, 0x1

    .line 58
    invoke-virtual {p0, p1}, Lcom/theartofdev/edmodo/cropper/d;->setFillAfter(Z)V

    .line 59
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Lcom/theartofdev/edmodo/cropper/d;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 60
    invoke-virtual {p0, p0}, Lcom/theartofdev/edmodo/cropper/d;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method


# virtual methods
.method public final a([FLandroid/graphics/Matrix;)V
    .locals 3

    .line 64
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/d;->reset()V

    .line 65
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/d;->c:[F

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/d;->e:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/d;->b:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 1150
    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a:Lcom/theartofdev/edmodo/cropper/e;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/e;->a()Landroid/graphics/RectF;

    move-result-object v0

    .line 66
    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 67
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/d;->g:[F

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->getValues([F)V

    return-void
.end method

.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5

    .line 79
    iget-object p2, p0, Lcom/theartofdev/edmodo/cropper/d;->i:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/d;->e:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/d;->f:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/d;->e:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 82
    iget-object p2, p0, Lcom/theartofdev/edmodo/cropper/d;->i:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/d;->e:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/d;->f:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/d;->e:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 85
    iget-object p2, p0, Lcom/theartofdev/edmodo/cropper/d;->i:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/d;->e:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/d;->f:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/d;->e:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 88
    iget-object p2, p0, Lcom/theartofdev/edmodo/cropper/d;->i:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/d;->e:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/d;->f:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/d;->e:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 91
    iget-object p2, p0, Lcom/theartofdev/edmodo/cropper/d;->b:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/d;->i:Landroid/graphics/RectF;

    invoke-virtual {p2, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setCropWindowRect(Landroid/graphics/RectF;)V

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 93
    :goto_0
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/d;->j:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/d;->c:[F

    aget v3, v2, v0

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/d;->d:[F

    aget v4, v4, v0

    aget v2, v2, v0

    sub-float/2addr v4, v2

    mul-float v4, v4, p1

    add-float/2addr v3, v4

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/d;->b:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/d;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/d;->a:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setBounds([FII)V

    .line 99
    :goto_1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/d;->k:[F

    array-length v1, v0

    if-ge p2, v1, :cond_1

    .line 100
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/d;->g:[F

    aget v2, v1, p2

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/d;->h:[F

    aget v3, v3, p2

    aget v1, v1, p2

    sub-float/2addr v3, v1

    mul-float v3, v3, p1

    add-float/2addr v2, v3

    aput v2, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 103
    :cond_1
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/d;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    .line 104
    iget-object p2, p0, Lcom/theartofdev/edmodo/cropper/d;->k:[F

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->setValues([F)V

    .line 105
    iget-object p2, p0, Lcom/theartofdev/edmodo/cropper/d;->a:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 107
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/d;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    .line 108
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/d;->b:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    return-void
.end method

.method public final b([FLandroid/graphics/Matrix;)V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/d;->d:[F

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/d;->f:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/d;->b:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 2150
    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a:Lcom/theartofdev/edmodo/cropper/e;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/e;->a()Landroid/graphics/RectF;

    move-result-object v0

    .line 72
    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 73
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/d;->h:[F

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->getValues([F)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 116
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/d;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
