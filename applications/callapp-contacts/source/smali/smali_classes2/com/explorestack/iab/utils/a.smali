.class public final Lcom/explorestack/iab/utils/a;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/iab/utils/a$a;
    }
.end annotation


# static fields
.field private static final b:Landroid/view/animation/Interpolator;

.field private static final c:Landroid/view/animation/Interpolator;

.field private static final d:[I


# instance fields
.field final a:Lcom/explorestack/iab/utils/a$a;

.field private e:F

.field private f:Landroid/content/res/Resources;

.field private g:Landroid/animation/Animator;

.field private h:F

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/explorestack/iab/utils/a;->b:Landroid/view/animation/Interpolator;

    .line 28
    new-instance v0, Lcom/explorestack/iab/utils/a$1;

    invoke-direct {v0}, Lcom/explorestack/iab/utils/a$1;-><init>()V

    sput-object v0, Lcom/explorestack/iab/utils/a;->c:Landroid/view/animation/Interpolator;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    aput v2, v0, v1

    .line 47
    sput-object v0, Lcom/explorestack/iab/utils/a;->d:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/iab/utils/a;->f:Landroid/content/res/Resources;

    .line 58
    new-instance p1, Lcom/explorestack/iab/utils/a$a;

    invoke-direct {p1}, Lcom/explorestack/iab/utils/a$a;-><init>()V

    iput-object p1, p0, Lcom/explorestack/iab/utils/a;->a:Lcom/explorestack/iab/utils/a$a;

    .line 59
    sget-object v0, Lcom/explorestack/iab/utils/a;->d:[I

    invoke-virtual {p1, v0}, Lcom/explorestack/iab/utils/a$a;->a([I)V

    const/high16 v0, 0x40200000    # 2.5f

    .line 60
    invoke-virtual {p0, v0}, Lcom/explorestack/iab/utils/a;->a(F)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1235
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1236
    new-instance v1, Lcom/explorestack/iab/utils/a$2;

    invoke-direct {v1, p0, p1}, Lcom/explorestack/iab/utils/a$2;-><init>(Lcom/explorestack/iab/utils/a;Lcom/explorestack/iab/utils/a$a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v1, -0x1

    .line 1244
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const/4 v1, 0x1

    .line 1245
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 1246
    sget-object v1, Lcom/explorestack/iab/utils/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1247
    new-instance v1, Lcom/explorestack/iab/utils/a$3;

    invoke-direct {v1, p0, p1}, Lcom/explorestack/iab/utils/a$3;-><init>(Lcom/explorestack/iab/utils/a;Lcom/explorestack/iab/utils/a$a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1273
    iput-object v0, p0, Lcom/explorestack/iab/utils/a;->g:Landroid/animation/Animator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic a(Lcom/explorestack/iab/utils/a;F)F
    .locals 0

    .line 25
    iput p1, p0, Lcom/explorestack/iab/utils/a;->h:F

    return p1
.end method

.method private static a(FLcom/explorestack/iab/utils/a$a;)V
    .locals 8

    const/high16 v0, 0x3f400000    # 0.75f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_0

    sub-float/2addr p0, v0

    const/high16 v0, 0x3e800000    # 0.25f

    div-float/2addr p0, v0

    .line 188
    invoke-virtual {p1}, Lcom/explorestack/iab/utils/a$a;->b()I

    move-result v0

    .line 4352
    iget-object v1, p1, Lcom/explorestack/iab/utils/a$a;->j:[I

    invoke-virtual {p1}, Lcom/explorestack/iab/utils/a$a;->a()I

    move-result v2

    aget v1, v1, v2

    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v5, v1, 0x18

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v6, v1, 0x10

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v7, v1, 0x8

    and-int/lit16 v7, v7, 0xff

    and-int/lit16 v1, v1, 0xff

    sub-int/2addr v5, v2

    int-to-float v5, v5

    mul-float v5, v5, p0

    float-to-int v5, v5

    add-int/2addr v2, v5

    shl-int/lit8 v2, v2, 0x18

    sub-int/2addr v6, v3

    int-to-float v5, v6

    mul-float v5, v5, p0

    float-to-int v5, v5

    add-int/2addr v3, v5

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    sub-int/2addr v7, v4

    int-to-float v3, v7

    mul-float v3, v3, p0

    float-to-int v3, v3

    add-int/2addr v4, v3

    shl-int/lit8 v3, v4, 0x8

    or-int/2addr v2, v3

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float p0, p0, v1

    float-to-int p0, p0

    add-int/2addr v0, p0

    or-int p0, v2, v0

    .line 5335
    iput p0, p1, Lcom/explorestack/iab/utils/a$a;->q:I

    return-void

    .line 190
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/iab/utils/a$a;->b()I

    move-result p0

    .line 6335
    iput p0, p1, Lcom/explorestack/iab/utils/a$a;->q:I

    return-void
.end method

.method static synthetic a(Lcom/explorestack/iab/utils/a;FLcom/explorestack/iab/utils/a$a;)V
    .locals 0

    .line 25
    invoke-static {p1, p2}, Lcom/explorestack/iab/utils/a;->a(FLcom/explorestack/iab/utils/a$a;)V

    return-void
.end method

.method static synthetic a(Lcom/explorestack/iab/utils/a;FLcom/explorestack/iab/utils/a$a;Z)V
    .locals 7

    .line 7206
    iget-boolean v0, p0, Lcom/explorestack/iab/utils/a;->i:Z

    const v1, 0x3c23d70a    # 0.01f

    if-eqz v0, :cond_0

    .line 8196
    invoke-static {p1, p2}, Lcom/explorestack/iab/utils/a;->a(FLcom/explorestack/iab/utils/a$a;)V

    .line 8417
    iget p0, p2, Lcom/explorestack/iab/utils/a$a;->n:F

    const p3, 0x3f4ccccd    # 0.8f

    div-float/2addr p0, p3

    float-to-double v2, p0

    .line 8197
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    double-to-float p0, v2

    .line 9389
    iget p3, p2, Lcom/explorestack/iab/utils/a$a;->l:F

    .line 9393
    iget v0, p2, Lcom/explorestack/iab/utils/a$a;->m:F

    sub-float/2addr v0, v1

    .line 10389
    iget v1, p2, Lcom/explorestack/iab/utils/a$a;->l:F

    sub-float/2addr v0, v1

    mul-float v0, v0, p1

    add-float/2addr p3, v0

    .line 11381
    iput p3, p2, Lcom/explorestack/iab/utils/a$a;->f:F

    .line 11393
    iget p3, p2, Lcom/explorestack/iab/utils/a$a;->m:F

    .line 11401
    iput p3, p2, Lcom/explorestack/iab/utils/a$a;->g:F

    .line 11417
    iget p3, p2, Lcom/explorestack/iab/utils/a$a;->n:F

    .line 12417
    iget v0, p2, Lcom/explorestack/iab/utils/a$a;->n:F

    sub-float/2addr p0, v0

    mul-float p0, p0, p1

    add-float/2addr p3, p0

    .line 13409
    iput p3, p2, Lcom/explorestack/iab/utils/a$a;->h:F

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v0

    if-nez v2, :cond_1

    if-eqz p3, :cond_3

    .line 13417
    :cond_1
    iget p3, p2, Lcom/explorestack/iab/utils/a$a;->n:F

    const v2, 0x3f4a3d71    # 0.79f

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v4, p1, v3

    if-gez v4, :cond_2

    div-float v0, p1, v3

    .line 14389
    iget v3, p2, Lcom/explorestack/iab/utils/a$a;->l:F

    .line 7216
    sget-object v4, Lcom/explorestack/iab/utils/a;->c:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float v0, v0, v2

    add-float/2addr v0, v3

    add-float/2addr v0, v1

    goto :goto_0

    :cond_2
    sub-float v4, p1, v3

    div-float/2addr v4, v3

    .line 15389
    iget v3, p2, Lcom/explorestack/iab/utils/a$a;->l:F

    add-float/2addr v3, v2

    .line 7220
    sget-object v5, Lcom/explorestack/iab/utils/a;->c:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    sub-float/2addr v0, v4

    mul-float v0, v0, v2

    add-float/2addr v0, v1

    sub-float v0, v3, v0

    move v6, v3

    move v3, v0

    move v0, v6

    :goto_0
    const v1, 0x3e570a3c    # 0.20999998f

    mul-float v1, v1, p1

    add-float/2addr p3, v1

    const/high16 v1, 0x43580000    # 216.0f

    .line 7224
    iget v2, p0, Lcom/explorestack/iab/utils/a;->h:F

    add-float/2addr p1, v2

    mul-float p1, p1, v1

    .line 16381
    iput v3, p2, Lcom/explorestack/iab/utils/a$a;->f:F

    .line 16401
    iput v0, p2, Lcom/explorestack/iab/utils/a$a;->g:F

    .line 16409
    iput p3, p2, Lcom/explorestack/iab/utils/a$a;->h:F

    .line 17140
    iput p1, p0, Lcom/explorestack/iab/utils/a;->e:F

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/explorestack/iab/utils/a;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/explorestack/iab/utils/a;->i:Z

    return p0
.end method

.method static synthetic b(Lcom/explorestack/iab/utils/a;)Z
    .locals 1

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/explorestack/iab/utils/a;->i:Z

    return v0
.end method

.method static synthetic c(Lcom/explorestack/iab/utils/a;)F
    .locals 0

    .line 25
    iget p0, p0, Lcom/explorestack/iab/utils/a;->h:F

    return p0
.end method


# virtual methods
.method public final a(F)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/explorestack/iab/utils/a;->a:Lcom/explorestack/iab/utils/a$a;

    invoke-virtual {v0, p1}, Lcom/explorestack/iab/utils/a$a;->a(F)V

    .line 85
    invoke-virtual {p0}, Lcom/explorestack/iab/utils/a;->invalidateSelf()V

    return-void
.end method

.method public final a(Landroid/graphics/Paint$Cap;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/explorestack/iab/utils/a;->a:Lcom/explorestack/iab/utils/a$a;

    invoke-virtual {v0, p1}, Lcom/explorestack/iab/utils/a$a;->a(Landroid/graphics/Paint$Cap;)V

    .line 99
    invoke-virtual {p0}, Lcom/explorestack/iab/utils/a;->invalidateSelf()V

    return-void
.end method

.method public final varargs a([I)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/explorestack/iab/utils/a;->a:Lcom/explorestack/iab/utils/a$a;

    invoke-virtual {v0, p1}, Lcom/explorestack/iab/utils/a$a;->a([I)V

    .line 113
    iget-object p1, p0, Lcom/explorestack/iab/utils/a;->a:Lcom/explorestack/iab/utils/a$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/explorestack/iab/utils/a$a;->a(I)V

    .line 114
    invoke-virtual {p0}, Lcom/explorestack/iab/utils/a;->invalidateSelf()V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 118
    invoke-virtual {p0}, Lcom/explorestack/iab/utils/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 119
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 120
    iget v1, p0, Lcom/explorestack/iab/utils/a;->e:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 121
    iget-object v1, p0, Lcom/explorestack/iab/utils/a;->a:Lcom/explorestack/iab/utils/a$a;

    .line 1311
    iget-object v3, v1, Lcom/explorestack/iab/utils/a$a;->a:Landroid/graphics/RectF;

    .line 1312
    iget v2, v1, Lcom/explorestack/iab/utils/a$a;->o:F

    iget v4, v1, Lcom/explorestack/iab/utils/a$a;->i:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v2, v4

    .line 1313
    iget v4, v1, Lcom/explorestack/iab/utils/a$a;->o:F

    const/4 v6, 0x0

    cmpg-float v4, v4, v6

    if-gtz v4, :cond_0

    .line 1314
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget v4, v1, Lcom/explorestack/iab/utils/a$a;->i:F

    div-float/2addr v4, v5

    sub-float/2addr v2, v4

    .line 1316
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v2

    invoke-virtual {v3, v4, v6, v7, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1317
    iget v0, v1, Lcom/explorestack/iab/utils/a$a;->f:F

    iget v2, v1, Lcom/explorestack/iab/utils/a$a;->h:F

    add-float/2addr v0, v2

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float v4, v0, v2

    .line 1318
    iget v0, v1, Lcom/explorestack/iab/utils/a$a;->g:F

    iget v6, v1, Lcom/explorestack/iab/utils/a$a;->h:F

    add-float/2addr v0, v6

    mul-float v0, v0, v2

    sub-float/2addr v0, v4

    .line 1320
    iget-object v2, v1, Lcom/explorestack/iab/utils/a$a;->b:Landroid/graphics/Paint;

    iget v6, v1, Lcom/explorestack/iab/utils/a$a;->q:I

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1321
    iget-object v2, v1, Lcom/explorestack/iab/utils/a$a;->b:Landroid/graphics/Paint;

    iget v6, v1, Lcom/explorestack/iab/utils/a$a;->p:I

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1322
    iget v2, v1, Lcom/explorestack/iab/utils/a$a;->i:F

    div-float/2addr v2, v5

    .line 1323
    invoke-virtual {v3, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 1324
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float/2addr v8, v5

    iget-object v5, v1, Lcom/explorestack/iab/utils/a$a;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    neg-float v2, v2

    .line 1325
    invoke-virtual {v3, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    const/4 v6, 0x0

    .line 1326
    iget-object v7, v1, Lcom/explorestack/iab/utils/a$a;->b:Landroid/graphics/Paint;

    move-object v2, p1

    move v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 122
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final getAlpha()I
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/explorestack/iab/utils/a;->a:Lcom/explorestack/iab/utils/a$a;

    .line 1372
    iget v0, v0, Lcom/explorestack/iab/utils/a$a;->p:I

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final isRunning()Z
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/explorestack/iab/utils/a;->g:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public final setAlpha(I)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/explorestack/iab/utils/a;->a:Lcom/explorestack/iab/utils/a$a;

    .line 1368
    iput p1, v0, Lcom/explorestack/iab/utils/a$a;->p:I

    .line 127
    invoke-virtual {p0}, Lcom/explorestack/iab/utils/a;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/explorestack/iab/utils/a;->a:Lcom/explorestack/iab/utils/a$a;

    .line 2364
    iget-object v0, v0, Lcom/explorestack/iab/utils/a$a;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 136
    invoke-virtual {p0}, Lcom/explorestack/iab/utils/a;->invalidateSelf()V

    return-void
.end method

.method public final start()V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/explorestack/iab/utils/a;->g:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 153
    iget-object v0, p0, Lcom/explorestack/iab/utils/a;->a:Lcom/explorestack/iab/utils/a$a;

    invoke-virtual {v0}, Lcom/explorestack/iab/utils/a$a;->c()V

    .line 154
    iget-object v0, p0, Lcom/explorestack/iab/utils/a;->a:Lcom/explorestack/iab/utils/a$a;

    .line 2405
    iget v0, v0, Lcom/explorestack/iab/utils/a$a;->g:F

    .line 154
    iget-object v1, p0, Lcom/explorestack/iab/utils/a;->a:Lcom/explorestack/iab/utils/a$a;

    .line 3385
    iget v1, v1, Lcom/explorestack/iab/utils/a$a;->f:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lcom/explorestack/iab/utils/a;->i:Z

    .line 156
    iget-object v0, p0, Lcom/explorestack/iab/utils/a;->g:Landroid/animation/Animator;

    const-wide/16 v1, 0x29a

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 157
    iget-object v0, p0, Lcom/explorestack/iab/utils/a;->g:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/utils/a;->a:Lcom/explorestack/iab/utils/a$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/utils/a$a;->a(I)V

    .line 160
    iget-object v0, p0, Lcom/explorestack/iab/utils/a;->a:Lcom/explorestack/iab/utils/a$a;

    invoke-virtual {v0}, Lcom/explorestack/iab/utils/a$a;->d()V

    .line 161
    iget-object v0, p0, Lcom/explorestack/iab/utils/a;->g:Landroid/animation/Animator;

    const-wide/16 v1, 0x534

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 162
    iget-object v0, p0, Lcom/explorestack/iab/utils/a;->g:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public final stop()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/explorestack/iab/utils/a;->g:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    .line 4140
    iput v0, p0, Lcom/explorestack/iab/utils/a;->e:F

    .line 169
    iget-object v0, p0, Lcom/explorestack/iab/utils/a;->a:Lcom/explorestack/iab/utils/a$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/utils/a$a;->a(I)V

    .line 170
    iget-object v0, p0, Lcom/explorestack/iab/utils/a;->a:Lcom/explorestack/iab/utils/a$a;

    invoke-virtual {v0}, Lcom/explorestack/iab/utils/a$a;->d()V

    .line 171
    invoke-virtual {p0}, Lcom/explorestack/iab/utils/a;->invalidateSelf()V

    return-void
.end method
