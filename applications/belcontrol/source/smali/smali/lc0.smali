.class public Llc0;
.super Lfc0;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llc0$e;
    }
.end annotation


# static fields
.field public static final u:Landroid/view/animation/Interpolator;

.field public static final v:Landroid/view/animation/Interpolator;

.field public static final w:Lac0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lac0<",
            "Llc0;",
            ">;"
        }
    .end annotation
.end field

.field public static final x:Lac0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lac0<",
            "Llc0;",
            ">;"
        }
    .end annotation
.end field

.field public static final y:Lac0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lac0<",
            "Llc0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:F

.field public p:F

.field public q:F

.field public r:Z

.field public s:Z

.field public final t:Landroid/animation/AnimatorListenerAdapter;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Llc0;->u:Landroid/view/animation/Interpolator;

    new-instance v0, Llc0$e;

    const/high16 v1, 0x43c80000    # 400.0f

    const v2, 0x3fb33333    # 1.4f

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Llc0$e;-><init>(FFF)V

    sput-object v0, Llc0;->v:Landroid/view/animation/Interpolator;

    new-instance v0, Llc0$b;

    const-string v1, "tweenRadius"

    invoke-direct {v0, v1}, Llc0$b;-><init>(Ljava/lang/String;)V

    sput-object v0, Llc0;->w:Lac0;

    new-instance v0, Llc0$c;

    const-string v1, "tweenOrigin"

    invoke-direct {v0, v1}, Llc0$c;-><init>(Ljava/lang/String;)V

    sput-object v0, Llc0;->x:Lac0;

    new-instance v0, Llc0$d;

    const-string v1, "opacity"

    invoke-direct {v0, v1}, Llc0$d;-><init>(Ljava/lang/String;)V

    sput-object v0, Llc0;->y:Lac0;

    return-void
.end method

.method public constructor <init>(Lic0;Landroid/graphics/Rect;FFZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lfc0;-><init>(Lic0;Landroid/graphics/Rect;)V

    const/4 p1, 0x0

    iput p1, p0, Llc0;->k:F

    iput p1, p0, Llc0;->l:F

    iput p1, p0, Llc0;->m:F

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Llc0;->n:F

    iput p1, p0, Llc0;->o:F

    iput p1, p0, Llc0;->p:F

    iput p1, p0, Llc0;->q:F

    new-instance p2, Llc0$a;

    invoke-direct {p2, p0}, Llc0$a;-><init>(Llc0;)V

    iput-object p2, p0, Llc0;->t:Landroid/animation/AnimatorListenerAdapter;

    iput-boolean p5, p0, Llc0;->r:Z

    iput p3, p0, Llc0;->g:F

    iput p4, p0, Llc0;->h:F

    if-eqz p5, :cond_0

    const p1, 0x439d8000    # 315.0f

    const-wide p2, 0x4075e00000000000L    # 350.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p4

    mul-double p4, p4, p2

    const-wide p2, 0x3fb999999999999aL    # 0.1

    mul-double p4, p4, p2

    double-to-float p2, p4

    add-float/2addr p2, p1

    iput p2, p0, Llc0;->m:F

    goto :goto_0

    :cond_0
    iput p1, p0, Llc0;->m:F

    :goto_0
    return-void
.end method

.method public static synthetic r(Llc0;Z)Z
    .locals 0

    iput-boolean p1, p0, Llc0;->s:Z

    return p1
.end method

.method public static synthetic s(Llc0;)F
    .locals 0

    iget p0, p0, Llc0;->o:F

    return p0
.end method

.method public static synthetic t(Llc0;F)F
    .locals 0

    iput p1, p0, Llc0;->o:F

    return p1
.end method

.method public static synthetic u(Llc0;)F
    .locals 0

    iget p0, p0, Llc0;->p:F

    return p0
.end method

.method public static synthetic v(Llc0;F)F
    .locals 0

    iput p1, p0, Llc0;->p:F

    return p1
.end method

.method public static synthetic w(Llc0;F)F
    .locals 0

    iput p1, p0, Llc0;->q:F

    return p1
.end method

.method public static synthetic x(Llc0;)F
    .locals 0

    iget p0, p0, Llc0;->n:F

    return p0
.end method

.method public static synthetic y(Llc0;F)F
    .locals 0

    iput p1, p0, Llc0;->n:F

    return p1
.end method


# virtual methods
.method public final A()V
    .locals 3

    iget v0, p0, Llc0;->i:F

    iget-object v1, p0, Lfc0;->b:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    sub-float/2addr v0, v1

    const v1, 0x3f333333    # 0.7f

    mul-float v0, v0, v1

    iput v0, p0, Llc0;->k:F

    iget v0, p0, Llc0;->j:F

    iget-object v2, p0, Lfc0;->b:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    sub-float/2addr v0, v2

    mul-float v0, v0, v1

    iput v0, p0, Llc0;->l:F

    iget v0, p0, Llc0;->m:F

    iput v0, p0, Lfc0;->e:F

    return-void
.end method

.method public final B()F
    .locals 3

    iget v0, p0, Lfc0;->e:F

    iget v1, p0, Llc0;->o:F

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lvc0;->c(FFF)F

    move-result v0

    return v0
.end method

.method public final C()F
    .locals 3

    iget v0, p0, Llc0;->i:F

    iget-object v1, p0, Lfc0;->b:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Llc0;->k:F

    iget v2, p0, Llc0;->p:F

    invoke-static {v0, v1, v2}, Lvc0;->c(FFF)F

    move-result v0

    return v0
.end method

.method public final D()F
    .locals 3

    iget v0, p0, Llc0;->j:F

    iget-object v1, p0, Lfc0;->b:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Llc0;->l:F

    iget v2, p0, Llc0;->q:F

    invoke-static {v0, v1, v2}, Lvc0;->c(FFF)F

    move-result v0

    return v0
.end method

.method public final E()I
    .locals 2

    iget v0, p0, Llc0;->n:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public final F()I
    .locals 4

    iget v0, p0, Lfc0;->e:F

    invoke-virtual {p0}, Llc0;->B()F

    move-result v1

    sub-float/2addr v0, v1

    const v1, 0x458a4000    # 4424.0f

    div-float/2addr v0, v1

    iget v1, p0, Lfc0;->f:F

    mul-float v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public G()Z
    .locals 1

    iget-boolean v0, p0, Llc0;->s:Z

    return v0
.end method

.method public H(FF)V
    .locals 0

    iput p1, p0, Llc0;->g:F

    iput p2, p0, Llc0;->h:F

    invoke-virtual {p0}, Llc0;->z()V

    return-void
.end method

.method public c(Z)Landroid/animation/Animator;
    .locals 10

    iget-boolean p1, p0, Llc0;->r:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-wide v0, 0x408f400000000000L    # 1000.0

    iget p1, p0, Lfc0;->e:F

    const/high16 v2, 0x44800000    # 1024.0f

    div-float/2addr p1, v2

    iget v2, p0, Lfc0;->f:F

    mul-float p1, p1, v2

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double v2, v2, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v0

    double-to-int p1, v2

    sget-object v0, Llc0;->w:Lac0;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-static {v0}, Lyb0;->c(Landroid/animation/ObjectAnimator;)V

    int-to-long v5, p1

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object p1, Llc0;->u:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v7, 0x50

    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    sget-object v2, Llc0;->x:Lac0;

    new-array v9, v1, [F

    aput v4, v9, v3

    invoke-static {p0, v2, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-static {v2}, Lyb0;->c(Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    sget-object v5, Llc0;->y:Lac0;

    new-array v1, v1, [F

    aput v4, v1, v3

    invoke-static {p0, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-static {v1}, Lyb0;->c(Landroid/animation/ObjectAnimator;)V

    const-wide/16 v3, 0x78

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object p1
.end method

.method public d()Landroid/animation/Animator;
    .locals 10

    iget-boolean v0, p0, Llc0;->r:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Llc0;->A()V

    const/16 v0, 0x320

    const/16 v1, 0x12c

    const/16 v2, 0x190

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Llc0;->F()I

    move-result v0

    invoke-virtual {p0}, Llc0;->E()I

    move-result v2

    move v1, v0

    :goto_0
    sget-object v3, Llc0;->w:Lac0;

    const/4 v4, 0x1

    new-array v5, v4, [F

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v5, v6

    invoke-static {p0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-static {v3}, Lyb0;->c(Landroid/animation/ObjectAnimator;)V

    int-to-long v8, v0

    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v0, Llc0;->v:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v5, Llc0;->x:Lac0;

    new-array v8, v4, [F

    aput v7, v8, v6

    invoke-static {p0, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-static {v5}, Lyb0;->c(Landroid/animation/ObjectAnimator;)V

    int-to-long v7, v1

    invoke-virtual {v5, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v5, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v0, Llc0;->y:Lac0;

    new-array v1, v4, [F

    const/4 v4, 0x0

    aput v4, v1, v6

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-static {v0}, Lyb0;->c(Landroid/animation/ObjectAnimator;)V

    int-to-long v1, v2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v1, Llc0;->u:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Llc0;->t:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v1
.end method

.method public f(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z
    .locals 5

    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    int-to-float v1, v0

    iget v2, p0, Llc0;->n:F

    mul-float v1, v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0}, Llc0;->B()F

    move-result v2

    if-lez v1, :cond_0

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    invoke-virtual {p0}, Llc0;->C()F

    move-result v3

    invoke-virtual {p0}, Llc0;->D()F

    move-result v4

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1, v3, v4, v2, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public k(Landroid/graphics/Rect;)V
    .locals 5

    iget v0, p0, Llc0;->k:F

    float-to-int v0, v0

    iget v1, p0, Llc0;->l:F

    float-to-int v1, v1

    iget v2, p0, Lfc0;->e:F

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    sub-int v3, v0, v2

    sub-int v4, v1, v2

    add-int/2addr v0, v2

    add-int/2addr v1, v2

    invoke-virtual {p1, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public p(F)V
    .locals 0

    invoke-virtual {p0}, Llc0;->z()V

    return-void
.end method

.method public final z()V
    .locals 9

    iget-object v0, p0, Lfc0;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    iget-object v1, p0, Lfc0;->b:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    iget v2, p0, Llc0;->g:F

    sub-float v3, v2, v0

    iget v4, p0, Llc0;->h:F

    sub-float v5, v4, v1

    iget v6, p0, Lfc0;->e:F

    mul-float v7, v3, v3

    mul-float v8, v5, v5

    add-float/2addr v7, v8

    mul-float v8, v6, v6

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    float-to-double v4, v5

    float-to-double v2, v3

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    float-to-double v6, v6

    mul-double v4, v4, v6

    double-to-float v4, v4

    add-float/2addr v0, v4

    iput v0, p0, Llc0;->i:F

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v2, v2, v6

    double-to-float v0, v2

    add-float/2addr v1, v0

    iput v1, p0, Llc0;->j:F

    goto :goto_0

    :cond_0
    iput v2, p0, Llc0;->i:F

    iput v4, p0, Llc0;->j:F

    :goto_0
    return-void
.end method
