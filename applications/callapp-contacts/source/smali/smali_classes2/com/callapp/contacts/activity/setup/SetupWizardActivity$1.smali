.class Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/task/Task$DoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;Landroid/os/Bundle;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1;->b:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 3

    .line 187
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1$1;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(ZLcom/callapp/contacts/manager/task/Task$DoneListener;)Lcom/google/android/gms/tasks/h;

    move-result-object v0

    .line 199
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1$2;

    invoke-direct {v2, p0, v0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1$2;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1;Lcom/google/android/gms/tasks/h;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    return-void
.end method
