.class final Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment$a;
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

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment$a;->a:Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 36
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/a;->a:Lorg/mistergroup/shouldianswer/utils/a;

    const-string v0, "ProtectionWizard.butSystemPermissions"

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/utils/a;->d(Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment$a;->a:Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment;

    const-string v0, "android.permission.READ_CALL_LOG"

    const-string v1, "android.permission.WRITE_CALL_LOG"

    const-string v2, "android.permission.CALL_PHONE"

    const-string v3, "android.permission.READ_PHONE_STATE"

    const-string v4, "android.permission.PROCESS_OUTGOING_CALLS"

    const-string v5, "android.permission.READ_CONTACTS"

    .line 43
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 37
    invoke-virtual {p1, v0, v1}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method
