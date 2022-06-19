.class Lcom/callapp/contacts/action/shared/ShareCameraAction$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/SmsUtils$SelectNumberListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/action/shared/ShareCameraAction;->b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/net/Uri;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/callapp/contacts/action/shared/ShareCameraAction;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/action/shared/ShareCameraAction;Lcom/callapp/contacts/model/contact/ContactData;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/callapp/contacts/action/shared/ShareCameraAction$1;->e:Lcom/callapp/contacts/action/shared/ShareCameraAction;

    iput-object p2, p0, Lcom/callapp/contacts/action/shared/ShareCameraAction$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    iput-object p3, p0, Lcom/callapp/contacts/action/shared/ShareCameraAction$1;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/callapp/contacts/action/shared/ShareCameraAction$1;->c:Landroid/net/Uri;

    iput-object p5, p0, Lcom/callapp/contacts/action/shared/ShareCameraAction$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/framework/phone/Phone;)V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/callapp/contacts/action/shared/ShareCameraAction$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->setPhone(Lcom/callapp/framework/phone/Phone;)Z

    .line 76
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/action/shared/ShareCameraAction$1;->b:Landroid/content/Context;

    new-instance v1, Lcom/callapp/contacts/action/shared/ShareCameraAction$1$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/action/shared/ShareCameraAction$1$1;-><init>(Lcom/callapp/contacts/action/shared/ShareCameraAction$1;)V

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/ResultPopup;)V

    return-void
.end method
