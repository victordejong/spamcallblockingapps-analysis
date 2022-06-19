.class public abstract Lcom/callapp/contacts/sync/syncer/upload/JsonContactsUploadSyncher;
.super Lcom/callapp/contacts/sync/syncer/upload/UploadSyncer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/callapp/common/model/json/JSONContact;",
        ">",
        "Lcom/callapp/contacts/sync/syncer/upload/UploadSyncer;"
    }
.end annotation


# static fields
.field private static final THREE_DAYS_MILLIS:J = 0xf731400L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/callapp/contacts/sync/syncer/upload/UploadSyncer;-><init>()V

    return-void
.end method

.method private createJsonContactsFile()Ljava/io/File;
    .locals 8

    .line 77
    invoke-virtual {p0}, Lcom/callapp/contacts/sync/syncer/upload/JsonContactsUploadSyncher;->getContacts()Ljava/util/Collection;

    move-result-object v0

    .line 78
    invoke-virtual {p0}, Lcom/callapp/contacts/sync/syncer/upload/JsonContactsUploadSyncher;->allowEmptyUpload()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Doesn\'t have contacts to upload"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v2

    .line 87
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/callapp/contacts/sync/syncer/upload/JsonContactsUploadSyncher;->getFile()Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 89
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "Cannot create json file, aborting upload"

    invoke-static {v0, v3}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    invoke-static {v2}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    return-object v2

    .line 94
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/callapp/contacts/sync/syncer/upload/JsonContactsUploadSyncher;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v3

    .line 97
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/sync/syncer/upload/JsonContactsUploadSyncher;->getBufferedWriter(Ljava/io/File;)Ljava/io/BufferedWriter;

    move-result-object v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v5, "["

    .line 98
    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 101
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/callapp/common/model/json/JSONContact;

    if-eqz v5, :cond_2

    const-string v7, ","

    .line 104
    invoke-virtual {v4, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 107
    :cond_2
    invoke-virtual {v3, v4, v6}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Ljava/io/Writer;Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "]"

    .line 111
    invoke-virtual {v4, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 120
    invoke-static {v4}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v0

    goto :goto_1

    :catch_7
    move-exception v0

    goto :goto_1

    :catch_8
    move-exception v0

    goto :goto_1

    :catch_9
    move-exception v0

    :goto_1
    move-object v4, v2

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_a
    move-exception v0

    goto :goto_2

    :catch_b
    move-exception v0

    goto :goto_2

    :catch_c
    move-exception v0

    goto :goto_2

    :catch_d
    move-exception v0

    goto :goto_2

    :catch_e
    move-exception v0

    :goto_2
    move-object v1, v2

    move-object v4, v1

    .line 114
    :goto_3
    :try_start_4
    invoke-static {v0}, Lcom/callapp/contacts/util/CrashlyticsUtils;->a(Ljava/lang/Throwable;)V

    .line 115
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "Exception in createContactJsonFile()"

    invoke-static {v3, v0, v5}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/callapp/contacts/util/IoUtils;->a()V

    .line 117
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 120
    invoke-static {v4}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    return-object v2

    :catchall_1
    move-exception v0

    move-object v2, v4

    :goto_4
    invoke-static {v2}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    .line 121
    throw v0
.end method


# virtual methods
.method public allowEmptyUpload()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getContacts()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation
.end method

.method public getSyncPeriodMillis()J
    .locals 2

    const-wide/32 v0, 0xf731400

    return-wide v0
.end method

.method public abstract getUploadMethod()Ljava/lang/String;
.end method

.method public onSyncEnd()Z
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/upload/JsonContactsUploadSyncher;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/sync/model/SyncContext;->isLongRunningSyncersAlreadyRunning(Lcom/callapp/contacts/sync/syncer/Syncer;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 45
    :cond_0
    :try_start_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aR:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 46
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/callapp/contacts/sync/syncer/upload/JsonContactsUploadSyncher;->isSyncEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {p0}, Lcom/callapp/contacts/sync/syncer/upload/JsonContactsUploadSyncher;->uploadToServer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    invoke-super {p0}, Lcom/callapp/contacts/sync/syncer/upload/UploadSyncer;->onSyncEnd()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    iget-object v1, p0, Lcom/callapp/contacts/sync/syncer/upload/JsonContactsUploadSyncher;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    invoke-virtual {v1, p0}, Lcom/callapp/contacts/sync/model/SyncContext;->removeSyncerFromLongRunningSyncersIfNotAlreadyRunning(Lcom/callapp/contacts/sync/syncer/Syncer;)V

    return v0

    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/upload/JsonContactsUploadSyncher;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/sync/model/SyncContext;->removeSyncerFromLongRunningSyncersIfNotAlreadyRunning(Lcom/callapp/contacts/sync/syncer/Syncer;)V

    return v1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/callapp/contacts/sync/syncer/upload/JsonContactsUploadSyncher;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    invoke-virtual {v1, p0}, Lcom/callapp/contacts/sync/model/SyncContext;->removeSyncerFromLongRunningSyncersIfNotAlreadyRunning(Lcom/callapp/contacts/sync/syncer/Syncer;)V

    .line 54
    throw v0
.end method

.method protected onUploadCompleted(Z)V
    .locals 0

    return-void
.end method

.method public uploadToServer()Z
    .locals 2

    .line 59
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 64
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/sync/syncer/upload/JsonContactsUploadSyncher;->createJsonContactsFile()Ljava/io/File;

    move-result-object v0

    .line 66
    invoke-virtual {p0}, Lcom/callapp/contacts/sync/syncer/upload/JsonContactsUploadSyncher;->getUploadMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/callapp/contacts/sync/syncer/upload/JsonContactsUploadSyncher;->sendFileToServer(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    .line 67
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/sync/syncer/upload/JsonContactsUploadSyncher;->onUploadCompleted(Z)V

    return v0
.end method
