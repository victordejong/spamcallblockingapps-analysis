.class public Lcom/callapp/contacts/receiver/ScreenOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/receiver/ScreenOffReceiver$ScreenOffReceiverTask;
    }
.end annotation


# static fields
.field private static a:Landroid/os/HandlerThread;

.field private static b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 5

    const-class v0, Lcom/callapp/contacts/receiver/ScreenOffReceiver;

    monitor-enter v0

    .line 61
    :try_start_0
    sget-object v1, Lcom/callapp/contacts/receiver/ScreenOffReceiver;->a:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    .line 62
    new-instance v1, Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 63
    sput-object v1, Lcom/callapp/contacts/receiver/ScreenOffReceiver;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 64
    sget-object v1, Lcom/callapp/contacts/receiver/ScreenOffReceiver;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/os/Looper;)V

    .line 65
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/callapp/contacts/receiver/ScreenOffReceiver;->a:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/callapp/contacts/receiver/ScreenOffReceiver;->b:Landroid/os/Handler;

    .line 69
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/Singletons;->getScreenOffReceiver()Lcom/callapp/contacts/receiver/ScreenOffReceiver;

    move-result-object v2

    const/4 v3, 0x0

    .line 71
    sget-object v4, Lcom/callapp/contacts/receiver/ScreenOffReceiver;->b:Landroid/os/Handler;

    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/callapp/contacts/receiver/ScreenOffReceiver;

    monitor-enter v0

    .line 76
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/Singletons;->getScreenOffReceiver()Lcom/callapp/contacts/receiver/ScreenOffReceiver;

    move-result-object v1

    .line 77
    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 82
    :catch_0
    monitor-exit v0

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/callapp/contacts/receiver/ScreenOffReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p1

    .line 32
    new-instance v0, Lcom/callapp/contacts/receiver/ScreenOffReceiver$ScreenOffReceiverTask;

    invoke-direct {v0, p1, p2}, Lcom/callapp/contacts/receiver/ScreenOffReceiver$ScreenOffReceiverTask;-><init>(Landroid/content/BroadcastReceiver$PendingResult;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/receiver/ScreenOffReceiver$ScreenOffReceiverTask;->execute()Lcom/callapp/contacts/manager/task/Task;

    :cond_0
    return-void
.end method
