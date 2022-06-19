.class Lcom/callapp/contacts/sync/service/RealSyncService$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/sync/service/RealSyncService;->a(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/sync/service/RealSyncService;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/sync/service/RealSyncService;Lkotlin/c/f;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/callapp/contacts/sync/service/RealSyncService$1;->a:Lcom/callapp/contacts/sync/service/RealSyncService;

    invoke-direct {p0, p2}, Lcom/callapp/contacts/manager/task/Task;-><init>(Lkotlin/c/f;)V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 3

    .line 42
    sget-object v0, Lcom/callapp/contacts/workers/RescheduleSyncWorker;->a:Lcom/callapp/contacts/workers/RescheduleSyncWorker$Companion;

    invoke-static {}, Lcom/callapp/contacts/workers/RescheduleSyncWorker$Companion;->a()V

    .line 44
    invoke-static {}, Lcom/callapp/contacts/sync/service/RealSyncService;->e()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 45
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/sync/service/RealSyncService;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    const-class v1, Lcom/callapp/contacts/sync/service/RealSyncService;

    const-string v2, "Sync is already running"

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 47
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 50
    invoke-static {v1}, Lcom/callapp/contacts/sync/service/RealSyncService;->c(Z)Z

    .line 51
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 53
    iget-object v0, p0, Lcom/callapp/contacts/sync/service/RealSyncService$1;->a:Lcom/callapp/contacts/sync/service/RealSyncService;

    invoke-static {v0}, Lcom/callapp/contacts/sync/service/RealSyncService;->a(Lcom/callapp/contacts/sync/service/RealSyncService;)Lcom/callapp/contacts/sync/service/SyncAdapterProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/sync/service/SyncAdapterProxy;->a()V

    .line 55
    invoke-static {}, Lcom/callapp/contacts/sync/service/RealSyncService;->e()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x0

    .line 56
    :try_start_1
    invoke-static {v0}, Lcom/callapp/contacts/sync/service/RealSyncService;->c(Z)Z

    .line 57
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bn:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    const-class v0, Lcom/callapp/contacts/sync/service/RealSyncService;

    const-string v1, "stopSelf() called"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/callapp/contacts/sync/service/RealSyncService$1;->a:Lcom/callapp/contacts/sync/service/RealSyncService;

    invoke-virtual {v0}, Lcom/callapp/contacts/sync/service/RealSyncService;->stopSelf()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 57
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 51
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
