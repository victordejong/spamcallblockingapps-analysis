.class public final Lorg/mistergroup/shouldianswer/ui/settings/SettingsFragment;
.super Lorg/mistergroup/shouldianswer/ui/b;
.source "SettingsFragment.kt"


# instance fields
.field private b:Lorg/mistergroup/shouldianswer/a/dq;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
    .locals 2

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/SettingsFragment;->b:Lorg/mistergroup/shouldianswer/a/dq;

    const-string v0, "binding"

    if-nez p2, :cond_0

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/dq;->j:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/settings/SettingsFragment$a;

    invoke-direct {v1, p1}, Lorg/mistergroup/shouldianswer/ui/settings/SettingsFragment$a;-><init>(Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/SettingsFragment;->b:Lorg/mistergroup/shouldianswer/a/dq;

    if-nez p2, :cond_1

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/dq;->e:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/settings/SettingsFragment$b;

    invoke-direct {v1, p1}, Lorg/mistergroup/shouldianswer/ui/settings/SettingsFragment$b;-><init>(Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/SettingsFragment;->b:Lorg/mistergroup/shouldianswer/a/dq;

    if-nez p2, :cond_2

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/dq;->h:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/settings/SettingsFragment$c;

    invoke-direct {v1, p1}, Lorg/mistergroup/shouldianswer/ui/settings/SettingsFragment$c;-><init>(Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/SettingsFragment;->b:Lorg/mistergroup/shouldianswer/a/dq;

    if-nez p2, :cond_3

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_3
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/dq;->d:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/settings/SettingsFragment$d;

    invoke-direct {v1, p1}, Lorg/mistergroup/shouldianswer/ui/settings/SettingsFragment$d;-><init>(Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/SettingsFragment;->b:Lorg/mistergroup/shouldianswer/a/dq;

    if-nez p2, :cond_4

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_4
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/dq;->i:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/settings/SettingsFragment$e;

    invoke-direct {v1, p1}, Lorg/mistergroup/shouldianswer/ui/settings/SettingsFragment$e;-><init>(Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/SettingsFragment;->b:Lorg/mistergroup/shouldianswer/a/dq;

    if-nez p2, :cond_5

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_5
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/dq;->k:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/settings/SettingsFragment$f;

    invoke-direct {v1, p1}, Lorg/mistergroup/shouldianswer/ui/settings/SettingsFragment$f;-><init>(Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/SettingsFragment;->b:Lorg/mistergroup/shouldianswer/a/dq;

    if-nez p2, :cond_6

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_6
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/dq;->g:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/settings/SettingsFragment$g;

    invoke-direct {v1, p1}, Lorg/mistergroup/shouldianswer/ui/settings/SettingsFragment$g;-><init>(Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/SettingsFragment;->b:Lorg/mistergroup/shouldianswer/a/dq;

    if-nez p2, :cond_7

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_7
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/dq;->f:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/settings/SettingsFragment$h;

    invoke-direct {v0, p1}, Lorg/mistergroup/shouldianswer/ui/settings/SettingsFragment$h;-><init>(Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public c()Landroidx/appcompat/widget/Toolbar;
    .locals 2

    .line 44
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/SettingsFragment;->b:Lorg/mistergroup/shouldianswer/a/dq;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/dq;->c:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d0072

    const/4 v0, 0x0

    .line 28
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string p2, "DataBindingUtil.inflate(\u2026agment, container, false)"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/mistergroup/shouldianswer/a/dq;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/SettingsFragment;->b:Lorg/mistergroup/shouldianswer/a/dq;

    .line 29
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/SettingsFragment;->b:Lorg/mistergroup/shouldianswer/a/dq;

    if-nez p1, :cond_0

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/dq;->d()Landroid/view/View;

    move-result-object p1

    const-string p2, "binding.root"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
