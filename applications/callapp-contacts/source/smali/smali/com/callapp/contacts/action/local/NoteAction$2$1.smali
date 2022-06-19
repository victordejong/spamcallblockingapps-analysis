.class Lcom/callapp/contacts/action/local/NoteAction$2$1;
.super Lcom/callapp/contacts/manager/popup/ResultPopup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/action/local/NoteAction$2;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/action/local/NoteAction$2;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/action/local/NoteAction$2;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/callapp/contacts/action/local/NoteAction$2$1;->a:Lcom/callapp/contacts/action/local/NoteAction$2;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/ResultPopup;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 3

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    iget-object v1, p0, Lcom/callapp/contacts/action/local/NoteAction$2$1;->a:Lcom/callapp/contacts/action/local/NoteAction$2;

    iget-object v1, v1, Lcom/callapp/contacts/action/local/NoteAction$2;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "contactId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    iget-object v1, p0, Lcom/callapp/contacts/action/local/NoteAction$2$1;->a:Lcom/callapp/contacts/action/local/NoteAction$2;

    iget-object v1, v1, Lcom/callapp/contacts/action/local/NoteAction$2;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/callapp/contacts/loader/device/NoteLoader;->a(J)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "note"

    .line 61
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/action/local/NoteAction$2$1;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 1

    const/4 p2, -0x1

    if-ne p3, p2, :cond_0

    const-string p2, "note"

    .line 69
    invoke-virtual {p4, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 70
    iget-object p3, p0, Lcom/callapp/contacts/action/local/NoteAction$2$1;->a:Lcom/callapp/contacts/action/local/NoteAction$2;

    iget-object p3, p3, Lcom/callapp/contacts/action/local/NoteAction$2;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p3}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object p3

    .line 71
    invoke-virtual {p3}, Lcom/callapp/contacts/model/contact/DeviceData;->getNote()[Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/callapp/contacts/loader/device/NoteLoader;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "@@@"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 73
    invoke-static {p4}, Lcom/callapp/contacts/loader/device/NoteLoader;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/callapp/contacts/model/contact/DeviceData;->setNote([Ljava/lang/String;)V

    .line 74
    iget-object p3, p0, Lcom/callapp/contacts/action/local/NoteAction$2$1;->a:Lcom/callapp/contacts/action/local/NoteAction$2;

    iget-object p3, p3, Lcom/callapp/contacts/action/local/NoteAction$2;->b:Lcom/callapp/contacts/model/contact/ContactData;

    sget-object p4, Lcom/callapp/contacts/model/contact/ContactField;->note:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p3, p4}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    .line 76
    new-instance p3, Lcom/callapp/contacts/action/local/NoteAction$2$1$1;

    invoke-direct {p3, p0, p2}, Lcom/callapp/contacts/action/local/NoteAction$2$1$1;-><init>(Lcom/callapp/contacts/action/local/NoteAction$2$1;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p3}, Lcom/callapp/contacts/action/local/NoteAction$2$1$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 85
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
