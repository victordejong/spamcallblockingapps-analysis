.class Lcom/callapp/contacts/activity/setup/SetupWizardActivity$11$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/setup/SetupWizardActivity$11;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$11;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity$11;)V
    .locals 0

    .line 617
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$11$2;->a:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/manager/popup/DialogPopup;)V
    .locals 0

    .line 620
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$11$2;->a:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$11;

    iget-object p1, p1, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$11;->a:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->finish()V

    return-void
.end method

.method public final b(Lcom/callapp/contacts/manager/popup/DialogPopup;)V
    .locals 0

    .line 625
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$11$2;->a:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$11;

    iget-object p1, p1, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$11;->a:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->finish()V

    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method
