.class Lcom/callapp/contacts/activity/setup/SetupWizardActivity$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/servermessage/ValidateClientTask$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/setup/SetupWizardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)V
    .locals 0

    .line 654
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$12;->a:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/common/model/json/JSONClientValidationResponse;)V
    .locals 2

    .line 658
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONClientValidationResponse;->getMessageType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 659
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONClientValidationResponse;->getMessageType()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 660
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$12;->a:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    new-instance v0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$12$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$12$1;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity$12;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
