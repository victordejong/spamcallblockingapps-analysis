.class final synthetic Lcom/google/firebase/iid/i;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.1.5"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/firebase/iid/e;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/i;->a:Lcom/google/firebase/iid/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 1
    iget-object v1, p0, Lcom/google/firebase/iid/i;->a:Lcom/google/firebase/iid/e;

    .line 2
    :goto_0
    monitor-enter v1

    .line 3
    :try_start_0
    iget v0, v1, Lcom/google/firebase/iid/e;->a:I

    if-eq v0, v7, :cond_0

    .line 4
    monitor-exit v1

    .line 7
    :goto_1
    return-void

    .line 5
    :cond_0
    iget-object v0, v1, Lcom/google/firebase/iid/e;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v1}, Lcom/google/firebase/iid/e;->b()V

    .line 7
    monitor-exit v1

    goto :goto_1

    .line 12
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 8
    :cond_1
    :try_start_1
    iget-object v0, v1, Lcom/google/firebase/iid/e;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/n;

    .line 9
    iget-object v2, v1, Lcom/google/firebase/iid/e;->e:Landroid/util/SparseArray;

    iget v3, v0, Lcom/google/firebase/iid/n;->a:I

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10
    iget-object v2, v1, Lcom/google/firebase/iid/e;->f:Lcom/google/firebase/iid/d;

    .line 11
    invoke-static {v2}, Lcom/google/firebase/iid/d;->b(Lcom/google/firebase/iid/d;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/iid/k;

    invoke-direct {v3, v1, v0}, Lcom/google/firebase/iid/k;-><init>(Lcom/google/firebase/iid/e;Lcom/google/firebase/iid/n;)V

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 12
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    const-string/jumbo v2, "MessengerIpcClient"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 15
    const-string/jumbo v2, "MessengerIpcClient"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Sending "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_2
    iget-object v2, v1, Lcom/google/firebase/iid/e;->f:Lcom/google/firebase/iid/d;

    invoke-static {v2}, Lcom/google/firebase/iid/d;->a(Lcom/google/firebase/iid/d;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/google/firebase/iid/e;->b:Landroid/os/Messenger;

    .line 17
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 18
    iget v5, v0, Lcom/google/firebase/iid/n;->c:I

    iput v5, v4, Landroid/os/Message;->what:I

    .line 19
    iget v5, v0, Lcom/google/firebase/iid/n;->a:I

    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 20
    iput-object v3, v4, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 21
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 22
    const-string/jumbo v5, "oneWay"

    invoke-virtual {v0}, Lcom/google/firebase/iid/n;->a()Z

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 23
    const-string/jumbo v5, "pkg"

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string/jumbo v2, "data"

    iget-object v0, v0, Lcom/google/firebase/iid/n;->d:Landroid/os/Bundle;

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {v4, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 28
    :try_start_2
    iget-object v0, v1, Lcom/google/firebase/iid/e;->c:Lcom/google/firebase/iid/m;

    invoke-virtual {v0, v4}, Lcom/google/firebase/iid/m;->a(Landroid/os/Message;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Lcom/google/firebase/iid/e;->a(ILjava/lang/String;)V

    goto/16 :goto_0
.end method
