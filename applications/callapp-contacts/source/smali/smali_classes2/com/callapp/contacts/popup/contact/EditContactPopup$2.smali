.class Lcom/callapp/contacts/popup/contact/EditContactPopup$2;
.super Lcom/callapp/contacts/popup/contact/NoDeviceContactPopup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/contact/EditContactPopup;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/contact/EditContactPopup;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/EditContactPopup;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/EditContactPopup$2;->a:Lcom/callapp/contacts/popup/contact/EditContactPopup;

    invoke-direct {p0, p2}, Lcom/callapp/contacts/popup/contact/NoDeviceContactPopup;-><init>(Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/EditContactPopup$2;->a:Lcom/callapp/contacts/popup/contact/EditContactPopup;

    invoke-virtual {v0, p1, p2}, Lcom/callapp/contacts/popup/contact/EditContactPopup;->a(J)V

    return-void
.end method
