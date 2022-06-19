.class public Lcom/callapp/contacts/sync/syncer/upload/GenomeNCUploadSyncer;
.super Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer;-><init>()V

    return-void
.end method

.method private a(Ljava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            ">;)Z"
        }
    .end annotation

    .line 47
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 48
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Syncers"

    const-string v3, "no internet connection"

    invoke-virtual {p1, v2, v0, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 53
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 54
    new-instance p1, Ljava/util/HashSet;

    invoke-static {}, Lcom/callapp/contacts/loader/UserPositiveNegativeManager;->getAllNonContactsWithNegativeOrPositive()Ljava/util/List;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 56
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 57
    new-instance v3, Lcom/callapp/contacts/model/contact/ContactData;

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/callapp/contacts/model/contact/ContactData;-><init>(Lcom/callapp/framework/phone/Phone;JLcom/callapp/contacts/model/objectbox/ExtractedInfo;)V

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/sync/syncer/upload/GenomeNCUploadSyncer;->a(Ljava/util/Collection;Z)Ljava/io/File;

    move-result-object p1

    const-string v0, "unced"

    .line 62
    invoke-virtual {p0, v0, p1}, Lcom/callapp/contacts/sync/syncer/upload/GenomeNCUploadSyncer;->sendFileToServer(Ljava/lang/String;Ljava/io/File;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method protected final a(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer$UPLOAD_TYPE;
    .locals 0

    .line 67
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer$UPLOAD_TYPE;->ONLY_DATA_NOT_FROM_DEVICE:Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer$UPLOAD_TYPE;

    return-object p1

    :cond_0
    sget-object p1, Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer$UPLOAD_TYPE;->ALL_DATA:Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer$UPLOAD_TYPE;

    return-object p1
.end method

.method public onSyncEnd()Z
    .locals 9

    .line 22
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/upload/GenomeNCUploadSyncer;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/sync/model/SyncContext;->isLongRunningSyncersAlreadyRunning(Lcom/callapp/contacts/sync/syncer/Syncer;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 28
    :cond_0
    :try_start_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aR:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 29
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/callapp/contacts/sync/syncer/upload/GenomeNCUploadSyncer;->isSyncEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    const-string v3, "Syncers"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " start"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "uploadContacts start"

    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/upload/GenomeNCUploadSyncer;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    iget-object v0, v0, Lcom/callapp/contacts/sync/model/SyncContext;->allContacts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    int-to-double v6, v0

    new-array v8, v1, [Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/upload/GenomeNCUploadSyncer;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    iget-object v0, v0, Lcom/callapp/contacts/sync/model/SyncContext;->allContacts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/callapp/contacts/sync/syncer/upload/GenomeNCUploadSyncer;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    const-string v3, "Syncers"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " end"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "uploadContacts end"

    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/upload/GenomeNCUploadSyncer;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    iget-object v0, v0, Lcom/callapp/contacts/sync/model/SyncContext;->allContacts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    int-to-double v6, v0

    new-array v8, v1, [Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 33
    invoke-super {p0}, Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer;->onSyncEnd()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    iget-object v1, p0, Lcom/callapp/contacts/sync/syncer/upload/GenomeNCUploadSyncer;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    invoke-virtual {v1, p0}, Lcom/callapp/contacts/sync/model/SyncContext;->removeSyncerFromLongRunningSyncersIfNotAlreadyRunning(Lcom/callapp/contacts/sync/syncer/Syncer;)V

    return v0

    .line 35
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    const-string v3, "Syncers"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " failed"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "uploadContacts failed"

    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/upload/GenomeNCUploadSyncer;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    iget-object v0, v0, Lcom/callapp/contacts/sync/model/SyncContext;->allContacts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    int-to-double v6, v0

    new-array v8, v1, [Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/upload/GenomeNCUploadSyncer;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/sync/model/SyncContext;->removeSyncerFromLongRunningSyncersIfNotAlreadyRunning(Lcom/callapp/contacts/sync/syncer/Syncer;)V

    return v1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/callapp/contacts/sync/syncer/upload/GenomeNCUploadSyncer;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    invoke-virtual {v1, p0}, Lcom/callapp/contacts/sync/model/SyncContext;->removeSyncerFromLongRunningSyncersIfNotAlreadyRunning(Lcom/callapp/contacts/sync/syncer/Syncer;)V

    .line 42
    throw v0
.end method
