.class public final Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;
.super Lorg/mistergroup/shouldianswer/ui/b;
.source "WelcomeFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment$a;
    }
.end annotation


# instance fields
.field private b:Lorg/mistergroup/shouldianswer/a/eq;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/b;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;)Lorg/mistergroup/shouldianswer/a/eq;
    .locals 1

    .line 24
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;->b:Lorg/mistergroup/shouldianswer/a/eq;

    if-nez p0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method


# virtual methods
.method public a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
    .locals 3

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/a;->j()Landroidx/fragment/app/h;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment$a;

    const-string v1, "it"

    invoke-static {p2, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p2}, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment$a;-><init>(Landroidx/fragment/app/h;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 36
    :goto_0
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;->b:Lorg/mistergroup/shouldianswer/a/eq;

    const-string v1, "binding"

    if-nez p2, :cond_1

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/eq;->k:Landroidx/viewpager/widget/ViewPager;

    const-string v2, "binding.viewPager"

    invoke-static {p2, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/viewpager/widget/a;

    invoke-virtual {p2, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    .line 37
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;->b:Lorg/mistergroup/shouldianswer/a/eq;

    if-nez p2, :cond_2

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/eq;->k:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment$b;

    invoke-direct {v0, p0}, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment$b;-><init>(Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;)V

    check-cast v0, Landroidx/viewpager/widget/ViewPager$f;

    invoke-virtual {p2, v0}, Landroidx/viewpager/widget/ViewPager;->a(Landroidx/viewpager/widget/ViewPager$f;)V

    .line 46
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;->b:Lorg/mistergroup/shouldianswer/a/eq;

    if-nez p2, :cond_3

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_3
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/eq;->j:Lcom/google/android/material/tabs/TabLayout;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;->b:Lorg/mistergroup/shouldianswer/a/eq;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_4
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/eq;->k:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2, v0}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 47
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;->b:Lorg/mistergroup/shouldianswer/a/eq;

    if-nez p2, :cond_5

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_5
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/eq;->d:Landroid/widget/Button;

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment$c;

    invoke-direct {v0, p0}, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment$c;-><init>(Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;->b:Lorg/mistergroup/shouldianswer/a/eq;

    if-nez p2, :cond_6

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_6
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/eq;->c:Landroid/widget/Button;

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment$d;

    invoke-direct {v0, p0, p1}, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment$d;-><init>(Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;->b:Lorg/mistergroup/shouldianswer/a/eq;

    if-nez p1, :cond_7

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_7
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/eq;->c:Landroid/widget/Button;

    const-string p2, "binding.butGetStarted"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 64
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;->b:Lorg/mistergroup/shouldianswer/a/eq;

    if-nez p1, :cond_8

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_8
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/eq;->h:Landroid/widget/LinearLayout;

    const-string v0, "binding.llChecks"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 66
    new-instance p1, Lorg/mistergroup/shouldianswer/utils/aa;

    invoke-direct {p1}, Lorg/mistergroup/shouldianswer/utils/aa;-><init>()V

    .line 67
    new-instance p2, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment$e;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment$e;-><init>(Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;)V

    check-cast p2, Lkotlin/e/a/b;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/utils/aa;->a(Lkotlin/e/a/b;)V

    .line 78
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;->b:Lorg/mistergroup/shouldianswer/a/eq;

    if-nez p2, :cond_9

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_9
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/eq;->f:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v0, "binding.checkReq1Text"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f10006e

    invoke-virtual {p0, v0}, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.activ\u2026ting_tv_signin_agreement)"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Lorg/mistergroup/shouldianswer/utils/aa;->a(Landroid/widget/TextView;Ljava/lang/String;)V

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

    const p3, 0x7f0d0080

    const/4 v0, 0x0

    .line 30
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string p2, "DataBindingUtil.inflate(\u2026agment, container, false)"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/mistergroup/shouldianswer/a/eq;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;->b:Lorg/mistergroup/shouldianswer/a/eq;

    .line 31
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;->b:Lorg/mistergroup/shouldianswer/a/eq;

    if-nez p1, :cond_0

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/eq;->d()Landroid/view/View;

    move-result-object p1

    const-string p2, "binding.root"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
