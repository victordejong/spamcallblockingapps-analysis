.class public Lcom/google/firebase/iid/FirebaseInstanceId;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.1.5"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/iid/FirebaseInstanceId$a;
    }
.end annotation


# static fields
.field private static final a:J

.field private static b:Lcom/google/firebase/iid/z;

.field private static c:Ljava/util/concurrent/ScheduledExecutorService;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "FirebaseInstanceId.class"
    .end annotation
.end field


# instance fields
.field private final d:Ljava/util/concurrent/Executor;

.field private final e:Lcom/google/firebase/b;

.field private final f:Lcom/google/firebase/iid/o;

.field private final g:Lcom/google/firebase/iid/bc;

.field private final h:Lcom/google/firebase/iid/t;

.field private final i:Lcom/google/firebase/installations/h;

.field private j:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final k:Lcom/google/firebase/iid/FirebaseInstanceId$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 163
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/iid/FirebaseInstanceId;->a:J

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/b;Lcom/google/firebase/a/d;Lcom/google/firebase/e/h;Lcom/google/firebase/b/c;Lcom/google/firebase/installations/h;)V
    .locals 9

    .prologue
    .line 3
    new-instance v2, Lcom/google/firebase/iid/o;

    .line 4
    invoke-virtual {p1}, Lcom/google/firebase/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/firebase/iid/o;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-static {}, Lcom/google/firebase/iid/aq;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    .line 6
    invoke-static {}, Lcom/google/firebase/iid/aq;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    .line 7
    invoke-direct/range {v0 .. v8}, Lcom/google/firebase/iid/FirebaseInstanceId;-><init>(Lcom/google/firebase/b;Lcom/google/firebase/iid/o;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/google/firebase/a/d;Lcom/google/firebase/e/h;Lcom/google/firebase/b/c;Lcom/google/firebase/installations/h;)V

    .line 8
    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/b;Lcom/google/firebase/iid/o;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/google/firebase/a/d;Lcom/google/firebase/e/h;Lcom/google/firebase/b/c;Lcom/google/firebase/installations/h;)V
    .locals 7

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->j:Z

    .line 11
    invoke-static {p1}, Lcom/google/firebase/iid/o;->a(Lcom/google/firebase/b;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "FirebaseInstanceId failed to initialize, FirebaseApp is missing project ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_0
    const-class v1, Lcom/google/firebase/iid/FirebaseInstanceId;

    monitor-enter v1

    .line 14
    :try_start_0
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->b:Lcom/google/firebase/iid/z;

    if-nez v0, :cond_1

    .line 15
    new-instance v0, Lcom/google/firebase/iid/z;

    invoke-virtual {p1}, Lcom/google/firebase/b;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/firebase/iid/z;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->b:Lcom/google/firebase/iid/z;

    .line 16
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->e:Lcom/google/firebase/b;

    .line 18
    iput-object p2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->f:Lcom/google/firebase/iid/o;

    .line 19
    new-instance v0, Lcom/google/firebase/iid/bc;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object v5, p7

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/iid/bc;-><init>(Lcom/google/firebase/b;Lcom/google/firebase/iid/o;Ljava/util/concurrent/Executor;Lcom/google/firebase/e/h;Lcom/google/firebase/b/c;Lcom/google/firebase/installations/h;)V

    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->g:Lcom/google/firebase/iid/bc;

    .line 20
    iput-object p4, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->d:Ljava/util/concurrent/Executor;

    .line 21
    new-instance v0, Lcom/google/firebase/iid/FirebaseInstanceId$a;

    invoke-direct {v0, p0, p5}, Lcom/google/firebase/iid/FirebaseInstanceId$a;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/a/d;)V

    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->k:Lcom/google/firebase/iid/FirebaseInstanceId$a;

    .line 22
    new-instance v0, Lcom/google/firebase/iid/t;

    invoke-direct {v0, p3}, Lcom/google/firebase/iid/t;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->h:Lcom/google/firebase/iid/t;

    .line 23
    iput-object p8, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->i:Lcom/google/firebase/installations/h;

    .line 24
    new-instance v0, Lcom/google/firebase/iid/au;

    invoke-direct {v0, p0}, Lcom/google/firebase/iid/au;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;)V

    invoke-interface {p4, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 25
    return-void

    .line 16
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/google/firebase/iid/FirebaseInstanceId;)Lcom/google/firebase/b;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->e:Lcom/google/firebase/b;

    return-object v0
.end method

.method public static a()Lcom/google/firebase/iid/FirebaseInstanceId;
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lcom/google/firebase/b;->d()Lcom/google/firebase/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance(Lcom/google/firebase/b;)Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    return-object v0
.end method

.method private final a(Lcom/google/android/gms/tasks/g;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/g",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 98
    const-wide/16 v0, 0x7530

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/tasks/j;->a(Lcom/google/android/gms/tasks/g;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    .line 99
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 100
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 101
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_1

    .line 102
    const-string/jumbo v1, "INSTANCE_ID_RESET"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->g()V

    .line 104
    :cond_0
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 105
    :cond_1
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_2

    .line 106
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 107
    :cond_2
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 109
    :catch_1
    move-exception v0

    :goto_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "SERVICE_NOT_AVAILABLE"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "fcm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "gcm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    :cond_0
    const-string/jumbo p0, "*"

    .line 136
    :cond_1
    return-object p0
.end method

.method private static a(Lcom/google/firebase/b;)V
    .locals 2

    .prologue
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/google/firebase/b;->c()Lcom/google/firebase/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/d;->d()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FirebaseApp has to define a valid projectId."

    .line 51
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Lcom/google/firebase/b;->c()Lcom/google/firebase/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/d;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FirebaseApp has to define a valid applicationId."

    .line 54
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Lcom/google/firebase/b;->c()Lcom/google/firebase/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/d;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FirebaseApp has to define a valid apiKey."

    .line 57
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    return-void
.end method

.method static a(Ljava/lang/Runnable;J)V
    .locals 5

    .prologue
    .line 41
    const-class v1, Lcom/google/firebase/iid/FirebaseInstanceId;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->c:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    new-instance v3, Lcom/google/android/gms/common/util/a/a;

    const-string/jumbo v4, "FirebaseInstanceId"

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/util/a/a;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 44
    :cond_0
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->c:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 45
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static final synthetic a(Ljava/util/concurrent/CountDownLatch;Lcom/google/android/gms/tasks/g;)V
    .locals 0

    .prologue
    .line 142
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 143
    return-void
.end method

.method private final b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/g",
            "<",
            "Lcom/google/firebase/iid/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    invoke-static {p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/gms/tasks/j;->a(Ljava/lang/Object;)Lcom/google/android/gms/tasks/g;

    move-result-object v1

    .line 78
    iget-object v2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->d:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/firebase/iid/at;

    invoke-direct {v3, p0, p1, v0}, Lcom/google/firebase/iid/at;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/tasks/g;->b(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/a;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    .line 80
    return-object v0
.end method

.method static synthetic b(Lcom/google/firebase/iid/FirebaseInstanceId;)V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->k()V

    return-void
.end method

.method private final c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/iid/y;
    .locals 2

    .prologue
    .line 96
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->b:Lcom/google/firebase/iid/z;

    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/firebase/iid/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/iid/y;

    move-result-object v0

    return-object v0
.end method

.method static f()Z
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 118
    const-string/jumbo v0, "FirebaseInstanceId"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "FirebaseInstanceId"

    .line 119
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 120
    :goto_0
    return v0

    .line 119
    :cond_1
    const/4 v0, 0x0

    .line 120
    goto :goto_0
.end method

.method public static getInstance(Lcom/google/firebase/b;)Lcom/google/firebase/iid/FirebaseInstanceId;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .prologue
    .line 2
    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {p0, v0}, Lcom/google/firebase/b;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    return-object v0
.end method

.method private final k()V
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->d()Lcom/google/firebase/iid/y;

    move-result-object v0

    .line 27
    invoke-virtual {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(Lcom/google/firebase/iid/y;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->l()V

    .line 29
    :cond_0
    return-void
.end method

.method private final declared-synchronized l()V
    .locals 2

    .prologue
    .line 33
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->j:Z

    if-nez v0, :cond_0

    .line 34
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_0
    monitor-exit p0

    return-void

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final m()Ljava/lang/String;
    .locals 5

    .prologue
    .line 59
    :try_start_0
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->b:Lcom/google/firebase/iid/z;

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->e:Lcom/google/firebase/b;

    invoke-virtual {v1}, Lcom/google/firebase/b;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/z;->a(Ljava/lang/String;)J

    .line 60
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->i:Lcom/google/firebase/installations/h;

    invoke-interface {v0}, Lcom/google/firebase/installations/h;->d()Lcom/google/android/gms/tasks/g;

    move-result-object v0

    .line 61
    const-string/jumbo v1, "Task must not be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 63
    sget-object v2, Lcom/google/firebase/iid/aw;->a:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/firebase/iid/av;

    invoke-direct {v3, v1}, Lcom/google/firebase/iid/av;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/tasks/g;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/c;)Lcom/google/android/gms/tasks/g;

    .line 64
    const-wide/16 v2, 0x7530

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/g;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/g;->d()Ljava/lang/Object;

    move-result-object v0

    .line 71
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 68
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/g;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string/jumbo v1, "Task is already canceled"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 70
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/g;->e()Ljava/lang/Exception;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private final n()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    const-string/jumbo v0, "[DEFAULT]"

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->e:Lcom/google/firebase/b;

    invoke-virtual {v1}, Lcom/google/firebase/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const-string/jumbo v0, ""

    .line 140
    :goto_0
    return-object v0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->e:Lcom/google/firebase/b;

    invoke-virtual {v0}, Lcom/google/firebase/b;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method final synthetic a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/tasks/g;)Lcom/google/android/gms/tasks/g;
    .locals 3

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->m()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/iid/y;

    move-result-object v1

    .line 146
    invoke-virtual {p0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(Lcom/google/firebase/iid/y;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 147
    new-instance v2, Lcom/google/firebase/iid/c;

    iget-object v1, v1, Lcom/google/firebase/iid/y;->a:Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Lcom/google/firebase/iid/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/android/gms/tasks/j;->a(Ljava/lang/Object;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    .line 148
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->h:Lcom/google/firebase/iid/t;

    new-instance v2, Lcom/google/firebase/iid/ay;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/google/firebase/iid/ay;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/firebase/iid/t;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/iid/v;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    goto :goto_0
.end method

.method final synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/g;
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->g:Lcom/google/firebase/iid/bc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/firebase/iid/bc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->d:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/firebase/iid/ax;

    invoke-direct {v2, p0, p2, p3, p1}, Lcom/google/firebase/iid/ax;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/g;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/f;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0
.end method

.method final synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/g;
    .locals 6

    .prologue
    .line 151
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->b:Lcom/google/firebase/iid/z;

    .line 152
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->n()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->f:Lcom/google/firebase/iid/o;

    .line 153
    invoke-virtual {v2}, Lcom/google/firebase/iid/o;->c()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    .line 154
    invoke-virtual/range {v0 .. v5}, Lcom/google/firebase/iid/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    new-instance v0, Lcom/google/firebase/iid/c;

    invoke-direct {v0, p3, p4}, Lcom/google/firebase/iid/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/tasks/j;->a(Ljava/lang/Object;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 93
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "MAIN_THREAD"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(Lcom/google/android/gms/tasks/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/a;

    invoke-interface {v0}, Lcom/google/firebase/iid/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final declared-synchronized a(J)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 36
    monitor-enter p0

    const-wide/16 v0, 0x1e

    shl-long v2, p1, v2

    :try_start_0
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sget-wide v2, Lcom/google/firebase/iid/FirebaseInstanceId;->a:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 37
    new-instance v2, Lcom/google/firebase/iid/ac;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/firebase/iid/ac;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;J)V

    .line 38
    invoke-static {v2, p1, p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(Ljava/lang/Runnable;J)V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit p0

    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Z)V
    .locals 1

    .prologue
    .line 31
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit p0

    return-void

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Lcom/google/firebase/iid/y;)Z
    .locals 1

    .prologue
    .line 141
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->f:Lcom/google/firebase/iid/o;

    invoke-virtual {v0}, Lcom/google/firebase/iid/o;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/iid/y;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b()Lcom/google/firebase/b;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->e:Lcom/google/firebase/b;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->e:Lcom/google/firebase/b;

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(Lcom/google/firebase/b;)V

    .line 47
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->k()V

    .line 48
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final d()Lcom/google/firebase/iid/y;
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->e:Lcom/google/firebase/b;

    invoke-static {v0}, Lcom/google/firebase/iid/o;->a(Lcom/google/firebase/b;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "*"

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/iid/y;

    move-result-object v0

    return-object v0
.end method

.method final e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->e:Lcom/google/firebase/b;

    invoke-static {v0}, Lcom/google/firebase/iid/o;->a(Lcom/google/firebase/b;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "*"

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final declared-synchronized g()V
    .locals 1

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->b:Lcom/google/firebase/iid/z;

    invoke-virtual {v0}, Lcom/google/firebase/iid/z;->a()V

    .line 123
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->k:Lcom/google/firebase/iid/FirebaseInstanceId$a;

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId$a;->a()Z

    move-result v0

    .line 124
    if-eqz v0, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :cond_0
    monitor-exit p0

    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->f:Lcom/google/firebase/iid/o;

    invoke-virtual {v0}, Lcom/google/firebase/iid/o;->a()Z

    move-result v0

    return v0
.end method

.method final i()V
    .locals 2

    .prologue
    .line 128
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->b:Lcom/google/firebase/iid/z;

    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/z;->b(Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->l()V

    .line 130
    return-void
.end method

.method final synthetic j()V
    .locals 1

    .prologue
    .line 156
    .line 157
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->k:Lcom/google/firebase/iid/FirebaseInstanceId$a;

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId$a;->a()Z

    move-result v0

    .line 158
    if-eqz v0, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->k()V

    .line 160
    :cond_0
    return-void
.end method
