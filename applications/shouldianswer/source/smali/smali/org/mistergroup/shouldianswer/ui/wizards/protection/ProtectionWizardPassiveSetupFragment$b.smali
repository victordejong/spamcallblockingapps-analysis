.class final Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment$b;
.super Ljava/lang/Object;
.source "ProtectionWizardPassiveSetupFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment;->a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment;

.field final synthetic b:Lorg/mistergroup/shouldianswer/ui/a;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment;Lorg/mistergroup/shouldianswer/ui/a;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment$b;->a:Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment$b;->b:Lorg/mistergroup/shouldianswer/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 46
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/a;->a:Lorg/mistergroup/shouldianswer/utils/a;

    const-string v0, "ProtectionWizard.butActionOverlay"

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/utils/a;->d(Ljava/lang/String;)V

    .line 48
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment$b;->b:Lorg/mistergroup/shouldianswer/ui/a;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/ui/a;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 48
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 52
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment$b;->a:Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment;

    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 54
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 55
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment$b;->b:Lorg/mistergroup/shouldianswer/ui/a;

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment$b;->a:Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment;

    const v1, 0x7f1000b0

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
