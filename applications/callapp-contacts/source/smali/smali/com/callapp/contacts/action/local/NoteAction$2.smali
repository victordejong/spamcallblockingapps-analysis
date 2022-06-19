.class final Lcom/callapp/contacts/action/local/NoteAction$2;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/action/local/NoteAction;->c(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/callapp/contacts/model/contact/ContactData;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/callapp/contacts/action/local/NoteAction$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/callapp/contacts/action/local/NoteAction$2;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 4

    .line 53
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/action/local/NoteAction$2;->a:Landroid/content/Context;

    new-instance v2, Lcom/callapp/contacts/action/local/NoteAction$2$1;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/action/local/NoteAction$2$1;-><init>(Lcom/callapp/contacts/action/local/NoteAction$2;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/ResultPopup;I)V

    return-void
.end method
