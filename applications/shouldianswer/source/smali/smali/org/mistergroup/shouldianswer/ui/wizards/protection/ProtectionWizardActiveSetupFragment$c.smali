.class final Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$c;
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

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$c;->a:Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 54
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/a;->a:Lorg/mistergroup/shouldianswer/utils/a;

    const-string v0, "ProtectionWizard.checkPopup"

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/utils/a;->d(Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$c;->a:Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->d()Lorg/mistergroup/shouldianswer/a/bs;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/bs;->l:Landroid/widget/RadioButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 56
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$c;->a:Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;

    sget-object v0, Lorg/mistergroup/shouldianswer/model/a;->c:Lorg/mistergroup/shouldianswer/model/a;

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->a(Lorg/mistergroup/shouldianswer/model/a;)V

    .line 57
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$c;->a:Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->a(Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;)V

    return-void
.end method
