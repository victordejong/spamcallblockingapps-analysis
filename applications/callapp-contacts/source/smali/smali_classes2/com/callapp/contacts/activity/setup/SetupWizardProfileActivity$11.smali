.class Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)V
    .locals 0

    .line 653
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$11;->a:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 656
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$11;->a:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->k(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->a(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    .line 657
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$11$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$11$1;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$11;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->b(Ljava/lang/Runnable;)V

    return-void
.end method
