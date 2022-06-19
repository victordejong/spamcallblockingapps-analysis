.class Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1$2;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1$2;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1$2$1;->a:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1$2$1;->a:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1$2;

    iget-object v0, v0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1$2;->b:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1;->b:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->a(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1$2$1;->a:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1$2;

    iget-object v0, v0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1$2;->b:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1;->b:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->b(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)V

    .line 210
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1$2$1;->a:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1$2;

    iget-object v0, v0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1$2;->b:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1;->b:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->c(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1$2$1;->a:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1$2;

    iget-object v0, v0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1$2;->b:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1;->b:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->d(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)Z

    .line 212
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1$2$1;->a:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1$2;

    iget-object v0, v0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1$2;->b:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1;->b:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1$2$1;->a:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1$2;

    iget-object v1, v1, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1$2;->b:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1;->b:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->a(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
