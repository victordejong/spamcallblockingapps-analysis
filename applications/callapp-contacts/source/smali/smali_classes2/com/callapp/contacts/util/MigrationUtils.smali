.class public Lcom/callapp/contacts/util/MigrationUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 15

    .line 51
    const-class v0, Lcom/callapp/contacts/util/MigrationUtils;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_b

    .line 53
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/model/objectbox/CallRecorder;

    invoke-virtual {v1, v2}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v1

    .line 55
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/recorder/CallRecorderManager;->getAllRecords()Ljava/util/List;

    move-result-object v2

    .line 56
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/CallAppApplication;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 59
    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    const-string v7, ", changedFile: "

    const-string v8, " out of "

    const/4 v9, 0x0

    if-eqz v6, :cond_2

    .line 60
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "migrateAndroidQToExternalDirectory: oldPath: "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", newPath: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 62
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    .line 64
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v10, 0x0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/callapp/contacts/model/objectbox/CallRecorder;

    .line 65
    invoke-virtual {v11}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getFileName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v3}, Lcom/callapp/framework/util/StringUtils;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 66
    invoke-virtual {v11}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getFileName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v3, v5}, Lcom/callapp/framework/util/StringUtils;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 67
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "migrateAndroidQToExternalDirectory: callRecorder.getFileName(): "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getFileName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 68
    new-instance v13, Ljava/io/File;

    invoke-virtual {v11}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getFileName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 71
    :try_start_2
    invoke-static {v13, v14}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/File;Ljava/io/File;)V

    .line 72
    invoke-static {v13}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/File;)V

    .line 73
    invoke-virtual {v11, v12}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->setFileName(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v1, v11}, Lio/objectbox/a;->a(Ljava/lang/Object;)J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :catch_0
    move-exception v11

    .line 77
    :try_start_3
    invoke-static {v0, v11}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 82
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "migrateAndroidQToExternalDirectory completed. Recording files moved: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 85
    :cond_2
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "CallAppRecording"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 87
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 88
    array-length v2, v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    if-nez v2, :cond_4

    .line 90
    :cond_3
    :try_start_4
    invoke-static {v1}, Lcom/callapp/contacts/util/IoUtils;->c(Ljava/io/File;)V

    const-string v1, "migrateAndroidQToExternalDirectory deleted old directory: CallAppRecording"

    .line 91
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_5
    const-string v2, "migrateAndroidQToExternalDirectory: delete directory CallAppRecording, exception: "

    .line 93
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 99
    :cond_4
    :goto_1
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->dP:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->isNotNull()Z

    move-result v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    const-string v2, "CallAppMedia"

    if-eqz v1, :cond_5

    .line 100
    :try_start_6
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v6, Ljava/io/File;

    invoke-static {v2}, Lcom/callapp/contacts/util/IoUtils;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    const-string v11, "callAppCustomKeypad"

    invoke-direct {v6, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, v6}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 101
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "migrateAndroidQToExternalDirectory: CustomKeypad: "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Lcom/callapp/contacts/manager/preferences/Prefs;->dP:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v10}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", newUri: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 102
    sget-object v6, Lcom/callapp/contacts/manager/preferences/Prefs;->dP:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 106
    :cond_5
    sget-object v1, Lcom/callapp/contacts/loader/PersonalStoreItemDataManager;->a:Lcom/callapp/contacts/loader/PersonalStoreItemDataManager$Companion;

    sget-object v1, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->VIDEO_RINGTONE:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    invoke-static {v1}, Lcom/callapp/contacts/loader/PersonalStoreItemDataManager$Companion;->b(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Ljava/util/List;

    move-result-object v1

    .line 107
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 108
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    .line 110
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v10, 0x0

    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    .line 111
    invoke-virtual {v11}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->getPersonalStoreItemUrl()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v3}, Lcom/callapp/framework/util/StringUtils;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 112
    invoke-virtual {v11}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->getPersonalStoreItemUrl()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v3, v5}, Lcom/callapp/framework/util/StringUtils;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 113
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "migrateAndroidQToExternalDirectory: videoRingtoneUrlData.getVideoUrl(): "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->getPersonalStoreItemUrl()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 114
    new-instance v13, Ljava/io/File;

    invoke-virtual {v11}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->getPersonalStoreItemUrl()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 117
    :try_start_7
    invoke-static {v13, v14}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/File;Ljava/io/File;)V

    .line 118
    invoke-static {v13}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/File;)V

    .line 119
    invoke-virtual {v11, v12}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->setPersonalStoreItemUrl(Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v12

    invoke-virtual {v12}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v12

    const-class v13, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    invoke-virtual {v12, v13}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v12

    .line 121
    invoke-virtual {v12, v11}, Lio/objectbox/a;->a(Ljava/lang/Object;)J
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :catch_2
    move-exception v11

    .line 124
    :try_start_8
    invoke-static {v0, v11}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 129
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "migrateAndroidQToExternalDirectory completed. VideoRingtone files moved: "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 133
    :cond_8
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/callapp/contacts/CallAppApplication;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 135
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 136
    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 137
    array-length v4, v2

    :goto_3
    if-ge v9, v4, :cond_9

    aget-object v6, v2, v9

    .line 138
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3, v5}, Lcom/callapp/framework/util/StringUtils;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 139
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 141
    :try_start_9
    invoke-static {v6, v8}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/File;Ljava/io/File;)V

    .line 142
    invoke-static {v6}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_4

    :catch_3
    move-exception v7

    .line 144
    :try_start_a
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "migrateAndroidQToExternalDirectory: delete file: "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", exception: "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 149
    :cond_9
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->a([Ljava/lang/Object;)Z

    move-result v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    if-eqz v2, :cond_a

    .line 151
    :try_start_b
    invoke-static {v1}, Lcom/callapp/contacts/util/IoUtils;->c(Ljava/io/File;)V

    const-string v1, "migrateAndroidQToExternalDirectory deleted old directory: CallAppMedia"

    .line 152
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    return-void

    :catch_4
    move-exception v1

    :try_start_c
    const-string v2, "migrateAndroidQToExternalDirectory: delete directory: CallAppMedia, exception: "

    .line 154
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    :cond_a
    return-void

    :catch_5
    move-exception v0

    .line 160
    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Throwable;)V

    :cond_b
    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/UpdateContactItem;",
            ">;)V"
        }
    .end annotation

    .line 240
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/ContactLookupData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 241
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 242
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/UpdateContactItem;

    .line 243
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v3

    sget-object v4, Lcom/callapp/contacts/model/objectbox/ContactLookupData_;->contactId:Lio/objectbox/g;

    iget-object v5, v2, Lcom/callapp/contacts/model/UpdateContactItem;->contactId:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v3

    invoke-virtual {v3}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/model/objectbox/ContactLookupData;

    if-eqz v3, :cond_0

    .line 245
    iget-object v4, v2, Lcom/callapp/contacts/model/UpdateContactItem;->description:Ljava/lang/String;

    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 246
    iget-object v2, v2, Lcom/callapp/contacts/model/UpdateContactItem;->description:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->setDescription(Ljava/lang/String;)V

    .line 247
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 251
    :cond_1
    invoke-virtual {v0, v1}, Lio/objectbox/a;->a(Ljava/util/Collection;)V

    return-void
.end method

.method public static b()V
    .locals 4

    .line 166
    sget-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->VIDEO_RINGTONE:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    invoke-static {v0}, Lcom/callapp/contacts/loader/PersonalStoreItemDataManager;->b(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Ljava/util/List;

    move-result-object v0

    .line 167
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 169
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    .line 171
    invoke-virtual {v2, v3}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->setUploaded(Z)V

    .line 172
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 175
    :cond_1
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    invoke-static {v1}, Lcom/callapp/contacts/loader/PersonalStoreItemDataManager;->a(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public static c()V
    .locals 4

    .line 182
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/CallRecorderManager;->getAllRecords()Ljava/util/List;

    move-result-object v0

    .line 183
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 185
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/objectbox/CallRecorder;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    .line 187
    invoke-virtual {v2, v3}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->setUploaded(Z)V

    .line 188
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
    :cond_1
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    invoke-static {v1}, Lcom/callapp/contacts/recorder/CallRecorderManager;->b(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public static d()V
    .locals 7

    .line 198
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 199
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;

    invoke-virtual {v1, v2}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v1

    .line 201
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v2

    .line 202
    invoke-virtual {v1}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v3

    invoke-virtual {v3}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v3

    .line 204
    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 205
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    .line 206
    sget-object v6, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->VIDEO_RINGTONE:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    invoke-virtual {v5, v6}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->setPersonalStoreItemType(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)V

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {v0, v2}, Lio/objectbox/a;->a(Ljava/util/Collection;)V

    .line 211
    :cond_1
    invoke-static {v3}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;

    .line 213
    sget-object v4, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->VIDEO_RINGTONE:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    invoke-virtual {v2, v4}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;->setPersonalStoreItemType(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)V

    goto :goto_1

    .line 215
    :cond_2
    invoke-virtual {v1, v3}, Lio/objectbox/a;->a(Ljava/util/Collection;)V

    :cond_3
    return-void
.end method

.method public static e()V
    .locals 11

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 221
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->getContactsWithPhoneNumber()Ljava/util/List;

    move-result-object v1

    .line 222
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    .line 223
    iget-object v3, v2, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->lookupKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;->b(Ljava/lang/String;)Lcom/callapp/contacts/model/objectbox/ContactLookupData;

    move-result-object v3

    if-nez v3, :cond_0

    .line 225
    new-instance v3, Lcom/callapp/contacts/model/objectbox/ContactLookupData;

    iget-object v5, v2, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->lookupKey:Ljava/lang/String;

    iget-wide v6, v2, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->contactId:J

    iget-object v8, v2, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    iget-object v9, v2, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->normalNumbers:Ljava/util/List;

    iget-object v10, v2, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->h:Ljava/lang/String;

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    .line 227
    :cond_0
    iget-wide v4, v2, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->contactId:J

    invoke-virtual {v3, v4, v5}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->setContactId(J)V

    .line 228
    iget-object v4, v2, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->setDisplayName(Ljava/lang/String;)V

    .line 229
    iget-object v2, v2, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->normalNumbers:Ljava/util/List;

    invoke-virtual {v3, v2}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->setPhoneNumbers(Ljava/util/List;)V

    .line 231
    :goto_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 234
    :cond_1
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 235
    invoke-static {v0}, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;->a(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public static f()V
    .locals 5

    .line 298
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->getAllImNotificationData()Ljava/util/List;

    move-result-object v0

    .line 299
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 300
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    .line 301
    iget-object v3, v2, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->phoneAsRaw:Ljava/lang/String;

    invoke-static {v3}, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 302
    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 303
    invoke-virtual {v2, v3}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->setDisplayName(Ljava/lang/String;)V

    .line 304
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 307
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 308
    invoke-static {v1}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public static g()V
    .locals 10

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 327
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->getContactsWithPhoneNumber()Ljava/util/List;

    move-result-object v1

    .line 328
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    .line 329
    iget-object v3, v2, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->e:Ljava/lang/String;

    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 330
    new-instance v3, Lcom/callapp/contacts/model/UpdateContactItem;

    iget-wide v4, v2, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->contactId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, v2, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->lookupKey:Ljava/lang/String;

    iget-object v7, v2, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    iget-object v8, v2, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->normalNumbers:Ljava/util/List;

    iget-object v9, v2, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->h:Ljava/lang/String;

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/callapp/contacts/model/UpdateContactItem;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 331
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 335
    :cond_1
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 336
    invoke-static {}, Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver;->getContactUtilsContactsContentObserver()Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 338
    invoke-static {v0}, Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver;->a(Ljava/util/List;)Z

    :cond_2
    return-void
.end method

.method public static getAllContactsWithOrganizationData()Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/UpdateContactItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 256
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 257
    invoke-static {v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Landroid/net/Uri;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    const-string v2, "lookup"

    .line 258
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    const-string v3, "contact_id"

    .line 259
    invoke-virtual {v1, v3}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    const-string v4, "data1"

    .line 260
    invoke-virtual {v1, v4}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    const-string v5, "data4"

    .line 261
    invoke-virtual {v1, v5}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    const-string v6, "mimetype"

    .line 262
    invoke-virtual {v1, v6}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    const-string v7, "vnd.android.cursor.item/phone_v2"

    const-string v8, "vnd.android.cursor.item/organization"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    const-string v9, "mimetype= ? OR mimetype= ?"

    .line 1142
    invoke-virtual {v1, v9, v7}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v7, "!="

    const/4 v9, 0x0

    .line 264
    invoke-virtual {v1, v4, v7, v9}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    const-string v9, ""

    .line 265
    invoke-virtual {v1, v4, v7, v9}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    const-string v9, "account_type"

    const-string v10, "CallApp"

    .line 266
    invoke-virtual {v1, v9, v7, v10}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    .line 267
    invoke-virtual {v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    if-eqz v1, :cond_2

    .line 274
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 276
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_1

    .line 277
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 278
    invoke-static {v7, v8}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 279
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 280
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 281
    invoke-static {v7, v9}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 282
    invoke-static {v15}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 283
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 284
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 285
    new-instance v7, Lcom/callapp/contacts/model/UpdateContactItem;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v13, ""

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v7

    invoke-direct/range {v10 .. v15}, Lcom/callapp/contacts/model/UpdateContactItem;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 286
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 292
    :cond_1
    invoke-static {v1}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    .line 293
    throw v0

    .line 271
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static getInvalidExtractInfoContactsCount()J
    .locals 5

    .line 313
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->getAllImNotificationData()Ljava/util/List;

    move-result-object v0

    .line 315
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    .line 316
    iget-object v4, v3, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->phoneAsRaw:Ljava/lang/String;

    invoke-static {v4}, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 317
    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v3, v3, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->namesMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public static h()V
    .locals 9

    .line 344
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/objectbox/ProfileViewedData_;->type:Lio/objectbox/g;

    sget-object v3, Lcom/callapp/contacts/model/objectbox/TYPE;->VIEWME:Lcom/callapp/contacts/model/objectbox/TYPE;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/TYPE;->getValue()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/objectbox/ProfileViewedData_;->phoneNumber:Lio/objectbox/g;

    const/4 v3, 0x0

    .line 1272
    invoke-virtual {v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;I)Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    .line 345
    sget-object v2, Lcom/callapp/contacts/model/objectbox/ProfileViewedData_;->lastViewed:Lio/objectbox/g;

    const/4 v4, 0x1

    .line 1283
    invoke-virtual {v1, v2, v4}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;I)Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    .line 345
    invoke-virtual {v1}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v1

    .line 346
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    .line 348
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 349
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v6, v5

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;

    .line 350
    invoke-virtual {v7}, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;->getPhoneNumber()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 351
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 353
    :cond_0
    invoke-virtual {v7}, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 356
    :cond_1
    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 357
    invoke-virtual {v0, v2}, Lio/objectbox/a;->b(Ljava/util/Collection;)V

    .line 361
    :cond_2
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/objectbox/ProfileViewedData_;->type:Lio/objectbox/g;

    sget-object v6, Lcom/callapp/contacts/model/objectbox/TYPE;->MYVIEW:Lcom/callapp/contacts/model/objectbox/TYPE;

    invoke-virtual {v6}, Lcom/callapp/contacts/model/objectbox/TYPE;->getValue()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v1, v2, v6, v7}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/objectbox/ProfileViewedData_;->phoneNumber:Lio/objectbox/g;

    .line 2272
    invoke-virtual {v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;I)Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    .line 361
    sget-object v2, Lcom/callapp/contacts/model/objectbox/ProfileViewedData_;->lastViewed:Lio/objectbox/g;

    .line 2283
    invoke-virtual {v1, v2, v4}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;I)Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    .line 361
    invoke-virtual {v1}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v1

    .line 362
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 364
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 365
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;

    .line 366
    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 367
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 369
    :cond_3
    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 372
    :cond_4
    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 373
    invoke-virtual {v0, v2}, Lio/objectbox/a;->b(Ljava/util/Collection;)V

    :cond_5
    return-void
.end method

.method public static i()V
    .locals 2

    .line 379
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    .line 3184
    invoke-static {v0}, Landroidx/work/impl/j;->b(Landroid/content/Context;)Landroidx/work/impl/j;

    move-result-object v0

    const-string v1, "TAG_PERIODIC_BACKUP"

    .line 380
    invoke-virtual {v0, v1}, Landroidx/work/u;->a(Ljava/lang/String;)Landroidx/work/n;

    .line 381
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hW:Lcom/callapp/contacts/manager/preferences/prefs/ArrayPref;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/ArrayPref;->set(Ljava/lang/Object;)V

    return-void
.end method
