.class public Lcom/callapp/contacts/manager/AreaCodesDB;
.super Lcom/callapp/contacts/framework/dao/SQLiteAssetHelper;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/databases"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/manager/AreaCodesDB;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string v0, "areaCodesDB"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 41
    invoke-direct {p0, v0, v1, v2}, Lcom/callapp/contacts/framework/dao/SQLiteAssetHelper;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 42
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/manager/AreaCodesDB;->setForcedUpgradeVersion(I)V

    return-void
.end method

.method public static a()V
    .locals 6

    .line 46
    const-class v0, Lcom/callapp/contacts/manager/AreaCodesDB;

    sget-boolean v1, Lcom/callapp/contacts/manager/AreaCodesDB;->b:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    :try_start_0
    sput-boolean v1, Lcom/callapp/contacts/manager/AreaCodesDB;->b:Z

    .line 49
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v1

    const-string v3, "AreaCodeDBUrl"

    invoke-virtual {v1, v3}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/callapp/contacts/manager/AreaCodesDB;->isDataBaseExist()Z

    move-result v3

    if-nez v3, :cond_1

    .line 51
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/callapp/contacts/manager/AreaCodesDB;->a:Ljava/lang/String;

    const-string v5, "areaCodesDB.zip"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {v1, v3}, Lcom/callapp/contacts/util/http/HttpUtils;->a(Ljava/lang/String;Ljava/io/File;)Lcom/callapp/contacts/util/http/DownloadedFile;

    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lcom/callapp/contacts/util/http/DownloadedFile;->isFullyDownloaded()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "finished download area code database"

    .line 54
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1080
    :try_start_1
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const-string v3, "areaCodes"

    invoke-virtual {v1, v3}, Lcom/callapp/contacts/CallAppApplication;->deleteDatabase(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "deleted old  area code database "

    .line 1081
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :catch_0
    sput-boolean v2, Lcom/callapp/contacts/manager/AreaCodesDB;->b:Z

    return-void

    :cond_0
    :try_start_2
    const-string v1, "failed download area code database"

    .line 58
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "failed download area code database url is empty"

    .line 61
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    :goto_0
    sput-boolean v2, Lcom/callapp/contacts/manager/AreaCodesDB;->b:Z

    return-void

    :catchall_0
    move-exception v0

    sput-boolean v2, Lcom/callapp/contacts/manager/AreaCodesDB;->b:Z

    .line 65
    throw v0

    :cond_2
    return-void
.end method

.method public static get()Lcom/callapp/contacts/manager/AreaCodesDB;
    .locals 1

    .line 126
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getAreaCodesDB()Lcom/callapp/contacts/manager/AreaCodesDB;

    move-result-object v0

    return-object v0
.end method

.method private static isDataBaseExist()Z
    .locals 3

    .line 71
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/callapp/contacts/manager/AreaCodesDB;->a:Ljava/lang/String;

    const-string v2, "areaCodesDB.zip"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(Lcom/callapp/framework/phone/Phone;)Ljava/lang/String;
    .locals 4

    .line 88
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getNDC()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 93
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->b()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v2, 0x6

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "SELECT city,state FROM city_and_state_by_phone LEFT JOIN cities ON city_and_state_by_phone.city_id=cities.id LEFT JOIN states ON city_and_state_by_phone.state_id=states.id WHERE city_and_state_by_phone.phone="

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 105
    :try_start_0
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/AreaCodesDB;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 106
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "city"

    .line 107
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "state"

    .line 108
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    .line 111
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_1
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 115
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :cond_2
    invoke-static {v1}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 119
    invoke-static {v1}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    .line 120
    throw p1
.end method

.method public getDBName()Ljava/lang/String;
    .locals 1

    const-string v0, "areaCodesDB"

    return-object v0
.end method
