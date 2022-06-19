.class public Lcom/google/android/gms/internal/ads/duq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "duq"


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/dtg;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:I

.field private volatile f:Ljava/lang/reflect/Method;

.field private final g:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private h:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public varargs constructor <init>(Lcom/google/android/gms/internal/ads/dtg;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dtg;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/duq;->e:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/duq;->f:Ljava/lang/reflect/Method;

    .line 4
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/duq;->h:Ljava/util/concurrent/CountDownLatch;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/duq;->b:Lcom/google/android/gms/internal/ads/dtg;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/duq;->c:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/duq;->d:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/duq;->g:[Ljava/lang/Class;

    .line 1074
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/dtg;->b:Ljava/util/concurrent/ExecutorService;

    .line 9
    new-instance p2, Lcom/google/android/gms/internal/ads/dut;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/dut;-><init>(Lcom/google/android/gms/internal/ads/duq;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private final a([BLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzej;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/duq;->b:Lcom/google/android/gms/internal/ads/dtg;

    .line 1076
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dtg;->d:Lcom/google/android/gms/internal/ads/dkf;

    .line 42
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/dkf;->a([BLjava/lang/String;)[B

    move-result-object p1

    .line 43
    new-instance p2, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p2
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/duq;)V
    .locals 3

    .line 2011
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/duq;->b:Lcom/google/android/gms/internal/ads/dtg;

    .line 2075
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dtg;->c:Ldalvik/system/DexClassLoader;

    .line 2011
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/duq;->b:Lcom/google/android/gms/internal/ads/dtg;

    .line 2077
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dtg;->e:[B

    .line 2012
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/duq;->c:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/duq;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2013
    invoke-virtual {v0, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzej; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2015
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/duq;->h:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 2017
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/duq;->b:Lcom/google/android/gms/internal/ads/dtg;

    .line 3077
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dtg;->e:[B

    .line 2018
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/duq;->d:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/duq;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/duq;->g:[Ljava/lang/Class;

    .line 2019
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/duq;->f:Ljava/lang/reflect/Method;

    .line 2020
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/duq;->f:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzej; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 2021
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/duq;->h:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 2023
    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/duq;->h:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v0

    .line 2040
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/duq;->h:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 2041
    throw v0

    .line 2038
    :catch_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/duq;->h:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 2035
    :catch_1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/duq;->h:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 2032
    :catch_2
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/duq;->h:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 2029
    :catch_3
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/duq;->h:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 2026
    :catch_4
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/duq;->h:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/reflect/Method;
    .locals 5

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/duq;->f:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/duq;->f:Ljava/lang/reflect/Method;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/duq;->h:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/duq;->f:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method
