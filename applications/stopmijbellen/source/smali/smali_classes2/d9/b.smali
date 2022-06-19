.class public Ld9/b;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Ld9/d;


# instance fields
.field public final a:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ld9/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Ld9/b;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    const/16 v0, 0xa

    .line 2
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 3
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Ld9/b;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld9/h;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :try_start_1
    iget-object v1, v0, Ld9/h;->d:Lcom/raizlabs/android/dbflow/config/c;

    iget-object v2, v0, Ld9/h;->c:Ld9/c;

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/config/c;->e(Ld9/c;)V

    .line 6
    iget-object v1, v0, Ld9/h;->b:Ld9/h$c;

    if-eqz v1, :cond_0

    .line 7
    invoke-static {}, Ld9/h;->b()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Ld9/f;

    invoke-direct {v2, v0}, Ld9/f;-><init>(Ld9/h;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 8
    sget-object v2, Lcom/raizlabs/android/dbflow/config/f$b;->d:Lcom/raizlabs/android/dbflow/config/f$b;

    invoke-static {v2, v1}, Lcom/raizlabs/android/dbflow/config/f;->b(Lcom/raizlabs/android/dbflow/config/f$b;Ljava/lang/Throwable;)V

    .line 9
    iget-object v2, v0, Ld9/h;->a:Ld9/h$b;

    if-eqz v2, :cond_1

    .line 10
    invoke-static {}, Ld9/h;->b()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Ld9/g;

    invoke-direct {v3, v0, v1}, Ld9/g;-><init>(Ld9/h;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 11
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "An exception occurred while executing a transaction"

    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 12
    :catch_0
    monitor-enter p0

    .line 13
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method
