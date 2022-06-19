.class Lcom/callapp/contacts/loader/device/LoadPhonesTask;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# instance fields
.field private final a:Lcom/callapp/contacts/model/contact/ContactData;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/callapp/contacts/loader/device/LoadPhonesTask;->a:Lcom/callapp/contacts/model/contact/ContactData;

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 6

    .line 29
    new-instance v0, Lcom/callapp/contacts/framework/dao/ContentQuery;

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    const-string v1, "data2"

    const-string v2, "data3"

    const-string v3, "data1"

    const-string v4, "is_super_primary"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a([Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/loader/device/LoadPhonesTask;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 31
    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "contact_id"

    const-string v3, "="

    invoke-virtual {v0, v2, v3, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v4, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Ljava/lang/String;Z)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    const-string v2, "is_primary"

    .line 33
    invoke-virtual {v0, v2, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Ljava/lang/String;Z)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    new-instance v2, Lcom/callapp/contacts/loader/device/LoadPhonesTask$1;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/loader/device/LoadPhonesTask$1;-><init>(Lcom/callapp/contacts/loader/device/LoadPhonesTask;)V

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/RowCallback;)Ljava/util/List;

    move-result-object v0

    .line 50
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 51
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 52
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 53
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    iget-object v4, p0, Lcom/callapp/contacts/loader/device/LoadPhonesTask;->a:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v4, v5}, Lcom/callapp/contacts/model/contact/ContactData;->setPhone(Lcom/callapp/framework/phone/Phone;)Z

    .line 57
    :cond_0
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    :cond_1
    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 62
    iget-object v0, p0, Lcom/callapp/contacts/loader/device/LoadPhonesTask;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/callapp/contacts/loader/device/LoadPhonesTask;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/loader/device/LoadPhonesTask;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/ContactData;->setPhone(Lcom/callapp/framework/phone/Phone;)Z

    .line 67
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/loader/device/LoadPhonesTask;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/DeviceData;->getPhones()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 68
    iget-object v0, p0, Lcom/callapp/contacts/loader/device/LoadPhonesTask;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/model/contact/DeviceData;->setPhones(Ljava/util/Collection;)V

    .line 69
    iget-object v0, p0, Lcom/callapp/contacts/loader/device/LoadPhonesTask;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->updatePhones()V

    :cond_4
    return-void
.end method
