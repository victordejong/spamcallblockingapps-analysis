.class public Lcom/callapp/contacts/loader/device/LoadContactsContractData;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# instance fields
.field private final a:Lcom/callapp/contacts/model/contact/ContactData;

.field private final b:Z

.field private final c:Z

.field private final d:Z

.field private final e:Z


# direct methods
.method constructor <init>(Lcom/callapp/contacts/model/contact/ContactData;ZZZZ)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 39
    iput-boolean p2, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData;->b:Z

    .line 40
    iput-boolean p3, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData;->c:Z

    .line 41
    iput-boolean p4, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData;->d:Z

    .line 42
    iput-boolean p5, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/loader/device/LoadContactsContractData;Lcom/callapp/contacts/framework/dao/RowContext;)Lcom/callapp/common/model/json/JSONEvent;
    .locals 4

    const-string v0, "data1"

    .line 2201
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2202
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 2206
    :cond_0
    invoke-static {v0}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v2

    .line 2213
    :cond_1
    new-instance v1, Lcom/callapp/common/model/json/JSONEvent;

    invoke-direct {v1}, Lcom/callapp/common/model/json/JSONEvent;-><init>()V

    const/4 v2, 0x1

    .line 2214
    invoke-virtual {v1, v2}, Lcom/callapp/common/model/json/JSONEvent;->setFromDevice(Z)V

    .line 2215
    sget-object v2, Lcom/callapp/contacts/model/Constants;->TYPE_COLUMN:Lcom/callapp/contacts/framework/dao/column/IntColumn;

    invoke-virtual {p1, v2}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2216
    invoke-virtual {v1, v2}, Lcom/callapp/common/model/json/JSONEvent;->setType(I)V

    .line 2217
    new-instance v3, Lcom/callapp/common/model/json/JSONDate;

    invoke-direct {v3, v0}, Lcom/callapp/common/model/json/JSONDate;-><init>(Ljava/util/Date;)V

    invoke-virtual {v1, v3}, Lcom/callapp/common/model/json/JSONEvent;->setFormattedDate(Lcom/callapp/common/model/json/JSONDate;)V

    if-nez v2, :cond_2

    const-string p0, "data3"

    .line 2220
    invoke-virtual {p1, p0}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/callapp/common/model/json/JSONEvent;->setLabel(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    if-ne v2, p1, :cond_3

    .line 2222
    iget-object p1, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object p1

    new-instance v2, Lcom/callapp/common/model/json/JSONDate;

    invoke-direct {v2, v0}, Lcom/callapp/common/model/json/JSONDate;-><init>(Ljava/util/Date;)V

    invoke-virtual {p1, v2}, Lcom/callapp/contacts/model/contact/DeviceData;->setBirthday(Lcom/callapp/common/model/json/JSONDate;)V

    .line 2223
    iget-object p0, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateBirthDate()V

    :cond_3
    :goto_0
    return-object v1
.end method

.method static synthetic a(Lcom/callapp/contacts/framework/dao/RowContext;)Lcom/callapp/common/model/json/JSONOrgData;
    .locals 5

    .line 2155
    new-instance v0, Lcom/callapp/common/model/json/JSONOrgData;

    invoke-direct {v0}, Lcom/callapp/common/model/json/JSONOrgData;-><init>()V

    const/4 v1, 0x1

    .line 2156
    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONOrgData;->setFromDevice(Z)V

    const-string v2, "data4"

    .line 2157
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2158
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2159
    invoke-virtual {v0, v2}, Lcom/callapp/common/model/json/JSONOrgData;->setTitle(Ljava/lang/String;)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "data1"

    .line 2164
    invoke-virtual {p0, v3}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2165
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "null"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/callapp/framework/util/StringUtils;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2166
    invoke-virtual {v0, p0}, Lcom/callapp/common/model/json/JSONOrgData;->setCompany(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONEvent;",
            ">;)V"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/DeviceData;->getEvents()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/model/contact/DeviceData;->setEvents(Ljava/util/Collection;)V

    .line 231
    iget-object v0, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateEvents()V

    .line 235
    :cond_0
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 236
    iget-object p1, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/DeviceData;->getBirthday()Lcom/callapp/common/model/json/JSONDate;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 237
    iget-object p1, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/model/contact/DeviceData;->setBirthday(Lcom/callapp/common/model/json/JSONDate;)V

    .line 238
    iget-object p1, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->updateBirthDate()V

    return-void

    .line 241
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/common/model/json/JSONEvent;

    .line 242
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONEvent;->getType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    return-void

    .line 248
    :cond_3
    iget-object p1, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/DeviceData;->getBirthday()Lcom/callapp/common/model/json/JSONDate;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 249
    iget-object p1, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/model/contact/DeviceData;->setBirthday(Lcom/callapp/common/model/json/JSONDate;)V

    .line 250
    iget-object p1, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->updateBirthDate()V

    :cond_4
    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/framework/dao/RowContext;)Lcom/callapp/common/model/json/JSONWebsite;
    .locals 2

    .line 2185
    new-instance v0, Lcom/callapp/common/model/json/JSONWebsite;

    invoke-direct {v0}, Lcom/callapp/common/model/json/JSONWebsite;-><init>()V

    const/4 v1, 0x1

    .line 2186
    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONWebsite;->setFromDevice(Z)V

    const-string v1, "data2"

    .line 2187
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/framework/dao/RowContext;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONWebsite;->setType(I)V

    const-string v1, "data1"

    .line 2188
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/callapp/common/model/json/JSONWebsite;->setWebsiteUrl(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic c(Lcom/callapp/contacts/framework/dao/RowContext;)Lcom/callapp/common/model/json/JSONIMaddress;
    .locals 8

    .line 2263
    sget-object v0, Lcom/callapp/contacts/model/Constants;->MIMETYPE_COLUMN:Lcom/callapp/contacts/framework/dao/column/StringColumn;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2264
    sget-object v1, Lcom/callapp/contacts/model/Constants;->PRESENCE_COLUMN:Lcom/callapp/contacts/framework/dao/column/IntColumn;

    invoke-virtual {p0, v1}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "vnd.android.cursor.item/email_v2"

    .line 2266
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2269
    :cond_0
    sget-object v0, Lcom/callapp/contacts/model/Constants;->PROTOCOL_COLUMN:Lcom/callapp/contacts/framework/dao/column/IntColumn;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2270
    sget-object v2, Lcom/callapp/contacts/model/Constants;->DATA_COLUMN:Lcom/callapp/contacts/framework/dao/column/StringColumn;

    invoke-virtual {p0, v2}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x5

    if-nez v0, :cond_3

    const-string v4, "@gmail.com"

    .line 2274
    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x5

    goto :goto_1

    :cond_1
    if-nez v0, :cond_3

    .line 2289
    sget-object v4, Lcom/callapp/contacts/loader/im/YahooLoader;->a:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    .line 2290
    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2299
    :cond_3
    :goto_1
    new-instance v4, Lcom/callapp/contacts/loader/device/DeviceIMAddress;

    invoke-direct {v4}, Lcom/callapp/contacts/loader/device/DeviceIMAddress;-><init>()V

    const/4 v5, 0x1

    .line 2300
    invoke-virtual {v4, v5}, Lcom/callapp/contacts/loader/device/DeviceIMAddress;->setFromDevice(Z)V

    .line 2301
    sget-object v5, Lcom/callapp/contacts/model/Constants;->ID_COLUMN:Lcom/callapp/contacts/framework/dao/column/LongColumn;

    invoke-virtual {p0, v5}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/callapp/contacts/loader/device/DeviceIMAddress;->setDataRowId(J)V

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move v3, v0

    .line 2302
    :goto_2
    invoke-virtual {v4, v3}, Lcom/callapp/contacts/loader/device/DeviceIMAddress;->setProtocol(I)V

    .line 2303
    sget-object v0, Lcom/callapp/contacts/model/Constants;->TYPE_COLUMN:Lcom/callapp/contacts/framework/dao/column/IntColumn;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v4, p0}, Lcom/callapp/contacts/loader/device/DeviceIMAddress;->setType(I)V

    .line 2304
    invoke-virtual {v4, v2}, Lcom/callapp/contacts/loader/device/DeviceIMAddress;->setIMAddress(Ljava/lang/String;)V

    if-nez v1, :cond_5

    const/4 v1, -0x1

    .line 2305
    :cond_5
    invoke-virtual {v4, v1}, Lcom/callapp/contacts/loader/device/DeviceIMAddress;->setPresence(I)V

    return-object v4
.end method


# virtual methods
.method public doTask()V
    .locals 14

    .line 47
    new-instance v0, Lcom/callapp/contacts/framework/dao/ContentQuery;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    sget-object v1, Lcom/callapp/contacts/model/Constants;->CONTACT_ID_COLUMN:Lcom/callapp/contacts/framework/dao/column/LongColumn;

    iget-object v2, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 48
    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v0, v1, v3, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/String;Ljava/lang/Object;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    iget-boolean v2, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData;->b:Z

    const-string v3, "data1"

    if-eqz v2, :cond_0

    const-string/jumbo v2, "vnd.android.cursor.item/organization"

    .line 53
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {v0, v3}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v2

    const-string v4, "data4"

    .line 55
    invoke-virtual {v2, v4}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    .line 58
    :cond_0
    iget-boolean v2, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData;->c:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "vnd.android.cursor.item/website"

    .line 59
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {v0, v3}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v2

    const-string v4, "data2"

    .line 61
    invoke-virtual {v2, v4}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    .line 64
    :cond_1
    iget-boolean v2, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData;->d:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "vnd.android.cursor.item/contact_event"

    .line 65
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-virtual {v0, v3}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v2

    const-string v3, "data3"

    .line 67
    invoke-virtual {v2, v3}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/model/Constants;->TYPE_COLUMN:Lcom/callapp/contacts/framework/dao/column/IntColumn;

    .line 68
    invoke-virtual {v2, v3}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    .line 71
    :cond_2
    iget-boolean v2, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData;->e:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "vnd.android.cursor.item/vnd.googleplus.profile.comm"

    .line 72
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "vnd.android.cursor.item/im"

    .line 73
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "vnd.android.cursor.item/email_v2"

    .line 74
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "_id"

    .line 75
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/model/Constants;->ID_COLUMN:Lcom/callapp/contacts/framework/dao/column/LongColumn;

    .line 76
    invoke-virtual {v2, v3}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/model/Constants;->PROTOCOL_COLUMN:Lcom/callapp/contacts/framework/dao/column/IntColumn;

    .line 77
    invoke-virtual {v2, v3}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/model/Constants;->TYPE_COLUMN:Lcom/callapp/contacts/framework/dao/column/IntColumn;

    .line 78
    invoke-virtual {v2, v3}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/model/Constants;->DATA_COLUMN:Lcom/callapp/contacts/framework/dao/column/StringColumn;

    .line 79
    invoke-virtual {v2, v3}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/model/Constants;->PRESENCE_COLUMN:Lcom/callapp/contacts/framework/dao/column/IntColumn;

    .line 80
    invoke-virtual {v2, v3}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    .line 83
    :cond_3
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "mimetype"

    .line 84
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v3

    .line 85
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 1117
    invoke-virtual {v3, v2, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 92
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 93
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 94
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 96
    new-instance v13, Lcom/callapp/contacts/loader/device/LoadContactsContractData$1;

    move-object v4, v13

    move-object v5, p0

    move-object v6, v3

    move-object v7, v2

    move-object v8, v1

    move-object v9, v11

    move-object v10, v12

    invoke-direct/range {v4 .. v10}, Lcom/callapp/contacts/loader/device/LoadContactsContractData$1;-><init>(Lcom/callapp/contacts/loader/device/LoadContactsContractData;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v13}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Lcom/callapp/contacts/framework/dao/RowCallback;)Ljava/util/List;

    .line 134
    iget-boolean v0, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData;->b:Z

    if-eqz v0, :cond_4

    .line 1178
    iget-object v0, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/DeviceData;->getOrganizations()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1179
    iget-object v0, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/model/contact/DeviceData;->setOrganizations(Ljava/util/Collection;)V

    .line 1180
    iget-object v0, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateOrganizations()V

    .line 138
    :cond_4
    iget-boolean v0, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData;->c:Z

    if-eqz v0, :cond_5

    .line 1193
    iget-object v0, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/DeviceData;->getWebsites()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1194
    iget-object v0, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/model/contact/DeviceData;->setWebsites(Ljava/util/Collection;)V

    .line 1195
    iget-object v0, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateWebsites()V

    .line 142
    :cond_5
    iget-boolean v0, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData;->d:Z

    if-eqz v0, :cond_6

    .line 143
    invoke-direct {p0, v1}, Lcom/callapp/contacts/loader/device/LoadContactsContractData;->a(Ljava/util/List;)V

    .line 146
    :cond_6
    iget-boolean v0, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData;->e:Z

    if-eqz v0, :cond_9

    .line 147
    invoke-static {v11}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_7
    const-wide/16 v0, 0x0

    .line 1256
    :goto_0
    iget-object v2, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/DeviceData;->getGoogleHangoutDataId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_8

    .line 1257
    iget-object v2, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/callapp/contacts/model/contact/DeviceData;->setGoogleHangoutDataId(J)V

    .line 1258
    iget-object v0, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData;->a:Lcom/callapp/contacts/model/contact/ContactData;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->googlePlusHangoutDataId:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    .line 1310
    :cond_8
    iget-object v0, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/DeviceData;->getImAddresses()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1311
    iget-object v0, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/callapp/contacts/model/contact/DeviceData;->setImAddresses(Ljava/util/Collection;)V

    .line 1312
    iget-object v0, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateImAddresses()V

    :cond_9
    return-void
.end method
