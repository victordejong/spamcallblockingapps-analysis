.class Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$3;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;->a(Landroid/app/Activity;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$3;->c:Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;

    iput-object p2, p0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$3;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$3;->b:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 5

    .line 150
    iget-object v0, p0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$3;->c:Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;

    iget-object v0, v0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    .line 151
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x7f120235

    if-eqz v1, :cond_0

    .line 152
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 154
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    :goto_0
    iget-object v1, p0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$3;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$3;->b:[Ljava/lang/String;

    iget-object v3, p0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$3;->c:Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;->a(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v1, v2, v0, v3, v4}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$3;->c:Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;

    invoke-static {v0}, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;->e(Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;)Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->a(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    return-void
.end method
