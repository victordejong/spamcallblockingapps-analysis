.class final Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$e;
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

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$e;->a:Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 77
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/a;->a:Lorg/mistergroup/shouldianswer/utils/a;

    const-string v0, "ProtectionWizard.butActionCallScreening"

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/utils/a;->d(Ljava/lang/String;)V

    .line 78
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_1

    .line 79
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$e;->a:Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->b(Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;)Lorg/mistergroup/shouldianswer/ui/a;

    move-result-object p1

    const-string v0, "role"

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/ui/a;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/app/role/RoleManager;

    const-string v0, "android.app.role.CALL_SCREENING"

    .line 80
    invoke-virtual {p1, v0}, Landroid/app/role/RoleManager;->createRequestRoleIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "roleManager.createReques\u2026ager.ROLE_CALL_SCREENING)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$e;->a:Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 79
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.app.role.RoleManager"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
