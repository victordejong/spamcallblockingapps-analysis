.class Lcom/callapp/contacts/popup/contact/AddContactPopup;
.super Lcom/callapp/contacts/popup/contact/BaseContactPopup;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/callapp/contacts/popup/contact/BaseContactPopup;-><init>(Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/popup/contact/AddContactPopup;Landroid/app/Activity;Lcom/callapp/contacts/model/contact/ContactData;Z)V
    .locals 0

    .line 1053
    invoke-static {p2, p3}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Lcom/callapp/contacts/model/contact/ContactData;Z)Landroid/content/Intent;

    move-result-object p2

    .line 1054
    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/popup/contact/AddContactPopup;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected a(J)V
    .locals 0

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/popup/contact/AddContactPopup;->b(J)V

    return-void
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 4

    .line 24
    new-instance v0, Lcom/callapp/contacts/popup/contact/DialogList;

    const v1, 0x7f120085

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/callapp/contacts/popup/contact/DialogList;-><init>(Ljava/lang/String;)V

    .line 25
    sget-object v1, Lcom/callapp/contacts/manager/popup/Popup$DialogType;->withInset:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/popup/contact/DialogList;->setDialogType(Lcom/callapp/contacts/manager/popup/Popup$DialogType;)V

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    new-instance v2, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;

    const v3, 0x7f120298

    invoke-direct {v2, v3}, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v2, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;

    const v3, 0x7f120299

    invoke-direct {v2, v3}, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v2, Lcom/callapp/contacts/popup/contact/AdapterText;

    const v3, 0x7f0d00aa

    invoke-direct {v2, p1, v3, v1}, Lcom/callapp/contacts/popup/contact/AdapterText;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 31
    new-instance v1, Lcom/callapp/contacts/popup/contact/AddContactPopup$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/callapp/contacts/popup/contact/AddContactPopup$1;-><init>(Lcom/callapp/contacts/popup/contact/AddContactPopup;Landroid/app/Activity;Lcom/callapp/contacts/popup/contact/DialogList;)V

    invoke-virtual {v2, v1}, Lcom/callapp/contacts/popup/contact/AdapterText;->setListener(Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;)V

    .line 48
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/popup/contact/DialogList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 49
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    .line 59
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 61
    invoke-static {p4}, Lcom/callapp/contacts/popup/contact/AddContactPopup;->b(Landroid/content/Intent;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/popup/contact/AddContactPopup;->a(J)V

    return-void
.end method
