.class Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$11$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$11;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$11;)V
    .locals 0

    .line 657
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$11$1;->a:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 660
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$11$1;->a:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$11;

    iget-object v0, v0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$11;->a:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    new-instance v1, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-direct {v1}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;-><init>()V

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->a(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    .line 661
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$11$1;->a:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$11;

    iget-object v0, v0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$11;->a:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->k(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setCancelable(Z)V

    .line 662
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$11$1;->a:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$11;

    iget-object v0, v0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$11;->a:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->k(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    move-result-object v0

    const v1, 0x7f120537

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 664
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$11$1;->a:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$11;

    iget-object v1, v1, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$11;->a:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    iget-object v2, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$11$1;->a:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$11;

    iget-object v2, v2, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$11;->a:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    invoke-static {v2}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->k(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method
