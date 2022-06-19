.class final Lcom/google/android/gms/measurement/internal/fe;
.super Ljava/lang/Thread;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/measurement/internal/fb",
            "<*>;>;"
        }
    .end annotation
.end field

.field private c:Z

.field private final synthetic d:Lcom/google/android/gms/measurement/internal/fa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/fa;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/measurement/internal/fb",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/fe;->d:Lcom/google/android/gms/measurement/internal/fa;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fe;->c:Z

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p3}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/fe;->a:Ljava/lang/Object;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/fe;->b:Ljava/util/concurrent/BlockingQueue;

    .line 7
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/fe;->setName(Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method private final a(Ljava/lang/InterruptedException;)V
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fe;->d:Lcom/google/android/gms/measurement/internal/fa;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fe;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, " was interrupted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method private final b()V
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fe;->d:Lcom/google/android/gms/measurement/internal/fa;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/fa;->c(Lcom/google/android/gms/measurement/internal/fa;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 41
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fe;->c:Z

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fe;->d:Lcom/google/android/gms/measurement/internal/fa;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/fa;->a(Lcom/google/android/gms/measurement/internal/fa;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fe;->d:Lcom/google/android/gms/measurement/internal/fa;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/fa;->c(Lcom/google/android/gms/measurement/internal/fa;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fe;->d:Lcom/google/android/gms/measurement/internal/fa;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/fa;->d(Lcom/google/android/gms/measurement/internal/fa;)Lcom/google/android/gms/measurement/internal/fe;

    move-result-object v0

    if-ne p0, v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fe;->d:Lcom/google/android/gms/measurement/internal/fa;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/fa;->a(Lcom/google/android/gms/measurement/internal/fa;Lcom/google/android/gms/measurement/internal/fe;)Lcom/google/android/gms/measurement/internal/fe;

    .line 49
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fe;->c:Z

    .line 50
    :cond_0
    monitor-exit v1

    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fe;->d:Lcom/google/android/gms/measurement/internal/fa;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/fa;->e(Lcom/google/android/gms/measurement/internal/fa;)Lcom/google/android/gms/measurement/internal/fe;

    move-result-object v0

    if-ne p0, v0, :cond_2

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fe;->d:Lcom/google/android/gms/measurement/internal/fa;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/fa;->b(Lcom/google/android/gms/measurement/internal/fa;Lcom/google/android/gms/measurement/internal/fe;)Lcom/google/android/gms/measurement/internal/fe;

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 48
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fe;->d:Lcom/google/android/gms/measurement/internal/fa;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v2, "Current scheduler thread is neither worker nor network"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 51
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fe;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fe;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 53
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final run()V
    .locals 6

    .prologue
    .line 9
    const/4 v0, 0x0

    move v1, v0

    .line 10
    :goto_0
    if-nez v1, :cond_0

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fe;->d:Lcom/google/android/gms/measurement/internal/fa;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/fa;->a(Lcom/google/android/gms/measurement/internal/fa;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    const/4 v0, 0x1

    move v1, v0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/fe;->a(Ljava/lang/InterruptedException;)V

    goto :goto_0

    .line 17
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v2

    .line 18
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fe;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/fb;

    if-eqz v0, :cond_2

    .line 19
    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/fb;->a:Z

    if-eqz v1, :cond_1

    move v1, v2

    .line 20
    :goto_2
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fb;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 38
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/fe;->b()V

    .line 39
    throw v0

    .line 19
    :cond_1
    const/16 v1, 0xa

    goto :goto_2

    .line 22
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fe;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fe;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fe;->d:Lcom/google/android/gms/measurement/internal/fa;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/fa;->b(Lcom/google/android/gms/measurement/internal/fa;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    if-nez v0, :cond_3

    .line 25
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fe;->a:Ljava/lang/Object;

    const-wide/16 v4, 0x7530

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 29
    :cond_3
    :goto_3
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 30
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fe;->d:Lcom/google/android/gms/measurement/internal/fa;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/fa;->c(Lcom/google/android/gms/measurement/internal/fa;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 31
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fe;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fe;->d:Lcom/google/android/gms/measurement/internal/fa;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/t;->ay:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 33
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/fe;->b()V

    .line 34
    :cond_4
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 35
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/fe;->b()V

    .line 36
    return-void

    .line 27
    :catch_1
    move-exception v0

    .line 28
    :try_start_8
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/fe;->a(Ljava/lang/InterruptedException;)V

    goto :goto_3

    .line 29
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 37
    :cond_5
    :try_start_a
    monitor-exit v1

    goto :goto_1

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
.end method
