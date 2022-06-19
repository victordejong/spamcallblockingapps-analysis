.class final Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment$d;
.super Ljava/lang/Object;
.source "WelcomeFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;->a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;

.field final synthetic b:Lorg/mistergroup/shouldianswer/ui/a;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;Lorg/mistergroup/shouldianswer/ui/a;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment$d;->a:Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment$d;->b:Lorg/mistergroup/shouldianswer/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 49
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment$d;->a:Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;->a(Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;)Lorg/mistergroup/shouldianswer/a/eq;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/eq;->e:Landroid/widget/CheckBox;

    const-string v0, "binding.checkReq1"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment$d;->a:Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;->a(Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;)Lorg/mistergroup/shouldianswer/a/eq;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/eq;->g:Landroid/widget/CheckBox;

    const-string v0, "binding.checkReq2"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 54
    :cond_0
    :try_start_0
    new-instance p1, Lorg/mistergroup/shouldianswer/utils/l;

    invoke-direct {p1}, Lorg/mistergroup/shouldianswer/utils/l;-><init>()V

    sget-object v0, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/utils/l;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 56
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 58
    :goto_0
    sget-object p1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/model/ai;->a(Z)V

    .line 59
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment$d;->b:Lorg/mistergroup/shouldianswer/ui/a;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/a;->finish()V

    .line 60
    sget-object p1, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainActivity;->l:Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainActivity$a;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment$d;->b:Lorg/mistergroup/shouldianswer/ui/a;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainActivity$a;->a(Landroid/content/Context;)V

    .line 61
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment$d;->b:Lorg/mistergroup/shouldianswer/ui/a;

    const v0, 0x7f010023

    const v1, 0x7f010024

    invoke-virtual {p1, v0, v1}, Lorg/mistergroup/shouldianswer/ui/a;->overridePendingTransition(II)V

    return-void

    .line 50
    :cond_1
    :goto_1
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment$d;->a:Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment$d;->a:Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;

    const v1, 0x7f100230

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
