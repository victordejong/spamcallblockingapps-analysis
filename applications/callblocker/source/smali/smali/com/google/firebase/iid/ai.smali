.class public final Lcom/google/firebase/iid/ai;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.1.5"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/Intent;

.field private final c:Ljava/util/concurrent/ScheduledExecutorService;

.field private final d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/firebase/iid/ah;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/google/firebase/iid/ad;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/gms/common/util/a/a;

    const-string/jumbo v3, "Firebase-FirebaseInstanceIdServiceConnection"

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/util/a/a;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/firebase/iid/ai;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 2
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 2

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/iid/ai;->d:Ljava/util/Queue;

    .line 5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/iid/ai;->f:Z

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/iid/ai;->a:Landroid/content/Context;

    .line 7
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/firebase/iid/ai;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/iid/ai;->b:Landroid/content/Intent;

    .line 8
    iput-object p3, p0, Lcom/google/firebase/iid/ai;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 9
    return-void
.end method

.method private final declared-synchronized a()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 21
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "FirebaseInstanceId"

    const/4 v3, 0x3

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    const-string/jumbo v0, "FirebaseInstanceId"

    const-string/jumbo v3, "flush queue called"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/iid/ai;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 24
    const-string/jumbo v0, "FirebaseInstanceId"

    const/4 v3, 0x3

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    const-string/jumbo v0, "FirebaseInstanceId"

    const-string/jumbo v3, "found intent to be delivered"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/iid/ai;->e:Lcom/google/firebase/iid/ad;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/firebase/iid/ai;->e:Lcom/google/firebase/iid/ad;

    invoke-virtual {v0}, Lcom/google/firebase/iid/ad;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 27
    const-string/jumbo v0, "FirebaseInstanceId"

    const/4 v3, 0x3

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28
    const-string/jumbo v0, "FirebaseInstanceId"

    const-string/jumbo v3, "binder is alive, sending the intent."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/iid/ai;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/ah;

    .line 30
    iget-object v3, p0, Lcom/google/firebase/iid/ai;->e:Lcom/google/firebase/iid/ad;

    invoke-virtual {v3, v0}, Lcom/google/firebase/iid/ad;->a(Lcom/google/firebase/iid/ah;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 33
    :cond_3
    :try_start_1
    const-string/jumbo v0, "FirebaseInstanceId"

    const/4 v3, 0x3

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 34
    const-string/jumbo v3, "FirebaseInstanceId"

    iget-boolean v0, p0, Lcom/google/firebase/iid/ai;->f:Z

    if-nez v0, :cond_6

    move v0, v1

    :goto_1
    const/16 v1, 0x27

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "binder is dead. start connection? "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_4
    iget-boolean v0, p0, Lcom/google/firebase/iid/ai;->f:Z

    if-nez v0, :cond_5

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/iid/ai;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/common/stats/a;->a()Lcom/google/android/gms/common/stats/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/iid/ai;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/firebase/iid/ai;->b:Landroid/content/Intent;

    const/16 v3, 0x41

    .line 38
    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/google/android/gms/common/stats/a;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_7

    .line 47
    :cond_5
    :goto_2
    monitor-exit p0

    return-void

    :cond_6
    move v0, v2

    .line 34
    goto :goto_1

    .line 40
    :cond_7
    :try_start_3
    const-string/jumbo v0, "FirebaseInstanceId"

    const-string/jumbo v1, "binding to the service failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 44
    :goto_3
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/google/firebase/iid/ai;->f:Z

    .line 45
    invoke-direct {p0}, Lcom/google/firebase/iid/ai;->b()V

    goto :goto_2

    .line 42
    :catch_0
    move-exception v0

    .line 43
    const-string/jumbo v1, "FirebaseInstanceId"

    const-string/jumbo v2, "Exception while binding the service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3
.end method

.method private final b()V
    .locals 1

    .prologue
    .line 48
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/iid/ai;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/google/firebase/iid/ai;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/ah;

    invoke-virtual {v0}, Lcom/google/firebase/iid/ah;->b()V

    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Intent;)Lcom/google/android/gms/tasks/g;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lcom/google/android/gms/tasks/g",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "FirebaseInstanceId"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    const-string/jumbo v0, "FirebaseInstanceId"

    const-string/jumbo v1, "new intent queued in the bind-strategy delivery"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_0
    new-instance v0, Lcom/google/firebase/iid/ah;

    invoke-direct {v0, p1}, Lcom/google/firebase/iid/ah;-><init>(Landroid/content/Intent;)V

    .line 13
    iget-object v1, p0, Lcom/google/firebase/iid/ai;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 14
    new-instance v2, Lcom/google/firebase/iid/ak;

    invoke-direct {v2, v0}, Lcom/google/firebase/iid/ak;-><init>(Lcom/google/firebase/iid/ah;)V

    const-wide/16 v4, 0x2328

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 15
    invoke-interface {v1, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    .line 16
    invoke-virtual {v0}, Lcom/google/firebase/iid/ah;->a()Lcom/google/android/gms/tasks/g;

    move-result-object v3

    new-instance v4, Lcom/google/firebase/iid/aj;

    invoke-direct {v4, v2}, Lcom/google/firebase/iid/aj;-><init>(Ljava/util/concurrent/ScheduledFuture;)V

    .line 17
    invoke-virtual {v3, v1, v4}, Lcom/google/android/gms/tasks/g;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/c;)Lcom/google/android/gms/tasks/g;

    .line 18
    iget-object v1, p0, Lcom/google/firebase/iid/ai;->d:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-direct {p0}, Lcom/google/firebase/iid/ai;->a()V

    .line 20
    invoke-virtual {v0}, Lcom/google/firebase/iid/ah;->a()Lcom/google/android/gms/tasks/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 10
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "FirebaseInstanceId"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const-string/jumbo v0, "FirebaseInstanceId"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "onServiceConnected: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/iid/ai;->f:Z

    .line 54
    instance-of v0, p2, Lcom/google/firebase/iid/ad;

    if-nez v0, :cond_1

    .line 55
    const-string/jumbo v0, "FirebaseInstanceId"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Invalid service connection: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-direct {p0}, Lcom/google/firebase/iid/ai;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :goto_0
    monitor-exit p0

    return-void

    .line 58
    :cond_1
    :try_start_1
    check-cast p2, Lcom/google/firebase/iid/ad;

    iput-object p2, p0, Lcom/google/firebase/iid/ai;->e:Lcom/google/firebase/iid/ad;

    .line 59
    invoke-direct {p0}, Lcom/google/firebase/iid/ai;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    .prologue
    .line 61
    const-string/jumbo v0, "FirebaseInstanceId"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const-string/jumbo v0, "FirebaseInstanceId"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "onServiceDisconnected: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/iid/ai;->a()V

    .line 64
    return-void
.end method
