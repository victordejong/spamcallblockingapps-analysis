.class public Lcom/kedlin/cca/ui/startwizard/WizardView$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kedlin/cca/ui/startwizard/WizardView;->b(Lcom/kedlin/cca/ui/Slide;ZLandroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Lcom/kedlin/cca/ui/Slide;

.field public final synthetic c:Lcom/kedlin/cca/ui/startwizard/WizardView;


# direct methods
.method public constructor <init>(Lcom/kedlin/cca/ui/startwizard/WizardView;Landroid/view/ViewGroup;Lcom/kedlin/cca/ui/Slide;)V
    .locals 0

    iput-object p1, p0, Lcom/kedlin/cca/ui/startwizard/WizardView$c;->c:Lcom/kedlin/cca/ui/startwizard/WizardView;

    iput-object p2, p0, Lcom/kedlin/cca/ui/startwizard/WizardView$c;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/kedlin/cca/ui/startwizard/WizardView$c;->b:Lcom/kedlin/cca/ui/Slide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    iget-object p1, p0, Lcom/kedlin/cca/ui/startwizard/WizardView$c;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/kedlin/cca/ui/startwizard/WizardView$c;->b:Lcom/kedlin/cca/ui/Slide;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/kedlin/cca/ui/startwizard/WizardView$c;->c:Lcom/kedlin/cca/ui/startwizard/WizardView;

    invoke-static {p1}, Lcom/kedlin/cca/ui/startwizard/WizardView;->a(Lcom/kedlin/cca/ui/startwizard/WizardView;)Lcom/kedlin/cca/ui/Slide;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
