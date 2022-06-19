.class final Lcom/google/firebase/messaging/as;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:J


# instance fields
.field final a:Lcom/google/firebase/messaging/ar;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/firebase/messaging/ag;

.field private final e:Lcom/google/firebase/messaging/z;

.field private final f:Lcom/google/firebase/messaging/FirebaseMessaging;

.field private final g:Lcom/google/firebase/installations/h;

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/gms/tasks/i<",
            "Ljava/lang/Void;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/concurrent/ScheduledExecutorService;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x8

    .line 1
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/messaging/as;->b:J

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/installations/h;Lcom/google/firebase/messaging/ag;Lcom/google/firebase/messaging/ar;Lcom/google/firebase/messaging/z;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0}, Landroidx/b/a;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/messaging/as;->h:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/messaging/as;->j:Z

    iput-object p1, p0, Lcom/google/firebase/messaging/as;->f:Lcom/google/firebase/messaging/FirebaseMessaging;

    iput-object p2, p0, Lcom/google/firebase/messaging/as;->g:Lcom/google/firebase/installations/h;

    iput-object p3, p0, Lcom/google/firebase/messaging/as;->d:Lcom/google/firebase/messaging/ag;

    iput-object p4, p0, Lcom/google/firebase/messaging/as;->a:Lcom/google/firebase/messaging/ar;

    iput-object p5, p0, Lcom/google/firebase/messaging/as;->e:Lcom/google/firebase/messaging/z;

    iput-object p6, p0, Lcom/google/firebase/messaging/as;->c:Landroid/content/Context;

    iput-object p7, p0, Lcom/google/firebase/messaging/as;->i:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method static a(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/installations/h;Lcom/google/firebase/messaging/ag;Lcom/google/firebase/messaging/z;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/tasks/h;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/messaging/FirebaseMessaging;",
            "Lcom/google/firebase/installations/h;",
            "Lcom/google/firebase/messaging/ag;",
            "Lcom/google/firebase/messaging/z;",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lcom/google/android/gms/tasks/h<",
            "Lcom/google/firebase/messaging/as;",
            ">;"
        }
    .end annotation

    new-instance v7, Lcom/google/firebase/messaging/at;

    move-object v0, v7

    move-object v1, p4

    move-object v2, p5

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/messaging/at;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/installations/h;Lcom/google/firebase/messaging/ag;Lcom/google/firebase/messaging/z;)V

    invoke-static {p5, v7}, Lcom/google/android/gms/tasks/k;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/h;

    move-result-object p0

    return-object p0
.end method

.method static final synthetic a(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/installations/h;Lcom/google/firebase/messaging/ag;Lcom/google/firebase/messaging/z;)Lcom/google/firebase/messaging/as;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/google/firebase/messaging/ar;->a(Landroid/content/Context;Ljava/util/concurrent/Executor;)Lcom/google/firebase/messaging/ar;

    move-result-object v4

    new-instance v8, Lcom/google/firebase/messaging/as;

    move-object v0, v8

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, p5

    move-object v6, p0

    move-object v7, p1

    .line 2
    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/messaging/as;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/installations/h;Lcom/google/firebase/messaging/ag;Lcom/google/firebase/messaging/ar;Lcom/google/firebase/messaging/z;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v8
.end method

.method private static a(Lcom/google/android/gms/tasks/h;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/h<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    .line 1
    invoke-static {p0, v1, v2, v0}, Lcom/google/android/gms/tasks/k;->a(Lcom/google/android/gms/tasks/h;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 5
    :goto_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "SERVICE_NOT_AVAILABLE"

    .line 2
    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 4
    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_1

    .line 6
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    .line 7
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 2
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 8
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 5
    :cond_1
    check-cast v0, Ljava/io/IOException;

    throw v0
.end method

.method private a(Lcom/google/firebase/messaging/aq;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3000
    :try_start_0
    iget-object v1, p1, Lcom/google/firebase/messaging/aq;->b:Ljava/lang/String;

    .line 1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x53

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    const/16 v3, 0x55

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "U"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const-string v2, "S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, -0x1

    :goto_1
    const-string v2, " succeeded."

    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    .line 8
    :try_start_1
    invoke-static {}, Lcom/google/firebase/messaging/as;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 9
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown topic operation"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 4000
    :cond_3
    iget-object v1, p1, Lcom/google/firebase/messaging/aq;->a:Ljava/lang/String;

    .line 2
    iget-object v3, p0, Lcom/google/firebase/messaging/as;->g:Lcom/google/firebase/installations/h;

    .line 4001
    invoke-interface {v3}, Lcom/google/firebase/installations/h;->b()Lcom/google/android/gms/tasks/h;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/messaging/as;->a(Lcom/google/android/gms/tasks/h;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, p0, Lcom/google/firebase/messaging/as;->e:Lcom/google/firebase/messaging/z;

    iget-object v6, p0, Lcom/google/firebase/messaging/as;->f:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 4002
    invoke-virtual {v6}, Lcom/google/firebase/messaging/FirebaseMessaging;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6, v1}, Lcom/google/firebase/messaging/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/h;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/messaging/as;->a(Lcom/google/android/gms/tasks/h;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/google/firebase/messaging/as;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5000
    iget-object p1, p1, Lcom/google/firebase/messaging/aq;->a:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x23

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unsubscribe from topic: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 6000
    :cond_4
    iget-object v1, p1, Lcom/google/firebase/messaging/aq;->a:Ljava/lang/String;

    .line 5
    iget-object v3, p0, Lcom/google/firebase/messaging/as;->g:Lcom/google/firebase/installations/h;

    .line 6001
    invoke-interface {v3}, Lcom/google/firebase/installations/h;->b()Lcom/google/android/gms/tasks/h;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/messaging/as;->a(Lcom/google/android/gms/tasks/h;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, p0, Lcom/google/firebase/messaging/as;->e:Lcom/google/firebase/messaging/z;

    iget-object v6, p0, Lcom/google/firebase/messaging/as;->f:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 6002
    invoke-virtual {v6}, Lcom/google/firebase/messaging/FirebaseMessaging;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6, v1}, Lcom/google/firebase/messaging/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/h;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/messaging/as;->a(Lcom/google/android/gms/tasks/h;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Lcom/google/firebase/messaging/as;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 7000
    iget-object p1, p1, Lcom/google/firebase/messaging/aq;->a:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Subscribe to topic: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_2
    return v4

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "FirebaseMessaging"

    if-nez v1, :cond_8

    .line 11
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "INTERNAL_SERVER_ERROR"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    .line 13
    :cond_6
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    const-string p1, "Topic operation failed without exception message. Will retry Topic operation."

    .line 14
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 15
    :cond_7
    throw p1

    .line 12
    :cond_8
    :goto_3
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x35

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Topic operation failed: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Will retry Topic operation."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static c()Z
    .locals 6

    const-string v0, "FirebaseMessaging"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-ne v2, v5, :cond_2

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :cond_2
    return v3
.end method


# virtual methods
.method final a(J)V
    .locals 10

    add-long v0, p1, p1

    const-wide/16 v2, 0x1e

    .line 1
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sget-wide v2, Lcom/google/firebase/messaging/as;->b:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    new-instance v0, Lcom/google/firebase/messaging/au;

    iget-object v6, p0, Lcom/google/firebase/messaging/as;->c:Landroid/content/Context;

    iget-object v7, p0, Lcom/google/firebase/messaging/as;->d:Lcom/google/firebase/messaging/ag;

    move-object v4, v0

    move-object v5, p0

    .line 2
    invoke-direct/range {v4 .. v9}, Lcom/google/firebase/messaging/au;-><init>(Lcom/google/firebase/messaging/as;Landroid/content/Context;Lcom/google/firebase/messaging/ag;J)V

    .line 3
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/firebase/messaging/as;->a(Ljava/lang/Runnable;J)V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/as;->a(Z)V

    return-void
.end method

.method final a(Ljava/lang/Runnable;J)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/messaging/as;->i:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1
    invoke-interface {v0, p1, p2, p3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method final declared-synchronized a(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/firebase/messaging/as;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final a()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/messaging/as;->a:Lcom/google/firebase/messaging/ar;

    .line 1
    invoke-virtual {v0}, Lcom/google/firebase/messaging/ar;->a()Lcom/google/firebase/messaging/aq;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6
    invoke-static {}, Lcom/google/firebase/messaging/as;->c()Z

    .line 8
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    invoke-direct {p0, v0}, Lcom/google/firebase/messaging/as;->a(Lcom/google/firebase/messaging/aq;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/firebase/messaging/as;->a:Lcom/google/firebase/messaging/ar;

    .line 4
    invoke-virtual {v1, v0}, Lcom/google/firebase/messaging/ar;->a(Lcom/google/firebase/messaging/aq;)Z

    .line 5
    iget-object v1, p0, Lcom/google/firebase/messaging/as;->h:Ljava/util/Map;

    .line 1001
    monitor-enter v1

    .line 2000
    :try_start_1
    iget-object v0, v0, Lcom/google/firebase/messaging/aq;->c:Ljava/lang/String;

    .line 1001
    iget-object v2, p0, Lcom/google/firebase/messaging/as;->h:Ljava/util/Map;

    .line 1002
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1003
    monitor-exit v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/firebase/messaging/as;->h:Ljava/util/Map;

    .line 1004
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayDeque;

    .line 1005
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/tasks/i;

    if-eqz v3, :cond_3

    const/4 v4, 0x0

    .line 1006
    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/i;->a(Ljava/lang/Object;)V

    .line 1007
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/firebase/messaging/as;->h:Ljava/util/Map;

    .line 1008
    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    :cond_4
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method final declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/messaging/as;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
