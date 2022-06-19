.class public Lcom/telguarder/helpers/idGenerators/UID;
.super Ljava/lang/Object;
.source "UID.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized createUid(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/telguarder/helpers/idGenerators/UID;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 61
    :try_start_0
    invoke-static {p0}, Lcom/telguarder/helpers/common/AppUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 p0, 0x0

    .line 62
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 63
    invoke-static {}, Lcom/telguarder/helpers/idGenerators/UID;->randomId()Ljava/lang/String;

    move-result-object p0

    .line 64
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/telguarder/helpers/preferences/PreferencesManager;->saveUidWasRandom(Z)V

    goto :goto_1

    .line 66
    :cond_1
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/telguarder/helpers/preferences/PreferencesManager;->saveUidWasRandom(Z)V

    .line 68
    :goto_1
    invoke-static {p0}, Lcom/telguarder/helpers/idGenerators/Sha1Converter;->SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public static needsUidUpgrade(Landroid/content/Context;)Z
    .locals 3

    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v0, v2, :cond_0

    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getUidWasRandom()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 24
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v1
.end method

.method public static declared-synchronized randomId()Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/telguarder/helpers/idGenerators/UID;

    monitor-enter v0

    .line 17
    :try_start_0
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized uid(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/telguarder/helpers/idGenerators/UID;

    monitor-enter v0

    const/4 v1, 0x1

    .line 46
    :try_start_0
    invoke-static {p0, v1}, Lcom/telguarder/helpers/idGenerators/UID;->uid(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized uid(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/telguarder/helpers/idGenerators/UID;

    monitor-enter v0

    .line 51
    :try_start_0
    invoke-static {p0}, Lcom/telguarder/helpers/idGenerators/UID;->needsUidUpgrade(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 52
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    invoke-static {p0, p1}, Lcom/telguarder/helpers/idGenerators/UID;->createUid(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/telguarder/helpers/preferences/PreferencesManager;->saveUid(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static upgradeUid(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 36
    invoke-static {p0, v0}, Lcom/telguarder/helpers/idGenerators/UID;->upgradeUid(Landroid/content/Context;Z)V

    return-void
.end method

.method public static upgradeUid(Landroid/content/Context;Z)V
    .locals 1

    .line 41
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/telguarder/helpers/idGenerators/UID;->createUid(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/telguarder/helpers/preferences/PreferencesManager;->saveUid(Ljava/lang/String;)V

    return-void
.end method
