.class Lcom/callapp/contacts/loader/device/LoadEmailsTask;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# instance fields
.field private final a:Lcom/callapp/contacts/model/contact/ContactData;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/callapp/contacts/loader/device/LoadEmailsTask;->a:Lcom/callapp/contacts/model/contact/ContactData;

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 5

    .line 26
    new-instance v0, Lcom/callapp/contacts/framework/dao/ContentQuery;

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    const-string v1, "data2"

    const-string v2, "data1"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a([Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/loader/device/LoadEmailsTask;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 28
    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v3, "contact_id"

    const-string v4, "="

    invoke-virtual {v0, v3, v4, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    const-string v1, "!="

    const/4 v3, 0x0

    .line 29
    invoke-virtual {v0, v2, v1, v3}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    sget-object v2, Lcom/callapp/contacts/model/Constants;->DATA_COLUMN:Lcom/callapp/contacts/framework/dao/column/StringColumn;

    const-string v3, ""

    invoke-virtual {v0, v2, v1, v3}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/String;Ljava/lang/Object;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/loader/device/LoadEmailsTask$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/loader/device/LoadEmailsTask$1;-><init>(Lcom/callapp/contacts/loader/device/LoadEmailsTask;)V

    .line 30
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/RowCallback;)Ljava/util/List;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/callapp/contacts/loader/device/LoadEmailsTask;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/DeviceData;->getEmails()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/callapp/contacts/loader/device/LoadEmailsTask;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/model/contact/DeviceData;->setEmails(Ljava/util/Collection;)V

    .line 47
    iget-object v0, p0, Lcom/callapp/contacts/loader/device/LoadEmailsTask;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateEmails()V

    :cond_0
    return-void
.end method
