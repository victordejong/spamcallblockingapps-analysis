.class public Lcom/a/a/a/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/a/a/b/a$a;
    }
.end annotation


# static fields
.field private static volatile c:Lcom/a/a/a/a/b/a;


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 31
    iput-object v0, p0, Lcom/a/a/a/a/b/a;->a:Ljava/lang/String;

    .line 33
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/a/b/a;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a()Lcom/a/a/a/a/b/a;
    .locals 2

    .line 40
    sget-object v0, Lcom/a/a/a/a/b/a;->c:Lcom/a/a/a/a/b/a;

    if-nez v0, :cond_1

    .line 41
    const-class v0, Lcom/a/a/a/a/b/a;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lcom/a/a/a/a/b/a;->c:Lcom/a/a/a/a/b/a;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lcom/a/a/a/a/b/a;

    invoke-direct {v1}, Lcom/a/a/a/a/b/a;-><init>()V

    sput-object v1, Lcom/a/a/a/a/b/a;->c:Lcom/a/a/a/a/b/a;

    .line 45
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 47
    :cond_1
    :goto_0
    sget-object v0, Lcom/a/a/a/a/b/a;->c:Lcom/a/a/a/a/b/a;

    return-object v0
.end method

.method static synthetic a(Lcom/a/a/a/a/b/a;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/a/a/a/a/b/a;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/a/a/a/a/b/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/a/a/a/a/b/a;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 2

    .line 1273
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "name_gaid"

    const-string v1, "gaid"

    .line 1274
    invoke-static {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/a/a/a/a/b/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/a/a/a/a/b/a;->a:Ljava/lang/String;

    return-object v0

    :cond_0
    :try_start_0
    const-string v0, "name_gaid"

    const-string v1, "gaid"

    const-string v2, ""

    .line 87
    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/a/b/a;->a:Ljava/lang/String;

    const-string v0, "gaid-"

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getGAIdTimeOut-mGAId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/a/a/a/a/b/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/a/a/a/a/b/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    new-instance v0, Lcom/a/a/a/a/b/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/a/a/a/a/b/a$a;-><init>(Lcom/a/a/a/a/b/a;Lcom/a/a/a/a/b/a$1;)V

    .line 91
    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 92
    iget-object v0, p0, Lcom/a/a/a/a/b/a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const-wide/32 v2, 0x7a120

    .line 93
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/a/a/b/a;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "AdvertisingIdHelper"

    const-string v2, "getGAIdTimeOut error"

    .line 96
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/a/a/a/a/b/a;->a:Ljava/lang/String;

    return-object v0
.end method
