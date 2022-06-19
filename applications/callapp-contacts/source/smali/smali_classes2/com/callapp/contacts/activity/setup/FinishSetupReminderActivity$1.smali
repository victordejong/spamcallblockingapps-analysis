.class Lcom/callapp/contacts/activity/setup/FinishSetupReminderActivity$1;
.super Lcom/callapp/contacts/popup/contact/DialogSimpleWithContent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/setup/FinishSetupReminderActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/setup/FinishSetupReminderActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/setup/FinishSetupReminderActivity;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/FinishSetupReminderActivity$1;->a:Lcom/callapp/contacts/activity/setup/FinishSetupReminderActivity;

    invoke-direct {p0}, Lcom/callapp/contacts/popup/contact/DialogSimpleWithContent;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentResId()I
    .locals 1

    const v0, 0x7f0d00d4

    return v0
.end method

.method public getPositiveBtnText()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1204c3

    .line 67
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPositiveListener()Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;
    .locals 1

    .line 72
    new-instance v0, Lcom/callapp/contacts/activity/setup/FinishSetupReminderActivity$1$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/setup/FinishSetupReminderActivity$1$1;-><init>(Lcom/callapp/contacts/activity/setup/FinishSetupReminderActivity$1;)V

    return-object v0
.end method

.method public getTitleResId()I
    .locals 1

    const v0, 0x7f12021f

    return v0
.end method

.method public onDialogCancelled(Landroid/content/DialogInterface;)V
    .locals 0

    .line 88
    invoke-super {p0, p1}, Lcom/callapp/contacts/popup/contact/DialogSimpleWithContent;->onDialogCancelled(Landroid/content/DialogInterface;)V

    .line 89
    invoke-static {}, Lcom/callapp/contacts/activity/setup/FinishSetupReminderActivity;->a()V

    .line 90
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/FinishSetupReminderActivity$1;->a:Lcom/callapp/contacts/activity/setup/FinishSetupReminderActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/setup/FinishSetupReminderActivity;->finish()V

    return-void
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/setup/FinishSetupReminderActivity$1;->getContentResId()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
