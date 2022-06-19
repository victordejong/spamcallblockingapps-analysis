.class Lcom/callapp/contacts/action/local/SpamAction$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/action/local/SpamAction;->b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic b:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/callapp/contacts/action/local/SpamAction;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/action/local/SpamAction;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Landroid/content/Context;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/callapp/contacts/action/local/SpamAction$1;->d:Lcom/callapp/contacts/action/local/SpamAction;

    iput-object p2, p0, Lcom/callapp/contacts/action/local/SpamAction$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    iput-object p3, p0, Lcom/callapp/contacts/action/local/SpamAction$1;->b:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    iput-object p4, p0, Lcom/callapp/contacts/action/local/SpamAction$1;->c:Landroid/content/Context;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 10

    .line 31
    iget-object v0, p0, Lcom/callapp/contacts/action/local/SpamAction$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/action/local/SpamAction$1;->b:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    instance-of v1, v0, Lcom/callapp/contacts/activity/base/BaseCallLogData;

    if-eqz v1, :cond_0

    .line 32
    check-cast v0, Lcom/callapp/contacts/activity/base/BaseCallLogData;

    iget-object v0, v0, Lcom/callapp/contacts/activity/base/BaseCallLogData;->displayName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 34
    :goto_0
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    iget-object v0, p0, Lcom/callapp/contacts/action/local/SpamAction$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v4, v0

    .line 37
    iget-object v0, p0, Lcom/callapp/contacts/action/local/SpamAction$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v8

    .line 39
    iget-object v3, p0, Lcom/callapp/contacts/action/local/SpamAction$1;->c:Landroid/content/Context;

    const/4 v5, 0x1

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/callapp/contacts/action/local/SpamAction$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    new-instance v9, Lcom/callapp/contacts/action/local/SpamAction$1$1;

    invoke-direct {v9, p0}, Lcom/callapp/contacts/action/local/SpamAction$1$1;-><init>(Lcom/callapp/contacts/action/local/SpamAction$1;)V

    const-string v1, "Contact Details"

    const-string v2, "Spam action - User corrected a contact info data"

    invoke-static/range {v1 .. v9}, Lcom/callapp/contacts/util/UserCorrectedInfoUtil;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;IZLcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/manager/popup/PopupDoneListener;)V

    return-void
.end method
