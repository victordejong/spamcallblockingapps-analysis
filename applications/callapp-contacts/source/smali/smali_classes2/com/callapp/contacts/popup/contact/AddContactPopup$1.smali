.class Lcom/callapp/contacts/popup/contact/AddContactPopup$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/contact/AddContactPopup;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/callapp/contacts/popup/contact/DialogList;

.field final synthetic c:Lcom/callapp/contacts/popup/contact/AddContactPopup;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/AddContactPopup;Landroid/app/Activity;Lcom/callapp/contacts/popup/contact/DialogList;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/AddContactPopup$1;->c:Lcom/callapp/contacts/popup/contact/AddContactPopup;

    iput-object p2, p0, Lcom/callapp/contacts/popup/contact/AddContactPopup$1;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/callapp/contacts/popup/contact/AddContactPopup$1;->b:Lcom/callapp/contacts/popup/contact/DialogList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRowClicked(I)V
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/AddContactPopup$1;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/app/Activity;)V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 42
    :pswitch_0
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/AddContactPopup$1;->c:Lcom/callapp/contacts/popup/contact/AddContactPopup;

    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/AddContactPopup$1;->a:Landroid/app/Activity;

    iget-object v1, p1, Lcom/callapp/contacts/popup/contact/AddContactPopup;->c:Lcom/callapp/contacts/model/contact/ContactData;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/callapp/contacts/popup/contact/AddContactPopup;->a(Lcom/callapp/contacts/popup/contact/AddContactPopup;Landroid/app/Activity;Lcom/callapp/contacts/model/contact/ContactData;Z)V

    goto :goto_0

    .line 38
    :pswitch_1
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/AddContactPopup$1;->c:Lcom/callapp/contacts/popup/contact/AddContactPopup;

    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/AddContactPopup$1;->a:Landroid/app/Activity;

    iget-object v1, p1, Lcom/callapp/contacts/popup/contact/AddContactPopup;->c:Lcom/callapp/contacts/model/contact/ContactData;

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/callapp/contacts/popup/contact/AddContactPopup;->a(Lcom/callapp/contacts/popup/contact/AddContactPopup;Landroid/app/Activity;Lcom/callapp/contacts/model/contact/ContactData;Z)V

    .line 45
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/AddContactPopup$1;->b:Lcom/callapp/contacts/popup/contact/DialogList;

    invoke-virtual {p1}, Lcom/callapp/contacts/popup/contact/DialogList;->dismiss()V

    return-void

    :pswitch_data_0
    .packed-switch 0x7f120298
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
