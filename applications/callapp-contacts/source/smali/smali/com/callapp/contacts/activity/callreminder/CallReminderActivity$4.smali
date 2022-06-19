.class Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/ActivityResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$4;->a:Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    const/4 p1, -0x1

    if-ne p3, p1, :cond_0

    .line 150
    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 151
    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "contactId"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    .line 152
    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    const-string p4, "phone"

    invoke-virtual {p3, p4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 153
    new-instance p4, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$4$1;

    invoke-direct {p4, p0, p3, p1, p2}, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$4$1;-><init>(Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$4;Ljava/lang/String;J)V

    .line 165
    invoke-virtual {p4}, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$4$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    :cond_0
    return-void
.end method
