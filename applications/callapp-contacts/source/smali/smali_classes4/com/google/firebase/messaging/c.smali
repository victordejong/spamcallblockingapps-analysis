.class final Lcom/google/firebase/messaging/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/firebase/messaging/ah;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/messaging/ah;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/firebase/messaging/c;->a:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/google/firebase/messaging/c;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/firebase/messaging/c;->c:Lcom/google/firebase/messaging/ah;

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 9

    iget-object v0, p0, Lcom/google/firebase/messaging/c;->c:Lcom/google/firebase/messaging/ah;

    const-string v1, "gcm.n.noui"

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/ah;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/messaging/c;->b:Landroid/content/Context;

    const-string v2, "keyguard"

    .line 3001
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 3002
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 3003
    invoke-static {}, Lcom/google/android/gms/common/util/n;->g()Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v3, 0xa

    .line 3004
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 3005
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iget-object v3, p0, Lcom/google/firebase/messaging/c;->b:Landroid/content/Context;

    const-string v4, "activity"

    .line 3006
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 3007
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 3008
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 3009
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v0, :cond_2

    .line 3010
    iget v0, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v3, 0x64

    if-ne v0, v3, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    return v2

    .line 3
    :cond_4
    iget-object v0, p0, Lcom/google/firebase/messaging/c;->c:Lcom/google/firebase/messaging/ah;

    const-string v2, "gcm.n.image"

    .line 4001
    invoke-virtual {v0, v2}, Lcom/google/firebase/messaging/ah;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4002
    invoke-static {v0}, Lcom/google/firebase/messaging/ac;->a(Ljava/lang/String;)Lcom/google/firebase/messaging/ac;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/google/firebase/messaging/c;->a:Ljava/util/concurrent/Executor;

    .line 4003
    new-instance v3, Lcom/google/firebase/messaging/ad;

    .line 5001
    invoke-direct {v3, v0}, Lcom/google/firebase/messaging/ad;-><init>(Lcom/google/firebase/messaging/ac;)V

    invoke-static {v2, v3}, Lcom/google/android/gms/tasks/k;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/h;

    move-result-object v2

    iput-object v2, v0, Lcom/google/firebase/messaging/ac;->b:Lcom/google/android/gms/tasks/h;

    .line 3
    :cond_5
    iget-object v2, p0, Lcom/google/firebase/messaging/c;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/firebase/messaging/c;->c:Lcom/google/firebase/messaging/ah;

    .line 4
    invoke-static {v2, v3}, Lcom/google/firebase/messaging/a;->a(Landroid/content/Context;Lcom/google/firebase/messaging/ah;)Lcom/google/firebase/messaging/a$a;

    move-result-object v2

    iget-object v3, v2, Lcom/google/firebase/messaging/a$a;->a:Landroidx/core/app/g$e;

    const-string v4, "FirebaseMessaging"

    if-eqz v0, :cond_6

    .line 6001
    :try_start_0
    iget-object v5, v0, Lcom/google/firebase/messaging/ac;->b:Lcom/google/android/gms/tasks/h;

    .line 7001
    invoke-static {v5}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/tasks/h;

    .line 6001
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x5

    invoke-static {v5, v7, v8, v6}, Lcom/google/android/gms/tasks/k;->a(Lcom/google/android/gms/tasks/h;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    .line 6002
    invoke-virtual {v3, v5}, Landroidx/core/app/g$e;->a(Landroid/graphics/Bitmap;)Landroidx/core/app/g$e;

    .line 6003
    new-instance v6, Landroidx/core/app/g$b;

    invoke-direct {v6}, Landroidx/core/app/g$b;-><init>()V

    .line 7140
    iput-object v5, v6, Landroidx/core/app/g$b;->a:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    .line 7148
    iput-object v5, v6, Landroidx/core/app/g$b;->b:Landroid/graphics/Bitmap;

    .line 7149
    iput-boolean v1, v6, Landroidx/core/app/g$b;->c:Z

    .line 6003
    invoke-virtual {v3, v6}, Landroidx/core/app/g$e;->a(Landroidx/core/app/g$i;)Landroidx/core/app/g$e;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v3, "Failed to download image in time, showing notification without it"

    .line 6004
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6005
    invoke-virtual {v0}, Lcom/google/firebase/messaging/ac;->close()V

    goto :goto_1

    :catch_1
    const-string v3, "Interrupted while downloading image, showing notification without it"

    .line 6006
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6007
    invoke-virtual {v0}, Lcom/google/firebase/messaging/ac;->close()V

    .line 6008
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :catch_2
    move-exception v0

    .line 6009
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1a

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed to download image: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    const/4 v0, 0x3

    .line 8001
    invoke-static {v4, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 8002
    iget-object v0, p0, Lcom/google/firebase/messaging/c;->b:Landroid/content/Context;

    const-string v3, "notification"

    .line 8003
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v3, v2, Lcom/google/firebase/messaging/a$a;->b:Ljava/lang/String;

    iget v4, v2, Lcom/google/firebase/messaging/a$a;->c:I

    iget-object v2, v2, Lcom/google/firebase/messaging/a$a;->a:Landroidx/core/app/g$e;

    .line 8004
    invoke-virtual {v2}, Landroidx/core/app/g$e;->b()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v3, v4, v2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return v1
.end method
