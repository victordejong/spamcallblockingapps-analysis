.class final Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment$e;
.super Lkotlin/e/b/i;
.source "WelcomeFragment.kt"

# interfaces
.implements Lkotlin/e/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;->a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/e/b/i;",
        "Lkotlin/e/a/b<",
        "Ljava/lang/String;",
        "Lkotlin/o;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment$e;->a:Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/e/b/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment$e;->a(Ljava/lang/String;)V

    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v1, "1"

    invoke-static {p1, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "WelcomeFragment.butTermsClick"

    goto :goto_0

    :cond_0
    const-string v2, "WelcomeFragment.butPrivacyClick"

    :goto_0
    invoke-virtual {v0, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Ljava/lang/String;)V

    .line 69
    invoke-static {p1, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "getActivity()!!"

    if-eqz v0, :cond_2

    .line 70
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/ac;->a:Lorg/mistergroup/shouldianswer/utils/ac;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment$e;->a:Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_1
    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/Context;

    sget-object v1, Lorg/mistergroup/shouldianswer/utils/ad;->a:Lorg/mistergroup/shouldianswer/utils/ad;

    sget-object v2, Lorg/mistergroup/shouldianswer/utils/ad;->a:Lorg/mistergroup/shouldianswer/utils/ad;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/utils/ad;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/mistergroup/shouldianswer/utils/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "2"

    .line 72
    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 73
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/ac;->a:Lorg/mistergroup/shouldianswer/utils/ac;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment$e;->a:Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_3
    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/Context;

    sget-object v1, Lorg/mistergroup/shouldianswer/utils/ad;->a:Lorg/mistergroup/shouldianswer/utils/ad;

    sget-object v2, Lorg/mistergroup/shouldianswer/utils/ad;->a:Lorg/mistergroup/shouldianswer/utils/ad;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/utils/ad;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/mistergroup/shouldianswer/utils/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 75
    :cond_4
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment$e;->a:Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;->a(Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;)Lorg/mistergroup/shouldianswer/a/eq;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/eq;->e:Landroid/widget/CheckBox;

    const-string v0, "binding.checkReq1"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment$e;->a:Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;->a(Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;)Lorg/mistergroup/shouldianswer/a/eq;

    move-result-object v1

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/eq;->e:Landroid/widget/CheckBox;

    invoke-static {v1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1
    return-void
.end method
