.class public final Lcom/google/android/gms/cloudmessaging/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lcom/google/android/gms/cloudmessaging/f;


# instance fields
.field final a:Landroid/content/Context;

.field final b:Ljava/util/concurrent/ScheduledExecutorService;

.field private d:Lcom/google/android/gms/cloudmessaging/g;

.field private e:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lcom/google/android/gms/cloudmessaging/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/cloudmessaging/g;-><init>(Lcom/google/android/gms/cloudmessaging/f;Lcom/google/android/gms/cloudmessaging/h;)V

    iput-object v0, p0, Lcom/google/android/gms/cloudmessaging/f;->d:Lcom/google/android/gms/cloudmessaging/g;

    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/google/android/gms/cloudmessaging/f;->e:I

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/cloudmessaging/f;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/f;->a:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/google/android/gms/cloudmessaging/f;
    .locals 5

    const-class v0, Lcom/google/android/gms/cloudmessaging/f;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/gms/cloudmessaging/f;->c:Lcom/google/android/gms/cloudmessaging/f;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/google/android/gms/cloudmessaging/f;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/b/a;->a()Lcom/google/android/gms/internal/b/b;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/common/util/a/a;

    const-string v4, "MessengerIpcClient"

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/util/a/a;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/google/android/gms/internal/b/f;->b:I

    .line 4
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/b/b;->b(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/cloudmessaging/f;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V

    sput-object v1, Lcom/google/android/gms/cloudmessaging/f;->c:Lcom/google/android/gms/cloudmessaging/f;

    .line 5
    :cond_0
    sget-object p0, Lcom/google/android/gms/cloudmessaging/f;->c:Lcom/google/android/gms/cloudmessaging/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method final declared-synchronized a()I
    .locals 2

    monitor-enter p0

    .line 22
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/cloudmessaging/f;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/cloudmessaging/f;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Lcom/google/android/gms/cloudmessaging/q;)Lcom/google/android/gms/tasks/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/cloudmessaging/q<",
            "TT;>;)",
            "Lcom/google/android/gms/tasks/h<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "MessengerIpcClient"

    const/4 v1, 0x3

    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Queueing "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/f;->d:Lcom/google/android/gms/cloudmessaging/g;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cloudmessaging/g;->a(Lcom/google/android/gms/cloudmessaging/q;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 17
    new-instance v0, Lcom/google/android/gms/cloudmessaging/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/cloudmessaging/g;-><init>(Lcom/google/android/gms/cloudmessaging/f;Lcom/google/android/gms/cloudmessaging/h;)V

    iput-object v0, p0, Lcom/google/android/gms/cloudmessaging/f;->d:Lcom/google/android/gms/cloudmessaging/g;

    .line 18
    invoke-virtual {v0, p1}, Lcom/google/android/gms/cloudmessaging/g;->a(Lcom/google/android/gms/cloudmessaging/q;)Z

    .line 20
    :cond_1
    iget-object p1, p1, Lcom/google/android/gms/cloudmessaging/q;->b:Lcom/google/android/gms/tasks/i;

    .line 1000
    iget-object p1, p1, Lcom/google/android/gms/tasks/i;->a:Lcom/google/android/gms/tasks/ah;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
