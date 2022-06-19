.class public final Lokhttp3/j;
.super Ljava/lang/Object;
.source "ConnectionPool.java"


# static fields
.field static final synthetic c:Z

.field private static final d:Ljava/util/concurrent/Executor;


# instance fields
.field final a:Lokhttp3/internal/connection/d;

.field b:Z

.field private final e:I

.field private final f:J

.field private final g:Ljava/lang/Runnable;

.field private final h:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lokhttp3/internal/connection/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 44
    const-class v0, Lokhttp3/j;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v8

    :goto_0
    sput-boolean v0, Lokhttp3/j;->c:Z

    .line 50
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string/jumbo v0, "OkHttp ConnectionPool"

    .line 52
    invoke-static {v0, v8}, Lokhttp3/internal/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lokhttp3/j;->d:Ljava/util/concurrent/Executor;

    .line 50
    return-void

    :cond_0
    move v0, v2

    .line 44
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 86
    const/4 v0, 0x5

    const-wide/16 v2, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v0, v2, v3, v1}, Lokhttp3/j;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    .line 87
    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;)V
    .locals 4

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lokhttp3/j$1;

    invoke-direct {v0, p0}, Lokhttp3/j$1;-><init>(Lokhttp3/j;)V

    iput-object v0, p0, Lokhttp3/j;->g:Ljava/lang/Runnable;

    .line 76
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/j;->h:Ljava/util/Deque;

    .line 77
    new-instance v0, Lokhttp3/internal/connection/d;

    invoke-direct {v0}, Lokhttp3/internal/connection/d;-><init>()V

    iput-object v0, p0, Lokhttp3/j;->a:Lokhttp3/internal/connection/d;

    .line 90
    iput p1, p0, Lokhttp3/j;->e:I

    .line 91
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/j;->f:J

    .line 94
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "keepAliveDuration <= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    return-void
.end method

.method private a(Lokhttp3/internal/connection/c;J)I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 257
    iget-object v3, p1, Lokhttp3/internal/connection/c;->d:Ljava/util/List;

    move v1, v2

    .line 258
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 259
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    .line 261
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 262
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 263
    goto :goto_0

    .line 267
    :cond_1
    check-cast v0, Lokhttp3/internal/connection/f$a;

    .line 269
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "A connection to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lokhttp3/internal/connection/c;->a()Lokhttp3/ae;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/ae;->a()Lokhttp3/a;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/a;->a()Lokhttp3/t;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " was leaked. Did you forget to close a response body?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 271
    invoke-static {}, Lokhttp3/internal/e/f;->c()Lokhttp3/internal/e/f;

    move-result-object v5

    iget-object v0, v0, Lokhttp3/internal/connection/f$a;->a:Ljava/lang/Object;

    invoke-virtual {v5, v4, v0}, Lokhttp3/internal/e/f;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 273
    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p1, Lokhttp3/internal/connection/c;->a:Z

    .line 277
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-wide v0, p0, Lokhttp3/j;->f:J

    sub-long v0, p2, v0

    iput-wide v0, p1, Lokhttp3/internal/connection/c;->e:J

    .line 283
    :goto_1
    return v2

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1
.end method


# virtual methods
.method a(J)J
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 200
    .line 202
    const/4 v1, 0x0

    .line 203
    const-wide/high16 v4, -0x8000000000000000L

    .line 206
    monitor-enter p0

    .line 207
    :try_start_0
    iget-object v2, p0, Lokhttp3/j;->h:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v6, v0

    move v7, v0

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/connection/c;

    .line 211
    invoke-direct {p0, v0, p1, p2}, Lokhttp3/j;->a(Lokhttp3/internal/connection/c;J)I

    move-result v2

    if-lez v2, :cond_0

    .line 212
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    .line 213
    goto :goto_0

    .line 216
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 219
    iget-wide v2, v0, Lokhttp3/internal/connection/c;->e:J

    sub-long v2, p1, v2

    .line 220
    cmp-long v9, v2, v4

    if-lez v9, :cond_6

    :goto_1
    move-wide v4, v2

    move-object v1, v0

    .line 224
    goto :goto_0

    .line 226
    :cond_1
    iget-wide v2, p0, Lokhttp3/j;->f:J

    cmp-long v0, v4, v2

    if-gez v0, :cond_2

    iget v0, p0, Lokhttp3/j;->e:I

    if-le v6, v0, :cond_3

    .line 230
    :cond_2
    iget-object v0, p0, Lokhttp3/j;->h:Ljava/util/Deque;

    invoke-interface {v0, v1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 242
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    invoke-virtual {v1}, Lokhttp3/internal/connection/c;->c()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/c;->a(Ljava/net/Socket;)V

    .line 247
    const-wide/16 v0, 0x0

    :goto_2
    return-wide v0

    .line 231
    :cond_3
    if-lez v6, :cond_4

    .line 233
    :try_start_1
    iget-wide v0, p0, Lokhttp3/j;->f:J

    sub-long/2addr v0, v4

    monitor-exit p0

    goto :goto_2

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 234
    :cond_4
    if-lez v7, :cond_5

    .line 236
    :try_start_2
    iget-wide v0, p0, Lokhttp3/j;->f:J

    monitor-exit p0

    goto :goto_2

    .line 239
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokhttp3/j;->b:Z

    .line 240
    const-wide/16 v0, -0x1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_6
    move-wide v2, v4

    move-object v0, v1

    goto :goto_1
.end method

.method a(Lokhttp3/a;Lokhttp3/internal/connection/f;)Ljava/net/Socket;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 138
    sget-boolean v0, Lokhttp3/j;->c:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 139
    :cond_0
    iget-object v0, p0, Lokhttp3/j;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/connection/c;

    .line 140
    invoke-virtual {v0, p1, v1}, Lokhttp3/internal/connection/c;->a(Lokhttp3/a;Lokhttp3/ae;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 141
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->e()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 142
    invoke-virtual {p2}, Lokhttp3/internal/connection/f;->c()Lokhttp3/internal/connection/c;

    move-result-object v3

    if-eq v0, v3, :cond_1

    .line 143
    invoke-virtual {p2, v0}, Lokhttp3/internal/connection/f;->a(Lokhttp3/internal/connection/c;)Ljava/net/Socket;

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method a(Lokhttp3/a;Lokhttp3/internal/connection/f;Lokhttp3/ae;)Lokhttp3/internal/connection/c;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 123
    sget-boolean v0, Lokhttp3/j;->c:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 124
    :cond_0
    iget-object v0, p0, Lokhttp3/j;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/connection/c;

    .line 125
    invoke-virtual {v0, p1, p3}, Lokhttp3/internal/connection/c;->a(Lokhttp3/a;Lokhttp3/ae;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lokhttp3/internal/connection/f;->a(Lokhttp3/internal/connection/c;Z)V

    .line 130
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Lokhttp3/internal/connection/c;)V
    .locals 2

    .prologue
    .line 150
    sget-boolean v0, Lokhttp3/j;->c:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 151
    :cond_0
    iget-boolean v0, p0, Lokhttp3/j;->b:Z

    if-nez v0, :cond_1

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/j;->b:Z

    .line 153
    sget-object v0, Lokhttp3/j;->d:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lokhttp3/j;->g:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 155
    :cond_1
    iget-object v0, p0, Lokhttp3/j;->h:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 156
    return-void
.end method

.method b(Lokhttp3/internal/connection/c;)Z
    .locals 1

    .prologue
    .line 163
    sget-boolean v0, Lokhttp3/j;->c:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 164
    :cond_0
    iget-boolean v0, p1, Lokhttp3/internal/connection/c;->a:Z

    if-nez v0, :cond_1

    iget v0, p0, Lokhttp3/j;->e:I

    if-nez v0, :cond_2

    .line 165
    :cond_1
    iget-object v0, p0, Lokhttp3/j;->h:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 166
    const/4 v0, 0x1

    .line 169
    :goto_0
    return v0

    .line 168
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 169
    const/4 v0, 0x0

    goto :goto_0
.end method
