.class Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1;Ljava/lang/String;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1$2;->b:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1;

    iput-object p2, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1$2;->b:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1;->a:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->b(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1$2;->b:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1;->a:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->b(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
