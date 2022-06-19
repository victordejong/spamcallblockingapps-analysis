.class public Lcom/google/android/gms/internal/ads/chc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# static fields
.field protected static volatile a:Lcom/google/android/gms/internal/ads/dwn;

.field private static final d:Landroid/os/ConditionVariable;

.field private static volatile e:Ljava/util/Random;


# instance fields
.field protected volatile b:Ljava/lang/Boolean;

.field private c:Lcom/google/android/gms/internal/ads/din;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/chc;->d:Landroid/os/ConditionVariable;

    .line 47
    sput-object v1, Lcom/google/android/gms/internal/ads/chc;->a:Lcom/google/android/gms/internal/ads/dwn;

    .line 48
    sput-object v1, Lcom/google/android/gms/internal/ads/chc;->e:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/din;)V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/chc;->c:Lcom/google/android/gms/internal/ads/din;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/din;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/google/android/gms/internal/ads/cke;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/cke;-><init>(Lcom/google/android/gms/internal/ads/chc;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 5
    return-void
.end method

.method public static a()I
    .locals 2

    .prologue
    .line 33
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 34
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v0

    .line 37
    :goto_0
    return v0

    .line 35
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/chc;->c()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/chc;->c()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/chc;)Lcom/google/android/gms/internal/ads/din;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/chc;->c:Lcom/google/android/gms/internal/ads/din;

    return-object v0
.end method

.method static synthetic b()Landroid/os/ConditionVariable;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/google/android/gms/internal/ads/chc;->d:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method private static c()Ljava/util/Random;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/google/android/gms/internal/ads/chc;->e:Ljava/util/Random;

    if-nez v0, :cond_1

    .line 39
    const-class v1, Lcom/google/android/gms/internal/ads/chc;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/chc;->e:Ljava/util/Random;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/chc;->e:Ljava/util/Random;

    .line 42
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/chc;->e:Ljava/util/Random;

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(IIJ)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 6
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v7, v6

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/chc;->a(IIJLjava/lang/String;Ljava/lang/Exception;)V

    .line 7
    return-void
.end method

.method public final a(IIJLjava/lang/String;)V
    .locals 9

    .prologue
    .line 8
    const/4 v3, -0x1

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/chc;->a(IIJLjava/lang/String;Ljava/lang/Exception;)V

    .line 9
    return-void
.end method

.method public final a(IIJLjava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 10
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/chc;->d:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/chc;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/ads/chc;->a:Lcom/google/android/gms/internal/ads/dwn;

    if-eqz v0, :cond_3

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/akn$a;->a()Lcom/google/android/gms/internal/ads/akn$a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/chc;->c:Lcom/google/android/gms/internal/ads/din;

    .line 13
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/din;->a:Landroid/content/Context;

    .line 14
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/akn$a$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/akn$a$a;

    move-result-object v0

    .line 15
    invoke-virtual {v0, p3, p4}, Lcom/google/android/gms/internal/ads/akn$a$a;->a(J)Lcom/google/android/gms/internal/ads/akn$a$a;

    move-result-object v0

    .line 16
    if-eqz p5, :cond_0

    .line 17
    invoke-virtual {v0, p5}, Lcom/google/android/gms/internal/ads/akn$a$a;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/akn$a$a;

    .line 18
    :cond_0
    if-eqz p6, :cond_1

    .line 19
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 20
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-static {p6, v2}, Lcom/google/android/gms/internal/ads/dap;->a(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V

    .line 22
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/akn$a$a;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/akn$a$a;

    move-result-object v1

    .line 23
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/akn$a$a;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/akn$a$a;

    .line 24
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/chc;->a:Lcom/google/android/gms/internal/ads/dwn;

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/akn$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/day;->l()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/dwn;->a([B)Lcom/google/android/gms/internal/ads/dws;

    move-result-object v0

    .line 26
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dws;->b(I)Lcom/google/android/gms/internal/ads/dws;

    .line 27
    const/4 v1, -0x1

    if-eq p2, v1, :cond_2

    .line 28
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/dws;->a(I)Lcom/google/android/gms/internal/ads/dws;

    .line 29
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dws;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
