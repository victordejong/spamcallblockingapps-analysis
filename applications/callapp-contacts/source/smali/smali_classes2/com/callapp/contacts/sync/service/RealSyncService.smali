.class public Lcom/callapp/contacts/sync/service/RealSyncService;
.super Landroidx/core/app/SafeJobIntentService;
.source "SourceFile"


# static fields
.field private static final j:Ljava/lang/Object;

.field private static l:Z


# instance fields
.field private k:Lcom/callapp/contacts/sync/service/SyncAdapterProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/callapp/contacts/sync/service/RealSyncService;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroidx/core/app/SafeJobIntentService;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/sync/service/RealSyncService;)Lcom/callapp/contacts/sync/service/SyncAdapterProxy;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/callapp/contacts/sync/service/RealSyncService;->k:Lcom/callapp/contacts/sync/service/SyncAdapterProxy;

    return-object p0
.end method

.method public static b(Z)V
    .locals 1

    .line 81
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bn:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/callapp/contacts/util/PowerUtils;->isConnectedToPower()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/callapp/contacts/util/PowerUtils;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-eqz p0, :cond_1

    .line 83
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p0

    invoke-static {p0}, Lcom/callapp/contacts/receiver/ScreenOffReceiver;->b(Landroid/content/Context;)V

    .line 86
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/sync/service/RealSyncService;->d()V

    :cond_2
    return-void
.end method

.method static synthetic c(Z)Z
    .locals 0

    .line 19
    sput-boolean p0, Lcom/callapp/contacts/sync/service/RealSyncService;->l:Z

    return p0
.end method

.method public static d()V
    .locals 4

    .line 69
    invoke-static {}, Lcom/callapp/contacts/sync/service/RealSyncService;->isSyncEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gB:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gB:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 71
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 72
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/sync/service/RealSyncService;

    const/16 v3, 0x64

    invoke-static {v1, v2, v3, v0}, Lcom/callapp/contacts/sync/service/RealSyncService;->a(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method static synthetic e()Ljava/lang/Object;
    .locals 1

    .line 19
    sget-object v0, Lcom/callapp/contacts/sync/service/RealSyncService;->j:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic f()Z
    .locals 1

    .line 19
    sget-boolean v0, Lcom/callapp/contacts/sync/service/RealSyncService;->l:Z

    return v0
.end method

.method public static isSyncEnabled()Z
    .locals 1

    .line 77
    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 1

    .line 36
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->gB:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 38
    new-instance p1, Lcom/callapp/contacts/sync/service/RealSyncService$1;

    sget-object v0, Lb/a;->a:Lb/a$a;

    .line 1018
    invoke-static {}, Lb/a;->b()Lkotlinx/coroutines/bk;

    move-result-object v0

    .line 38
    invoke-direct {p1, p0, v0}, Lcom/callapp/contacts/sync/service/RealSyncService$1;-><init>(Lcom/callapp/contacts/sync/service/RealSyncService;Lkotlin/c/f;)V

    .line 65
    invoke-virtual {p1}, Lcom/callapp/contacts/sync/service/RealSyncService$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 26
    invoke-super {p0}, Landroidx/core/app/SafeJobIntentService;->onCreate()V

    .line 27
    sget-object v0, Lcom/callapp/contacts/sync/service/RealSyncService;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/sync/service/RealSyncService;->k:Lcom/callapp/contacts/sync/service/SyncAdapterProxy;

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Lcom/callapp/contacts/sync/service/SyncAdapterProxy;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/sync/service/SyncAdapterProxy;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/callapp/contacts/sync/service/RealSyncService;->k:Lcom/callapp/contacts/sync/service/SyncAdapterProxy;

    .line 31
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
