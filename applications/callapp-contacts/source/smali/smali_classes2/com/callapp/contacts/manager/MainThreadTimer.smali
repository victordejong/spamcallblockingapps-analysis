.class public Lcom/callapp/contacts/manager/MainThreadTimer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/manager/MainThreadTimer$DelaytedTaskEvents;
    }
.end annotation


# instance fields
.field private a:J

.field private b:I

.field private final c:Ljava/lang/Object;

.field private d:Landroid/os/PowerManager$WakeLock;

.field private final e:Lcom/callapp/contacts/manager/MainThreadTimer$DelaytedTaskEvents;

.field private f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/manager/MainThreadTimer$DelaytedTaskEvents;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lcom/callapp/contacts/manager/MainThreadTimer;->a:J

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/MainThreadTimer;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/callapp/contacts/manager/MainThreadTimer;->d:Landroid/os/PowerManager$WakeLock;

    .line 30
    iput-object p1, p0, Lcom/callapp/contacts/manager/MainThreadTimer;->e:Lcom/callapp/contacts/manager/MainThreadTimer$DelaytedTaskEvents;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/manager/MainThreadTimer;)Lcom/callapp/contacts/manager/MainThreadTimer$DelaytedTaskEvents;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/callapp/contacts/manager/MainThreadTimer;->e:Lcom/callapp/contacts/manager/MainThreadTimer$DelaytedTaskEvents;

    return-object p0
.end method

.method private b()V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/callapp/contacts/manager/MainThreadTimer;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/MainThreadTimer;->d:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    .line 105
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 107
    :try_start_1
    iget-object v1, p0, Lcom/callapp/contacts/manager/MainThreadTimer;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 109
    :try_start_2
    const-class v2, Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-static {v2, v1}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 112
    iput-object v1, p0, Lcom/callapp/contacts/manager/MainThreadTimer;->d:Landroid/os/PowerManager$WakeLock;

    .line 114
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method static synthetic b(Lcom/callapp/contacts/manager/MainThreadTimer;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/callapp/contacts/manager/MainThreadTimer;->b()V

    return-void
.end method

.method static synthetic c(Lcom/callapp/contacts/manager/MainThreadTimer;)Ljava/lang/Runnable;
    .locals 1

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/callapp/contacts/manager/MainThreadTimer;->f:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()Z
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 81
    :try_start_0
    iput-wide v0, p0, Lcom/callapp/contacts/manager/MainThreadTimer;->a:J

    .line 82
    iget-object v0, p0, Lcom/callapp/contacts/manager/MainThreadTimer;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/callapp/contacts/manager/MainThreadTimer;->b()V

    .line 84
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/manager/MainThreadTimer;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->c(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/callapp/contacts/manager/MainThreadTimer;->f:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 87
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 89
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(IZ)Z
    .locals 4

    monitor-enter p0

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/MainThreadTimer;->f:Ljava/lang/Runnable;

    if-nez v0, :cond_2

    .line 41
    new-instance v0, Lcom/callapp/contacts/manager/MainThreadTimer$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/manager/MainThreadTimer$1;-><init>(Lcom/callapp/contacts/manager/MainThreadTimer;)V

    iput-object v0, p0, Lcom/callapp/contacts/manager/MainThreadTimer;->f:Ljava/lang/Runnable;

    .line 52
    iput p1, p0, Lcom/callapp/contacts/manager/MainThreadTimer;->b:I

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/callapp/contacts/manager/MainThreadTimer;->a:J

    .line 54
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->em:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    if-lez p1, :cond_1

    .line 1093
    iget-object p2, p0, Lcom/callapp/contacts/manager/MainThreadTimer;->c:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1094
    :try_start_1
    iget-object v0, p0, Lcom/callapp/contacts/manager/MainThreadTimer;->d:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    const-string v0, "power"

    .line 1095
    invoke-static {v0}, Lcom/callapp/contacts/manager/Singletons;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v1, 0x1000000a

    .line 1096
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/manager/MainThreadTimer;->d:Landroid/os/PowerManager$WakeLock;

    .line 1097
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1099
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 57
    :cond_1
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    iget-object v0, p0, Lcom/callapp/contacts/manager/MainThreadTimer;->f:Ljava/lang/Runnable;

    int-to-long v1, p1

    invoke-virtual {p2, v0, v1, v2}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 p1, 0x1

    .line 58
    monitor-exit p0

    return p1

    :cond_2
    const/4 p1, 0x0

    .line 60
    monitor-exit p0

    return p1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isRunning()Z
    .locals 1

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/MainThreadTimer;->f:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
