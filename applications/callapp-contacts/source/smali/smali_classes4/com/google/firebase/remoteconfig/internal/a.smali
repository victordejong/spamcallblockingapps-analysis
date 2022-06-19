.class public final Lcom/google/firebase/remoteconfig/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/remoteconfig/internal/a$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/remoteconfig/internal/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/concurrent/Executor;


# instance fields
.field public final a:Lcom/google/firebase/remoteconfig/internal/o;

.field public b:Lcom/google/android/gms/tasks/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/h<",
            "Lcom/google/firebase/remoteconfig/internal/f;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/firebase/remoteconfig/internal/a;->c:Ljava/util/Map;

    .line 247
    invoke-static {}, Lcom/google/firebase/remoteconfig/internal/e;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/remoteconfig/internal/a;->e:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/remoteconfig/internal/o;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/a;->d:Ljava/util/concurrent/ExecutorService;

    .line 76
    iput-object p2, p0, Lcom/google/firebase/remoteconfig/internal/a;->a:Lcom/google/firebase/remoteconfig/internal/o;

    const/4 p1, 0x0

    .line 78
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/a;->b:Lcom/google/android/gms/tasks/h;

    return-void
.end method

.method static synthetic a(Lcom/google/firebase/remoteconfig/internal/a;ZLcom/google/firebase/remoteconfig/internal/f;)Lcom/google/android/gms/tasks/h;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 134
    invoke-direct {p0, p2}, Lcom/google/firebase/remoteconfig/internal/a;->b(Lcom/google/firebase/remoteconfig/internal/f;)V

    .line 136
    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/tasks/k;->a(Ljava/lang/Object;)Lcom/google/android/gms/tasks/h;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized a(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/remoteconfig/internal/o;)Lcom/google/firebase/remoteconfig/internal/a;
    .locals 4

    const-class v0, Lcom/google/firebase/remoteconfig/internal/a;

    monitor-enter v0

    .line 2143
    :try_start_0
    iget-object v1, p1, Lcom/google/firebase/remoteconfig/internal/o;->a:Ljava/lang/String;

    .line 205
    sget-object v2, Lcom/google/firebase/remoteconfig/internal/a;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 206
    new-instance v3, Lcom/google/firebase/remoteconfig/internal/a;

    invoke-direct {v3, p0, p1}, Lcom/google/firebase/remoteconfig/internal/a;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/remoteconfig/internal/o;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/internal/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Lcom/google/firebase/remoteconfig/internal/a;Lcom/google/firebase/remoteconfig/internal/f;)Ljava/lang/Void;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 129
    iget-object p0, p0, Lcom/google/firebase/remoteconfig/internal/a;->a:Lcom/google/firebase/remoteconfig/internal/o;

    invoke-virtual {p0, p1}, Lcom/google/firebase/remoteconfig/internal/o;->a(Lcom/google/firebase/remoteconfig/internal/f;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized b(Lcom/google/firebase/remoteconfig/internal/f;)V
    .locals 0

    monitor-enter p0

    .line 188
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/tasks/k;->a(Ljava/lang/Object;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/a;->b:Lcom/google/android/gms/tasks/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final a(Lcom/google/firebase/remoteconfig/internal/f;)Lcom/google/android/gms/tasks/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/remoteconfig/internal/f;",
            ")",
            "Lcom/google/android/gms/tasks/h<",
            "Lcom/google/firebase/remoteconfig/internal/f;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/a;->d:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0, p1}, Lcom/google/firebase/remoteconfig/internal/b;->a(Lcom/google/firebase/remoteconfig/internal/a;Lcom/google/firebase/remoteconfig/internal/f;)Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/k;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/a;->d:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x1

    invoke-static {p0, v2, p1}, Lcom/google/firebase/remoteconfig/internal/c;->a(Lcom/google/firebase/remoteconfig/internal/a;ZLcom/google/firebase/remoteconfig/internal/f;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    .line 130
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/tasks/h;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/g;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    return-object p1
.end method

.method final a()Lcom/google/firebase/remoteconfig/internal/f;
    .locals 6

    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/a;->b:Lcom/google/android/gms/tasks/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/h;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/a;->b:Lcom/google/android/gms/tasks/h;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/h;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/remoteconfig/internal/f;

    monitor-exit p0

    return-object v0

    .line 99
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 102
    :try_start_1
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/a;->b()Lcom/google/android/gms/tasks/h;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1229
    new-instance v3, Lcom/google/firebase/remoteconfig/internal/a$a;

    invoke-direct {v3, v0}, Lcom/google/firebase/remoteconfig/internal/a$a;-><init>(Lcom/google/firebase/remoteconfig/internal/a$1;)V

    .line 1231
    sget-object v4, Lcom/google/firebase/remoteconfig/internal/a;->e:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/tasks/h;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/f;)Lcom/google/android/gms/tasks/h;

    .line 1232
    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/tasks/h;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/e;)Lcom/google/android/gms/tasks/h;

    .line 1233
    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/tasks/h;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/c;)Lcom/google/android/gms/tasks/h;

    .line 1273
    iget-object v3, v3, Lcom/google/firebase/remoteconfig/internal/a$a;->a:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v4, 0x5

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1239
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/h;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1240
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/h;->d()Ljava/lang/Object;

    move-result-object v1

    .line 102
    check-cast v1, Lcom/google/firebase/remoteconfig/internal/f;

    return-object v1

    .line 1242
    :cond_1
    new-instance v2, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/h;->e()Ljava/lang/Exception;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1236
    :cond_2
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    const-string v2, "Task await timed out."

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v0

    :catchall_0
    move-exception v0

    .line 99
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized b()Lcom/google/android/gms/tasks/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/h<",
            "Lcom/google/firebase/remoteconfig/internal/f;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/a;->b:Lcom/google/android/gms/tasks/h;

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/h;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/a;->b:Lcom/google/android/gms/tasks/h;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/h;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/a;->d:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/a;->a:Lcom/google/firebase/remoteconfig/internal/o;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/firebase/remoteconfig/internal/d;->a(Lcom/google/firebase/remoteconfig/internal/o;)Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/k;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/internal/a;->b:Lcom/google/android/gms/tasks/h;

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/a;->b:Lcom/google/android/gms/tasks/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
