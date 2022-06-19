.class Lcom/callapp/contacts/activity/setup/FinishSetupReminderActivity$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/setup/FinishSetupReminderActivity$1;->getPositiveListener()Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/setup/FinishSetupReminderActivity$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/setup/FinishSetupReminderActivity$1;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/FinishSetupReminderActivity$1$1;->a:Lcom/callapp/contacts/activity/setup/FinishSetupReminderActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 2

    .line 75
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/FinishSetupReminderActivity$1$1;->a:Lcom/callapp/contacts/activity/setup/FinishSetupReminderActivity$1;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/setup/FinishSetupReminderActivity$1;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/app/Activity;)V

    .line 76
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 77
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "CAME_FROM_SETUP_REMINDER_KEY"

    const/4 v1, 0x1

    .line 78
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 79
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 80
    invoke-static {}, Lcom/callapp/contacts/activity/setup/FinishSetupReminderActivity;->a()V

    .line 81
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/FinishSetupReminderActivity$1$1;->a:Lcom/callapp/contacts/activity/setup/FinishSetupReminderActivity$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/setup/FinishSetupReminderActivity$1;->a:Lcom/callapp/contacts/activity/setup/FinishSetupReminderActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/setup/FinishSetupReminderActivity;->finish()V

    return-void
.end method
