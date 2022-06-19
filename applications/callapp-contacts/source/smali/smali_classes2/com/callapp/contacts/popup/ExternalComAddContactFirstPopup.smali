.class public Lcom/callapp/contacts/popup/ExternalComAddContactFirstPopup;
.super Lcom/callapp/contacts/popup/contact/NoDeviceContactPopup;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/callapp/contacts/popup/contact/NoDeviceContactPopup;-><init>(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 16
    iput-object p2, p0, Lcom/callapp/contacts/popup/ExternalComAddContactFirstPopup;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 21
    iget-object v1, p0, Lcom/callapp/contacts/popup/ExternalComAddContactFirstPopup;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f120081

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v1

    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/popup/ExternalComAddContactFirstPopup;->a(Landroid/app/Activity;Ljava/lang/String;)Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method
