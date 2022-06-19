.class public final Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment;
.super Lorg/mistergroup/shouldianswer/ui/b;
.source "ProtectionWizardPassiveSetupFragment.kt"


# instance fields
.field public b:Lorg/mistergroup/shouldianswer/a/ce;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/b;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment;->e()V

    return-void
.end method

.method private final e()V
    .locals 7

    .line 68
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/o;->m()Z

    move-result v0

    .line 69
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/utils/o;->l()Z

    move-result v1

    .line 71
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment;->b:Lorg/mistergroup/shouldianswer/a/ce;

    const-string v3, "binding"

    if-nez v2, :cond_0

    invoke-static {v3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/ce;->h:Landroid/widget/LinearLayout;

    const-string v4, "binding.llActionSystemPermissions"

    invoke-static {v2, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    move v6, v4

    goto :goto_0

    :cond_1
    move v6, v5

    :goto_0
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 72
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment;->b:Lorg/mistergroup/shouldianswer/a/ce;

    if-nez v2, :cond_2

    invoke-static {v3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2
    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/ce;->g:Landroid/widget/LinearLayout;

    const-string v3, "binding.llActionOverlay"

    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v4, v5

    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz v0, :cond_5

    if-nez v1, :cond_4

    .line 74
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment;->c:Z

    if-eqz v0, :cond_5

    .line 75
    :cond_4
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    sget-object v1, Lorg/mistergroup/shouldianswer/model/af;->c:Lorg/mistergroup/shouldianswer/model/af;

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/model/ai;->a(Lorg/mistergroup/shouldianswer/model/af;)V

    .line 76
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    sget-object v1, Lorg/mistergroup/shouldianswer/model/a;->c:Lorg/mistergroup/shouldianswer/model/a;

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/model/ai;->a(Lorg/mistergroup/shouldianswer/model/a;)V

    .line 77
    sget-object v0, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp;->c()V

    .line 78
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment;->a()Lorg/mistergroup/shouldianswer/ui/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/a;->finish()V

    .line 79
    sget-object v0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupDoneActivity;->l:Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupDoneActivity$a;

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment;->a()Lorg/mistergroup/shouldianswer/ui/a;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupDoneActivity$a;->a(Landroid/content/Context;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
    .locals 2

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment;->b:Lorg/mistergroup/shouldianswer/a/ce;

    const-string v0, "binding"

    if-nez p2, :cond_0

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/ce;->f:Landroid/widget/Button;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment$a;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment$a;-><init>(Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment;->b:Lorg/mistergroup/shouldianswer/a/ce;

    if-nez p2, :cond_1

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/ce;->d:Landroid/widget/Button;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment$b;

    invoke-direct {v1, p0, p1}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment$b;-><init>(Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment;Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment;->b:Lorg/mistergroup/shouldianswer/a/ce;

    if-nez p1, :cond_2

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ce;->e:Landroid/widget/Button;

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment$c;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment$c;-><init>(Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment;->c:Z

    return-void
.end method

.method public c()Landroidx/appcompat/widget/Toolbar;
    .locals 2

    .line 85
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment;->b:Lorg/mistergroup/shouldianswer/a/ce;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ce;->c:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method public final d()Lorg/mistergroup/shouldianswer/a/ce;
    .locals 2

    .line 27
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment;->b:Lorg/mistergroup/shouldianswer/a/ce;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d005c

    const/4 v0, 0x0

    .line 30
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string p2, "DataBindingUtil.inflate(\u2026agment, container, false)"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/mistergroup/shouldianswer/a/ce;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment;->b:Lorg/mistergroup/shouldianswer/a/ce;

    .line 31
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment;->b:Lorg/mistergroup/shouldianswer/a/ce;

    if-nez p1, :cond_0

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/ce;->d()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onResume()V
    .locals 0

    .line 89
    invoke-super {p0}, Lorg/mistergroup/shouldianswer/ui/b;->onResume()V

    .line 90
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment;->e()V

    return-void
.end method
