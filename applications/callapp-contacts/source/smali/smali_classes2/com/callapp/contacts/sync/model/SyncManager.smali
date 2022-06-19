.class public Lcom/callapp/contacts/sync/model/SyncManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LAST_SYNC:Ljava/lang/String; = ".lastSync"

.field public static final START_SYNC:Ljava/lang/String; = ".startSync"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSyncData()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/callapp/contacts/sync/model/SyncerData;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 92
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/sync/model/SyncerData;

    invoke-virtual {v1, v2}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v1

    .line 93
    invoke-virtual {v1}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/sync/model/SyncManager$2;

    invoke-direct {v2, v0}, Lcom/callapp/contacts/sync/model/SyncManager$2;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lio/objectbox/query/Query;->a(Lio/objectbox/query/c;)V

    return-object v0
.end method

.method public static resetContactDbAndSynchronizes(Ljava/lang/String;)J
    .locals 11

    .line 39
    invoke-static {}, Lcom/callapp/contacts/sync/model/SyncManager;->resetSyncersPrefs()V

    const-string v0, ","

    .line 40
    invoke-static {p0, v0}, Lcom/callapp/framework/util/StringUtils;->k(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 41
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    .line 42
    const-class v1, Lcom/callapp/contacts/sync/model/SyncerData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v1

    .line 43
    array-length v2, p0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_3

    aget-object v6, p0, v5

    .line 44
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v6

    const/16 v7, 0x1f4

    .line 46
    :try_start_0
    invoke-static {v6, v7}, Lcom/callapp/contacts/loader/device/DeviceIdLoader;->a(Lcom/callapp/framework/phone/Phone;I)J

    move-result-wide v6

    .line 47
    invoke-virtual {v1}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v8

    sget-object v9, Lcom/callapp/contacts/sync/model/SyncerData_;->phoneOrIdKey:Lio/objectbox/g;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v9, v6}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v6

    .line 48
    invoke-virtual {v6}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/callapp/contacts/sync/model/SyncerData;

    if-eqz v7, :cond_1

    .line 52
    invoke-virtual {v7}, Lcom/callapp/contacts/sync/model/SyncerData;->getSyncerDetails()Lio/objectbox/relation/ToMany;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 54
    invoke-virtual {v7}, Lio/objectbox/relation/ToMany;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 55
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 56
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 57
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/callapp/contacts/sync/model/SyncerDetails;

    .line 58
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 62
    :cond_0
    const-class v7, Lcom/callapp/contacts/sync/model/SyncerDetails;

    invoke-virtual {v0, v7}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v7

    .line 63
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v3, v9

    .line 65
    new-instance v9, Lcom/callapp/contacts/sync/model/SyncManager$1;

    invoke-direct {v9, v7, v8, v6}, Lcom/callapp/contacts/sync/model/SyncManager$1;-><init>(Lio/objectbox/a;Ljava/util/List;Lio/objectbox/query/Query;)V

    invoke-virtual {v0, v9}, Lio/objectbox/BoxStore;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/callapp/contacts/loader/device/DeviceIdLoader$OperationFailedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_1
    return-wide v3

    :catch_0
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-wide v3
.end method

.method public static resetDbAndSynchronizers()V
    .locals 2

    .line 32
    invoke-static {}, Lcom/callapp/contacts/sync/model/SyncManager;->resetSyncersPrefs()V

    .line 33
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/sync/model/SyncerDetails;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/a;->d()V

    .line 34
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/sync/model/SyncerData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/a;->d()V

    return-void
.end method

.method private static resetSyncersPrefs()V
    .locals 6

    .line 84
    invoke-static {}, Lcom/callapp/contacts/sync/Synchronizers;->getSyncers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/sync/Synchronizers;

    .line 85
    new-instance v2, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lcom/callapp/contacts/sync/Synchronizers;->syncer:Lcom/callapp/contacts/sync/syncer/Syncer;

    invoke-virtual {v1}, Lcom/callapp/contacts/sync/syncer/Syncer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".lastSync"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v2, v1, v5}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    .line 86
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setSyncData(Lcom/callapp/contacts/sync/model/SyncerData;)V
    .locals 2

    .line 103
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/sync/model/SyncerData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    return-void
.end method
