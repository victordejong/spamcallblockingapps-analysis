.class Lcom/callapp/contacts/action/local/NoteAction$2$1$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/action/local/NoteAction$2$1;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callapp/contacts/action/local/NoteAction$2$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/action/local/NoteAction$2$1;Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/callapp/contacts/action/local/NoteAction$2$1$1;->b:Lcom/callapp/contacts/action/local/NoteAction$2$1;

    iput-object p2, p0, Lcom/callapp/contacts/action/local/NoteAction$2$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 4

    .line 79
    iget-object v0, p0, Lcom/callapp/contacts/action/local/NoteAction$2$1$1;->b:Lcom/callapp/contacts/action/local/NoteAction$2$1;

    iget-object v0, v0, Lcom/callapp/contacts/action/local/NoteAction$2$1;->a:Lcom/callapp/contacts/action/local/NoteAction$2;

    iget-object v0, v0, Lcom/callapp/contacts/action/local/NoteAction$2;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/callapp/contacts/action/local/NoteAction$2$1$1;->a:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/callapp/contacts/loader/device/NoteLoader;->a(JLjava/lang/String;I)V

    return-void
.end method
