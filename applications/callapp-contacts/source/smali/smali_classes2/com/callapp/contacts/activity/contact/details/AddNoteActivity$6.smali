.class Lcom/callapp/contacts/activity/contact/details/AddNoteActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/contact/DialogList;

.field final synthetic b:Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;

.field final synthetic c:Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;Lcom/callapp/contacts/popup/contact/DialogList;Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity$6;->c:Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity$6;->a:Lcom/callapp/contacts/popup/contact/DialogList;

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity$6;->b:Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRowClicked(I)V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity$6;->c:Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;

    invoke-static {v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/app/Activity;)V

    .line 228
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity$6;->a:Lcom/callapp/contacts/popup/contact/DialogList;

    invoke-virtual {v0}, Lcom/callapp/contacts/popup/contact/DialogList;->dismiss()V

    .line 230
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity$6;->b:Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;

    if-eqz v0, :cond_0

    .line 231
    invoke-interface {v0, p1}, Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;->onRowClicked(I)V

    :cond_0
    return-void
.end method
