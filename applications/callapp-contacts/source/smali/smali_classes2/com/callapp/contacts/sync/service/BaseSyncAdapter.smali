.class public abstract Lcom/callapp/contacts/sync/service/BaseSyncAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field b:I

.field protected c:I

.field protected final d:Landroid/content/Context;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/concurrent/CountDownLatch;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->a:Z

    .line 61
    iput v0, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->b:I

    .line 72
    iput-object p1, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->d:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/sync/service/BaseSyncAdapter;)Ljava/util/HashMap;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->h:Ljava/util/HashMap;

    return-object p0
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 301
    invoke-static {p1, p0}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Lcom/callapp/contacts/sync/model/SyncContext;Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/sync/model/SyncContext;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/sync/syncer/Syncer;",
            ">;)Z"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/callapp/contacts/model/contact/ContactData;

    .line 212
    iget v1, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->b:I

    add-int/lit8 v6, v1, 0x1

    iput v6, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->b:I

    .line 213
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->a(Landroid/content/Context;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    return v3

    .line 5292
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/sync/syncer/Syncer;

    .line 5293
    invoke-virtual {v4, v7}, Lcom/callapp/contacts/sync/syncer/Syncer;->shouldSyncContact(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_3

    .line 219
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    iget v3, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x2

    invoke-virtual {v7}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x3

    invoke-virtual {v7}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const-string v2, "Skipping %s/%s (%s,\'%s\')"

    invoke-static {v1, v2, v4}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    iget-object v1, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 224
    :cond_3
    new-instance v1, Lcom/callapp/contacts/sync/service/BaseSyncAdapter$1;

    sget-object v2, Lb/a;->a:Lb/a$a;

    .line 6018
    invoke-static {}, Lb/a;->b()Lkotlinx/coroutines/bk;

    move-result-object v5

    move-object v3, v1

    move-object v4, p0

    move-object v8, p1

    move-object v9, p2

    .line 224
    invoke-direct/range {v3 .. v9}, Lcom/callapp/contacts/sync/service/BaseSyncAdapter$1;-><init>(Lcom/callapp/contacts/sync/service/BaseSyncAdapter;Lkotlin/c/f;ILcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/sync/model/SyncContext;Ljava/util/List;)V

    .line 281
    invoke-virtual {v1}, Lcom/callapp/contacts/sync/service/BaseSyncAdapter$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    goto/16 :goto_0

    :cond_4
    return v2
.end method

.method private a(ZLandroid/app/Application;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/app/Application;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/sync/syncer/Syncer;",
            ">;)Z"
        }
    .end annotation

    .line 174
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->a(Landroid/content/Context;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 175
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/callapp/contacts/sync/syncer/Syncer;

    if-nez p1, :cond_0

    .line 177
    invoke-virtual {p3, v0}, Lcom/callapp/contacts/sync/syncer/Syncer;->setSyncEnabled(Z)V

    .line 179
    :cond_0
    invoke-virtual {p3}, Lcom/callapp/contacts/sync/syncer/Syncer;->onSyncEnd()Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :cond_2
    return p1
.end method

.method static synthetic b(Lcom/callapp/contacts/sync/service/BaseSyncAdapter;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->e:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/sync/service/BaseSyncAdapter;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->f:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method


# virtual methods
.method protected abstract a(Lcom/callapp/contacts/sync/model/SyncContext;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/sync/model/SyncContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/sync/syncer/Syncer;",
            ">;"
        }
    .end annotation
.end method

.method final declared-synchronized a()V
    .locals 15

    monitor-enter p0

    .line 76
    :try_start_0
    new-instance v0, Lcom/callapp/contacts/sync/model/SyncContext;

    invoke-direct {v0}, Lcom/callapp/contacts/sync/model/SyncContext;-><init>()V

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/sync/service/FirstSyncAdapter;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/callapp/contacts/sync/model/SyncContext;->isFirstSync:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/4 v1, 0x0

    .line 80
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v5, "Sync started ==="

    invoke-static {v2, v5}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 83
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    .line 85
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v7

    invoke-virtual {v7}, Lcom/callapp/contacts/manager/Singletons;->getExceptionManager()Lcom/callapp/contacts/manager/ExceptionManager;

    move-result-object v7

    .line 2059
    iget-object v8, v7, Lcom/callapp/contacts/manager/ExceptionManager;->b:Ljava/util/Queue;

    invoke-interface {v8}, Ljava/util/Queue;->clear()V

    .line 2060
    iput-boolean v4, v7, Lcom/callapp/contacts/manager/ExceptionManager;->a:Z

    .line 87
    invoke-virtual {p0}, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->b()V

    .line 89
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->a(Landroid/content/Context;)Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v7, :cond_1

    .line 162
    :try_start_2
    iput-object v1, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->g:Ljava/util/ArrayList;

    .line 163
    iput-object v1, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->e:Ljava/util/List;

    .line 164
    iput-object v1, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->h:Ljava/util/HashMap;

    .line 165
    invoke-virtual {p0, v4}, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->a(Z)V

    .line 168
    iget-wide v0, v0, Lcom/callapp/contacts/sync/model/SyncContext;->startDate:J

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 169
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Sync ended after  === %s ==="

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 90
    monitor-exit p0

    return-void

    .line 94
    :cond_1
    :try_start_3
    iput-object v2, v0, Lcom/callapp/contacts/sync/model/SyncContext;->context:Landroid/content/Context;

    .line 95
    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iput-object v7, v0, Lcom/callapp/contacts/sync/model/SyncContext;->contentResolver:Landroid/content/ContentResolver;

    .line 96
    invoke-static {}, Lcom/callapp/contacts/sync/model/SyncManager;->getSyncData()Ljava/util/Map;

    move-result-object v7

    iput-object v7, v0, Lcom/callapp/contacts/sync/model/SyncContext;->syncData:Ljava/util/Map;

    .line 98
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->a(Lcom/callapp/contacts/sync/model/SyncContext;)Ljava/util/List;

    move-result-object v7

    .line 99
    iput-object v7, v0, Lcom/callapp/contacts/sync/model/SyncContext;->syncers:Ljava/util/List;

    .line 101
    invoke-static {v7}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_16

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v3, :cond_2

    goto/16 :goto_b

    .line 2312
    :cond_2
    invoke-static {v3}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Z)Ljava/util/List;

    move-result-object v8

    iput-object v8, v0, Lcom/callapp/contacts/sync/model/SyncContext;->contactItems:Ljava/util/List;

    .line 2314
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->getFavoriteContacts()Ljava/util/List;

    move-result-object v8

    .line 2315
    iput-object v8, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->e:Ljava/util/List;

    .line 2317
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2319
    iget-object v9, v0, Lcom/callapp/contacts/sync/model/SyncContext;->contactItems:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2322
    iget-object v9, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->e:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 2324
    iget-object v9, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->e:Ljava/util/List;

    invoke-interface {v8, v4, v9}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 2326
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->g:Ljava/util/ArrayList;

    .line 2327
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, v0, Lcom/callapp/contacts/sync/model/SyncContext;->allContacts:Ljava/util/Map;

    .line 2328
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, v0, Lcom/callapp/contacts/sync/model/SyncContext;->favoriteContacts:Ljava/util/Map;

    .line 2329
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, v0, Lcom/callapp/contacts/sync/model/SyncContext;->frequentlyCalledContacts:Ljava/util/Map;

    .line 2330
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->h:Ljava/util/HashMap;

    .line 2331
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    .line 2332
    iget-object v10, v9, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->normalNumbers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2333
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v10

    .line 2334
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Lcom/callapp/framework/phone/Phone;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 2335
    new-instance v11, Lcom/callapp/contacts/model/contact/ContactData;

    iget-wide v12, v9, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->contactId:J

    invoke-direct {v11, v10, v12, v13, v1}, Lcom/callapp/contacts/model/contact/ContactData;-><init>(Lcom/callapp/framework/phone/Phone;JLcom/callapp/contacts/model/objectbox/ExtractedInfo;)V

    .line 2337
    invoke-virtual {v11}, Lcom/callapp/contacts/model/contact/ContactData;->assertDeviceDataExist()V

    .line 2338
    invoke-virtual {v11}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v10

    .line 2339
    iget-wide v12, v9, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->contactId:J

    invoke-virtual {v10, v12, v13}, Lcom/callapp/contacts/model/contact/DeviceData;->setDeviceId(J)V

    .line 2340
    iget-object v12, v9, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Lcom/callapp/contacts/model/contact/DeviceData;->setFullName(Ljava/lang/String;)V

    .line 2342
    iget-object v12, v9, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->d:Ljava/util/Set;

    invoke-static {v12}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 2343
    iget-object v12, v9, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->d:Ljava/util/Set;

    invoke-virtual {v10, v12}, Lcom/callapp/contacts/model/contact/DeviceData;->setEmails(Ljava/util/Collection;)V

    .line 2348
    :cond_4
    invoke-virtual {v11}, Lcom/callapp/contacts/model/contact/ContactData;->updateFullName()V

    .line 2349
    invoke-virtual {v11}, Lcom/callapp/contacts/model/contact/ContactData;->updateNames()V

    .line 2350
    invoke-virtual {v11}, Lcom/callapp/contacts/model/contact/ContactData;->updateEmails()V

    .line 2353
    invoke-virtual {v11}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v12

    .line 2354
    iget-object v10, v0, Lcom/callapp/contacts/sync/model/SyncContext;->allContacts:Ljava/util/Map;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/callapp/contacts/sync/model/SyncContext;->favoriteContacts:Ljava/util/Map;

    .line 2355
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    iget-object v10, v0, Lcom/callapp/contacts/sync/model/SyncContext;->frequentlyCalledContacts:Ljava/util/Map;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 2356
    :cond_5
    iget-object v10, v0, Lcom/callapp/contacts/sync/model/SyncContext;->favoriteContacts:Ljava/util/Map;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/callapp/contacts/model/contact/ContactData;

    if-nez v10, :cond_6

    .line 2358
    iget-object v10, v0, Lcom/callapp/contacts/sync/model/SyncContext;->frequentlyCalledContacts:Ljava/util/Map;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/callapp/contacts/model/contact/ContactData;

    :cond_6
    if-eqz v10, :cond_7

    .line 2362
    iget-object v12, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->g:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2365
    :cond_7
    iget-object v10, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->g:Ljava/util/ArrayList;

    invoke-virtual {v10, v4, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 2367
    :cond_8
    iget-object v10, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->g:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2370
    :goto_1
    iget-object v10, v0, Lcom/callapp/contacts/sync/model/SyncContext;->allContacts:Ljava/util/Map;

    iget-wide v12, v9, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->contactId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v10, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2372
    iget-object v10, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->e:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 2373
    iget-object v10, v0, Lcom/callapp/contacts/sync/model/SyncContext;->favoriteContacts:Ljava/util/Map;

    iget-wide v12, v9, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->contactId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v10, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2375
    :cond_9
    invoke-virtual {v11}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v9

    const-string v10, " "

    .line 2376
    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 2377
    array-length v10, v9

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_3

    aget-object v12, v9, v11

    .line 2379
    iget-object v13, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->h:Ljava/util/HashMap;

    invoke-virtual {v13, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 2380
    iget-object v13, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->h:Ljava/util/HashMap;

    invoke-virtual {v13, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    goto :goto_3

    :cond_a
    const/4 v13, 0x0

    .line 2382
    :goto_3
    iget-object v14, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->h:Ljava/util/HashMap;

    add-int/2addr v13, v3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v14, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_b
    const-wide/16 v8, 0x3e8

    .line 111
    :try_start_4
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/callapp/contacts/sync/syncer/Syncer;

    .line 112
    invoke-virtual {v11}, Lcom/callapp/contacts/sync/syncer/Syncer;->onSyncStart()V

    goto :goto_4

    .line 117
    :cond_c
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_d
    const/4 v11, 0x0

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/callapp/contacts/sync/syncer/Syncer;

    if-nez v11, :cond_e

    .line 118
    invoke-virtual {v12}, Lcom/callapp/contacts/sync/syncer/Syncer;->isSyncEnabled()Z

    move-result v11

    if-eqz v11, :cond_d

    :cond_e
    const/4 v11, 0x1

    goto :goto_5

    :cond_f
    if-nez v11, :cond_11

    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v7, "All syncers disabled, terminating sync..."

    invoke-static {v2, v7}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 151
    :try_start_5
    invoke-static {}, Lcom/callapp/contacts/sync/Synchronizers;->values()[Lcom/callapp/contacts/sync/Synchronizers;

    move-result-object v2

    array-length v7, v2

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v7, :cond_10

    aget-object v11, v2, v10

    .line 152
    iget-object v11, v11, Lcom/callapp/contacts/sync/Synchronizers;->syncer:Lcom/callapp/contacts/sync/syncer/Syncer;

    invoke-virtual {v11}, Lcom/callapp/contacts/sync/syncer/Syncer;->destroy()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 155
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "END OF SERVICE AFTER "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v5

    div-long/2addr v10, v8

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " SECS"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 162
    :try_start_6
    iput-object v1, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->g:Ljava/util/ArrayList;

    .line 163
    iput-object v1, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->e:Ljava/util/List;

    .line 164
    iput-object v1, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->h:Ljava/util/HashMap;

    .line 165
    invoke-virtual {p0, v4}, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->a(Z)V

    .line 168
    iget-wide v0, v0, Lcom/callapp/contacts/sync/model/SyncContext;->startDate:J

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 169
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Sync ended after  === %s ==="

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 122
    monitor-exit p0

    return-void

    .line 126
    :cond_11
    :try_start_7
    iput v4, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->b:I

    .line 127
    iget-object v10, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->g:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    iput v10, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->c:I

    if-lez v10, :cond_12

    .line 130
    sget-object v10, Lcom/callapp/contacts/manager/preferences/Prefs;->bo:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    iget v11, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->c:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 133
    :cond_12
    new-instance v10, Ljava/util/concurrent/CountDownLatch;

    iget v11, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->c:I

    invoke-direct {v10, v11}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v10, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->f:Ljava/util/concurrent/CountDownLatch;

    .line 135
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v10

    const-string v11, "Sync started!"

    const/16 v12, 0x50

    .line 3206
    invoke-virtual {v10, v11, v12}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;I)V

    .line 137
    invoke-direct {p0, v0, v7}, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->a(Lcom/callapp/contacts/sync/model/SyncContext;Ljava/util/List;)Z

    move-result v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v10, :cond_13

    .line 140
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v12, "Waiting for sync threads..."

    invoke-static {v11, v12}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 141
    iget-object v11, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v11}, Ljava/util/concurrent/CountDownLatch;->await()V

    goto :goto_7

    .line 143
    :cond_13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v12, "Sync stopped, NOT waiting for sync threads"

    invoke-static {v11, v12}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 147
    :goto_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v12, "Ending sync..."

    invoke-static {v11, v12}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 148
    invoke-direct {p0, v10, v2, v7}, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->a(ZLandroid/app/Application;Ljava/util/List;)Z

    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 151
    :try_start_9
    invoke-static {}, Lcom/callapp/contacts/sync/Synchronizers;->values()[Lcom/callapp/contacts/sync/Synchronizers;

    move-result-object v7

    array-length v10, v7

    const/4 v11, 0x0

    :goto_8
    if-ge v11, v10, :cond_14

    aget-object v12, v7, v11

    .line 152
    iget-object v12, v12, Lcom/callapp/contacts/sync/Synchronizers;->syncer:Lcom/callapp/contacts/sync/syncer/Syncer;

    invoke-virtual {v12}, Lcom/callapp/contacts/sync/syncer/Syncer;->destroy()V

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 155
    :cond_14
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "END OF SERVICE AFTER "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v5

    div-long/2addr v10, v8

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " SECS"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 156
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 162
    :try_start_a
    iput-object v1, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->g:Ljava/util/ArrayList;

    .line 163
    iput-object v1, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->e:Ljava/util/List;

    .line 164
    iput-object v1, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->h:Ljava/util/HashMap;

    .line 165
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->a(Z)V

    .line 168
    iget-wide v0, v0, Lcom/callapp/contacts/sync/model/SyncContext;->startDate:J

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 169
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Sync ended after  === %s ==="

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 170
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v5

    move v10, v2

    move-object v2, v5

    goto/16 :goto_d

    :catch_0
    move-exception v5

    move v10, v2

    move-object v2, v5

    goto :goto_c

    :catchall_1
    move-exception v2

    goto :goto_9

    :catchall_2
    move-exception v2

    const/4 v10, 0x0

    .line 151
    :goto_9
    :try_start_b
    invoke-static {}, Lcom/callapp/contacts/sync/Synchronizers;->values()[Lcom/callapp/contacts/sync/Synchronizers;

    move-result-object v7

    array-length v11, v7

    const/4 v12, 0x0

    :goto_a
    if-ge v12, v11, :cond_15

    aget-object v13, v7, v12

    .line 152
    iget-object v13, v13, Lcom/callapp/contacts/sync/Synchronizers;->syncer:Lcom/callapp/contacts/sync/syncer/Syncer;

    invoke-virtual {v13}, Lcom/callapp/contacts/sync/syncer/Syncer;->destroy()V

    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 155
    :cond_15
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, "END OF SERVICE AFTER "

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v5

    div-long/2addr v11, v8

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " SECS"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 156
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 157
    throw v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :catch_1
    move-exception v2

    goto :goto_c

    .line 103
    :cond_16
    :goto_b
    :try_start_c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v5, "All syncers disabled, terminating sync..."

    invoke-static {v2, v5}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 162
    :try_start_d
    iput-object v1, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->g:Ljava/util/ArrayList;

    .line 163
    iput-object v1, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->e:Ljava/util/List;

    .line 164
    iput-object v1, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->h:Ljava/util/HashMap;

    .line 165
    invoke-virtual {p0, v4}, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->a(Z)V

    .line 168
    iget-wide v0, v0, Lcom/callapp/contacts/sync/model/SyncContext;->startDate:J

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 169
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Sync ended after  === %s ==="

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 104
    monitor-exit p0

    return-void

    :catchall_3
    move-exception v2

    const/4 v10, 0x0

    goto :goto_d

    :catch_2
    move-exception v2

    const/4 v10, 0x0

    .line 159
    :goto_c
    :try_start_e
    invoke-static {v2}, Lcom/callapp/contacts/util/CrashlyticsUtils;->a(Ljava/lang/Throwable;)V

    .line 160
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 3301
    invoke-static {v5, v2}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 162
    :try_start_f
    iput-object v1, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->g:Ljava/util/ArrayList;

    .line 163
    iput-object v1, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->e:Ljava/util/List;

    .line 164
    iput-object v1, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->h:Ljava/util/HashMap;

    .line 165
    invoke-virtual {p0, v10}, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->a(Z)V

    .line 168
    iget-wide v0, v0, Lcom/callapp/contacts/sync/model/SyncContext;->startDate:J

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 169
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Sync ended after  === %s ==="

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 170
    monitor-exit p0

    return-void

    :catchall_4
    move-exception v2

    .line 162
    :goto_d
    :try_start_10
    iput-object v1, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->g:Ljava/util/ArrayList;

    .line 163
    iput-object v1, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->e:Ljava/util/List;

    .line 164
    iput-object v1, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->h:Ljava/util/HashMap;

    .line 165
    invoke-virtual {p0, v10}, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->a(Z)V

    .line 168
    iget-wide v0, v0, Lcom/callapp/contacts/sync/model/SyncContext;->startDate:J

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 169
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v5, "Sync ended after  === %s ==="

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 170
    throw v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(II)V
    .locals 0

    return-void
.end method

.method protected a(Z)V
    .locals 3

    .line 196
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const-string v1, "Sync end!"

    const/16 v2, 0x50

    .line 5206
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;I)V

    .line 197
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getWifiLockManager()Lcom/callapp/contacts/manager/WifiLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/WifiLockManager;->b()V

    .line 198
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/Singletons;->setHelpersFromSync(Z)V

    if-eqz p1, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->d()V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 1

    .line 399
    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    const-string p1, "android.permission.READ_CONTACTS"

    invoke-static {p1}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 400
    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    const-string p1, "android.permission.READ_CALL_LOG"

    invoke-static {p1}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 401
    invoke-static {}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->getCurrentSetupStage()Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->ordinal()I

    move-result p1

    sget-object v0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->SETUP_COMPLETED_STAGE:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->ordinal()I

    move-result v0

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 403
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "Setup not completed yet, terminating sync..."

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected b()V
    .locals 3

    .line 188
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const-string v1, "Try perform sync"

    const/16 v2, 0x50

    .line 4206
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;I)V

    .line 189
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getWifiLockManager()Lcom/callapp/contacts/manager/WifiLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/WifiLockManager;->a()V

    .line 190
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/Singletons;->setHelpersFromSync(Z)V

    .line 191
    invoke-virtual {p0}, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->c()V

    .line 192
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/receiver/ScreenOffReceiver;->b(Landroid/content/Context;)V

    return-void
.end method

.method protected abstract c()V
.end method

.method protected abstract d()V
.end method

.method final e()V
    .locals 6

    .line 422
    invoke-virtual {p0}, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->getService()Lcom/callapp/contacts/sync/service/RealSyncService;

    move-result-object v0

    const/4 v1, 0x1

    .line 423
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/sync/service/RealSyncService;->stopForeground(Z)V

    .line 426
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v0

    .line 6415
    sget-object v2, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->SYNC_PROGRESS_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/manager/NotificationManager;->a(Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;)Landroidx/core/app/g$e;

    move-result-object v2

    const v3, 0x7f12068f

    .line 6416
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f12033b

    .line 6417
    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 6418
    invoke-virtual {v2, v3}, Landroidx/core/app/g$e;->a(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/core/app/g$e;->b(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    move-result-object v3

    const v4, 0x7f080351

    invoke-virtual {v3, v4}, Landroidx/core/app/g$e;->a(I)Landroidx/core/app/g$e;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/core/app/g$e;->a(Z)Landroidx/core/app/g$e;

    .line 6419
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    const-class v4, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    const/high16 v3, 0x20000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 6420
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 6975
    iput-object v1, v2, Landroidx/core/app/g$e;->f:Landroid/app/PendingIntent;

    const/4 v1, 0x2

    .line 6422
    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/core/app/g$e;->a(Landroid/net/Uri;)Landroidx/core/app/g$e;

    const/4 v1, 0x7

    .line 6423
    invoke-virtual {v2, v1}, Landroidx/core/app/g$e;->b(I)Landroidx/core/app/g$e;

    .line 7275
    iput v4, v2, Landroidx/core/app/g$e;->l:I

    const/16 v1, 0x8

    .line 6425
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/NotificationManager;->a(ILandroidx/core/app/g$e;)Z

    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->d:Landroid/content/Context;

    return-object v0
.end method

.method protected getService()Lcom/callapp/contacts/sync/service/RealSyncService;
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->d:Landroid/content/Context;

    check-cast v0, Lcom/callapp/contacts/sync/service/RealSyncService;

    return-object v0
.end method
