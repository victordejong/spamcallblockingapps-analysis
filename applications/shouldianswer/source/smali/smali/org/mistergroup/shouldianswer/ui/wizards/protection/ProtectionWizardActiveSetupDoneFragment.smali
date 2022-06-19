.class public final Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupDoneFragment;
.super Lorg/mistergroup/shouldianswer/ui/b;
.source "ProtectionWizardActiveSetupDoneFragment.kt"


# instance fields
.field public b:Lorg/mistergroup/shouldianswer/a/bq;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
    .locals 1

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupDoneFragment;->b:Lorg/mistergroup/shouldianswer/a/bq;

    if-nez p2, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/bq;->c:Landroid/widget/Button;

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupDoneFragment$a;

    invoke-direct {v0, p1}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupDoneFragment$a;-><init>(Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public c()Landroidx/appcompat/widget/Toolbar;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d0055

    const/4 v0, 0x0

    .line 19
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string p2, "DataBindingUtil.inflate(\u2026agment, container, false)"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/mistergroup/shouldianswer/a/bq;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupDoneFragment;->b:Lorg/mistergroup/shouldianswer/a/bq;

    .line 20
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupDoneFragment;->b:Lorg/mistergroup/shouldianswer/a/bq;

    if-nez p1, :cond_0

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/bq;->d()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
