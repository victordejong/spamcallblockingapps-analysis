.class public Ly10;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly10$c;
    }
.end annotation


# static fields
.field public static final h:Landroid/view/animation/Interpolator;

.field public static final j:Landroid/view/animation/Interpolator;

.field public static final k:[I


# instance fields
.field public final a:Ly10$c;

.field public b:F

.field public c:Landroid/content/res/Resources;

.field public d:Landroid/animation/Animator;

.field public f:F

.field public g:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Ly10;->h:Landroid/view/animation/Interpolator;

    new-instance v0, Lde;

    invoke-direct {v0}, Lde;-><init>()V

    sput-object v0, Ly10;->j:Landroid/view/animation/Interpolator;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    aput v2, v0, v1

    sput-object v0, Ly10;->k:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    invoke-static {p1}, Loa;->d(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Ly10;->c:Landroid/content/res/Resources;

    new-instance p1, Ly10$c;

    invoke-direct {p1}, Ly10$c;-><init>()V

    iput-object p1, p0, Ly10;->a:Ly10$c;

    sget-object v0, Ly10;->k:[I

    invoke-virtual {p1, v0}, Ly10$c;->u([I)V

    const/high16 p1, 0x40200000    # 2.5f

    invoke-virtual {p0, p1}, Ly10;->k(F)V

    invoke-virtual {p0}, Ly10;->m()V

    return-void
.end method


# virtual methods
.method public final a(FLy10$c;)V
    .locals 4

    invoke-virtual {p0, p1, p2}, Ly10;->n(FLy10$c;)V

    invoke-virtual {p2}, Ly10$c;->j()F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    invoke-virtual {p2}, Ly10$c;->k()F

    move-result v1

    invoke-virtual {p2}, Ly10$c;->i()F

    move-result v2

    const v3, 0x3c23d70a    # 0.01f

    sub-float/2addr v2, v3

    invoke-virtual {p2}, Ly10$c;->k()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    invoke-virtual {p2, v1}, Ly10$c;->y(F)V

    invoke-virtual {p2}, Ly10$c;->i()F

    move-result v1

    invoke-virtual {p2, v1}, Ly10$c;->v(F)V

    invoke-virtual {p2}, Ly10$c;->j()F

    move-result v1

    invoke-virtual {p2}, Ly10$c;->j()F

    move-result v2

    sub-float/2addr v0, v2

    mul-float v0, v0, p1

    add-float/2addr v1, v0

    invoke-virtual {p2, v1}, Ly10$c;->w(F)V

    return-void
.end method

.method public b(FLy10$c;Z)V
    .locals 7

    iget-boolean v0, p0, Ly10;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Ly10;->a(FLy10$c;)V

    goto :goto_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_1

    if-eqz p3, :cond_3

    :cond_1
    invoke-virtual {p2}, Ly10$c;->j()F

    move-result p3

    const v1, 0x3c23d70a    # 0.01f

    const v2, 0x3f4a3d71    # 0.79f

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v4, p1, v3

    if-gez v4, :cond_2

    div-float v0, p1, v3

    invoke-virtual {p2}, Ly10$c;->k()F

    move-result v3

    sget-object v4, Ly10;->j:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float v0, v0, v2

    add-float/2addr v0, v1

    add-float/2addr v0, v3

    goto :goto_0

    :cond_2
    sub-float v4, p1, v3

    div-float/2addr v4, v3

    invoke-virtual {p2}, Ly10$c;->k()F

    move-result v3

    add-float/2addr v3, v2

    sget-object v5, Ly10;->j:Landroid/view/animation/Interpolator;

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

    iget v2, p0, Ly10;->f:F

    add-float/2addr p1, v2

    mul-float p1, p1, v1

    invoke-virtual {p2, v3}, Ly10$c;->y(F)V

    invoke-virtual {p2, v0}, Ly10$c;->v(F)V

    invoke-virtual {p2, p3}, Ly10$c;->w(F)V

    invoke-virtual {p0, p1}, Ly10;->h(F)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final c(FII)I
    .locals 6

    shr-int/lit8 v0, p2, 0x18

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 p2, p2, 0xff

    shr-int/lit8 v3, p3, 0x18

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, p3, 0x10

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v5, p3, 0x8

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 p3, p3, 0xff

    sub-int/2addr v3, v0

    int-to-float v3, v3

    mul-float v3, v3, p1

    float-to-int v3, v3

    add-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0x18

    sub-int/2addr v4, v1

    int-to-float v3, v4

    mul-float v3, v3, p1

    float-to-int v3, v3

    add-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    sub-int/2addr v5, v2

    int-to-float v1, v5

    mul-float v1, v1, p1

    float-to-int v1, v1

    add-int/2addr v2, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    sub-int/2addr p3, p2

    int-to-float p3, p3

    mul-float p1, p1, p3

    float-to-int p1, p1

    add-int/2addr p2, p1

    or-int p1, v0, p2

    return p1
.end method

.method public d(Z)V
    .locals 1

    iget-object v0, p0, Ly10;->a:Ly10$c;

    invoke-virtual {v0, p1}, Ly10$c;->x(Z)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v1, p0, Ly10;->b:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v1, p0, Ly10;->a:Ly10$c;

    invoke-virtual {v1, p1, v0}, Ly10$c;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public e(F)V
    .locals 1

    iget-object v0, p0, Ly10;->a:Ly10$c;

    invoke-virtual {v0, p1}, Ly10$c;->p(F)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public varargs f([I)V
    .locals 1

    iget-object v0, p0, Ly10;->a:Ly10$c;

    invoke-virtual {v0, p1}, Ly10$c;->u([I)V

    iget-object p1, p0, Ly10;->a:Ly10$c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ly10$c;->t(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public g(F)V
    .locals 1

    iget-object v0, p0, Ly10;->a:Ly10$c;

    invoke-virtual {v0, p1}, Ly10$c;->w(F)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget-object v0, p0, Ly10;->a:Ly10$c;

    invoke-virtual {v0}, Ly10$c;->c()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final h(F)V
    .locals 0

    iput p1, p0, Ly10;->b:F

    return-void
.end method

.method public final i(FFFF)V
    .locals 2

    iget-object v0, p0, Ly10;->a:Ly10$c;

    iget-object v1, p0, Ly10;->c:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float p2, p2, v1

    invoke-virtual {v0, p2}, Ly10$c;->z(F)V

    mul-float p1, p1, v1

    invoke-virtual {v0, p1}, Ly10$c;->q(F)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ly10$c;->t(I)V

    mul-float p3, p3, v1

    mul-float p4, p4, v1

    invoke-virtual {v0, p3, p4}, Ly10$c;->o(FF)V

    return-void
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Ly10;->d:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public j(FF)V
    .locals 1

    iget-object v0, p0, Ly10;->a:Ly10$c;

    invoke-virtual {v0, p1}, Ly10$c;->y(F)V

    iget-object p1, p0, Ly10;->a:Ly10$c;

    invoke-virtual {p1, p2}, Ly10$c;->v(F)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public k(F)V
    .locals 1

    iget-object v0, p0, Ly10;->a:Ly10$c;

    invoke-virtual {v0, p1}, Ly10$c;->z(F)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public l(I)V
    .locals 3

    if-nez p1, :cond_0

    const/high16 p1, 0x41300000    # 11.0f

    const/high16 v0, 0x40400000    # 3.0f

    const/high16 v1, 0x41400000    # 12.0f

    const/high16 v2, 0x40c00000    # 6.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x40f00000    # 7.5f

    const/high16 v0, 0x40200000    # 2.5f

    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v2, 0x40a00000    # 5.0f

    :goto_0
    invoke-virtual {p0, p1, v0, v1, v2}, Ly10;->i(FFFF)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final m()V
    .locals 3

    iget-object v0, p0, Ly10;->a:Ly10$c;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Ly10$a;

    invoke-direct {v2, p0, v0}, Ly10$a;-><init>(Ly10;Ly10$c;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    sget-object v2, Ly10;->h:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Ly10$b;

    invoke-direct {v2, p0, v0}, Ly10$b;-><init>(Ly10;Ly10$c;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v1, p0, Ly10;->d:Landroid/animation/Animator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public n(FLy10$c;)V
    .locals 2

    const/high16 v0, 0x3f400000    # 0.75f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    sub-float/2addr p1, v0

    const/high16 v0, 0x3e800000    # 0.25f

    div-float/2addr p1, v0

    invoke-virtual {p2}, Ly10$c;->h()I

    move-result v0

    invoke-virtual {p2}, Ly10$c;->e()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Ly10;->c(FII)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ly10$c;->h()I

    move-result p1

    :goto_0
    invoke-virtual {p2, p1}, Ly10$c;->r(I)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Ly10;->a:Ly10$c;

    invoke-virtual {v0, p1}, Ly10$c;->n(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Ly10;->a:Ly10$c;

    invoke-virtual {v0, p1}, Ly10$c;->s(Landroid/graphics/ColorFilter;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Ly10;->d:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iget-object v0, p0, Ly10;->a:Ly10$c;

    invoke-virtual {v0}, Ly10$c;->A()V

    iget-object v0, p0, Ly10;->a:Ly10$c;

    invoke-virtual {v0}, Ly10$c;->d()F

    move-result v0

    iget-object v1, p0, Ly10;->a:Ly10$c;

    invoke-virtual {v1}, Ly10$c;->g()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Ly10;->g:Z

    iget-object v0, p0, Ly10;->d:Landroid/animation/Animator;

    const-wide/16 v1, 0x29a

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ly10;->a:Ly10$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ly10$c;->t(I)V

    iget-object v0, p0, Ly10;->a:Ly10$c;

    invoke-virtual {v0}, Ly10$c;->m()V

    iget-object v0, p0, Ly10;->d:Landroid/animation/Animator;

    const-wide/16 v1, 0x534

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v0, p0, Ly10;->d:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Ly10;->d:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ly10;->h(F)V

    iget-object v0, p0, Ly10;->a:Ly10$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ly10$c;->x(Z)V

    iget-object v0, p0, Ly10;->a:Ly10$c;

    invoke-virtual {v0, v1}, Ly10$c;->t(I)V

    iget-object v0, p0, Ly10;->a:Ly10$c;

    invoke-virtual {v0}, Ly10$c;->m()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
