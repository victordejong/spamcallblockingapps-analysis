.class public final Lcom/bumptech/glide/load/engine/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ExecutorService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/c/a$a;,
        Lcom/bumptech/glide/load/engine/c/a$b;,
        Lcom/bumptech/glide/load/engine/c/a$c;
    }
.end annotation


# static fields
.field private static final a:J

.field private static volatile b:I


# instance fields
.field private final c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 55
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/bumptech/glide/load/engine/c/a;->a:J

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/c/a;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a()Lcom/bumptech/glide/load/engine/c/a$a;
    .locals 2

    .line 74
    new-instance v0, Lcom/bumptech/glide/load/engine/c/a$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/c/a$a;-><init>(Z)V

    .line 75
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/c/a$a;->a(I)Lcom/bumptech/glide/load/engine/c/a$a;

    move-result-object v0

    const-string v1, "disk-cache"

    .line 1460
    iput-object v1, v0, Lcom/bumptech/glide/load/engine/c/a$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static b()Lcom/bumptech/glide/load/engine/c/a;
    .locals 1

    .line 81
    invoke-static {}, Lcom/bumptech/glide/load/engine/c/a;->a()Lcom/bumptech/glide/load/engine/c/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/c/a$a;->a()Lcom/bumptech/glide/load/engine/c/a;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lcom/bumptech/glide/load/engine/c/a;
    .locals 2

    .line 2119
    new-instance v0, Lcom/bumptech/glide/load/engine/c/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/c/a$a;-><init>(Z)V

    .line 2120
    invoke-static {}, Lcom/bumptech/glide/load/engine/c/a;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/c/a$a;->a(I)Lcom/bumptech/glide/load/engine/c/a$a;

    move-result-object v0

    const-string v1, "source"

    .line 2460
    iput-object v1, v0, Lcom/bumptech/glide/load/engine/c/a$a;->a:Ljava/lang/String;

    .line 126
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/c/a$a;->a()Lcom/bumptech/glide/load/engine/c/a;

    move-result-object v0

    return-object v0
.end method

.method public static d()Lcom/bumptech/glide/load/engine/c/a;
    .locals 10

    .line 165
    new-instance v0, Lcom/bumptech/glide/load/engine/c/a;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-wide v4, Lcom/bumptech/glide/load/engine/c/a;->a:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v8, Lcom/bumptech/glide/load/engine/c/a$b;

    sget-object v1, Lcom/bumptech/glide/load/engine/c/a$c;->d:Lcom/bumptech/glide/load/engine/c/a$c;

    const-string v2, "source-unlimited"

    const/4 v3, 0x0

    invoke-direct {v8, v2, v1, v3}, Lcom/bumptech/glide/load/engine/c/a$b;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/engine/c/a$c;Z)V

    const/4 v2, 0x0

    const v3, 0x7fffffff

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {v0, v9}, Lcom/bumptech/glide/load/engine/c/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method public static e()Lcom/bumptech/glide/load/engine/c/a;
    .locals 3

    .line 3183
    invoke-static {}, Lcom/bumptech/glide/load/engine/c/a;->f()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3191
    :goto_0
    new-instance v2, Lcom/bumptech/glide/load/engine/c/a$a;

    invoke-direct {v2, v1}, Lcom/bumptech/glide/load/engine/c/a$a;-><init>(Z)V

    .line 3192
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/load/engine/c/a$a;->a(I)Lcom/bumptech/glide/load/engine/c/a$a;

    move-result-object v0

    const-string v1, "animation"

    .line 3460
    iput-object v1, v0, Lcom/bumptech/glide/load/engine/c/a$a;->a:Ljava/lang/String;

    .line 198
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/c/a$a;->a()Lcom/bumptech/glide/load/engine/c/a;

    move-result-object v0

    return-object v0
.end method

.method private static f()I
    .locals 2

    .line 305
    sget v0, Lcom/bumptech/glide/load/engine/c/a;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x4

    .line 307
    invoke-static {}, Lcom/bumptech/glide/load/engine/c/b;->a()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/bumptech/glide/load/engine/c/a;->b:I

    .line 309
    :cond_0
    sget v0, Lcom/bumptech/glide/load/engine/c/a;->b:I

    return v0
.end method


# virtual methods
.method public final awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c/a;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c/a;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c/a;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c/a;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c/a;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c/a;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final isShutdown()Z
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c/a;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    return v0
.end method

.method public final isTerminated()Z
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c/a;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    return v0
.end method

.method public final shutdown()V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c/a;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public final shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c/a;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c/a;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public final submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c/a;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public final submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c/a;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c/a;->c:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
