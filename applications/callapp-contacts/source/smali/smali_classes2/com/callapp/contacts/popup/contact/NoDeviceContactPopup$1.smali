.class Lcom/callapp/contacts/popup/contact/NoDeviceContactPopup$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/contact/NoDeviceContactPopup;->a(Landroid/app/Activity;Ljava/lang/String;)Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/callapp/contacts/popup/contact/NoDeviceContactPopup;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/NoDeviceContactPopup;Landroid/app/Activity;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/NoDeviceContactPopup$1;->b:Lcom/callapp/contacts/popup/contact/NoDeviceContactPopup;

    iput-object p2, p0, Lcom/callapp/contacts/popup/contact/NoDeviceContactPopup$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/manager/popup/DialogPopup;)V
    .locals 1

    .line 31
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/NoDeviceContactPopup$1;->b:Lcom/callapp/contacts/popup/contact/NoDeviceContactPopup;

    iget-object p1, p1, Lcom/callapp/contacts/popup/contact/NoDeviceContactPopup;->d:Lcom/callapp/contacts/popup/contact/BaseContactPopup;

    if-nez p1, :cond_0

    .line 32
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/NoDeviceContactPopup$1;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 34
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/NoDeviceContactPopup$1;->b:Lcom/callapp/contacts/popup/contact/NoDeviceContactPopup;

    iget-object p1, p1, Lcom/callapp/contacts/popup/contact/NoDeviceContactPopup;->d:Lcom/callapp/contacts/popup/contact/BaseContactPopup;

    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/NoDeviceContactPopup$1;->a:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/popup/contact/BaseContactPopup;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public final b(Lcom/callapp/contacts/manager/popup/DialogPopup;)V
    .locals 0

    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method
