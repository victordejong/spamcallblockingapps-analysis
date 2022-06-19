.class final Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment$c;
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


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment$c;->a:Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 60
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/a;->a:Lorg/mistergroup/shouldianswer/utils/a;

    const-string v0, "ProtectionWizard.butActionOverlaySkip"

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/utils/a;->d(Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment$c;->a:Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment;->d()Lorg/mistergroup/shouldianswer/a/ce;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ce;->g:Landroid/widget/LinearLayout;

    const-string v0, "binding.llActionOverlay"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 62
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment$c;->a:Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment;->a(Z)V

    .line 63
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment$c;->a:Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment;->a(Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment;)V

    return-void
.end method
