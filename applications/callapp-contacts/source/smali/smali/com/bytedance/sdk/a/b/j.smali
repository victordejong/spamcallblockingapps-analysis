.class public final Lcom/bytedance/sdk/a/b/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic c:Z = true

.field private static final d:Ljava/util/concurrent/Executor;


# instance fields
.field final a:Lcom/bytedance/sdk/a/b/a/b/d;

.field b:Z

.field private final e:I

.field private final f:J

.field private final g:Ljava/lang/Runnable;

.field private final h:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/bytedance/sdk/a/b/a/b/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 49
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const/4 v0, 0x1

    const-string v7, "OkHttp ConnectionPool"

    .line 51
    invoke-static {v7, v0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lcom/bytedance/sdk/a/b/j;->d:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 88
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x5

    const-wide/16 v2, 0x5

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/bytedance/sdk/a/b/j;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;)V
    .locals 2

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/bytedance/sdk/a/b/j$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/a/b/j$1;-><init>(Lcom/bytedance/sdk/a/b/j;)V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/j;->g:Ljava/lang/Runnable;

    .line 78
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/j;->h:Ljava/util/Deque;

    .line 79
    new-instance v0, Lcom/bytedance/sdk/a/b/a/b/d;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/a/b/d;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/j;->a:Lcom/bytedance/sdk/a/b/a/b/d;

    .line 92
    iput p1, p0, Lcom/bytedance/sdk/a/b/j;->e:I

    .line 93
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/a/b/j;->f:J

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_0

    return-void

    .line 97
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "keepAliveDuration <= 0: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/bytedance/sdk/a/b/a/b/c;J)I
    .locals 6

    .line 263
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/a/b/c;->d:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 264
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 265
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/Reference;

    .line 267
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 273
    :cond_1
    check-cast v3, Lcom/bytedance/sdk/a/b/a/b/g$a;

    .line 275
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "A connection to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/b/c;->a()Lcom/bytedance/sdk/a/b/ac;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/a/b/ac;->a()Lcom/bytedance/sdk/a/b/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/a/b/a;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " was leaked. Did you forget to close a response body?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 277
    invoke-static {}, Lcom/bytedance/sdk/a/b/a/g/e;->b()Lcom/bytedance/sdk/a/b/a/g/e;

    move-result-object v5

    iget-object v3, v3, Lcom/bytedance/sdk/a/b/a/b/g$a;->a:Ljava/lang/Object;

    invoke-virtual {v5, v4, v3}, Lcom/bytedance/sdk/a/b/a/g/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 279
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v3, 0x1

    .line 280
    iput-boolean v3, p1, Lcom/bytedance/sdk/a/b/a/b/c;->a:Z

    .line 283
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 284
    iget-wide v2, p0, Lcom/bytedance/sdk/a/b/j;->f:J

    sub-long/2addr p2, v2

    iput-wide p2, p1, Lcom/bytedance/sdk/a/b/a/b/c;->e:J

    return v1

    .line 289
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method


# virtual methods
.method final a(J)J
    .locals 11

    .line 212
    monitor-enter p0

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/j;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/high16 v3, -0x8000000000000000L

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 214
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/bytedance/sdk/a/b/a/b/c;

    .line 217
    invoke-direct {p0, v7, p1, p2}, Lcom/bytedance/sdk/a/b/j;->a(Lcom/bytedance/sdk/a/b/a/b/c;J)I

    move-result v8

    if-lez v8, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 225
    iget-wide v8, v7, Lcom/bytedance/sdk/a/b/a/b/c;->e:J

    sub-long v8, p1, v8

    cmp-long v10, v8, v3

    if-lez v10, :cond_0

    move-object v2, v7

    move-wide v3, v8

    goto :goto_0

    .line 232
    :cond_2
    iget-wide p1, p0, Lcom/bytedance/sdk/a/b/j;->f:J

    cmp-long v0, v3, p1

    if-gez v0, :cond_6

    iget v0, p0, Lcom/bytedance/sdk/a/b/j;->e:I

    if-le v5, v0, :cond_3

    goto :goto_1

    :cond_3
    if-lez v5, :cond_4

    sub-long/2addr p1, v3

    .line 239
    monitor-exit p0

    return-wide p1

    :cond_4
    if-lez v6, :cond_5

    .line 242
    monitor-exit p0

    return-wide p1

    .line 245
    :cond_5
    iput-boolean v1, p0, Lcom/bytedance/sdk/a/b/j;->b:Z

    const-wide/16 p1, -0x1

    .line 246
    monitor-exit p0

    return-wide p1

    .line 236
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/j;->h:Ljava/util/Deque;

    invoke-interface {p1, v2}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 248
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/a/b/c;->b()Ljava/net/Socket;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/net/Socket;)V

    const-wide/16 p1, 0x0

    return-wide p1

    :catchall_0
    move-exception p1

    .line 248
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method final a(Lcom/bytedance/sdk/a/b/a;Lcom/bytedance/sdk/a/b/a/b/g;Lcom/bytedance/sdk/a/b/ac;)Lcom/bytedance/sdk/a/b/a/b/c;
    .locals 3

    .line 127
    sget-boolean v0, Lcom/bytedance/sdk/a/b/j;->c:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 128
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/j;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/a/b/a/b/c;

    .line 129
    invoke-virtual {v1, p1, p3}, Lcom/bytedance/sdk/a/b/a/b/c;->a(Lcom/bytedance/sdk/a/b/a;Lcom/bytedance/sdk/a/b/ac;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x1

    .line 130
    invoke-virtual {p2, v1, p1}, Lcom/bytedance/sdk/a/b/a/b/g;->a(Lcom/bytedance/sdk/a/b/a/b/c;Z)V

    return-object v1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method final a(Lcom/bytedance/sdk/a/b/a;Lcom/bytedance/sdk/a/b/a/b/g;)Ljava/net/Socket;
    .locals 3

    .line 142
    sget-boolean v0, Lcom/bytedance/sdk/a/b/j;->c:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 143
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/j;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/a/b/a/b/c;

    .line 144
    invoke-virtual {v1, p1, v2}, Lcom/bytedance/sdk/a/b/a/b/c;->a(Lcom/bytedance/sdk/a/b/a;Lcom/bytedance/sdk/a/b/ac;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 145
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/a/b/c;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 146
    invoke-virtual {p2}, Lcom/bytedance/sdk/a/b/a/b/g;->b()Lcom/bytedance/sdk/a/b/a/b/c;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 147
    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/a/b/a/b/g;->a(Lcom/bytedance/sdk/a/b/a/b/c;)Ljava/net/Socket;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v2
.end method

.method final a(Lcom/bytedance/sdk/a/b/a/b/c;)V
    .locals 2

    .line 154
    sget-boolean v0, Lcom/bytedance/sdk/a/b/j;->c:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 155
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/j;->b:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lcom/bytedance/sdk/a/b/j;->b:Z

    .line 157
    sget-object v0, Lcom/bytedance/sdk/a/b/j;->d:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/j;->g:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/j;->h:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final b(Lcom/bytedance/sdk/a/b/a/b/c;)Z
    .locals 1

    .line 167
    sget-boolean v0, Lcom/bytedance/sdk/a/b/j;->c:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 168
    :cond_1
    :goto_0
    iget-boolean v0, p1, Lcom/bytedance/sdk/a/b/a/b/c;->a:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/bytedance/sdk/a/b/j;->e:I

    if-nez v0, :cond_2

    goto :goto_1

    .line 172
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    const/4 p1, 0x0

    return p1

    .line 169
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/j;->h:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method
