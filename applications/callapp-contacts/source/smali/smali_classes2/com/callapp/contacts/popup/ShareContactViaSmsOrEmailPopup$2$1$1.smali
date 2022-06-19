.class Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$2$1$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$2$1;->a(Lcom/callapp/framework/phone/Phone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/framework/phone/Phone;

.field final synthetic b:Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$2$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$2$1;Lcom/callapp/framework/phone/Phone;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$2$1$1;->b:Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$2$1;

    iput-object p2, p0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$2$1$1;->a:Lcom/callapp/framework/phone/Phone;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 4

    .line 132
    iget-object v0, p0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$2$1$1;->b:Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$2$1;

    iget-object v0, v0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$2$1;->a:Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$2;

    iget-object v0, v0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$2;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$2$1$1;->a:Lcom/callapp/framework/phone/Phone;

    iget-object v2, p0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$2$1$1;->b:Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$2$1;

    iget-object v2, v2, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$2$1;->a:Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$2;

    iget-object v2, v2, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$2;->c:Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;->a(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/util/SmsUtils;->b(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$2$1$1;->b:Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$2$1;

    iget-object v0, v0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$2$1;->a:Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$2;

    iget-object v0, v0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$2;->c:Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;

    invoke-static {v0}, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;->e(Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;)Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->a(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    return-void
.end method
