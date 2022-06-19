.class public final Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment$b;
.super Ljava/lang/Object;
.source "WelcomeFragment.kt"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;->a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment$b;->a:Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 5

    .line 40
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment$b;->a:Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;->a(Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;)Lorg/mistergroup/shouldianswer/a/eq;

    move-result-object v0

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/eq;->d:Landroid/widget/Button;

    const-string v1, "binding.butNext"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 41
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment$b;->a:Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;->a(Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;)Lorg/mistergroup/shouldianswer/a/eq;

    move-result-object v0

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/eq;->c:Landroid/widget/Button;

    const-string v4, "binding.butGetStarted"

    invoke-static {v0, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p1, v3, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 42
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment$b;->a:Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;->a(Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;)Lorg/mistergroup/shouldianswer/a/eq;

    move-result-object v0

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/eq;->h:Landroid/widget/LinearLayout;

    const-string v4, "binding.llChecks"

    invoke-static {v0, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p1, v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
