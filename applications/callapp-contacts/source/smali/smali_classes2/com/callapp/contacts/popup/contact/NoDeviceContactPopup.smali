.class public Lcom/callapp/contacts/popup/contact/NoDeviceContactPopup;
.super Lcom/callapp/contacts/popup/contact/BaseContactPopup;
.source "SourceFile"


# instance fields
.field protected d:Lcom/callapp/contacts/popup/contact/BaseContactPopup;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/callapp/contacts/popup/contact/BaseContactPopup;-><init>(Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Ljava/lang/String;)Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;
    .locals 8

    .line 28
    new-instance v7, Lcom/callapp/contacts/popup/contact/NoDeviceContactPopup$1;

    invoke-direct {v7, p0, p1}, Lcom/callapp/contacts/popup/contact/NoDeviceContactPopup$1;-><init>(Lcom/callapp/contacts/popup/contact/NoDeviceContactPopup;Landroid/app/Activity;)V

    .line 50
    new-instance p1, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    const v0, 0x7f12007d

    .line 51
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/callapp/contacts/popup/contact/NoDeviceContactPopup$2;

    invoke-direct {v5, p0}, Lcom/callapp/contacts/popup/contact/NoDeviceContactPopup$2;-><init>(Lcom/callapp/contacts/popup/contact/NoDeviceContactPopup;)V

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;)V

    return-object p1
.end method

.method public a(J)V
    .locals 0

    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/popup/contact/NoDeviceContactPopup;->b(J)V

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 2

    .line 22
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    const v1, 0x7f1202d2

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/callapp/contacts/popup/contact/NoDeviceContactPopup;->a(Landroid/app/Activity;Ljava/lang/String;)Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/NoDeviceContactPopup;->d:Lcom/callapp/contacts/popup/contact/BaseContactPopup;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/callapp/contacts/popup/contact/BaseContactPopup;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method
