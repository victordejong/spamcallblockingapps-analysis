.class Lcom/callapp/contacts/action/local/NoteAction$1;
.super Lcom/callapp/contacts/popup/contact/NoDeviceContactPopup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/action/local/NoteAction;->b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/callapp/contacts/action/local/NoteAction;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/action/local/NoteAction;Lcom/callapp/contacts/model/contact/ContactData;Landroid/content/Context;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/callapp/contacts/action/local/NoteAction$1;->b:Lcom/callapp/contacts/action/local/NoteAction;

    iput-object p3, p0, Lcom/callapp/contacts/action/local/NoteAction$1;->a:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/callapp/contacts/popup/contact/NoDeviceContactPopup;-><init>(Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    .line 35
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/popup/contact/NoDeviceContactPopup;->a(J)V

    .line 36
    iget-object p1, p0, Lcom/callapp/contacts/action/local/NoteAction$1;->c:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->assertDeviceDataExist()V

    .line 37
    iget-object p1, p0, Lcom/callapp/contacts/action/local/NoteAction$1;->a:Landroid/content/Context;

    iget-object p2, p0, Lcom/callapp/contacts/action/local/NoteAction$1;->c:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-static {p1, p2}, Lcom/callapp/contacts/action/local/NoteAction;->b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method
