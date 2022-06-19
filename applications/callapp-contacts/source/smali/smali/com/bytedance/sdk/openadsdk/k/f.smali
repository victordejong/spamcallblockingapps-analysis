.class public Lcom/bytedance/sdk/openadsdk/k/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/k/f$a;
    }
.end annotation


# static fields
.field private static volatile e:Lcom/bytedance/sdk/openadsdk/k/f;


# instance fields
.field private volatile a:Ljava/net/ServerSocket;

.field private volatile b:I

.field private final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final d:Ljava/util/concurrent/ExecutorService;

.field private volatile f:Lcom/bytedance/sdk/openadsdk/k/b/c;

.field private volatile g:Lcom/bytedance/sdk/openadsdk/k/a/c;

.field private volatile h:Lcom/bytedance/sdk/openadsdk/k/a/b;

.field private final i:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/openadsdk/k/g;",
            ">;>;"
        }
    .end annotation
.end field

.field private final j:Lcom/bytedance/sdk/openadsdk/k/g$c;

.field private volatile k:Lcom/bytedance/sdk/openadsdk/k/c;

.field private volatile l:Lcom/bytedance/sdk/openadsdk/k/c;

.field private final m:Ljava/lang/Runnable;

.field private final n:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .locals 10

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/f;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 54
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v8}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v9, Lcom/bytedance/sdk/openadsdk/k/f$1;

    invoke-direct {v9, p0}, Lcom/bytedance/sdk/openadsdk/k/f$1;-><init>(Lcom/bytedance/sdk/openadsdk/k/f;)V

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const-wide/16 v5, 0x3c

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/f;->d:Ljava/util/concurrent/ExecutorService;

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/f;->i:Landroid/util/SparseArray;

    .line 71
    new-instance v2, Lcom/bytedance/sdk/openadsdk/k/f$2;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/k/f$2;-><init>(Lcom/bytedance/sdk/openadsdk/k/f;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/k/f;->j:Lcom/bytedance/sdk/openadsdk/k/g$c;

    .line 202
    new-instance v2, Lcom/bytedance/sdk/openadsdk/k/f$3;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/k/f$3;-><init>(Lcom/bytedance/sdk/openadsdk/k/f;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/k/f;->m:Ljava/lang/Runnable;

    .line 284
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/k/f;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 127
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/k/f;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/k/f;->b:I

    return p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/k/f;)Landroid/util/SparseArray;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/k/f;->i:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/k/f;
    .locals 2

    .line 116
    sget-object v0, Lcom/bytedance/sdk/openadsdk/k/f;->e:Lcom/bytedance/sdk/openadsdk/k/f;

    if-nez v0, :cond_1

    .line 117
    const-class v0, Lcom/bytedance/sdk/openadsdk/k/f;

    monitor-enter v0

    .line 118
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/k/f;->e:Lcom/bytedance/sdk/openadsdk/k/f;

    if-nez v1, :cond_0

    .line 119
    new-instance v1, Lcom/bytedance/sdk/openadsdk/k/f;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/k/f;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/k/f;->e:Lcom/bytedance/sdk/openadsdk/k/f;

    .line 121
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 123
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/k/f;->e:Lcom/bytedance/sdk/openadsdk/k/f;

    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/k/f;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/f;->a:Ljava/net/ServerSocket;

    return-object p1
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/k/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/k/f;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/k/f;->e()V

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/k/f;)Ljava/net/ServerSocket;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/k/f;->a:Ljava/net/ServerSocket;

    return-object p0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/k/f;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/k/f;->b:I

    return p0
.end method

.method private e()V
    .locals 3

    .line 301
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/f;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/f;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    .line 302
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/f;->a:Ljava/net/ServerSocket;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/g/d;->a(Ljava/net/ServerSocket;)V

    .line 304
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/f;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 305
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/k/f;->f()V

    :cond_1
    return-void
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/k/f;)Z
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/k/f;->g()Z

    move-result p0

    return p0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/k/f;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/k/f;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private f()V
    .locals 6

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 340
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/f;->i:Landroid/util/SparseArray;

    monitor-enter v1

    const/4 v2, 0x0

    .line 341
    :try_start_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/k/f;->i:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_1

    .line 342
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/k/f;->i:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    if-eqz v4, :cond_0

    .line 344
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 345
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 348
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/k/g;

    .line 351
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/k/g;->a()V

    goto :goto_1

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 348
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/k/f;)Lcom/bytedance/sdk/openadsdk/k/b/c;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/k/f;->f:Lcom/bytedance/sdk/openadsdk/k/b/c;

    return-object p0
.end method

.method private g()Z
    .locals 4

    const-string v0, "ping error"

    .line 356
    new-instance v1, Lcom/bytedance/sdk/openadsdk/k/f$a;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/k/f;->b:I

    const-string v3, "127.0.0.1"

    invoke-direct {v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/k/f$a;-><init>(Ljava/lang/String;I)V

    .line 357
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/k/f;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 359
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/k/f;->h()V

    const/4 v2, 0x0

    .line 362
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TAG_PROXY_ProxyServer"

    const-string v3, "Ping error"

    .line 363
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ""

    .line 364
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/k/f;->e()V

    return v2

    .line 369
    :cond_0
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    .line 374
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 375
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/k/f;->e()V

    return v2
.end method

.method static synthetic h(Lcom/bytedance/sdk/openadsdk/k/f;)Lcom/bytedance/sdk/openadsdk/k/g$c;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/k/f;->j:Lcom/bytedance/sdk/openadsdk/k/g$c;

    return-object p0
.end method

.method private h()V
    .locals 4

    const/4 v0, 0x0

    .line 417
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/f;->a:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    const/16 v1, 0x7d0

    .line 418
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 419
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v2, "Ping"

    .line 420
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const-string v2, "OK\n"

    .line 422
    sget-object v3, Lcom/bytedance/sdk/openadsdk/k/g/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 423
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    :cond_0
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/g/d;->a(Ljava/net/Socket;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 426
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const-string v2, "ping error"

    .line 427
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/k/f;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/g/d;->a(Ljava/net/Socket;)V

    return-void

    :goto_0
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/g/d;->a(Ljava/net/Socket;)V

    .line 430
    throw v1
.end method

.method static synthetic i(Lcom/bytedance/sdk/openadsdk/k/f;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/k/f;->d:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method


# virtual methods
.method public varargs a(ZZLjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "url"

    if-eqz p4, :cond_a

    .line 156
    array-length v1, p4

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 161
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string p1, "key"

    const-string p2, "key is empty"

    .line 162
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/k/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    aget-object p1, p4, v2

    return-object p1

    .line 166
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/f;->f:Lcom/bytedance/sdk/openadsdk/k/b/c;

    if-nez v1, :cond_2

    const-string p1, "db"

    const-string p2, "VideoProxyDB is null"

    .line 167
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/k/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    aget-object p1, p4, v2

    return-object p1

    :cond_2
    if-eqz p1, :cond_3

    .line 171
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/f;->h:Lcom/bytedance/sdk/openadsdk/k/a/b;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/f;->g:Lcom/bytedance/sdk/openadsdk/k/a/c;

    :goto_0
    if-nez v1, :cond_4

    const-string p1, "cache"

    const-string p2, "Cache is null"

    .line 173
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/k/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    aget-object p1, p4, v2

    return-object p1

    .line 177
    :cond_4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/f;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    .line 179
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ProxyServer is not running, "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "state"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/k/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    aget-object p1, p4, v2

    return-object p1

    .line 183
    :cond_5
    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/k/g/d;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_6

    const-string p1, "url not start with http/https"

    .line 185
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/k/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    aget-object p1, p4, v2

    return-object p1

    :cond_6
    if-eqz p2, :cond_7

    move-object p2, p3

    goto :goto_1

    .line 188
    :cond_7
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/k/g/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 190
    :goto_1
    invoke-static {p3, p2, v1}, Lcom/bytedance/sdk/openadsdk/k/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_8

    const-string p1, "combine proxy url error"

    .line 192
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/k/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    aget-object p1, p4, v2

    return-object p1

    :cond_8
    const-string p3, "http://127.0.0.1:"

    if-eqz p1, :cond_9

    .line 197
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/bytedance/sdk/openadsdk/k/f;->b:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "?f=1&"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 199
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/bytedance/sdk/openadsdk/k/f;->b:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "?"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_a
    :goto_2
    const-string p1, "url is empty"

    .line 157
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/k/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method a(Lcom/bytedance/sdk/openadsdk/k/a/c;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/f;->g:Lcom/bytedance/sdk/openadsdk/k/a/c;

    return-void
.end method

.method a(Lcom/bytedance/sdk/openadsdk/k/b/c;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/f;->f:Lcom/bytedance/sdk/openadsdk/k/b/c;

    return-void
.end method

.method a(ILjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/f;->i:Landroid/util/SparseArray;

    monitor-enter v1

    .line 103
    :try_start_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/k/f;->i:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_2

    .line 105
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/k/g;

    if-eqz v2, :cond_1

    .line 106
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/k/g;->h:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    .line 107
    monitor-exit v1

    return p1

    .line 111
    :cond_2
    monitor-exit v1

    return v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method b()Lcom/bytedance/sdk/openadsdk/k/c;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/f;->k:Lcom/bytedance/sdk/openadsdk/k/c;

    return-object v0
.end method

.method c()Lcom/bytedance/sdk/openadsdk/k/c;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/f;->l:Lcom/bytedance/sdk/openadsdk/k/c;

    return-object v0
.end method

.method public d()V
    .locals 3

    .line 286
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/f;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/f;->m:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
