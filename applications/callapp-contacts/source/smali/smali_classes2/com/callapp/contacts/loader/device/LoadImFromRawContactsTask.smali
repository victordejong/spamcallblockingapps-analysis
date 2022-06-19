.class public Lcom/callapp/contacts/loader/device/LoadImFromRawContactsTask;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# instance fields
.field private final a:Lcom/callapp/contacts/model/contact/ContactData;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/callapp/contacts/loader/device/LoadImFromRawContactsTask;->a:Lcom/callapp/contacts/model/contact/ContactData;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/loader/device/LoadImFromRawContactsTask;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 2044
    new-instance v0, Lcom/callapp/contacts/framework/dao/ContentQuery;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    const-string v1, "data3"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    const-string v1, "mimetype"

    const-string v2, "="

    const-string v3, "vnd.android.cursor.item/vnd.com.whatsapp.profile"

    .line 2045
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    const-string v1, "raw_contact_id"

    .line 2046
    invoke-virtual {v0, v1, v2, p1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/loader/device/LoadImFromRawContactsTask$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/loader/device/LoadImFromRawContactsTask$1;-><init>(Lcom/callapp/contacts/loader/device/LoadImFromRawContactsTask;)V

    const/4 p0, 0x0

    .line 2185
    invoke-virtual {p1, v0, p0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/RowCallback;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 2046
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public doTask()V
    .locals 14

    .line 57
    new-instance v0, Lcom/callapp/contacts/framework/dao/ContentQuery;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    sget-object v1, Lcom/callapp/contacts/model/Constants;->ID_COLUMN:Lcom/callapp/contacts/framework/dao/column/LongColumn;

    .line 58
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    const-string v1, "_id"

    .line 59
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    const-string v1, "account_type"

    .line 60
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    sget-object v2, Lcom/callapp/contacts/model/Constants;->CONTACT_ID_COLUMN:Lcom/callapp/contacts/framework/dao/column/LongColumn;

    iget-object v3, p0, Lcom/callapp/contacts/loader/device/LoadImFromRawContactsTask;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 61
    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v0, v2, v4, v3}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/String;Ljava/lang/Object;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    const-string v2, "com.viber.voip"

    const-string v3, "com.viber.voip.account"

    const-string v4, "com.whatsapp"

    const-string v5, "com.whatsapp.w4b"

    const-string v6, "com.skype.contacts.sync"

    const-string v7, "com.tencent.mm.account"

    const-string v8, "org.telegram.messenger"

    const-string v9, "org.telegram.account"

    const-string v10, "com.google.android.apps.tachyon"

    const-string v11, "org.thoughtcrime.securesms"

    const-string v12, "com.google.android.apps.fireball"

    const-string v13, "com.facebook.messenger"

    filled-new-array/range {v2 .. v13}, [Ljava/lang/String;

    move-result-object v2

    .line 1117
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 62
    new-instance v1, Lcom/callapp/contacts/loader/device/LoadImFromRawContactsTask$2;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/loader/device/LoadImFromRawContactsTask$2;-><init>(Lcom/callapp/contacts/loader/device/LoadImFromRawContactsTask;)V

    .line 66
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/RowCallback;)Ljava/util/List;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/callapp/contacts/loader/device/LoadImFromRawContactsTask;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/DeviceData;->getImContacts()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/callapp/contacts/loader/device/LoadImFromRawContactsTask;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/model/contact/DeviceData;->setImContacts(Ljava/util/Collection;)V

    .line 194
    iget-object v0, p0, Lcom/callapp/contacts/loader/device/LoadImFromRawContactsTask;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateImAddresses()V

    :cond_0
    return-void
.end method
