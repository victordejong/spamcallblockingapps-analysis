.class Lcom/facebook/biddingkit/d/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile g:Lcom/facebook/biddingkit/d/g;


# instance fields
.field private a:I

.field private final b:Landroid/os/Handler;

.field private final c:Ljava/lang/Runnable;

.field private final d:Ljava/lang/Runnable;

.field private final e:Ljava/util/concurrent/ThreadPoolExecutor;

.field private f:Lcom/facebook/biddingkit/d/j;


# direct methods
.method private constructor <init>()V
    .locals 9

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/biddingkit/d/g;->b:Landroid/os/Handler;

    .line 56
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/facebook/biddingkit/d/g;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 62
    new-instance v0, Lcom/facebook/biddingkit/d/g$1;

    invoke-direct {v0, p0}, Lcom/facebook/biddingkit/d/g$1;-><init>(Lcom/facebook/biddingkit/d/g;)V

    iput-object v0, p0, Lcom/facebook/biddingkit/d/g;->c:Ljava/lang/Runnable;

    .line 71
    new-instance v0, Lcom/facebook/biddingkit/d/g$2;

    invoke-direct {v0, p0}, Lcom/facebook/biddingkit/d/g$2;-><init>(Lcom/facebook/biddingkit/d/g;)V

    iput-object v0, p0, Lcom/facebook/biddingkit/d/g;->d:Ljava/lang/Runnable;

    return-void
.end method

.method private static a()Lcom/facebook/biddingkit/d/g;
    .locals 2

    .line 87
    sget-object v0, Lcom/facebook/biddingkit/d/g;->g:Lcom/facebook/biddingkit/d/g;

    if-nez v0, :cond_1

    .line 89
    const-class v0, Lcom/facebook/biddingkit/d/g;

    monitor-enter v0

    .line 90
    :try_start_0
    sget-object v1, Lcom/facebook/biddingkit/d/g;->g:Lcom/facebook/biddingkit/d/g;

    if-nez v1, :cond_0

    .line 91
    new-instance v1, Lcom/facebook/biddingkit/d/g;

    invoke-direct {v1}, Lcom/facebook/biddingkit/d/g;-><init>()V

    sput-object v1, Lcom/facebook/biddingkit/d/g;->g:Lcom/facebook/biddingkit/d/g;

    .line 93
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 95
    :cond_1
    :goto_0
    sget-object v0, Lcom/facebook/biddingkit/d/g;->g:Lcom/facebook/biddingkit/d/g;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/biddingkit/d/g;)V
    .locals 5

    .line 2109
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2110
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/16 v2, 0xa

    .line 2113
    :try_start_0
    invoke-static {v2}, Lcom/facebook/biddingkit/d/f;->a(I)Ljava/util/List;

    move-result-object v2

    .line 2114
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 2117
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/biddingkit/d/e;

    .line 2118
    invoke-virtual {v4}, Lcom/facebook/biddingkit/d/e;->b()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    const-string v3, "tokens"

    .line 2121
    invoke-static {}, Lcom/facebook/biddingkit/d/a;->a()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "events"

    .line 2122
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2124
    iget-object v0, p0, Lcom/facebook/biddingkit/d/g;->f:Lcom/facebook/biddingkit/d/j;

    .line 3084
    iget-object v0, v0, Lcom/facebook/biddingkit/d/j;->c:Ljava/lang/String;

    const/16 v3, 0x7d0

    .line 2127
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2124
    invoke-static {v0, v3, v1}, Lcom/facebook/biddingkit/http/a/c;->a(Ljava/lang/String;ILjava/lang/String;)Lcom/facebook/biddingkit/http/client/f;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4052
    iget v0, v0, Lcom/facebook/biddingkit/http/client/f;->a:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_2

    goto :goto_1

    .line 2131
    :cond_2
    iget-object v0, p0, Lcom/facebook/biddingkit/d/g;->f:Lcom/facebook/biddingkit/d/j;

    .line 5076
    iget v0, v0, Lcom/facebook/biddingkit/d/j;->a:I

    .line 2131
    iput v0, p0, Lcom/facebook/biddingkit/d/g;->a:I

    goto :goto_2

    .line 2129
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/facebook/biddingkit/d/g;->f:Lcom/facebook/biddingkit/d/j;

    .line 4080
    iget v0, v0, Lcom/facebook/biddingkit/d/j;->b:I

    .line 2129
    iput v0, p0, Lcom/facebook/biddingkit/d/g;->a:I

    .line 2133
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/biddingkit/d/e;

    .line 5080
    iget-object v0, v0, Lcom/facebook/biddingkit/d/e;->a:Ljava/lang/String;

    .line 2134
    invoke-static {v0}, Lcom/facebook/biddingkit/d/f;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_4
    return-void

    .line 6031
    :catchall_0
    invoke-static {}, Lcom/facebook/biddingkit/d/i;->a()Z

    return-void
.end method

.method public static a(Lcom/facebook/biddingkit/d/j;)V
    .locals 4

    .line 99
    invoke-static {}, Lcom/facebook/biddingkit/d/g;->a()Lcom/facebook/biddingkit/d/g;

    move-result-object v0

    .line 1082
    iput-object p0, v0, Lcom/facebook/biddingkit/d/g;->f:Lcom/facebook/biddingkit/d/j;

    .line 2076
    iget p0, p0, Lcom/facebook/biddingkit/d/j;->a:I

    .line 1083
    iput p0, v0, Lcom/facebook/biddingkit/d/g;->a:I

    .line 100
    invoke-static {}, Lcom/facebook/biddingkit/d/g;->a()Lcom/facebook/biddingkit/d/g;

    move-result-object p0

    .line 2104
    iget-object v0, p0, Lcom/facebook/biddingkit/d/g;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/biddingkit/d/g;->d:Ljava/lang/Runnable;

    iget p0, p0, Lcom/facebook/biddingkit/d/g;->a:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic b(Lcom/facebook/biddingkit/d/g;)Ljava/lang/Runnable;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/facebook/biddingkit/d/g;->d:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic c(Lcom/facebook/biddingkit/d/g;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/facebook/biddingkit/d/g;->a:I

    return p0
.end method

.method static synthetic d(Lcom/facebook/biddingkit/d/g;)Landroid/os/Handler;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/facebook/biddingkit/d/g;->b:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic e(Lcom/facebook/biddingkit/d/g;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/facebook/biddingkit/d/g;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method static synthetic f(Lcom/facebook/biddingkit/d/g;)Ljava/lang/Runnable;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/facebook/biddingkit/d/g;->c:Ljava/lang/Runnable;

    return-object p0
.end method
