.class final Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$d;
.super Ljava/lang/Object;
.source "ProtectionWizardActiveSetupFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$d;->a:Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 61
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/a;->a:Lorg/mistergroup/shouldianswer/utils/a;

    const-string v0, "ProtectionWizard.butActionDefaultPhoneApp"

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/utils/a;->d(Ljava/lang/String;)V

    .line 62
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_2

    .line 63
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$d;->a:Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    const-string v0, "role"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Landroid/app/role/RoleManager;

    const-string v0, "android.app.role.DIALER"

    .line 64
    invoke-virtual {p1, v0}, Landroid/app/role/RoleManager;->createRequestRoleIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "roleManager.createReques\u2026(RoleManager.ROLE_DIALER)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$d;->a:Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 63
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.app.role.RoleManager"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_2
    new-instance p1, Landroidx/appcompat/app/d$a;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$d;->a:Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->b(Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;)Lorg/mistergroup/shouldianswer/ui/a;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/d$a;-><init>(Landroid/content/Context;)V

    .line 68
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$d;->a:Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;

    const v1, 0x7f100144

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/d$a;->a(Ljava/lang/CharSequence;)Landroidx/appcompat/app/d$a;

    move-result-object p1

    .line 69
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$d;->a:Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;

    const v1, 0x7f100145

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/d$a;->b(Ljava/lang/CharSequence;)Landroidx/appcompat/app/d$a;

    move-result-object p1

    .line 70
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$d;->a:Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;

    const v1, 0x7f10019c

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$d$1;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$d$1;-><init>(Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$d;)V

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/d$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    move-result-object p1

    .line 71
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$d;->a:Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;

    const v1, 0x7f1000d3

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/d$a;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroidx/appcompat/app/d$a;->c()Landroidx/appcompat/app/d;

    :goto_0
    return-void
.end method
