.class public Lcom/callapp/contacts/sync/service/RealSyncAdapter;
.super Lcom/callapp/contacts/sync/service/BaseSyncAdapter;
.source "SourceFile"


# instance fields
.field private e:Ljava/util/Date;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;-><init>(Landroid/content/Context;)V

    .line 29
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->ah:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->isNotNull()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->ah:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/callapp/contacts/sync/service/RealSyncAdapter;->e:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/callapp/contacts/sync/model/SyncContext;)Ljava/util/List;
    .locals 9
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

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Syncers:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lcom/callapp/contacts/sync/Synchronizers;->values()[Lcom/callapp/contacts/sync/Synchronizers;

    move-result-object v1

    .line 92
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 93
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v1, v5

    .line 94
    iget-object v7, v6, Lcom/callapp/contacts/sync/Synchronizers;->syncer:Lcom/callapp/contacts/sync/syncer/Syncer;

    .line 95
    invoke-virtual {v7, p1}, Lcom/callapp/contacts/sync/syncer/Syncer;->init(Lcom/callapp/contacts/sync/model/SyncContext;)V

    const-string v8, " "

    .line 96
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/callapp/contacts/sync/syncer/Syncer;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v7}, Lcom/callapp/contacts/sync/syncer/Syncer;->shouldSync()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v6, v6, Lcom/callapp/contacts/sync/Synchronizers;->syncConfig:Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;

    sget-object v8, Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;->onlyFirst:Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;

    if-eq v6, v8, :cond_0

    .line 98
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const-string v6, " (skipped)"

    .line 100
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v6, ","

    .line 102
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 104
    :cond_1
    const-class p1, Lcom/callapp/contacts/sync/service/RealSyncAdapter;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v4, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v2
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 4

    .line 34
    const-class v0, Lcom/callapp/contacts/sync/service/RealSyncAdapter;

    invoke-super {p0, p1}, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->a(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 38
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isAnyCallActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "Has phone call, terminating sync..."

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return v2

    .line 43
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/Singletons;->getExceptionManager()Lcom/callapp/contacts/manager/ExceptionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/ExceptionManager;->isInternetIsDown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "No real internet, terminating sync..."

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/CLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    return v2

    .line 48
    :cond_2
    invoke-static {p1}, Lcom/callapp/contacts/util/PowerUtils;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "No power, terminating sync..."

    .line 49
    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return v2

    .line 55
    :cond_3
    invoke-static {}, Lcom/callapp/contacts/util/PowerUtils;->isScreenOn()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "Screen is on, terminating sync..."

    .line 56
    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return v2

    .line 60
    :cond_4
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->isWiFiConnected()Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "No WiFi, terminating sync..."

    .line 61
    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return v2

    .line 65
    :cond_5
    invoke-static {}, Lcom/callapp/contacts/sync/service/RealSyncService;->isSyncEnabled()Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "Sync disabled, terminating sync..."

    .line 66
    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return v2

    .line 74
    :cond_6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 75
    iget-object v1, p0, Lcom/callapp/contacts/sync/service/RealSyncAdapter;->e:Ljava/util/Date;

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v1, 0xc

    const/16 v3, 0xa

    .line 76
    invoke-virtual {p1, v1, v3}, Ljava/util/Calendar;->add(II)V

    .line 78
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_7

    const-string p1, "Within 10min after install, terminating sync..."

    .line 80
    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return v2

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method protected final c()V
    .locals 0

    return-void
.end method

.method protected final d()V
    .locals 2

    .line 114
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bv:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    return-void
.end method
