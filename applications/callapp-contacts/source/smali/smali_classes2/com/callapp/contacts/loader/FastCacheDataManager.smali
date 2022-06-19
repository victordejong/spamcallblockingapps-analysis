.class public Lcom/callapp/contacts/loader/FastCacheDataManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lio/objectbox/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/a<",
            "Lcom/callapp/contacts/model/objectbox/FastCacheData;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/Object;

.field private static c:Z

.field private static final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/callapp/contacts/model/objectbox/FastCacheData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/FastCacheData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/loader/FastCacheDataManager;->a:Lio/objectbox/a;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/callapp/contacts/loader/FastCacheDataManager;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 45
    sput-boolean v0, Lcom/callapp/contacts/loader/FastCacheDataManager;->c:Z

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/callapp/contacts/loader/FastCacheDataManager;->d:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/callapp/framework/phone/Phone;J)Lcom/callapp/contacts/model/objectbox/FastCacheData;
    .locals 4

    .line 56
    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/model/contact/ContactData;->generateId(Lcom/callapp/framework/phone/Phone;J)Ljava/lang/String;

    move-result-object v0

    .line 57
    sget-object v1, Lcom/callapp/contacts/loader/FastCacheDataManager;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 58
    :try_start_0
    sget-object v2, Lcom/callapp/contacts/loader/FastCacheDataManager;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/model/objectbox/FastCacheData;

    if-nez v3, :cond_0

    .line 1159
    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/model/contact/ContactData;->generateId(Lcom/callapp/framework/phone/Phone;J)Ljava/lang/String;

    move-result-object p0

    .line 1160
    sget-object p1, Lcom/callapp/contacts/loader/FastCacheDataManager;->a:Lio/objectbox/a;

    invoke-virtual {p1}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object p1

    .line 1161
    sget-object p2, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->phoneOrIdKey:Lio/objectbox/g;

    invoke-virtual {p1, p2, p0}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    .line 1162
    invoke-virtual {p1}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/callapp/contacts/model/objectbox/FastCacheData;

    if-eqz v3, :cond_0

    .line 62
    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->populateSpamScore()V

    .line 64
    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getFullName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 65
    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_0
    monitor-exit v1

    return-object v3

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a()V
    .locals 6

    .line 249
    sget-object v0, Lcom/callapp/contacts/loader/FastCacheDataManager;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 250
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 251
    sget-object v2, Lcom/callapp/contacts/loader/FastCacheDataManager;->a:Lio/objectbox/a;

    invoke-virtual {v2}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v3

    sget-object v4, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->expirationDate:Lio/objectbox/g;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4, v5}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/util/Date;)Lio/objectbox/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v3

    new-instance v4, Lcom/callapp/contacts/loader/FastCacheDataManager$1;

    invoke-direct {v4, v1}, Lcom/callapp/contacts/loader/FastCacheDataManager$1;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lio/objectbox/query/Query;->a(Lio/objectbox/query/c;)V

    .line 258
    invoke-virtual {v2, v1}, Lio/objectbox/a;->b(Ljava/util/Collection;)V

    .line 259
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static a(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 7

    .line 76
    const-class v0, Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->getLock(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 77
    :try_start_0
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v1

    .line 78
    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v2}, Lcom/callapp/contacts/model/contact/ContactData;->getDataSource(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v2

    .line 80
    invoke-static {p0}, Lcom/callapp/contacts/loader/FastCacheDataManager;->d(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/model/objectbox/FastCacheData;

    move-result-object v3

    .line 81
    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getFullName()Ljava/lang/String;

    move-result-object v4

    .line 82
    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getNameDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v5

    .line 83
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/callapp/contacts/model/contact/DataSource;->device:Lcom/callapp/contacts/model/contact/DataSource;

    if-eq v2, v6, :cond_0

    .line 84
    sget-object v6, Lcom/callapp/contacts/model/contact/DataSource;->intent:Lcom/callapp/contacts/model/contact/DataSource;

    if-eq v2, v6, :cond_1

    .line 85
    invoke-static {v3, v1, v2}, Lcom/callapp/contacts/loader/FastCacheDataManager;->a(Lcom/callapp/contacts/model/objectbox/FastCacheData;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)V

    .line 86
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a(Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 89
    invoke-static {v3, v1, v1}, Lcom/callapp/contacts/loader/FastCacheDataManager;->a(Lcom/callapp/contacts/model/objectbox/FastCacheData;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)V

    .line 92
    :cond_1
    :goto_0
    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 93
    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getNameDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 94
    :cond_2
    sget-object v1, Lcom/callapp/contacts/loader/FastCacheDataManager;->a:Lio/objectbox/a;

    invoke-virtual {v1, v3}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    .line 95
    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 96
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a(Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)V

    .line 98
    :cond_3
    const-class v1, Lcom/callapp/contacts/loader/FastCacheDataManager;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "saveFastCacheName: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 100
    sget-object v1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v2, Lcom/callapp/contacts/activity/interfaces/FastCacheChangedListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v1, v2, p0}, Lcom/callapp/contacts/event/bus/EventBus;->c(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 102
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 104
    sget-object v1, Lcom/callapp/contacts/loader/FastCacheDataManager;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 105
    :try_start_1
    sget-object v0, Lcom/callapp/contacts/loader/FastCacheDataManager;->d:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/callapp/contacts/model/contact/ContactData;->generateId(Lcom/callapp/framework/phone/Phone;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactPlusUtils;->a()V

    return-void

    :catchall_0
    move-exception p0

    .line 106
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 102
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public static a(Lcom/callapp/contacts/model/contact/DataSource;Lcom/callapp/contacts/model/objectbox/FastCacheData;Lcom/callapp/framework/phone/Phone;J)V
    .locals 2

    if-eqz p1, :cond_2

    .line 199
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getPhotoDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 200
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->setPhotoDataSource(Lcom/callapp/contacts/model/contact/DataSource;)V

    .line 201
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->setPhotoUrls(Lcom/callapp/contacts/model/contact/PhotoUrls;)V

    .line 202
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->setPhotoBackGroundColor(Ljava/lang/Integer;)V

    .line 205
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getNameDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v0

    if-ne p0, v0, :cond_1

    .line 206
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->setNameDataSource(Lcom/callapp/contacts/model/contact/DataSource;)V

    .line 207
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->setFullName(Ljava/lang/String;)V

    .line 210
    :cond_1
    sget-object p0, Lcom/callapp/contacts/loader/FastCacheDataManager;->a:Lio/objectbox/a;

    invoke-virtual {p0, p1}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    .line 211
    const-class p0, Lcom/callapp/contacts/loader/FastCacheDataManager;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "resetFastCachePhotoAndName: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lcom/callapp/contacts/manager/ContactLoaderManager;->get()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object p0

    invoke-virtual {p0, p2, p3, p4}, Lcom/callapp/contacts/manager/ContactLoaderManager;->getContactDataOnlyIfAlreadyLoaded(Lcom/callapp/framework/phone/Phone;J)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 214
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 215
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object p2, Lcom/callapp/contacts/activity/interfaces/FastCacheChangedListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p1, p2, p0}, Lcom/callapp/contacts/event/bus/EventBus;->c(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private static a(Lcom/callapp/contacts/model/objectbox/FastCacheData;Lcom/callapp/contacts/model/contact/PhotoUrls;Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x1

    .line 182
    invoke-static {v0, v0}, Lcom/callapp/contacts/util/date/DateUtils;->a(II)Ljava/util/Calendar;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->setExpirationDate(Ljava/util/Date;)V

    .line 184
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->setPhotoDataSource(Lcom/callapp/contacts/model/contact/DataSource;)V

    .line 185
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->setPhotoUrls(Lcom/callapp/contacts/model/contact/PhotoUrls;)V

    .line 186
    invoke-virtual {p0, p3}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->setPhotoBackGroundColor(Ljava/lang/Integer;)V

    return-void
.end method

.method private static a(Lcom/callapp/contacts/model/objectbox/FastCacheData;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)V
    .locals 1

    const/4 v0, 0x1

    .line 190
    invoke-static {v0, v0}, Lcom/callapp/contacts/util/date/DateUtils;->a(II)Ljava/util/Calendar;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->setExpirationDate(Ljava/util/Date;)V

    .line 192
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->setNameDataSource(Lcom/callapp/contacts/model/contact/DataSource;)V

    .line 193
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->setFullName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b()Ljava/util/HashMap;
    .locals 1

    .line 41
    sget-object v0, Lcom/callapp/contacts/loader/FastCacheDataManager;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method public static b(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 7

    .line 113
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoUrls()Lcom/callapp/contacts/model/contact/PhotoUrls;

    move-result-object v0

    .line 115
    const-class v1, Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p0, v1}, Lcom/callapp/contacts/model/contact/ContactData;->getLock(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 116
    :try_start_0
    invoke-static {p0}, Lcom/callapp/contacts/loader/FastCacheDataManager;->d(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/model/objectbox/FastCacheData;

    move-result-object v2

    .line 117
    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getPhotoUrls()Lcom/callapp/contacts/model/contact/PhotoUrls;

    move-result-object v3

    .line 118
    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getPhotoDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v4

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/PhotoUrls;->isNotEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v5}, Lcom/callapp/contacts/model/contact/ContactData;->getDataSource(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v5

    sget-object v6, Lcom/callapp/contacts/model/contact/DataSource;->device:Lcom/callapp/contacts/model/contact/DataSource;

    if-eq v5, v6, :cond_0

    .line 122
    sget-object v5, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v5}, Lcom/callapp/contacts/model/contact/ContactData;->getDataSource(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v5

    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoBGColor()Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v0, v5, v6}, Lcom/callapp/contacts/loader/FastCacheDataManager;->a(Lcom/callapp/contacts/model/objectbox/FastCacheData;Lcom/callapp/contacts/model/contact/PhotoUrls;Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 124
    invoke-static {v2, v0, v0, v0}, Lcom/callapp/contacts/loader/FastCacheDataManager;->a(Lcom/callapp/contacts/model/objectbox/FastCacheData;Lcom/callapp/contacts/model/contact/PhotoUrls;Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/Integer;)V

    :goto_0
    if-eqz v3, :cond_1

    .line 127
    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getPhotoUrls()Lcom/callapp/contacts/model/contact/PhotoUrls;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getPhotoUrls()Lcom/callapp/contacts/model/contact/PhotoUrls;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/callapp/contacts/model/contact/PhotoUrls;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    :cond_1
    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getPhotoDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 129
    :cond_2
    sget-object v0, Lcom/callapp/contacts/loader/FastCacheDataManager;->a:Lio/objectbox/a;

    invoke-virtual {v0, v2}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    .line 130
    const-class v0, Lcom/callapp/contacts/loader/FastCacheDataManager;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "saveFastCachePhoto: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 132
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v2, Lcom/callapp/contacts/activity/interfaces/FastCacheChangedListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v2, p0}, Lcom/callapp/contacts/event/bus/EventBus;->c(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 135
    :cond_3
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static c(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 6

    .line 140
    const-class v0, Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->getLock(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 141
    :try_start_0
    invoke-static {p0}, Lcom/callapp/contacts/loader/FastCacheDataManager;->d(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/model/objectbox/FastCacheData;

    move-result-object v1

    .line 142
    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->isSpam()Z

    move-result v2

    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->isSpammer()Z

    move-result v3

    if-eq v2, v3, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->isSpammer()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->setSpam(Z)V

    .line 144
    sget-object v2, Lcom/callapp/contacts/loader/FastCacheDataManager;->a:Lio/objectbox/a;

    invoke-virtual {v2, v1}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    .line 147
    :cond_0
    const-class v2, Lcom/callapp/contacts/loader/FastCacheDataManager;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "saveFastCacheSpam: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 148
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 150
    sget-object v2, Lcom/callapp/contacts/loader/FastCacheDataManager;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 151
    :try_start_1
    sget-object v0, Lcom/callapp/contacts/loader/FastCacheDataManager;->d:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/callapp/contacts/model/contact/ContactData;->generateId(Lcom/callapp/framework/phone/Phone;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 152
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/callapp/contacts/model/contact/ContactData;->generateId(Lcom/callapp/framework/phone/Phone;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 148
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method private static d(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/model/objectbox/FastCacheData;
    .locals 4

    .line 167
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getFastCacheData()Lcom/callapp/contacts/model/objectbox/FastCacheData;

    move-result-object v0

    if-nez v0, :cond_1

    .line 169
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/loader/FastCacheDataManager;->a(Lcom/callapp/framework/phone/Phone;J)Lcom/callapp/contacts/model/objectbox/FastCacheData;

    move-result-object v0

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Lcom/callapp/contacts/model/objectbox/FastCacheData;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/FastCacheData;-><init>()V

    .line 173
    :cond_0
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->setFastCacheData(Lcom/callapp/contacts/model/objectbox/FastCacheData;)V

    .line 176
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/callapp/contacts/model/contact/ContactData;->generateId(Lcom/callapp/framework/phone/Phone;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->setPhoneOrIdKey(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getAllFastCacheDataWithName()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/callapp/contacts/model/objectbox/FastCacheData;",
            ">;"
        }
    .end annotation

    .line 222
    sget-object v0, Lcom/callapp/contacts/loader/FastCacheDataManager;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    :try_start_0
    sget-boolean v1, Lcom/callapp/contacts/loader/FastCacheDataManager;->c:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 224
    sput-boolean v1, Lcom/callapp/contacts/loader/FastCacheDataManager;->c:Z

    .line 225
    sget-object v1, Lcom/callapp/contacts/loader/FastCacheDataManager;->a:Lio/objectbox/a;

    invoke-virtual {v1}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->fullName:Lio/objectbox/g;

    const-string v3, ""

    .line 226
    invoke-virtual {v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->b(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->fullName:Lio/objectbox/g;

    .line 227
    invoke-virtual {v1, v2}, Lio/objectbox/query/QueryBuilder;->b(Lio/objectbox/g;)Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v1

    .line 229
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 230
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/objectbox/FastCacheData;

    .line 231
    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getNameDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v3

    sget-object v4, Lcom/callapp/contacts/model/contact/DataSource;->whitePages:Lcom/callapp/contacts/model/contact/DataSource;

    if-ne v3, v4, :cond_1

    .line 232
    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/framework/util/NameValidationUtils;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 237
    :cond_1
    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->populateSpamScore()V

    .line 239
    sget-object v3, Lcom/callapp/contacts/loader/FastCacheDataManager;->d:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getPhoneOrIdKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 244
    :cond_2
    sget-object v1, Lcom/callapp/contacts/loader/FastCacheDataManager;->d:Ljava/util/HashMap;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 245
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
