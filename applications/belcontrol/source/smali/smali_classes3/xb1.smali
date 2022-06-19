.class public Lxb1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxb1$c;
    }
.end annotation


# instance fields
.field public A:F

.field public final B:F

.field public final C:F

.field public final D:Lqc1;

.field public final a:Landroid/view/View;

.field public final b:Lxb1$c;

.field public c:Landroid/view/VelocityTracker;

.field public d:Lwb1;

.field public f:Z

.field public g:Z

.field public h:Z

.field public j:I

.field public k:F

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:I

.field public q:Landroid/animation/Animator;

.field public r:F

.field public s:F

.field public t:F

.field public u:F

.field public v:F

.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>(Landroid/view/View;Lxb1$c;Lqc1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lxb1;->f:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lxb1;->g:Z

    iput-boolean v0, p0, Lxb1;->h:Z

    const/4 v0, -0x1

    iput v0, p0, Lxb1;->j:I

    iput-object p1, p0, Lxb1;->a:Landroid/view/View;

    iput-object p2, p0, Lxb1;->b:Lxb1$c;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lxb1;->r:F

    new-instance p2, Lwb1;

    const v0, 0x3f19999a    # 0.6f

    invoke-direct {p2, p1, v0}, Lwb1;-><init>(Landroid/content/Context;F)V

    iput-object p2, p0, Lxb1;->d:Lwb1;

    const/high16 p2, 0x42200000    # 40.0f

    invoke-static {p1, p2}, Lub1;->a(Landroid/content/Context;F)F

    move-result p2

    iput p2, p0, Lxb1;->A:F

    const/high16 p2, 0x43160000    # 150.0f

    invoke-static {p1, p2}, Lub1;->a(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lxb1;->B:F

    invoke-static {p1, p2}, Lub1;->a(Landroid/content/Context;F)F

    move-result p2

    iput p2, p0, Lxb1;->C:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070057

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    iput-object p3, p0, Lxb1;->D:Lqc1;

    return-void
.end method

.method public static synthetic a(Lxb1;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lxb1;->q:Landroid/animation/Animator;

    return-object p1
.end method

.method public static synthetic b(Lxb1;)V
    .locals 0

    invoke-virtual {p0}, Lxb1;->m()V

    return-void
.end method

.method public static synthetic c(Lxb1;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lxb1;->r(F)V

    return-void
.end method

.method public static d(Landroid/view/View;Lxb1$c;Lqc1;)Lxb1;
    .locals 1

    new-instance v0, Lxb1;

    invoke-direct {v0, p0, p1, p2}, Lxb1;-><init>(Landroid/view/View;Lxb1$c;Lqc1;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object v0
.end method


# virtual methods
.method public final e()V
    .locals 1

    iget-object v0, p0, Lxb1;->q:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public final f(F)Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lxb1;->k:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Lxb1$b;

    invoke-direct {v0, p0}, Lxb1$b;-><init>(Lxb1;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method public g()V
    .locals 1

    invoke-virtual {p0}, Lxb1;->e()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lxb1;->s(Z)V

    return-void
.end method

.method public final h(Landroid/view/MotionEvent;FFZ)V
    .locals 7

    const/4 v0, -0x1

    iput v0, p0, Lxb1;->p:I

    iget-boolean v0, p0, Lxb1;->l:Z

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lxb1;->n:Z

    if-nez v0, :cond_2

    :cond_0
    iget v0, p0, Lxb1;->s:F

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lxb1;->r:F

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_2

    iget v0, p0, Lxb1;->t:F

    sub-float v0, p3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lxb1;->r:F

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v1, :cond_2

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lxb1;->o()V

    invoke-virtual {p0, v2}, Lxb1;->r(F)V

    invoke-virtual {p0}, Lxb1;->m()V

    goto :goto_5

    :cond_2
    :goto_0
    iget-object v0, p0, Lxb1;->c:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_3

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v0, p0, Lxb1;->c:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    iget-object v0, p0, Lxb1;->c:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    iget-object v3, p0, Lxb1;->c:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    float-to-double v3, v3

    iget-object v5, p0, Lxb1;->c:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->copySign(FF)F

    move-result v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lxb1;->l()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_5

    iget-boolean v5, p0, Lxb1;->n:Z

    if-eqz v5, :cond_5

    if-nez p4, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 p1, 0x1

    :goto_3
    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p0, p2, p3, v0}, Lxb1;->j(FFF)I

    move-result v4

    :goto_4
    invoke-virtual {p0, v2, v4, v3}, Lxb1;->i(FIZ)V

    invoke-virtual {p0}, Lxb1;->o()V

    :goto_5
    iget-object p1, p0, Lxb1;->c:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    iput-object p1, p0, Lxb1;->c:Landroid/view/VelocityTracker;

    :cond_7
    return-void
.end method

.method public final i(FIZ)V
    .locals 7

    int-to-float v3, p2

    invoke-virtual {p0, v3}, Lxb1;->f(F)Landroid/animation/ValueAnimator;

    move-result-object v6

    iget-object v0, p0, Lxb1;->d:Lwb1;

    if-nez p2, :cond_0

    iget v1, p0, Lxb1;->k:F

    invoke-virtual {v0, v6, v1, v3, p1}, Lwb1;->a(Landroid/animation/Animator;FFF)V

    goto :goto_0

    :cond_0
    iget v2, p0, Lxb1;->k:F

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v1, v6

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lwb1;->c(Landroid/animation/Animator;FFFF)V

    :goto_0
    const/4 v0, 0x0

    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    const/4 p1, 0x0

    :cond_1
    cmpl-float p1, p1, v0

    if-nez p1, :cond_2

    const-wide/16 p1, 0x15e

    invoke-virtual {v6, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_2
    new-instance p1, Lxb1$a;

    invoke-direct {p1, p0}, Lxb1$a;-><init>(Lxb1;)V

    invoke-virtual {v6, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v6, p0, Lxb1;->q:Landroid/animation/Animator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final j(FFF)I
    .locals 5

    invoke-virtual {p0, p1}, Lxb1;->q(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p0, p2}, Lxb1;->p(F)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object p2, p0, Lxb1;->d:Lwb1;

    invoke-virtual {p2}, Lwb1;->f()F

    move-result p2

    const/4 v0, 0x0

    cmpl-float v1, p3, v0

    if-lez v1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float p2, p2, v1

    :cond_0
    iget-boolean v1, p0, Lxb1;->h:Z

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_7

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float p2, v1, p2

    if-gez p2, :cond_1

    goto :goto_3

    :cond_1
    cmpg-float p2, p3, v0

    if-gez p2, :cond_2

    const/4 p3, 0x1

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :goto_0
    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-ne p3, v0, :cond_4

    const/4 p3, 0x1

    goto :goto_2

    :cond_4
    const/4 p3, 0x0

    :goto_2
    if-nez p3, :cond_5

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p3, 0x3dcccccd    # 0.1f

    cmpl-float p1, p1, p3

    if-ltz p1, :cond_5

    return v4

    :cond_5
    if-gez p2, :cond_6

    const/4 v2, 0x1

    :cond_6
    return v2

    :cond_7
    :goto_3
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const p3, 0x3f4ccccd    # 0.8f

    cmpl-float p2, p2, p3

    if-lez p2, :cond_9

    cmpl-float p1, p1, v0

    if-lez p1, :cond_8

    const/4 v2, 0x1

    :cond_8
    return v2

    :cond_9
    return v4
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Lxb1;->c:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lxb1;->c:Landroid/view/VelocityTracker;

    return-void
.end method

.method public final l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final m()V
    .locals 4

    iget-boolean v0, p0, Lxb1;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lxb1;->f:Z

    iget v1, p0, Lxb1;->k:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-nez v3, :cond_1

    iget-object v1, p0, Lxb1;->b:Lxb1$c;

    iget-boolean v2, p0, Lxb1;->o:Z

    xor-int/2addr v0, v2

    invoke-interface {v1, v0}, Lxb1$c;->a(Z)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lxb1;->b:Lxb1$c;

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lxb1;->j:I

    invoke-interface {v3, v0, v1}, Lxb1$c;->b(ZI)V

    :goto_1
    return-void
.end method

.method public final n()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lxb1;->l:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lxb1;->f:Z

    iget-object v0, p0, Lxb1;->b:Lxb1$c;

    iget v1, p0, Lxb1;->j:I

    invoke-interface {v0, v1}, Lxb1$c;->h(I)V

    return-void
.end method

.method public final o()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lxb1;->l:Z

    iget-object v0, p0, Lxb1;->b:Lxb1$c;

    invoke-interface {v0}, Lxb1$c;->e()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Lxb1;->D:Lqc1;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lqc1;->e(Landroid/view/MotionEvent;)V

    :cond_0
    iget-boolean v0, p0, Lxb1;->g:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lxb1;->m:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget v0, p0, Lxb1;->p:I

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_3

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lxb1;->p:I

    const/4 v0, 0x0

    :cond_3
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_c

    if-eq v3, v4, :cond_b

    const/4 p1, 0x2

    if-eq v3, p1, :cond_7

    const/4 p1, 0x3

    if-eq v3, p1, :cond_b

    const/4 p1, 0x5

    if-eq v3, p1, :cond_6

    const/4 p1, 0x6

    if-eq v3, p1, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iget v0, p0, Lxb1;->p:I

    if-ne v0, p1, :cond_f

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    if-eq v0, p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p2

    iput p2, p0, Lxb1;->p:I

    iget p2, p0, Lxb1;->k:F

    invoke-virtual {p0, p1, v0, v4, p2}, Lxb1;->t(FFZF)V

    goto/16 :goto_1

    :cond_6
    iput-boolean v4, p0, Lxb1;->m:Z

    invoke-virtual {p0, p2, v2, v0, v4}, Lxb1;->h(Landroid/view/MotionEvent;FFZ)V

    return v1

    :cond_7
    iget p1, p0, Lxb1;->s:F

    sub-float p1, v2, p1

    iget v1, p0, Lxb1;->t:F

    sub-float v1, v0, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, p0, Lxb1;->r:F

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_8

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, p0, Lxb1;->r:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_9

    :cond_8
    iput-boolean v4, p0, Lxb1;->n:Z

    :cond_9
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v3, p0, Lxb1;->A:F

    cmpl-float p1, p1, v3

    if-gez p1, :cond_a

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v1, p0, Lxb1;->A:F

    cmpl-float p1, p1, v1

    :cond_a
    invoke-virtual {p0, v2}, Lxb1;->q(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p0, v0}, Lxb1;->p(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0, p1}, Lxb1;->r(F)V

    invoke-virtual {p0, p2}, Lxb1;->u(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_b
    invoke-virtual {p0, p2}, Lxb1;->u(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, p2, v2, v0, v1}, Lxb1;->h(Landroid/view/MotionEvent;FFZ)V

    goto :goto_1

    :cond_c
    iput-boolean v1, p0, Lxb1;->m:Z

    iget v3, p0, Lxb1;->k:F

    invoke-virtual {p0, v2, v0, v1, v3}, Lxb1;->t(FFZF)V

    iget-object v0, p0, Lxb1;->b:Lxb1$c;

    invoke-interface {v0, p2}, Lxb1$c;->g(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lxb1;->c:Landroid/view/VelocityTracker;

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lxb1;->k()V

    :cond_d
    invoke-virtual {p0, p2}, Lxb1;->u(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Lxb1;->e()V

    iget-object p2, p0, Lxb1;->q:Landroid/animation/Animator;

    if-eqz p2, :cond_e

    const/4 v1, 0x1

    :cond_e
    iput-boolean v1, p0, Lxb1;->n:Z

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iput p1, p0, Lxb1;->j:I

    invoke-virtual {p0}, Lxb1;->n()V

    :cond_f
    :goto_1
    return v4
.end method

.method public final p(F)F
    .locals 4

    iget v0, p0, Lxb1;->z:F

    const/4 v1, 0x1

    cmpl-float v2, p1, v0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    iget v3, p0, Lxb1;->x:F

    goto :goto_1

    :cond_1
    iget v3, p0, Lxb1;->v:F

    :goto_1
    sub-float/2addr p1, v0

    sub-float/2addr v3, v0

    div-float/2addr p1, v3

    if-eqz v2, :cond_2

    const/4 v1, -0x1

    :cond_2
    int-to-float v0, v1

    mul-float p1, p1, v0

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lac1;->a(FFF)F

    move-result p1

    return p1
.end method

.method public final q(F)F
    .locals 4

    iget v0, p0, Lxb1;->y:F

    const/4 v1, 0x1

    cmpl-float v2, p1, v0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    iget v3, p0, Lxb1;->w:F

    goto :goto_1

    :cond_1
    iget v3, p0, Lxb1;->u:F

    :goto_1
    sub-float/2addr p1, v0

    sub-float/2addr v3, v0

    div-float/2addr p1, v3

    if-eqz v2, :cond_2

    const/4 v1, -0x1

    :cond_2
    int-to-float v0, v1

    mul-float p1, p1, v0

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lac1;->a(FFF)F

    move-result p1

    return p1
.end method

.method public final r(F)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lxb1;->o:Z

    :cond_0
    iput p1, p0, Lxb1;->k:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lxb1;->m()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lxb1;->b:Lxb1$c;

    iget v1, p0, Lxb1;->j:I

    invoke-interface {v0, p1, v1}, Lxb1$c;->f(FI)V

    :goto_0
    return-void
.end method

.method public s(Z)V
    .locals 0

    iput-boolean p1, p0, Lxb1;->g:Z

    return-void
.end method

.method public final t(FFZF)V
    .locals 4

    iput p1, p0, Lxb1;->s:F

    iput p2, p0, Lxb1;->t:F

    const/4 p2, 0x0

    iput-boolean p2, p0, Lxb1;->o:Z

    float-to-double v0, p4

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    cmpg-double p2, v0, v2

    if-gtz p2, :cond_0

    iget p2, p0, Lxb1;->B:F

    sub-float/2addr p1, p2

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lxb1;->u:F

    iget-object p1, p0, Lxb1;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lxb1;->s:F

    iget v1, p0, Lxb1;->C:F

    add-float/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lxb1;->w:F

    iget p1, p0, Lxb1;->s:F

    iput p1, p0, Lxb1;->y:F

    iget p1, p0, Lxb1;->t:F

    iget v0, p0, Lxb1;->B:F

    sub-float/2addr p1, v0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lxb1;->v:F

    iget-object p1, p0, Lxb1;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lxb1;->t:F

    iget v0, p0, Lxb1;->C:F

    add-float/2addr p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lxb1;->x:F

    iget p1, p0, Lxb1;->t:F

    iput p1, p0, Lxb1;->z:F

    :cond_0
    if-eqz p3, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lxb1;->n:Z

    invoke-virtual {p0}, Lxb1;->n()V

    invoke-virtual {p0, p4}, Lxb1;->r(F)V

    :cond_1
    return-void
.end method

.method public final u(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lxb1;->c:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method
