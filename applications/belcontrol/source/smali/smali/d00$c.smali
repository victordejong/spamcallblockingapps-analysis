.class public Ld00$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Ld00;


# direct methods
.method public constructor <init>(Ld00;)V
    .locals 0

    iput-object p1, p0, Ld00$c;->b:Ld00;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Ld00$c;->a:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Ld00$c;->a:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean p1, p0, Ld00$c;->a:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Ld00$c;->a:Z

    return-void

    :cond_0
    iget-object p1, p0, Ld00$c;->b:Ld00;

    iget-object p1, p1, Ld00;->z:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    iget-object p1, p0, Ld00$c;->b:Ld00;

    iput v0, p1, Ld00;->A:I

    invoke-virtual {p1, v0}, Ld00;->s(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Ld00$c;->b:Ld00;

    const/4 v0, 0x2

    iput v0, p1, Ld00;->A:I

    invoke-virtual {p1}, Ld00;->p()V

    :goto_0
    return-void
.end method
