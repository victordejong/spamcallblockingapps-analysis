.class public Lcarbon/widget/TextView$e;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcarbon/widget/TextView;->h(I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcarbon/widget/TextView;


# direct methods
.method public constructor <init>(Lcarbon/widget/TextView;I)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/TextView$e;->b:Lcarbon/widget/TextView;

    iput p2, p0, Lcarbon/widget/TextView$e;->a:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcarbon/widget/TextView$e;->b:Lcarbon/widget/TextView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcarbon/widget/TextView;->f(Lcarbon/widget/TextView;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcarbon/widget/TextView$e;->b:Lcarbon/widget/TextView;

    iget v1, p0, Lcarbon/widget/TextView$e;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcarbon/widget/TextView$e;->b:Lcarbon/widget/TextView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcarbon/widget/TextView;->f(Lcarbon/widget/TextView;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method
