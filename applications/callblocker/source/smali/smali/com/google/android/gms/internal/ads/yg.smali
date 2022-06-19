.class public final Lcom/google/android/gms/internal/ads/yg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/crs;

.field public static final b:Lcom/google/android/gms/internal/ads/crs;

.field public static final c:Lcom/google/android/gms/internal/ads/crs;

.field public static final d:Ljava/util/concurrent/ScheduledExecutorService;

.field public static final e:Lcom/google/android/gms/internal/ads/crs;

.field public static final f:Lcom/google/android/gms/internal/ads/crs;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x5

    const-wide/16 v4, 0xa

    const/4 v9, 0x1

    .line 3
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x2

    const v3, 0x7fffffff

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string/jumbo v0, "Default"

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yg;->a(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/yg;->a(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crs;

    move-result-object v0

    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/yg;->a:Lcom/google/android/gms/internal/ads/crs;

    .line 7
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string/jumbo v0, "Loader"

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yg;->a(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move v2, v10

    move v3, v10

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 9
    invoke-virtual {v1, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 10
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/yg;->a(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crs;

    move-result-object v0

    .line 11
    sput-object v0, Lcom/google/android/gms/internal/ads/yg;->b:Lcom/google/android/gms/internal/ads/crs;

    .line 12
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string/jumbo v0, "Activeview"

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yg;->a(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move v2, v9

    move v3, v9

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 14
    invoke-virtual {v1, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 15
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/yg;->a(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crs;

    move-result-object v0

    .line 16
    sput-object v0, Lcom/google/android/gms/internal/ads/yg;->c:Lcom/google/android/gms/internal/ads/crs;

    .line 17
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x3

    const-string/jumbo v2, "Schedule"

    .line 18
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/yg;->a(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/yg;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/ads/yi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/yi;-><init>()V

    .line 20
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yg;->a(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crs;

    move-result-object v0

    .line 21
    sput-object v0, Lcom/google/android/gms/internal/ads/yg;->e:Lcom/google/android/gms/internal/ads/crs;

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/ads/crv;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yg;->a(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crs;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/yg;->f:Lcom/google/android/gms/internal/ads/crs;

    .line 23
    return-void
.end method

.method private static a(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crs;
    .locals 2

    .prologue
    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/yl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/yl;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/yj;)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .prologue
    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/yj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/yj;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
