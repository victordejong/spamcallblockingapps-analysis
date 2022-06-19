.class public Lcom/callapp/contacts/sync/syncer/upload/UserMetaDataUploadSyncer;
.super Lcom/callapp/contacts/sync/syncer/upload/UploadSyncer;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/callapp/contacts/sync/syncer/upload/UploadSyncer;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)Ljava/io/File;
    .locals 7

    .line 83
    new-instance v0, Lcom/callapp/common/model/json/JSONMetaData;

    invoke-direct {v0}, Lcom/callapp/common/model/json/JSONMetaData;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONMetaData;->setAndroidId(Ljava/lang/String;)V

    .line 85
    invoke-static {p1}, Lcom/callapp/contacts/util/GooglePlayUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONMetaData;->setGoogleAdvertisingId(Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONMetaData;->setImei(Ljava/lang/String;)V

    .line 87
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONMetaData;->setOsVersion(Ljava/lang/String;)V

    .line 88
    invoke-static {p1}, Lcom/callapp/contacts/util/GooglePlayUtils;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONMetaData;->setGoogleServiceFrameworkId(Ljava/lang/String;)V

    .line 89
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONMetaData;->setManufacturer(Ljava/lang/String;)V

    .line 90
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONMetaData;->setModel(Ljava/lang/String;)V

    .line 91
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONMetaData;->setDevice(Ljava/lang/String;)V

    .line 92
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->aP:Lcom/callapp/contacts/manager/preferences/prefs/CountryIsoPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/CountryIsoPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONMetaData;->setCountryISO(Ljava/lang/String;)V

    .line 93
    invoke-static {p1}, Lcom/callapp/contacts/util/PackageUtils;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONMetaData;->setInstalledApps(Ljava/util/ArrayList;)V

    .line 94
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getCarrierName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONMetaData;->setCarrier(Ljava/lang/String;)V

    const-string v1, "system_locale"

    .line 95
    invoke-static {p1, v1}, Lcom/callapp/contacts/util/LocaleUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/util/LocaleUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/callapp/common/model/json/JSONMetaData;->setLanguage(Ljava/lang/String;)V

    .line 97
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 99
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 100
    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 101
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 102
    new-instance v5, Lcom/callapp/common/model/json/JSONAccount;

    invoke-direct {v5}, Lcom/callapp/common/model/json/JSONAccount;-><init>()V

    .line 103
    iget-object v6, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/callapp/common/model/json/JSONAccount;->setName(Ljava/lang/String;)V

    .line 104
    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/callapp/common/model/json/JSONAccount;->setType(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 107
    :cond_0
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    invoke-virtual {v0, p1}, Lcom/callapp/common/model/json/JSONMetaData;->setAccounts(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 111
    const-class v1, Lcom/callapp/contacts/sync/syncer/upload/UserMetaDataUploadSyncer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Error getting accouns"

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_1
    :goto_1
    const/4 p1, 0x0

    .line 131
    :try_start_1
    invoke-virtual {p0}, Lcom/callapp/contacts/sync/syncer/upload/UserMetaDataUploadSyncer;->getFile()Ljava/io/File;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    .line 133
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "Cannot create json file, aborting upload"

    invoke-static {v0, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    invoke-static {p1}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    return-object p1

    .line 138
    :cond_2
    :try_start_3
    invoke-static {}, Lcom/callapp/contacts/sync/syncer/upload/UserMetaDataUploadSyncer;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v2

    .line 141
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/sync/syncer/upload/UserMetaDataUploadSyncer;->getBufferedWriter(Ljava/io/File;)Ljava/io/BufferedWriter;

    move-result-object v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v4, "["

    .line 142
    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v2, v3, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Ljava/io/Writer;Ljava/lang/Object;)V

    const-string v0, "]"

    .line 144
    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 153
    invoke-static {v3}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    return-object v1

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_4

    :catch_6
    move-exception v0

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_2

    :catch_8
    move-exception v0

    goto :goto_2

    :catch_9
    move-exception v0

    goto :goto_2

    :catch_a
    move-exception v0

    :goto_2
    move-object v3, p1

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_b
    move-exception v0

    goto :goto_3

    :catch_c
    move-exception v0

    goto :goto_3

    :catch_d
    move-exception v0

    goto :goto_3

    :catch_e
    move-exception v0

    goto :goto_3

    :catch_f
    move-exception v0

    :goto_3
    move-object v1, p1

    move-object v3, v1

    .line 147
    :goto_4
    :try_start_5
    invoke-static {v0}, Lcom/callapp/contacts/util/CrashlyticsUtils;->a(Ljava/lang/Throwable;)V

    .line 148
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "Exception in createJsonFile()"

    invoke-static {v2, v0, v4}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 149
    invoke-static {}, Lcom/callapp/contacts/util/IoUtils;->a()V

    .line 150
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 153
    invoke-static {v3}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    return-object p1

    :catchall_1
    move-exception v0

    move-object p1, v3

    :goto_5
    invoke-static {p1}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    .line 154
    throw v0
.end method


# virtual methods
.method public getUploadMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "muejd"

    return-object v0
.end method

.method public onSyncEnd()Z
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/upload/UserMetaDataUploadSyncer;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/sync/model/SyncContext;->isLongRunningSyncersAlreadyRunning(Lcom/callapp/contacts/sync/syncer/Syncer;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 57
    :cond_0
    :try_start_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aR:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 58
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/callapp/contacts/sync/syncer/upload/UserMetaDataUploadSyncer;->isSyncEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/upload/UserMetaDataUploadSyncer;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    iget-object v0, v0, Lcom/callapp/contacts/sync/model/SyncContext;->context:Landroid/content/Context;

    .line 1071
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 1076
    :cond_1
    invoke-direct {p0, v0}, Lcom/callapp/contacts/sync/syncer/upload/UserMetaDataUploadSyncer;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 1077
    invoke-virtual {p0}, Lcom/callapp/contacts/sync/syncer/upload/UserMetaDataUploadSyncer;->getUploadMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/callapp/contacts/sync/syncer/upload/UserMetaDataUploadSyncer;->sendFileToServer(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    .line 60
    invoke-super {p0}, Lcom/callapp/contacts/sync/syncer/upload/UploadSyncer;->onSyncEnd()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    iget-object v1, p0, Lcom/callapp/contacts/sync/syncer/upload/UserMetaDataUploadSyncer;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    invoke-virtual {v1, p0}, Lcom/callapp/contacts/sync/model/SyncContext;->removeSyncerFromLongRunningSyncersIfNotAlreadyRunning(Lcom/callapp/contacts/sync/syncer/Syncer;)V

    return v0

    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/upload/UserMetaDataUploadSyncer;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/sync/model/SyncContext;->removeSyncerFromLongRunningSyncersIfNotAlreadyRunning(Lcom/callapp/contacts/sync/syncer/Syncer;)V

    return v1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/callapp/contacts/sync/syncer/upload/UserMetaDataUploadSyncer;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    invoke-virtual {v1, p0}, Lcom/callapp/contacts/sync/model/SyncContext;->removeSyncerFromLongRunningSyncersIfNotAlreadyRunning(Lcom/callapp/contacts/sync/syncer/Syncer;)V

    .line 66
    throw v0
.end method
