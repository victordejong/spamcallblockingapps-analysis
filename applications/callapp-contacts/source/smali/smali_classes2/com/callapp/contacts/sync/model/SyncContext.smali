.class public Lcom/callapp/contacts/sync/model/SyncContext;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MAX_TOOLTIP_CONTACTS_SIZE:I = 0x4

.field private static final longRunningSyncers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private static final longRunningSyncersLock:Ljava/lang/Object;


# instance fields
.field public allContacts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            ">;"
        }
    .end annotation
.end field

.field public contactItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;",
            ">;"
        }
    .end annotation
.end field

.field public contentResolver:Landroid/content/ContentResolver;

.field public context:Landroid/content/Context;

.field public favoriteContacts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            ">;"
        }
    .end annotation
.end field

.field public frequentlyCalledContacts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            ">;"
        }
    .end annotation
.end field

.field public isFirstSync:Z

.field public startDate:J

.field public syncData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/callapp/contacts/sync/model/SyncerData;",
            ">;"
        }
    .end annotation
.end field

.field private final syncDataLocker:Ljava/lang/Object;

.field public syncers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/sync/syncer/Syncer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/callapp/contacts/sync/model/SyncContext;->longRunningSyncersLock:Ljava/lang/Object;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/callapp/contacts/sync/model/SyncContext;->longRunningSyncers:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/callapp/contacts/sync/model/SyncContext;->contactItems:Ljava/util/List;

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/callapp/contacts/sync/model/SyncContext;->startDate:J

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/sync/model/SyncContext;->syncDataLocker:Ljava/lang/Object;

    return-void
.end method

.method private getSyncData(J)Lcom/callapp/contacts/sync/model/SyncerData;
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/callapp/contacts/sync/model/SyncContext;->syncData:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/sync/model/SyncerData;

    if-nez v0, :cond_1

    .line 45
    iget-object v1, p0, Lcom/callapp/contacts/sync/model/SyncContext;->syncDataLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/sync/model/SyncContext;->syncData:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/sync/model/SyncerData;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/callapp/contacts/sync/model/SyncerData;

    invoke-direct {v0}, Lcom/callapp/contacts/sync/model/SyncerData;-><init>()V

    .line 49
    sget-object v2, Lcom/callapp/framework/phone/Phone;->b:Lcom/callapp/framework/phone/Phone;

    invoke-static {v2, p1, p2}, Lcom/callapp/contacts/model/contact/ContactData;->generateId(Lcom/callapp/framework/phone/Phone;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/sync/model/SyncerData;->setPhoneOrIdKey(Ljava/lang/String;)V

    .line 50
    iget-object v2, p0, Lcom/callapp/contacts/sync/model/SyncContext;->syncData:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public getSyncData(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/sync/model/SyncerData;
    .locals 2

    .line 37
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/callapp/contacts/sync/model/SyncContext;->getSyncData(J)Lcom/callapp/contacts/sync/model/SyncerData;

    move-result-object p1

    return-object p1
.end method

.method public isLongRunningSyncersAlreadyRunning(Lcom/callapp/contacts/sync/syncer/Syncer;)Z
    .locals 3

    .line 59
    sget-object v0, Lcom/callapp/contacts/sync/model/SyncContext;->longRunningSyncersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-object v1, Lcom/callapp/contacts/sync/model/SyncContext;->longRunningSyncers:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    .line 61
    monitor-exit v0

    return p1

    .line 63
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 64
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 66
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeSyncerFromLongRunningSyncersIfNotAlreadyRunning(Lcom/callapp/contacts/sync/syncer/Syncer;)V
    .locals 2

    .line 71
    sget-object v0, Lcom/callapp/contacts/sync/model/SyncContext;->longRunningSyncersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 72
    :try_start_0
    sget-object v1, Lcom/callapp/contacts/sync/model/SyncContext;->longRunningSyncers:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 73
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
