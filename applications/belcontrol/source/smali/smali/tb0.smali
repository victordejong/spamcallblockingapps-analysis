.class public Ltb0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final s:F

.field public static final t:F


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:J

.field public h:F

.field public final i:Landroid/view/animation/Interpolator;

.field public j:I

.field public k:F

.field public final l:Landroid/graphics/Rect;

.field public final m:Landroid/graphics/Paint;

.field public n:F

.field public o:F

.field public p:F

.field public q:F

.field public r:Landroid/graphics/RectF;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-wide v0, 0x3fe0c152382d7365L    # 0.5235987755982988

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    sput v2, Ltb0;->s:F

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Ltb0;->t:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Ltb0;->j:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Ltb0;->l:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Ltb0;->m:Landroid/graphics/Paint;

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Ltb0;->p:F

    iput v0, p0, Ltb0;->q:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Ltb0;->r:Landroid/graphics/RectF;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v0, 0x33ff0000

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Ltb0;->i:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;)Z
    .locals 10

    invoke-virtual {p0}, Ltb0;->h()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    iget-object v0, p0, Ltb0;->l:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Ltb0;->l:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Ltb0;->n:F

    sub-float/2addr v1, v2

    iget v2, p0, Ltb0;->b:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v4, p0, Ltb0;->o:F

    mul-float v2, v2, v4

    const/4 v7, 0x0

    invoke-virtual {p1, v3, v2, v0, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget v4, p0, Ltb0;->p:F

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v7, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v3, v4

    iget-object v4, p0, Ltb0;->l:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v4, v3

    iget-object v5, p0, Ltb0;->l:Landroid/graphics/Rect;

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p1, v4, v7}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Ltb0;->m:Landroid/graphics/Paint;

    iget v5, p0, Ltb0;->a:F

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float v5, v5, v8

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    neg-float v4, v1

    mul-float v4, v4, v2

    iget v5, p0, Ltb0;->n:F

    neg-float v8, v4

    mul-float v8, v8, v4

    mul-float v9, v4, v4

    mul-float v9, v9, v2

    mul-float v9, v9, v2

    add-float/2addr v8, v9

    mul-float v5, v5, v5

    add-float/2addr v8, v5

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v2, v8

    div-float/2addr v4, v2

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    double-to-float v2, v4

    const/high16 v4, 0x43340000    # 180.0f

    mul-float v2, v2, v4

    float-to-double v4, v2

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v8

    double-to-float v2, v4

    iget-object v4, p0, Ltb0;->r:Landroid/graphics/RectF;

    iget v5, p0, Ltb0;->n:F

    sub-float v8, v0, v5

    sub-float v9, v1, v5

    add-float/2addr v0, v5

    add-float/2addr v1, v5

    invoke-virtual {v4, v8, v9, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Ltb0;->r:Landroid/graphics/RectF;

    const/high16 v0, 0x42b40000    # 90.0f

    sub-float v4, v0, v2

    mul-float v3, v3, v2

    iget-object v5, p0, Ltb0;->m:Landroid/graphics/Paint;

    const/4 v8, 0x0

    move-object v0, p1

    move v2, v4

    move v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget v0, p0, Ltb0;->j:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    iget v0, p0, Ltb0;->b:F

    cmpl-float v0, v0, v7

    if-nez v0, :cond_0

    iput v2, p0, Ltb0;->j:I

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Ltb0;->j:I

    if-nez v3, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    return v1
.end method

.method public b()Z
    .locals 1

    iget v0, p0, Ltb0;->j:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c(I)V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, Ltb0;->j:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v0, 0x64

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v0, 0x2710

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltb0;->g:J

    int-to-float v0, p1

    const v1, 0x3ca3d70a    # 0.02f

    mul-float v0, v0, v1

    const v1, 0x3e19999a    # 0.15f

    add-float/2addr v0, v1

    iput v0, p0, Ltb0;->h:F

    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Ltb0;->c:F

    iget v0, p0, Ltb0;->b:F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Ltb0;->e:F

    div-int/lit8 v0, p1, 0x64

    mul-int v0, v0, p1

    int-to-float v0, v0

    const v1, 0x391d4952    # 1.5E-4f

    mul-float v0, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const v1, 0x3ccccccd    # 0.025f

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Ltb0;->f:F

    iget v0, p0, Ltb0;->c:F

    mul-int/lit8 p1, p1, 0x6

    int-to-float p1, p1

    const v1, 0x3727c5ac    # 1.0E-5f

    mul-float p1, p1, v1

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Ltb0;->d:F

    iput v1, p0, Ltb0;->q:F

    return-void
.end method

.method public d(FF)V
    .locals 4

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput p2, p0, Ltb0;->q:F

    iget p2, p0, Ltb0;->j:I

    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    iget-wide v2, p0, Ltb0;->g:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    iget v3, p0, Ltb0;->h:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p2, v2, :cond_1

    iget p2, p0, Ltb0;->b:F

    invoke-static {v3, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Ltb0;->b:F

    :cond_1
    iput v2, p0, Ltb0;->j:I

    iput-wide v0, p0, Ltb0;->g:J

    const/high16 p2, 0x43270000    # 167.0f

    iput p2, p0, Ltb0;->h:F

    iget p2, p0, Ltb0;->k:F

    add-float/2addr p2, p1

    iput p2, p0, Ltb0;->k:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x3f000000    # 0.5f

    iget v0, p0, Ltb0;->a:F

    const v1, 0x3f4ccccd    # 0.8f

    mul-float p1, p1, v1

    add-float/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Ltb0;->c:F

    iput p1, p0, Ltb0;->a:F

    iget p1, p0, Ltb0;->k:F

    cmpl-float p2, p1, v3

    if-nez p2, :cond_2

    iput v3, p0, Ltb0;->e:F

    iput v3, p0, Ltb0;->b:F

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p0, Ltb0;->l:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    mul-float p1, p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double p1, v2, p1

    sub-double/2addr v2, p1

    const-wide p1, 0x3fd3333340000000L    # 0.30000001192092896

    sub-double/2addr v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    const-wide v0, 0x3fe6666660000000L    # 0.699999988079071

    div-double/2addr p1, v0

    double-to-float p1, p1

    iput p1, p0, Ltb0;->e:F

    iput p1, p0, Ltb0;->b:F

    :goto_0
    iget p1, p0, Ltb0;->a:F

    iput p1, p0, Ltb0;->d:F

    iget p1, p0, Ltb0;->b:F

    iput p1, p0, Ltb0;->f:F

    return-void
.end method

.method public e()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Ltb0;->k:F

    iget v1, p0, Ltb0;->j:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    iput v1, p0, Ltb0;->j:I

    iget v1, p0, Ltb0;->a:F

    iput v1, p0, Ltb0;->c:F

    iget v1, p0, Ltb0;->b:F

    iput v1, p0, Ltb0;->e:F

    iput v0, p0, Ltb0;->d:F

    iput v0, p0, Ltb0;->f:F

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltb0;->g:J

    const/high16 v0, 0x44160000    # 600.0f

    iput v0, p0, Ltb0;->h:F

    return-void
.end method

.method public f(I)V
    .locals 1

    iget-object v0, p0, Ltb0;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public g(II)V
    .locals 5

    int-to-float v0, p1

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float v0, v0, v1

    sget v2, Ltb0;->s:F

    div-float/2addr v0, v2

    sget v3, Ltb0;->t:F

    mul-float v4, v3, v0

    sub-float v4, v0, v4

    int-to-float p2, p2

    mul-float v1, v1, p2

    div-float/2addr v1, v2

    mul-float v3, v3, v1

    sub-float/2addr v1, v3

    iput v0, p0, Ltb0;->n:F

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    cmpl-float v2, v4, v2

    if-lez v2, :cond_0

    div-float/2addr v1, v4

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :cond_0
    iput v0, p0, Ltb0;->o:F

    iget-object v0, p0, Ltb0;->l:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-static {p2, v4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public final h()V
    .locals 5

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ltb0;->g:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Ltb0;->h:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Ltb0;->i:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    iget v2, p0, Ltb0;->c:F

    iget v3, p0, Ltb0;->d:F

    sub-float/2addr v3, v2

    mul-float v3, v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Ltb0;->a:F

    iget v2, p0, Ltb0;->e:F

    iget v3, p0, Ltb0;->f:F

    sub-float/2addr v3, v2

    mul-float v3, v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Ltb0;->b:F

    iget v1, p0, Ltb0;->p:F

    iget v2, p0, Ltb0;->q:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Ltb0;->p:F

    const v1, 0x3f7fbe77    # 0.999f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4

    iget v0, p0, Ltb0;->j:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    const/4 v4, 0x3

    if-eq v0, v1, :cond_2

    if-eq v0, v4, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iput v4, p0, Ltb0;->j:I

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Ltb0;->j:I

    goto :goto_1

    :cond_2
    iput v4, p0, Ltb0;->j:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltb0;->g:J

    const/high16 v0, 0x44160000    # 600.0f

    goto :goto_0

    :cond_3
    iput v2, p0, Ltb0;->j:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltb0;->g:J

    const/high16 v0, 0x44fa0000    # 2000.0f

    :goto_0
    iput v0, p0, Ltb0;->h:F

    iget v0, p0, Ltb0;->a:F

    iput v0, p0, Ltb0;->c:F

    iget v0, p0, Ltb0;->b:F

    iput v0, p0, Ltb0;->e:F

    iput v3, p0, Ltb0;->d:F

    iput v3, p0, Ltb0;->f:F

    :cond_4
    :goto_1
    return-void
.end method
