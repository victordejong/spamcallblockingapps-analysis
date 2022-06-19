.class Landroidx/transition/a0$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""

# interfaces
.implements Landroidx/transition/Transition$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/view/View;

.field private final c:I

.field private final d:I

.field private e:[I

.field private f:F

.field private g:F

.field private final h:F

.field private final i:F


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/View;IIFF)V
    .locals 1

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iput-object p1, p0, Landroidx/transition/a0$a;->b:Landroid/view/View;

    iput-object p2, p0, Landroidx/transition/a0$a;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int/2addr p3, v0

    iput p3, p0, Landroidx/transition/a0$a;->c:I

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    sub-int/2addr p4, p1

    iput p4, p0, Landroidx/transition/a0$a;->d:I

    iput p5, p0, Landroidx/transition/a0$a;->h:F

    iput p6, p0, Landroidx/transition/a0$a;->i:F

    sget p1, Landroidx/transition/p;->transition_position:I

    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    iput-object p3, p0, Landroidx/transition/a0$a;->e:[I

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroidx/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public b(Landroidx/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public c(Landroidx/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public d(Landroidx/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public e(Landroidx/transition/Transition;)V
    .locals 2

    iget-object v0, p0, Landroidx/transition/a0$a;->b:Landroid/view/View;

    iget v1, p0, Landroidx/transition/a0$a;->h:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Landroidx/transition/a0$a;->b:Landroid/view/View;

    iget v1, p0, Landroidx/transition/a0$a;->i:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->b0(Landroidx/transition/Transition$f;)Landroidx/transition/Transition;

    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Landroidx/transition/a0$a;->e:[I

    if-nez p1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/transition/a0$a;->e:[I

    :cond_0
    iget-object p1, p0, Landroidx/transition/a0$a;->e:[I

    const/4 v0, 0x0

    iget v1, p0, Landroidx/transition/a0$a;->c:I

    int-to-float v1, v1

    iget-object v2, p0, Landroidx/transition/a0$a;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    aput v1, p1, v0

    iget-object p1, p0, Landroidx/transition/a0$a;->e:[I

    const/4 v0, 0x1

    iget v1, p0, Landroidx/transition/a0$a;->d:I

    int-to-float v1, v1

    iget-object v2, p0, Landroidx/transition/a0$a;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    aput v1, p1, v0

    iget-object p1, p0, Landroidx/transition/a0$a;->a:Landroid/view/View;

    sget v0, Landroidx/transition/p;->transition_position:I

    iget-object v1, p0, Landroidx/transition/a0$a;->e:[I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroidx/transition/a0$a;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    iput p1, p0, Landroidx/transition/a0$a;->f:F

    iget-object p1, p0, Landroidx/transition/a0$a;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    iput p1, p0, Landroidx/transition/a0$a;->g:F

    iget-object p1, p0, Landroidx/transition/a0$a;->b:Landroid/view/View;

    iget v0, p0, Landroidx/transition/a0$a;->h:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Landroidx/transition/a0$a;->b:Landroid/view/View;

    iget v0, p0, Landroidx/transition/a0$a;->i:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroidx/transition/a0$a;->b:Landroid/view/View;

    iget v0, p0, Landroidx/transition/a0$a;->f:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Landroidx/transition/a0$a;->b:Landroid/view/View;

    iget v0, p0, Landroidx/transition/a0$a;->g:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
