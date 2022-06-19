.class public final Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment;
.super Lorg/mistergroup/shouldianswer/ui/b;
.source "ProtectionWizardMainFragment.kt"


# instance fields
.field public b:Lorg/mistergroup/shouldianswer/a/bw;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/b;-><init>()V

    return-void
.end method

.method private final a(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V
    .locals 3

    .line 36
    new-instance v0, Lorg/mistergroup/shouldianswer/utils/b;

    check-cast p1, Landroid/view/View;

    const v1, 0x7f01001f

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lorg/mistergroup/shouldianswer/utils/b;-><init>(Landroid/view/View;II)V

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/b;->a()V

    .line 38
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 39
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment;->a(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
    .locals 2

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment;->b:Lorg/mistergroup/shouldianswer/a/bw;

    const-string v0, "binding"

    if-nez p2, :cond_0

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/bw;->c:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$a;

    invoke-direct {v1, p0, p1}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$a;-><init>(Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment;Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment;->b:Lorg/mistergroup/shouldianswer/a/bw;

    if-nez p2, :cond_1

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/bw;->e:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$b;

    invoke-direct {v1, p0, p1}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$b;-><init>(Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment;Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment;->b:Lorg/mistergroup/shouldianswer/a/bw;

    if-nez p2, :cond_2

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/bw;->d:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$c;

    invoke-direct {v1, p0, p1}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$c;-><init>(Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment;Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment;->b:Lorg/mistergroup/shouldianswer/a/bw;

    if-nez p1, :cond_3

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_3
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/bw;->c:Landroidx/appcompat/widget/AppCompatButton;

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$d;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$d;-><init>(Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment;)V

    check-cast p2, Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 95
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment;->b:Lorg/mistergroup/shouldianswer/a/bw;

    if-nez p1, :cond_4

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_4
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/bw;->e:Landroidx/appcompat/widget/AppCompatButton;

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$e;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$e;-><init>(Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment;)V

    check-cast p2, Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 103
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment;->b:Lorg/mistergroup/shouldianswer/a/bw;

    if-nez p1, :cond_5

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_5
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/bw;->d:Landroidx/appcompat/widget/AppCompatButton;

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$f;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$f;-><init>(Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment;)V

    check-cast p2, Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public c()Landroidx/appcompat/widget/Toolbar;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Lorg/mistergroup/shouldianswer/a/bw;
    .locals 2

    .line 29
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment;->b:Lorg/mistergroup/shouldianswer/a/bw;

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

    const p3, 0x7f0d0058

    const/4 v0, 0x0

    .line 31
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string p2, "DataBindingUtil.inflate(\u2026agment, container, false)"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/mistergroup/shouldianswer/a/bw;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment;->b:Lorg/mistergroup/shouldianswer/a/bw;

    .line 32
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment;->b:Lorg/mistergroup/shouldianswer/a/bw;

    if-nez p1, :cond_0

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/bw;->d()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onResume()V
    .locals 4

    .line 113
    invoke-super {p0}, Lorg/mistergroup/shouldianswer/ui/b;->onResume()V

    .line 114
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment;->b:Lorg/mistergroup/shouldianswer/a/bw;

    const-string v1, "binding"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/bw;->f:Landroid/widget/FrameLayout;

    const-string v2, "binding.flActiveProtection"

    invoke-static {v0, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 115
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment;->b:Lorg/mistergroup/shouldianswer/a/bw;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/bw;->h:Landroid/widget/FrameLayout;

    const-string v3, "binding.flPassiveProtection"

    invoke-static {v0, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 116
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment;->b:Lorg/mistergroup/shouldianswer/a/bw;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/bw;->g:Landroid/widget/FrameLayout;

    const-string v1, "binding.flNoProtection"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method
