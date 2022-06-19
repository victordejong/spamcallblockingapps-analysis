.class public final Lcom/google/android/gms/internal/ads/zd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/dbs;

.field public static final b:Lcom/google/android/gms/internal/ads/dbs;

.field public static final c:Lcom/google/android/gms/internal/ads/dbs;

.field public static final d:Ljava/util/concurrent/ScheduledExecutorService;

.field public static final e:Lcom/google/android/gms/internal/ads/dbs;

.field public static final f:Lcom/google/android/gms/internal/ads/dbs;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 6
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "Default"

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zd;->a(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const/4 v1, 0x2

    const v2, 0x7fffffff

    const-wide/16 v3, 0xa

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 8
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zd;->a(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbs;

    move-result-object v0

    .line 9
    sput-object v0, Lcom/google/android/gms/internal/ads/zd;->a:Lcom/google/android/gms/internal/ads/dbs;

    .line 14
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v1, "Loader"

    .line 15
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zd;->a(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    const/4 v2, 0x5

    const/4 v3, 0x5

    const-wide/16 v4, 0xa

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 16
    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zd;->a(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbs;

    move-result-object v0

    .line 18
    sput-object v0, Lcom/google/android/gms/internal/ads/zd;->b:Lcom/google/android/gms/internal/ads/dbs;

    .line 22
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v1, "Activeview"

    .line 23
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zd;->a(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v10

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-wide/16 v6, 0xa

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 24
    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 25
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zd;->a(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbs;

    move-result-object v0

    .line 26
    sput-object v0, Lcom/google/android/gms/internal/ads/zd;->c:Lcom/google/android/gms/internal/ads/dbs;

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/ads/zg;

    const-string v1, "Schedule"

    .line 28
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zd;->a(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zg;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zd;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/ads/zi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zi;-><init>()V

    .line 30
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zd;->a(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbs;

    move-result-object v0

    .line 31
    sput-object v0, Lcom/google/android/gms/internal/ads/zd;->e:Lcom/google/android/gms/internal/ads/dbs;

    .line 1001
    sget-object v0, Lcom/google/android/gms/internal/ads/dba;->zzidl:Lcom/google/android/gms/internal/ads/dba;

    .line 32
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zd;->a(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbs;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zd;->f:Lcom/google/android/gms/internal/ads/dbs;

    return-void
.end method

.method private static a(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbs;
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zh;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zh;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zg;)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zf;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
