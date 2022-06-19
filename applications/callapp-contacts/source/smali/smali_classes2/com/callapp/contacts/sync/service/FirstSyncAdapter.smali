.class public Lcom/callapp/contacts/sync/service/FirstSyncAdapter;
.super Lcom/callapp/contacts/sync/service/BaseSyncAdapter;
.source "SourceFile"


# instance fields
.field private e:Z

.field private f:I

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/callapp/contacts/sync/service/FirstSyncAdapter;->e:Z

    const p1, 0x7f120697

    .line 47
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/sync/service/FirstSyncAdapter;->g:Ljava/lang/String;

    return-void
.end method

.method private a(IIZ)V
    .locals 5

    .line 138
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v0

    const/16 v1, 0x9

    .line 139
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/NotificationManager;->a(I)V

    if-gtz p1, :cond_0

    if-eqz p3, :cond_2

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/sync/service/FirstSyncAdapter;->g:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/callapp/contacts/manager/NotificationManager;->a(IIZLjava/lang/String;)Landroidx/core/app/g$e;

    move-result-object p1

    .line 143
    invoke-virtual {p0}, Lcom/callapp/contacts/sync/service/FirstSyncAdapter;->getService()Lcom/callapp/contacts/sync/service/RealSyncService;

    move-result-object p2

    .line 144
    invoke-virtual {p1}, Landroidx/core/app/g$e;->b()Landroid/app/Notification;

    move-result-object p3

    .line 145
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    const/16 v3, 0x8

    if-lt v1, v2, :cond_1

    .line 146
    invoke-virtual {p2, v3, p3, v4}, Lcom/callapp/contacts/sync/service/RealSyncService;->startForeground(ILandroid/app/Notification;I)V

    goto :goto_0

    .line 148
    :cond_1
    invoke-virtual {p2, v3, p3}, Lcom/callapp/contacts/sync/service/RealSyncService;->startForeground(ILandroid/app/Notification;)V

    .line 151
    :goto_0
    invoke-virtual {v0, v3, p1}, Lcom/callapp/contacts/manager/NotificationManager;->a(ILandroidx/core/app/g$e;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method protected final a(Lcom/callapp/contacts/sync/model/SyncContext;)Ljava/util/List;
    .locals 6
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

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Syncers:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/callapp/contacts/sync/Synchronizers;->getSyncers()Ljava/util/List;

    move-result-object v1

    .line 58
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/sync/Synchronizers;

    .line 60
    iget-object v4, v3, Lcom/callapp/contacts/sync/Synchronizers;->syncer:Lcom/callapp/contacts/sync/syncer/Syncer;

    const-string v5, " "

    .line 61
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/callapp/contacts/sync/syncer/Syncer;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v4, p1}, Lcom/callapp/contacts/sync/syncer/Syncer;->init(Lcom/callapp/contacts/sync/model/SyncContext;)V

    .line 63
    invoke-virtual {v4}, Lcom/callapp/contacts/sync/syncer/Syncer;->shouldSync()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v3, v3, Lcom/callapp/contacts/sync/Synchronizers;->syncConfig:Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;

    sget-object v5, Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;->onlyFull:Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;

    if-eq v3, v5, :cond_0

    .line 64
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const-string v3, " (skipped)"

    .line 66
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v3, ","

    .line 68
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 71
    :cond_1
    const-class p1, Lcom/callapp/contacts/sync/service/FirstSyncAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v2
.end method

.method protected final a(II)V
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/callapp/contacts/sync/service/FirstSyncAdapter;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 126
    :cond_0
    iget v0, p0, Lcom/callapp/contacts/sync/service/FirstSyncAdapter;->f:I

    if-le p1, v0, :cond_1

    const/4 v0, 0x0

    .line 2132
    invoke-direct {p0, p2, p1, v0}, Lcom/callapp/contacts/sync/service/FirstSyncAdapter;->a(IIZ)V

    :cond_1
    return-void
.end method

.method protected final a(Z)V
    .locals 11

    .line 158
    invoke-super {p0, p1}, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->a(Z)V

    .line 160
    iget v0, p0, Lcom/callapp/contacts/sync/service/FirstSyncAdapter;->b:I

    iget v1, p0, Lcom/callapp/contacts/sync/service/FirstSyncAdapter;->f:I

    if-le v0, v1, :cond_0

    .line 161
    iget v0, p0, Lcom/callapp/contacts/sync/service/FirstSyncAdapter;->b:I

    iput v0, p0, Lcom/callapp/contacts/sync/service/FirstSyncAdapter;->f:I

    .line 162
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bp:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    iget v1, p0, Lcom/callapp/contacts/sync/service/FirstSyncAdapter;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 2175
    :try_start_0
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->bq:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    .line 2176
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->br:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    if-eqz v1, :cond_1

    .line 2179
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    .line 2180
    div-long/2addr v2, v4

    .line 2181
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v4

    const-string v5, "Syncers"

    const-string v6, "UPDATED First sync time (seconds)"

    const/4 v7, 0x0

    long-to-int v1, v2

    int-to-double v8, v1

    new-array v10, v0, [Ljava/lang/String;

    invoke-virtual/range {v4 .. v10}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 2182
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->bs:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->set(Ljava/lang/Object;)V

    .line 2183
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->bu:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {p0}, Lcom/callapp/contacts/sync/service/FirstSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/contacts/util/PowerUtils;->b(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 2185
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->bt:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2186
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->bu:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 2188
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v3

    const-string v4, "Syncers"

    const-string v5, "Battery loss during sync"

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-double v7, v1

    new-array v9, v0, [Ljava/lang/String;

    invoke-virtual/range {v3 .. v9}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    goto :goto_0

    .line 2191
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    const-string v2, "Syncers"

    const-string v3, "UPDATED First sync time (seconds) - start time empty"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2194
    const-class v2, Lcom/callapp/contacts/sync/service/FirstSyncAdapter;

    const-string v3, "FirstSyncAdapter failed to send analytics"

    invoke-static {v2, v1, v3}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 2213
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/callapp/contacts/sync/service/FirstSyncAdapter;->getService()Lcom/callapp/contacts/sync/service/RealSyncService;

    move-result-object v1

    if-eqz p1, :cond_3

    .line 2216
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->bn:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_5

    .line 2218
    invoke-virtual {p0}, Lcom/callapp/contacts/sync/service/FirstSyncAdapter;->e()V

    .line 2220
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->bn:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2224
    :cond_3
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result p1

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-nez p1, :cond_4

    .line 2225
    invoke-virtual {v1, v3}, Lcom/callapp/contacts/sync/service/RealSyncService;->stopForeground(Z)V

    .line 2226
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object p1

    const v1, 0x7f120691

    .line 2410
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x9

    .line 3378
    invoke-virtual {p1, v4}, Lcom/callapp/contacts/manager/NotificationManager;->a(I)V

    .line 3379
    sget-object v4, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->SYNC_PROGRESS_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    invoke-virtual {p1, v4}, Lcom/callapp/contacts/manager/NotificationManager;->a(Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;)Landroidx/core/app/g$e;

    move-result-object v4

    const v5, 0x7f120693

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    .line 3380
    sget-object v8, Lcom/callapp/contacts/manager/preferences/Prefs;->bp:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v8}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v0

    sget-object v8, Lcom/callapp/contacts/manager/preferences/Prefs;->bo:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v8}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v5, v7}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 3381
    invoke-virtual {v4, v1}, Landroidx/core/app/g$e;->b(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroidx/core/app/g$e;->a(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    move-result-object v1

    .line 4160
    invoke-virtual {v1, v6, v0}, Landroidx/core/app/g$e;->a(IZ)V

    const v5, 0x7f080351

    .line 3381
    invoke-virtual {v1, v5}, Landroidx/core/app/g$e;->a(I)Landroidx/core/app/g$e;

    .line 3384
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v5

    invoke-virtual {v5}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v5

    const-class v6, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "from_sync_progress"

    .line 3385
    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v5, "sync_progress_no_internet"

    .line 3386
    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3387
    const-class v3, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v3, v1, v4, v0, v0}, Lcom/callapp/contacts/manager/NotificationManager;->a(Ljava/lang/Object;Landroid/content/Intent;Landroidx/core/app/g$e;IZ)V

    .line 3389
    invoke-virtual {p1, v2, v4}, Lcom/callapp/contacts/manager/NotificationManager;->a(ILandroidx/core/app/g$e;)Z

    goto :goto_1

    .line 2227
    :cond_4
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/Singletons;->getExceptionManager()Lcom/callapp/contacts/manager/ExceptionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/ExceptionManager;->isInternetIsDown()Z

    .line 2231
    invoke-virtual {v1, v3}, Lcom/callapp/contacts/sync/service/RealSyncService;->stopForeground(Z)V

    .line 2233
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/callapp/contacts/manager/NotificationManager;->a(I)V

    .line 170
    :cond_5
    :goto_1
    sget-object p1, Lcom/callapp/contacts/workers/BirthdayDailyWorker;->a:Lcom/callapp/contacts/workers/BirthdayDailyWorker$Companion;

    invoke-virtual {p1}, Lcom/callapp/contacts/workers/BirthdayDailyWorker$Companion;->a()V

    return-void
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 2

    .line 80
    invoke-super {p0, p1}, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/callapp/contacts/sync/service/FirstSyncAdapter;->e:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 83
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/callapp/contacts/sync/service/FirstSyncAdapter;->e:Z

    .line 86
    :cond_0
    iget-boolean v0, p0, Lcom/callapp/contacts/sync/service/FirstSyncAdapter;->e:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/callapp/contacts/sync/service/FirstSyncAdapter;->a:Z

    if-eqz v0, :cond_1

    .line 87
    invoke-static {p1}, Lcom/callapp/contacts/util/PowerUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    invoke-static {p1}, Lcom/callapp/contacts/util/PowerUtils;->b(Landroid/content/Context;)F

    move-result p1

    const v0, 0x3e4ccccd    # 0.2f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    .line 91
    const-class p1, Lcom/callapp/contacts/sync/service/FirstSyncAdapter;

    const-string v0, "Battery low, terminating sync..."

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 92
    iput-boolean v1, p0, Lcom/callapp/contacts/sync/service/FirstSyncAdapter;->e:Z

    .line 97
    :cond_1
    iget-boolean p1, p0, Lcom/callapp/contacts/sync/service/FirstSyncAdapter;->e:Z

    return p1
.end method

.method protected final b()V
    .locals 3

    .line 102
    invoke-super {p0}, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->b()V

    .line 104
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bp:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/sync/service/FirstSyncAdapter;->f:I

    .line 107
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bq:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 110
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->bq:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    .line 111
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bt:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {p0}, Lcom/callapp/contacts/sync/service/FirstSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/util/PowerUtils;->b(Landroid/content/Context;)F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 115
    invoke-direct {p0, v1, v1, v0}, Lcom/callapp/contacts/sync/service/FirstSyncAdapter;->a(IIZ)V

    return-void
.end method

.method protected final c()V
    .locals 6

    .line 201
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sync started "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "Registration"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    return-void
.end method

.method protected final d()V
    .locals 0

    return-void
.end method
