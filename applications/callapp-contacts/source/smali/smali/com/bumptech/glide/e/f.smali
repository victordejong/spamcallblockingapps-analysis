.class public final Lcom/bumptech/glide/e/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/e/c;
.implements Lcom/bumptech/glide/e/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/e/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/e/c<",
        "TR;>;",
        "Lcom/bumptech/glide/e/g<",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/bumptech/glide/e/f$a;


# instance fields
.field private final b:I

.field private final c:I

.field private final d:Z

.field private final e:Lcom/bumptech/glide/e/f$a;

.field private f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private g:Lcom/bumptech/glide/e/d;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Lcom/bumptech/glide/load/engine/GlideException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lcom/bumptech/glide/e/f$a;

    invoke-direct {v0}, Lcom/bumptech/glide/e/f$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/e/f;->a:Lcom/bumptech/glide/e/f$a;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 84
    sget-object v0, Lcom/bumptech/glide/e/f;->a:Lcom/bumptech/glide/e/f$a;

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/bumptech/glide/e/f;-><init>(IIZLcom/bumptech/glide/e/f$a;)V

    return-void
.end method

.method constructor <init>(IIZLcom/bumptech/glide/e/f$a;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput p1, p0, Lcom/bumptech/glide/e/f;->b:I

    .line 89
    iput p2, p0, Lcom/bumptech/glide/e/f;->c:I

    .line 90
    iput-boolean p3, p0, Lcom/bumptech/glide/e/f;->d:Z

    .line 91
    iput-object p4, p0, Lcom/bumptech/glide/e/f;->e:Lcom/bumptech/glide/e/f$a;

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/Long;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    monitor-enter p0

    .line 191
    :try_start_0
    iget-boolean v0, p0, Lcom/bumptech/glide/e/f;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/e/f;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    invoke-static {}, Lcom/bumptech/glide/g/k;->b()V

    .line 195
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/e/f;->h:Z

    if-nez v0, :cond_9

    .line 197
    iget-boolean v0, p0, Lcom/bumptech/glide/e/f;->j:Z

    if-nez v0, :cond_8

    .line 199
    iget-boolean v0, p0, Lcom/bumptech/glide/e/f;->i:Z

    if-eqz v0, :cond_1

    .line 200
    iget-object p1, p0, Lcom/bumptech/glide/e/f;->f:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    const-wide/16 v0, 0x0

    if-nez p1, :cond_2

    .line 2267
    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    goto :goto_1

    .line 205
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_3

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 207
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 208
    :goto_0
    invoke-virtual {p0}, Lcom/bumptech/glide/e/f;->isDone()Z

    move-result p1

    if-nez p1, :cond_3

    cmp-long p1, v0, v2

    if-gez p1, :cond_3

    sub-long v0, v2, v0

    .line 3267
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    .line 214
    :cond_3
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result p1

    if-nez p1, :cond_7

    .line 216
    iget-boolean p1, p0, Lcom/bumptech/glide/e/f;->j:Z

    if-nez p1, :cond_6

    .line 218
    iget-boolean p1, p0, Lcom/bumptech/glide/e/f;->h:Z

    if-nez p1, :cond_5

    .line 220
    iget-boolean p1, p0, Lcom/bumptech/glide/e/f;->i:Z

    if-eqz p1, :cond_4

    .line 224
    iget-object p1, p0, Lcom/bumptech/glide/e/f;->f:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 221
    :cond_4
    :try_start_2
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1

    .line 219
    :cond_5
    new-instance p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw p1

    .line 217
    :cond_6
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    iget-object v0, p0, Lcom/bumptech/glide/e/f;->k:Lcom/bumptech/glide/load/engine/GlideException;

    invoke-direct {p1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 215
    :cond_7
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1

    .line 198
    :cond_8
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    iget-object v0, p0, Lcom/bumptech/glide/e/f;->k:Lcom/bumptech/glide/load/engine/GlideException;

    invoke-direct {p1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 196
    :cond_9
    new-instance p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    monitor-enter p0

    .line 180
    monitor-exit p0

    return-void
.end method

.method public final a(Lcom/bumptech/glide/e/a/i;)V
    .locals 2

    .line 145
    iget v0, p0, Lcom/bumptech/glide/e/f;->b:I

    iget v1, p0, Lcom/bumptech/glide/e/f;->c:I

    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/e/a/i;->a(II)V

    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/Object;Lcom/bumptech/glide/e/b/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/bumptech/glide/e/b/d<",
            "-TR;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 187
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/e/a/j<",
            "TR;>;Z)Z"
        }
    .end annotation

    monitor-enter p0

    const/4 p2, 0x1

    .line 245
    :try_start_0
    iput-boolean p2, p0, Lcom/bumptech/glide/e/f;->j:Z

    .line 246
    iput-object p1, p0, Lcom/bumptech/glide/e/f;->k:Lcom/bumptech/glide/load/engine/GlideException;

    .line 3271
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 248
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Lcom/bumptech/glide/load/a;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/e/a/j<",
            "TR;>;",
            "Lcom/bumptech/glide/load/a;",
            "Z)Z"
        }
    .end annotation

    monitor-enter p0

    const/4 p2, 0x1

    .line 255
    :try_start_0
    iput-boolean p2, p0, Lcom/bumptech/glide/e/f;->i:Z

    .line 256
    iput-object p1, p0, Lcom/bumptech/glide/e/f;->f:Ljava/lang/Object;

    .line 4271
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 258
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public final b(Lcom/bumptech/glide/e/a/i;)V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final c(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public final cancel(Z)Z
    .locals 2

    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/e/f;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 99
    monitor-exit p0

    return p1

    :cond_0
    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcom/bumptech/glide/e/f;->h:Z

    .line 1271
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 105
    iget-object p1, p0, Lcom/bumptech/glide/e/f;->g:Lcom/bumptech/glide/e/d;

    .line 106
    iput-object v1, p0, Lcom/bumptech/glide/e/f;->g:Lcom/bumptech/glide/e/d;

    move-object v1, p1

    .line 108
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 112
    invoke-interface {v1}, Lcom/bumptech/glide/e/d;->b()V

    :cond_2
    return v0

    :catchall_0
    move-exception p1

    .line 108
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 130
    :try_start_0
    invoke-direct {p0, v0}, Lcom/bumptech/glide/e/f;->a(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 132
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 139
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bumptech/glide/e/f;->a(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized getRequest()Lcom/bumptech/glide/e/d;
    .locals 1

    monitor-enter p0

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/e/f;->g:Lcom/bumptech/glide/e/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isCancelled()Z
    .locals 1

    monitor-enter p0

    .line 119
    :try_start_0
    iget-boolean v0, p0, Lcom/bumptech/glide/e/f;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isDone()Z
    .locals 1

    monitor-enter p0

    .line 124
    :try_start_0
    iget-boolean v0, p0, Lcom/bumptech/glide/e/f;->h:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bumptech/glide/e/f;->i:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bumptech/glide/e/f;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setRequest(Lcom/bumptech/glide/e/d;)V
    .locals 0

    monitor-enter p0

    .line 155
    :try_start_0
    iput-object p1, p0, Lcom/bumptech/glide/e/f;->g:Lcom/bumptech/glide/e/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
