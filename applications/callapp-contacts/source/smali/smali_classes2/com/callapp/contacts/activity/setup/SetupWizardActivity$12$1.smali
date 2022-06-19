.class Lcom/callapp/contacts/activity/setup/SetupWizardActivity$12$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/setup/SetupWizardActivity$12;->a(Lcom/callapp/common/model/json/JSONClientValidationResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$12;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity$12;)V
    .locals 0

    .line 660
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$12$1;->a:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 663
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$12$1;->a:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$12;

    iget-object v0, v0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$12;->a:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->finish()V

    return-void
.end method
