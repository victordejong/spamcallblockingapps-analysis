.class final Lcom/google/firebase/messaging/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/messaging/az$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/Intent;

.field private final c:Ljava/util/concurrent/ScheduledExecutorService;

.field private final d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/firebase/messaging/az$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/google/firebase/messaging/aw;

.field private f:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance p2, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v0, Lcom/google/android/gms/common/util/a/a;

    const-string v1, "Firebase-FirebaseInstanceIdServiceConnection"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/util/a/a;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p2, v1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    const-string v0, "com.google.firebase.MESSAGING_EVENT"

    invoke-direct {p0, p1, v0, p2}, Lcom/google/firebase/messaging/az;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/ArrayDeque;

    .line 2
    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/messaging/az;->d:Ljava/util/Queue;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/firebase/messaging/az;->f:Z

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/messaging/az;->a:Landroid/content/Context;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.google.firebase.MESSAGING_EVENT"

    .line 4
    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/messaging/az;->b:Landroid/content/Intent;

    iput-object p3, p0, Lcom/google/firebase/messaging/az;->c:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private declared-synchronized a()V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "FirebaseMessaging"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    :goto_0
    iget-object v0, p0, Lcom/google/firebase/messaging/az;->d:Ljava/util/Queue;

    .line 3
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "FirebaseMessaging"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    iget-object v0, p0, Lcom/google/firebase/messaging/az;->e:Lcom/google/firebase/messaging/aw;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/google/firebase/messaging/aw;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FirebaseMessaging"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 8
    iget-object v0, p0, Lcom/google/firebase/messaging/az;->d:Ljava/util/Queue;

    .line 9
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/messaging/az$a;

    iget-object v2, p0, Lcom/google/firebase/messaging/az;->e:Lcom/google/firebase/messaging/aw;

    .line 4001
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-ne v3, v4, :cond_0

    const-string v3, "FirebaseMessaging"

    .line 4003
    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 4004
    iget-object v2, v2, Lcom/google/firebase/messaging/aw;->a:Lcom/google/firebase/messaging/aw$a;

    .line 4005
    iget-object v3, v0, Lcom/google/firebase/messaging/az$a;->a:Landroid/content/Intent;

    .line 4006
    invoke-interface {v2, v3}, Lcom/google/firebase/messaging/aw$a;->a(Landroid/content/Intent;)Lcom/google/android/gms/tasks/h;

    move-result-object v2

    sget-object v3, Lcom/google/firebase/messaging/ax;->a:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/firebase/messaging/ay;

    invoke-direct {v4, v0}, Lcom/google/firebase/messaging/ay;-><init>(Lcom/google/firebase/messaging/az$a;)V

    .line 4007
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/tasks/h;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/d;)Lcom/google/android/gms/tasks/h;

    goto :goto_0

    .line 4001
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Binding only allowed within app"

    .line 4002
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/messaging/az;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b()V
    .locals 5

    const-string v0, "FirebaseMessaging"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/firebase/messaging/az;->f:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x27

    .line 2
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "binder is dead. start connection? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/2addr v1, v2

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v1, p0, Lcom/google/firebase/messaging/az;->f:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/google/firebase/messaging/az;->f:Z

    .line 3
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/stats/a;->a()Lcom/google/android/gms/common/stats/a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/messaging/az;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/firebase/messaging/az;->b:Landroid/content/Intent;

    const/16 v4, 0x41

    .line 4
    invoke-virtual {v1, v2, v3, p0, v4}, Lcom/google/android/gms/common/stats/a;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    const-string v1, "binding to the service failed"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Exception while binding the service"

    .line 6
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/firebase/messaging/az;->f:Z

    .line 7
    invoke-direct {p0}, Lcom/google/firebase/messaging/az;->c()V

    return-void
.end method

.method private c()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/google/firebase/messaging/az;->d:Ljava/util/Queue;

    .line 1
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/messaging/az;->d:Ljava/util/Queue;

    .line 2
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/messaging/az$a;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/az$a;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method final declared-synchronized a(Landroid/content/Intent;)Lcom/google/android/gms/tasks/h;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "FirebaseMessaging"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 2
    new-instance v0, Lcom/google/firebase/messaging/az$a;

    .line 3
    invoke-direct {v0, p1}, Lcom/google/firebase/messaging/az$a;-><init>(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/google/firebase/messaging/az;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    new-instance v1, Lcom/google/firebase/messaging/ba;

    .line 1001
    invoke-direct {v1, v0}, Lcom/google/firebase/messaging/ba;-><init>(Lcom/google/firebase/messaging/az$a;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2328

    .line 1002
    invoke-interface {p1, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .line 1003
    iget-object v2, v0, Lcom/google/firebase/messaging/az$a;->b:Lcom/google/android/gms/tasks/i;

    .line 3000
    iget-object v2, v2, Lcom/google/android/gms/tasks/i;->a:Lcom/google/android/gms/tasks/ah;

    .line 1003
    new-instance v3, Lcom/google/firebase/messaging/bb;

    invoke-direct {v3, v1}, Lcom/google/firebase/messaging/bb;-><init>(Ljava/util/concurrent/ScheduledFuture;)V

    .line 1004
    invoke-virtual {v2, p1, v3}, Lcom/google/android/gms/tasks/h;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/d;)Lcom/google/android/gms/tasks/h;

    .line 4
    iget-object p1, p0, Lcom/google/firebase/messaging/az;->d:Ljava/util/Queue;

    .line 5
    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-direct {p0}, Lcom/google/firebase/messaging/az;->a()V

    .line 7
    iget-object p1, v0, Lcom/google/firebase/messaging/az$a;->b:Lcom/google/android/gms/tasks/i;

    .line 4000
    iget-object p1, p1, Lcom/google/android/gms/tasks/i;->a:Lcom/google/android/gms/tasks/ah;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "FirebaseMessaging"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x14

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "onServiceConnected: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/firebase/messaging/az;->f:Z

    .line 3
    instance-of p1, p2, Lcom/google/firebase/messaging/aw;

    if-nez p1, :cond_1

    .line 4
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1c

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Invalid service connection: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "FirebaseMessaging"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-direct {p0}, Lcom/google/firebase/messaging/az;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 6
    :cond_1
    :try_start_1
    check-cast p2, Lcom/google/firebase/messaging/aw;

    iput-object p2, p0, Lcom/google/firebase/messaging/az;->e:Lcom/google/firebase/messaging/aw;

    .line 7
    invoke-direct {p0}, Lcom/google/firebase/messaging/az;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "FirebaseMessaging"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x17

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "onServiceDisconnected: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/messaging/az;->a()V

    return-void
.end method
