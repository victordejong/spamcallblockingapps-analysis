.class final Lcom/google/firebase/iid/e;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.1.5"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field a:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field final b:Landroid/os/Messenger;

.field c:Lcom/google/firebase/iid/m;

.field final d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/firebase/iid/n",
            "<*>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/firebase/iid/n",
            "<*>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field final synthetic f:Lcom/google/firebase/iid/d;


# direct methods
.method private constructor <init>(Lcom/google/firebase/iid/d;)V
    .locals 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/firebase/iid/e;->f:Lcom/google/firebase/iid/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/iid/e;->a:I

    .line 3
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/google/android/gms/internal/g/e;

    .line 4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/iid/h;

    invoke-direct {v3, p0}, Lcom/google/firebase/iid/h;-><init>(Lcom/google/firebase/iid/e;)V

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/g/e;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/firebase/iid/e;->b:Landroid/os/Messenger;

    .line 5
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/iid/e;->d:Ljava/util/Queue;

    .line 6
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/iid/e;->e:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/iid/d;Lcom/google/firebase/iid/f;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/e;-><init>(Lcom/google/firebase/iid/d;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/firebase/iid/e;->f:Lcom/google/firebase/iid/d;

    invoke-static {v0}, Lcom/google/firebase/iid/d;->b(Lcom/google/firebase/iid/d;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/iid/i;

    invoke-direct {v1, p0}, Lcom/google/firebase/iid/i;-><init>(Lcom/google/firebase/iid/e;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 52
    return-void
.end method

.method final declared-synchronized a(I)V
    .locals 4

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/iid/e;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/n;

    .line 91
    if-eqz v0, :cond_0

    .line 92
    const-string/jumbo v1, "MessengerIpcClient"

    const/16 v2, 0x1f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Timing out request: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v1, p0, Lcom/google/firebase/iid/e;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 94
    new-instance v1, Lcom/google/firebase/iid/zzam;

    const/4 v2, 0x3

    const-string/jumbo v3, "Timed out waiting for response"

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/iid/zzam;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/n;->a(Lcom/google/firebase/iid/zzam;)V

    .line 95
    invoke-virtual {p0}, Lcom/google/firebase/iid/e;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_0
    monitor-exit p0

    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "MessengerIpcClient"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const-string/jumbo v1, "MessengerIpcClient"

    const-string/jumbo v2, "Disconnected: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    iget v0, p0, Lcom/google/firebase/iid/e;->a:I

    packed-switch v0, :pswitch_data_0

    .line 78
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Lcom/google/firebase/iid/e;->a:I

    const/16 v2, 0x1a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Unknown state: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 58
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 61
    :pswitch_1
    const-string/jumbo v0, "MessengerIpcClient"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    const-string/jumbo v0, "MessengerIpcClient"

    const-string/jumbo v1, "Unbinding service"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_2
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/firebase/iid/e;->a:I

    .line 64
    invoke-static {}, Lcom/google/android/gms/common/stats/a;->a()Lcom/google/android/gms/common/stats/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/iid/e;->f:Lcom/google/firebase/iid/d;

    invoke-static {v1}, Lcom/google/firebase/iid/d;->a(Lcom/google/firebase/iid/d;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/stats/a;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 65
    new-instance v2, Lcom/google/firebase/iid/zzam;

    invoke-direct {v2, p1, p2}, Lcom/google/firebase/iid/zzam;-><init>(ILjava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/google/firebase/iid/e;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/n;

    .line 67
    invoke-virtual {v0, v2}, Lcom/google/firebase/iid/n;->a(Lcom/google/firebase/iid/zzam;)V

    goto :goto_1

    .line 69
    :cond_3
    iget-object v0, p0, Lcom/google/firebase/iid/e;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 70
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/google/firebase/iid/e;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 71
    iget-object v0, p0, Lcom/google/firebase/iid/e;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/n;

    invoke-virtual {v0, v2}, Lcom/google/firebase/iid/n;->a(Lcom/google/firebase/iid/zzam;)V

    .line 72
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 73
    :cond_4
    iget-object v0, p0, Lcom/google/firebase/iid/e;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :goto_3
    :pswitch_2
    monitor-exit p0

    return-void

    .line 75
    :pswitch_3
    const/4 v0, 0x4

    :try_start_2
    iput v0, p0, Lcom/google/firebase/iid/e;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method final a(Landroid/os/Message;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 30
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 31
    const-string/jumbo v0, "MessengerIpcClient"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const-string/jumbo v0, "MessengerIpcClient"

    const/16 v2, 0x29

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Received response to request: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    monitor-enter p0

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/iid/e;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/n;

    .line 35
    if-nez v0, :cond_1

    .line 36
    const-string/jumbo v0, "MessengerIpcClient"

    const/16 v2, 0x32

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Received response for unknown request: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    monitor-exit p0

    .line 46
    :goto_0
    return v4

    .line 38
    :cond_1
    iget-object v2, p0, Lcom/google/firebase/iid/e;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 39
    invoke-virtual {p0}, Lcom/google/firebase/iid/e;->b()V

    .line 40
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 42
    const-string/jumbo v2, "unsupported"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 43
    new-instance v1, Lcom/google/firebase/iid/zzam;

    const/4 v2, 0x4

    const-string/jumbo v3, "Not supported by GmsCore"

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/iid/zzam;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/n;->a(Lcom/google/firebase/iid/zzam;)V

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 45
    :cond_2
    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/n;->a(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method final declared-synchronized a(Lcom/google/firebase/iid/n;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/iid/n",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 7
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/google/firebase/iid/e;->a:I

    packed-switch v2, :pswitch_data_0

    .line 29
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Lcom/google/firebase/iid/e;->a:I

    const/16 v2, 0x1a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Unknown state: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 8
    :pswitch_0
    :try_start_1
    iget-object v2, p0, Lcom/google/firebase/iid/e;->d:Ljava/util/Queue;

    invoke-interface {v2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 10
    iget v2, p0, Lcom/google/firebase/iid/e;->a:I

    if-nez v2, :cond_0

    move v1, v0

    :cond_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/s;->a(Z)V

    .line 11
    const-string/jumbo v1, "MessengerIpcClient"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    const-string/jumbo v1, "MessengerIpcClient"

    const-string/jumbo v2, "Starting bind to GmsCore"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/firebase/iid/e;->a:I

    .line 14
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    const-string/jumbo v2, "com.google.android.gms"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    invoke-static {}, Lcom/google/android/gms/common/stats/a;->a()Lcom/google/android/gms/common/stats/a;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/iid/e;->f:Lcom/google/firebase/iid/d;

    .line 17
    invoke-static {v3}, Lcom/google/firebase/iid/d;->a(Lcom/google/firebase/iid/d;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, p0, v4}, Lcom/google/android/gms/common/stats/a;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 18
    const/4 v1, 0x0

    const-string/jumbo v2, "Unable to bind to service"

    invoke-virtual {p0, v1, v2}, Lcom/google/firebase/iid/e;->a(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :goto_0
    monitor-exit p0

    return v0

    .line 20
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/google/firebase/iid/e;->f:Lcom/google/firebase/iid/d;

    .line 21
    invoke-static {v1}, Lcom/google/firebase/iid/d;->b(Lcom/google/firebase/iid/d;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/iid/g;

    invoke-direct {v2, p0}, Lcom/google/firebase/iid/g;-><init>(Lcom/google/firebase/iid/e;)V

    const-wide/16 v4, 0x1e

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 23
    :pswitch_1
    iget-object v1, p0, Lcom/google/firebase/iid/e;->d:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 25
    :pswitch_2
    iget-object v1, p0, Lcom/google/firebase/iid/e;->d:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-virtual {p0}, Lcom/google/firebase/iid/e;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 28
    goto :goto_0

    .line 7
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method final declared-synchronized b()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 79
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/firebase/iid/e;->a:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/firebase/iid/e;->d:Ljava/util/Queue;

    .line 80
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/iid/e;->e:Landroid/util/SparseArray;

    .line 81
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 82
    const-string/jumbo v0, "MessengerIpcClient"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const-string/jumbo v0, "MessengerIpcClient"

    const-string/jumbo v1, "Finished handling requests, unbinding"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/firebase/iid/e;->a:I

    .line 85
    invoke-static {}, Lcom/google/android/gms/common/stats/a;->a()Lcom/google/android/gms/common/stats/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/iid/e;->f:Lcom/google/firebase/iid/d;

    invoke-static {v1}, Lcom/google/firebase/iid/d;->a(Lcom/google/firebase/iid/d;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/stats/a;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_1
    monitor-exit p0

    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized c()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 87
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/firebase/iid/e;->a:I

    if-ne v0, v1, :cond_0

    .line 88
    const/4 v0, 0x1

    const-string/jumbo v1, "Timed out while binding"

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/iid/e;->a(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_0
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 47
    const-string/jumbo v0, "MessengerIpcClient"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const-string/jumbo v0, "MessengerIpcClient"

    const-string/jumbo v1, "Service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/iid/e;->f:Lcom/google/firebase/iid/d;

    invoke-static {v0}, Lcom/google/firebase/iid/d;->b(Lcom/google/firebase/iid/d;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/iid/j;

    invoke-direct {v1, p0, p2}, Lcom/google/firebase/iid/j;-><init>(Lcom/google/firebase/iid/e;Landroid/os/IBinder;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 50
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 53
    const-string/jumbo v0, "MessengerIpcClient"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const-string/jumbo v0, "MessengerIpcClient"

    const-string/jumbo v1, "Service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/iid/e;->f:Lcom/google/firebase/iid/d;

    invoke-static {v0}, Lcom/google/firebase/iid/d;->b(Lcom/google/firebase/iid/d;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/iid/l;

    invoke-direct {v1, p0}, Lcom/google/firebase/iid/l;-><init>(Lcom/google/firebase/iid/e;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 56
    return-void
.end method
