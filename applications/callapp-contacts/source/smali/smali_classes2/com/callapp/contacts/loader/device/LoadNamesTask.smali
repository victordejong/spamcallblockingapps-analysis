.class public Lcom/callapp/contacts/loader/device/LoadNamesTask;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# instance fields
.field private final a:Lcom/callapp/contacts/model/contact/ContactData;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/callapp/contacts/loader/device/LoadNamesTask;->a:Lcom/callapp/contacts/model/contact/ContactData;

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 6

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.whatsapp"

    .line 29
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.whatsapp.w4b"

    .line 30
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.callapp.contacts.account"

    .line 31
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v1, Lcom/callapp/contacts/framework/dao/ContentQuery;

    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    const-string v2, "aggregation_mode"

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/callapp/contacts/framework/dao/column/Column;

    sget-object v3, Lcom/callapp/contacts/model/Constants;->ACCOUNT_TYPE_COLUMN:Lcom/callapp/contacts/framework/dao/column/StringColumn;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 33
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a([Lcom/callapp/contacts/framework/dao/column/Column;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/loader/device/LoadNamesTask;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "contact_id"

    const-string v5, "="

    invoke-virtual {v1, v3, v5, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    const-string v2, "display_name"

    .line 34
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    const-string v2, "display_name_source"

    const-string v3, "!="

    const-string v5, "20"

    .line 35
    invoke-virtual {v1, v2, v3, v5}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/Constants;->ACCOUNT_TYPE_COLUMN:Lcom/callapp/contacts/framework/dao/column/StringColumn;

    .line 1122
    invoke-virtual {v1, v4, v2, v0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(ZLcom/callapp/contacts/framework/dao/column/Column;Ljava/util/Collection;)V

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Lcom/callapp/contacts/loader/device/LoadNamesTask$1;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/loader/device/LoadNamesTask$1;-><init>(Lcom/callapp/contacts/loader/device/LoadNamesTask;)V

    invoke-virtual {v1, v0, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Ljava/util/Collection;Lcom/callapp/contacts/framework/dao/RowCallback;)Ljava/util/Collection;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/callapp/contacts/loader/device/LoadNamesTask;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/DeviceData;->getNames()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/callapp/contacts/loader/device/LoadNamesTask;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/model/contact/DeviceData;->setNames(Ljava/util/Collection;)V

    .line 46
    iget-object v0, p0, Lcom/callapp/contacts/loader/device/LoadNamesTask;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateNames()V

    :cond_0
    return-void
.end method
