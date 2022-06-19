.class public Lcom/callapp/contacts/sync/syncer/upload/GenomeUploadSyncer;
.super Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer$UPLOAD_TYPE;
    .locals 0

    .line 98
    sget-object p1, Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer$UPLOAD_TYPE;->ONLY_DATA_FROM_DEVICE:Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer$UPLOAD_TYPE;

    return-object p1
.end method

.method public onSyncEnd()Z
    .locals 13

    .line 52
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/upload/GenomeUploadSyncer;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/sync/model/SyncContext;->isLongRunningSyncersAlreadyRunning(Lcom/callapp/contacts/sync/syncer/Syncer;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 58
    :cond_0
    :try_start_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aR:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/callapp/contacts/sync/syncer/upload/GenomeUploadSyncer;->isSyncEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 62
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

    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/upload/GenomeUploadSyncer;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    iget-object v0, v0, Lcom/callapp/contacts/sync/model/SyncContext;->allContacts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    int-to-double v6, v0

    new-array v8, v1, [Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/upload/GenomeUploadSyncer;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    iget-object v0, v0, Lcom/callapp/contacts/sync/model/SyncContext;->allContacts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/callapp/contacts/sync/syncer/upload/GenomeUploadSyncer;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    iget-boolean v2, v2, Lcom/callapp/contacts/sync/model/SyncContext;->isFirstSync:Z

    .line 1079
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "Syncers"

    const-string v5, " failed"

    if-nez v3, :cond_1

    .line 1080
    :try_start_1
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "no internet connection"

    invoke-virtual {v0, v4, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    goto :goto_2

    .line 1085
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/util/servermessage/ValidateClientTask;->getServerMessage()Lcom/callapp/common/model/json/JSONClientValidationResponse;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1086
    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONClientValidationResponse;->isDisableContactsUpload()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 1092
    :cond_2
    invoke-virtual {p0, v0, v2}, Lcom/callapp/contacts/sync/syncer/upload/GenomeUploadSyncer;->a(Ljava/util/Collection;Z)Ljava/io/File;

    move-result-object v0

    const-string v2, "uced"

    .line 1093
    invoke-virtual {p0, v2, v0}, Lcom/callapp/contacts/sync/syncer/upload/GenomeUploadSyncer;->sendFileToServer(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    goto :goto_2

    .line 1087
    :cond_3
    :goto_1
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "serverMessage"

    invoke-virtual {v0, v4, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :goto_2
    if-eqz v0, :cond_4

    .line 64
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v6

    const-string v7, "Syncers"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " end"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "uploadContacts end"

    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/upload/GenomeUploadSyncer;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    iget-object v0, v0, Lcom/callapp/contacts/sync/model/SyncContext;->allContacts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    int-to-double v10, v0

    new-array v12, v1, [Ljava/lang/String;

    invoke-virtual/range {v6 .. v12}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 65
    invoke-super {p0}, Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer;->onSyncEnd()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    iget-object v1, p0, Lcom/callapp/contacts/sync/syncer/upload/GenomeUploadSyncer;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    invoke-virtual {v1, p0}, Lcom/callapp/contacts/sync/model/SyncContext;->removeSyncerFromLongRunningSyncersIfNotAlreadyRunning(Lcom/callapp/contacts/sync/syncer/Syncer;)V

    return v0

    .line 67
    :cond_4
    :try_start_2
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

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "uploadContacts failed"

    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/upload/GenomeUploadSyncer;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    iget-object v0, v0, Lcom/callapp/contacts/sync/model/SyncContext;->allContacts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    int-to-double v6, v0

    new-array v8, v1, [Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    :cond_5
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/upload/GenomeUploadSyncer;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/sync/model/SyncContext;->removeSyncerFromLongRunningSyncersIfNotAlreadyRunning(Lcom/callapp/contacts/sync/syncer/Syncer;)V

    return v1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/callapp/contacts/sync/syncer/upload/GenomeUploadSyncer;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    invoke-virtual {v1, p0}, Lcom/callapp/contacts/sync/model/SyncContext;->removeSyncerFromLongRunningSyncersIfNotAlreadyRunning(Lcom/callapp/contacts/sync/syncer/Syncer;)V

    .line 74
    throw v0
.end method

.method public shouldSync()Z
    .locals 7

    .line 26
    const-class v0, Lcom/callapp/contacts/sync/syncer/upload/GenomeUploadSyncer;

    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v1

    const-string v2, "uploadConfiguration"

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27
    const-class v2, Lcom/callapp/contacts/sync/syncer/upload/JSONUploadConfiguration;

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/serializer/string/Parser;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/sync/syncer/upload/JSONUploadConfiguration;

    if-eqz v1, :cond_2

    .line 29
    invoke-virtual {v1}, Lcom/callapp/contacts/sync/syncer/upload/JSONUploadConfiguration;->isDisabled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string v1, "shouldSync return false. jsonUploadConfiguration.isDisabled"

    .line 30
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return v3

    .line 34
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-virtual {v1}, Lcom/callapp/contacts/sync/syncer/upload/JSONUploadConfiguration;->getDisabledInstallPackageNames()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    aput-object v2, v6, v3

    invoke-static {v4, v6}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 36
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "shouldSync return false. installPackageName: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return v3

    :cond_1
    const v2, 0x7f120688

    .line 40
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/callapp/contacts/sync/syncer/upload/JSONUploadConfiguration;->getDisabledStoreNames()Ljava/util/List;

    move-result-object v1

    new-array v4, v5, [Ljava/lang/String;

    aput-object v2, v4, v3

    invoke-static {v1, v4}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 42
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "shouldSync return false. storeName: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return v3

    .line 47
    :cond_2
    invoke-super {p0}, Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer;->shouldSync()Z

    move-result v0

    return v0
.end method
