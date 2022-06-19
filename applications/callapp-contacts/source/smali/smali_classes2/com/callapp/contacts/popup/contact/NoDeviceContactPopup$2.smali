.class Lcom/callapp/contacts/popup/contact/NoDeviceContactPopup$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/contact/NoDeviceContactPopup;->a(Landroid/app/Activity;Ljava/lang/String;)Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/contact/NoDeviceContactPopup;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/NoDeviceContactPopup;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/NoDeviceContactPopup$2;->a:Lcom/callapp/contacts/popup/contact/NoDeviceContactPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 2

    .line 55
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/NoDeviceContactPopup$2;->a:Lcom/callapp/contacts/popup/contact/NoDeviceContactPopup;

    new-instance v0, Lcom/callapp/contacts/popup/contact/NoDeviceContactPopup$2$1;

    iget-object v1, p1, Lcom/callapp/contacts/popup/contact/NoDeviceContactPopup;->c:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {v0, p0, v1}, Lcom/callapp/contacts/popup/contact/NoDeviceContactPopup$2$1;-><init>(Lcom/callapp/contacts/popup/contact/NoDeviceContactPopup$2;Lcom/callapp/contacts/model/contact/ContactData;)V

    iput-object v0, p1, Lcom/callapp/contacts/popup/contact/NoDeviceContactPopup;->d:Lcom/callapp/contacts/popup/contact/BaseContactPopup;

    return-void
.end method
