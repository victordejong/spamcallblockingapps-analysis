.class public Lcom/callapp/contacts/sync/service/SyncAdapterProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/callapp/contacts/sync/service/BaseSyncAdapter;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/callapp/contacts/sync/service/SyncAdapterProxy;->b:Landroid/content/Context;

    .line 27
    invoke-static {}, Lcom/callapp/contacts/sync/service/SyncAdapterProxy;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    new-instance v0, Lcom/callapp/contacts/sync/service/FirstSyncAdapter;

    invoke-direct {v0, p1}, Lcom/callapp/contacts/sync/service/FirstSyncAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/callapp/contacts/sync/service/SyncAdapterProxy;->a:Lcom/callapp/contacts/sync/service/BaseSyncAdapter;

    return-void

    .line 30
    :cond_0
    new-instance v0, Lcom/callapp/contacts/sync/service/RealSyncAdapter;

    invoke-direct {v0, p1}, Lcom/callapp/contacts/sync/service/RealSyncAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/callapp/contacts/sync/service/SyncAdapterProxy;->a:Lcom/callapp/contacts/sync/service/BaseSyncAdapter;

    return-void
.end method

.method private static b()Z
    .locals 4

    .line 44
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ah:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 52
    :cond_0
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->bn:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 53
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 59
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 60
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v0, 0xa

    const/16 v3, 0x18

    .line 61
    invoke-virtual {v2, v0, v3}, Ljava/util/Calendar;->add(II)V

    .line 62
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->bn:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    :cond_2
    if-nez v0, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    return v1
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 3

    monitor-enter p0

    .line 35
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/sync/service/SyncAdapterProxy;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/sync/service/SyncAdapterProxy;->a:Lcom/callapp/contacts/sync/service/BaseSyncAdapter;

    instance-of v0, v0, Lcom/callapp/contacts/sync/service/FirstSyncAdapter;

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Lcom/callapp/contacts/sync/service/RealSyncAdapter;

    iget-object v1, p0, Lcom/callapp/contacts/sync/service/SyncAdapterProxy;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/callapp/contacts/sync/service/RealSyncAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/callapp/contacts/sync/service/SyncAdapterProxy;->a:Lcom/callapp/contacts/sync/service/BaseSyncAdapter;

    .line 39
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "performSync: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/callapp/contacts/sync/service/SyncAdapterProxy;->a:Lcom/callapp/contacts/sync/service/BaseSyncAdapter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/callapp/contacts/sync/service/SyncAdapterProxy;->a:Lcom/callapp/contacts/sync/service/BaseSyncAdapter;

    invoke-virtual {v0}, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
