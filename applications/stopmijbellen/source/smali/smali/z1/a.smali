.class public abstract Lz1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz1/a$h;,
        Lz1/a$f;,
        Lz1/a$b;,
        Lz1/a$g;,
        Lz1/a$c;,
        Lz1/a$d;,
        Lz1/a$e;,
        Lz1/a$i;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/ListenableFuture<",
        "TV;>;"
    }
.end annotation


# static fields
.field public static final d:Z

.field public static final e:Ljava/util/logging/Logger;

.field public static final f:Lz1/a$b;

.field public static final g:Ljava/lang/Object;


# instance fields
.field public volatile a:Ljava/lang/Object;

.field public volatile b:Lz1/a$e;

.field public volatile c:Lz1/a$i;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    const-class v0, Lz1/a$i;

    const-string v1, "guava.concurrent.generate_cancellation_cause"

    const-string v2, "false"

    .line 2
    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lz1/a;->d:Z

    .line 4
    const-class v1, Lz1/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lz1/a;->e:Ljava/util/logging/Logger;

    .line 5
    :try_start_0
    new-instance v1, Lz1/a$f;

    const-class v2, Ljava/lang/Thread;

    const-string v3, "a"

    .line 6
    invoke-static {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    const-string v2, "b"

    .line 7
    invoke-static {v0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    const-class v2, Lz1/a;

    const-string v5, "c"

    .line 8
    invoke-static {v2, v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    const-class v0, Lz1/a;

    const-class v2, Lz1/a$e;

    const-string v6, "b"

    .line 9
    invoke-static {v0, v2, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v6

    const-class v0, Lz1/a;

    const-class v2, Ljava/lang/Object;

    const-string v7, "a"

    .line 10
    invoke-static {v0, v2, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v7

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lz1/a$f;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 11
    new-instance v1, Lz1/a$h;

    invoke-direct {v1}, Lz1/a$h;-><init>()V

    .line 12
    :goto_0
    sput-object v1, Lz1/a;->f:Lz1/a$b;

    .line 13
    const-class v1, Ljava/util/concurrent/locks/LockSupport;

    if-eqz v0, :cond_0

    .line 14
    sget-object v1, Lz1/a;->e:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "SafeAtomicHelper is broken!"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lz1/a;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Lz1/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz1/a<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    .line 1
    :cond_0
    :goto_0
    iget-object v2, p0, Lz1/a;->c:Lz1/a$i;

    .line 2
    sget-object v3, Lz1/a;->f:Lz1/a$b;

    sget-object v4, Lz1/a$i;->c:Lz1/a$i;

    invoke-virtual {v3, p0, v2, v4}, Lz1/a$b;->c(Lz1/a;Lz1/a$i;Lz1/a$i;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    if-eqz v2, :cond_2

    .line 3
    iget-object v3, v2, Lz1/a$i;->a:Ljava/lang/Thread;

    if-eqz v3, :cond_1

    .line 4
    iput-object v0, v2, Lz1/a$i;->a:Ljava/lang/Thread;

    .line 5
    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 6
    :cond_1
    iget-object v2, v2, Lz1/a$i;->b:Lz1/a$i;

    goto :goto_1

    .line 7
    :cond_2
    iget-object v2, p0, Lz1/a;->b:Lz1/a$e;

    .line 8
    sget-object v3, Lz1/a;->f:Lz1/a$b;

    sget-object v4, Lz1/a$e;->d:Lz1/a$e;

    invoke-virtual {v3, p0, v2, v4}, Lz1/a$b;->a(Lz1/a;Lz1/a$e;Lz1/a$e;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    move-object p0, v1

    move-object v1, v2

    if-eqz v1, :cond_3

    .line 9
    iget-object v2, v1, Lz1/a$e;->c:Lz1/a$e;

    .line 10
    iput-object p0, v1, Lz1/a$e;->c:Lz1/a$e;

    goto :goto_2

    :cond_3
    :goto_3
    if-eqz p0, :cond_6

    .line 11
    iget-object v1, p0, Lz1/a$e;->c:Lz1/a$e;

    .line 12
    iget-object v2, p0, Lz1/a$e;->a:Ljava/lang/Runnable;

    .line 13
    instance-of v3, v2, Lz1/a$g;

    if-eqz v3, :cond_4

    .line 14
    check-cast v2, Lz1/a$g;

    .line 15
    iget-object p0, v2, Lz1/a$g;->a:Lz1/a;

    .line 16
    iget-object v3, p0, Lz1/a;->a:Ljava/lang/Object;

    if-ne v3, v2, :cond_5

    .line 17
    iget-object v3, v2, Lz1/a$g;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v3}, Lz1/a;->g(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v3

    .line 18
    sget-object v4, Lz1/a;->f:Lz1/a$b;

    invoke-virtual {v4, p0, v2, v3}, Lz1/a$b;->b(Lz1/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    .line 19
    :cond_4
    iget-object p0, p0, Lz1/a$e;->b:Ljava/util/concurrent/Executor;

    invoke-static {v2, p0}, Lz1/a;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_5
    move-object p0, v1

    goto :goto_3

    :cond_6
    return-void
.end method

.method public static d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    sget-object v1, Lz1/a;->e:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RuntimeException while executing runnable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " with executor "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static g(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lz1/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    check-cast p0, Lz1/a;

    iget-object p0, p0, Lz1/a;->a:Ljava/lang/Object;

    .line 3
    instance-of v0, p0, Lz1/a$c;

    if-eqz v0, :cond_1

    .line 4
    move-object v0, p0

    check-cast v0, Lz1/a$c;

    .line 5
    iget-boolean v2, v0, Lz1/a$c;->a:Z

    if-eqz v2, :cond_1

    .line 6
    iget-object p0, v0, Lz1/a$c;->b:Ljava/lang/Throwable;

    if-eqz p0, :cond_0

    new-instance p0, Lz1/a$c;

    iget-object v0, v0, Lz1/a$c;->b:Ljava/lang/Throwable;

    invoke-direct {p0, v1, v0}, Lz1/a$c;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_0

    .line 7
    :cond_0
    sget-object p0, Lz1/a$c;->c:Lz1/a$c;

    :cond_1
    :goto_0
    return-object p0

    .line 8
    :cond_2
    invoke-interface {p0}, Lcom/google/common/util/concurrent/ListenableFuture;->isCancelled()Z

    move-result v0

    .line 9
    sget-boolean v2, Lz1/a;->d:Z

    xor-int/lit8 v2, v2, 0x1

    and-int/2addr v2, v0

    if-eqz v2, :cond_3

    .line 10
    sget-object p0, Lz1/a$c;->c:Lz1/a$c;

    return-object p0

    .line 11
    :cond_3
    :try_start_0
    invoke-static {p0}, Lz1/a;->h(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    .line 12
    sget-object v2, Lz1/a;->g:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    return-object v2

    :catchall_0
    move-exception p0

    .line 13
    new-instance v0, Lz1/a$d;

    invoke-direct {v0, p0}, Lz1/a$d;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :catch_0
    move-exception v2

    if-nez v0, :cond_5

    .line 14
    new-instance v0, Lz1/a$d;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get() threw CancellationException, despite reporting isCancelled() == false: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Lz1/a$d;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    .line 15
    :cond_5
    new-instance p0, Lz1/a$c;

    invoke-direct {p0, v1, v2}, Lz1/a$c;-><init>(ZLjava/lang/Throwable;)V

    return-object p0

    :catch_1
    move-exception p0

    .line 16
    new-instance v0, Lz1/a$d;

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v0, p0}, Lz1/a$d;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static h(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 3
    :cond_1
    throw p0

    :catch_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/StringBuilder;)V
    .locals 3

    const-string v0, "]"

    .line 1
    :try_start_0
    invoke-static {p0}, Lz1/a;->h(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "SUCCESS, result=["

    .line 2
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v1, p0, :cond_0

    const-string v1, "this future"

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "UNKNOWN, cause=["

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " thrown from get()]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catch_1
    const-string v0, "CANCELLED"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catch_2
    move-exception v1

    const-string v2, "FAILURE, cause=["

    .line 7
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    return-void
.end method

.method public final b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 3

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lz1/a;->b:Lz1/a$e;

    .line 3
    sget-object v1, Lz1/a$e;->d:Lz1/a$e;

    if-eq v0, v1, :cond_2

    .line 4
    new-instance v1, Lz1/a$e;

    invoke-direct {v1, p1, p2}, Lz1/a$e;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 5
    :cond_0
    iput-object v0, v1, Lz1/a$e;->c:Lz1/a$e;

    .line 6
    sget-object v2, Lz1/a;->f:Lz1/a$b;

    invoke-virtual {v2, p0, v0, v1}, Lz1/a$b;->a(Lz1/a;Lz1/a$e;Lz1/a$e;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lz1/a;->b:Lz1/a$e;

    .line 8
    sget-object v2, Lz1/a$e;->d:Lz1/a$e;

    if-ne v0, v2, :cond_0

    .line 9
    :cond_2
    invoke-static {p1, p2}, Lz1/a;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final e()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_c

    .line 2
    iget-object v0, p0, Lz1/a;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_0
    instance-of v4, v0, Lz1/a$g;

    xor-int/2addr v4, v2

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Lz1/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Lz1/a;->c:Lz1/a$i;

    .line 6
    sget-object v3, Lz1/a$i;->c:Lz1/a$i;

    if-eq v0, v3, :cond_b

    .line 7
    new-instance v3, Lz1/a$i;

    invoke-direct {v3}, Lz1/a$i;-><init>()V

    .line 8
    :cond_2
    sget-object v4, Lz1/a;->f:Lz1/a$b;

    invoke-virtual {v4, v3, v0}, Lz1/a$b;->d(Lz1/a$i;Lz1/a$i;)V

    .line 9
    invoke-virtual {v4, p0, v0, v3}, Lz1/a$b;->c(Lz1/a;Lz1/a$i;Lz1/a$i;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 10
    :cond_3
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 12
    iput-object v0, v3, Lz1/a$i;->a:Ljava/lang/Thread;

    .line 13
    :goto_1
    iget-object v1, p0, Lz1/a;->c:Lz1/a$i;

    .line 14
    sget-object v2, Lz1/a$i;->c:Lz1/a$i;

    if-eq v1, v2, :cond_7

    move-object v2, v0

    :goto_2
    if-eqz v1, :cond_7

    .line 15
    iget-object v3, v1, Lz1/a$i;->b:Lz1/a$i;

    .line 16
    iget-object v4, v1, Lz1/a$i;->a:Ljava/lang/Thread;

    if-eqz v4, :cond_4

    move-object v2, v1

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    .line 17
    iput-object v3, v2, Lz1/a$i;->b:Lz1/a$i;

    .line 18
    iget-object v1, v2, Lz1/a$i;->a:Ljava/lang/Thread;

    if-nez v1, :cond_6

    goto :goto_1

    .line 19
    :cond_5
    sget-object v4, Lz1/a;->f:Lz1/a$b;

    invoke-virtual {v4, p0, v1, v3}, Lz1/a$b;->c(Lz1/a;Lz1/a$i;Lz1/a$i;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    :goto_3
    move-object v1, v3

    goto :goto_2

    .line 20
    :cond_7
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 21
    :cond_8
    iget-object v0, p0, Lz1/a;->a:Ljava/lang/Object;

    if-eqz v0, :cond_9

    const/4 v4, 0x1

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    .line 22
    :goto_4
    instance-of v5, v0, Lz1/a$g;

    xor-int/2addr v5, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 23
    invoke-virtual {p0, v0}, Lz1/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 24
    :cond_a
    iget-object v0, p0, Lz1/a;->c:Lz1/a$i;

    .line 25
    sget-object v4, Lz1/a$i;->c:Lz1/a$i;

    if-ne v0, v4, :cond_2

    .line 26
    :cond_b
    iget-object v0, p0, Lz1/a;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lz1/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 27
    :cond_c
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public final f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lz1/a$c;

    if-nez v0, :cond_2

    .line 2
    instance-of v0, p1, Lz1/a$d;

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lz1/a;->g:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1

    .line 4
    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    check-cast p1, Lz1/a$d;

    iget-object p1, p1, Lz1/a$d;->a:Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 5
    :cond_2
    check-cast p1, Lz1/a$c;

    iget-object p1, p1, Lz1/a$c;->b:Ljava/lang/Throwable;

    .line 6
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task was cancelled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 8
    throw v0
.end method

.method public i()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lz1/a;->a:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Lz1/a$g;

    if-eqz v1, :cond_1

    const-string v1, "setFuture=["

    .line 3
    invoke-static {v1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast v0, Lz1/a$g;

    iget-object v0, v0, Lz1/a$g;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    if-ne v0, p0, :cond_0

    const-string v0, "this future"

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v2, "]"

    .line 5
    invoke-static {v1, v0, v2}, Landroid/support/v4/media/b;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    instance-of v0, p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    const-string v0, "remaining delay=["

    .line 7
    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ljava/util/concurrent/ScheduledFuture;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public j(Lcom/google/common/util/concurrent/ListenableFuture;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lz1/a;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 3
    invoke-interface {p1}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p1}, Lz1/a;->g(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    sget-object v0, Lz1/a;->f:Lz1/a$b;

    invoke-virtual {v0, p0, v3, p1}, Lz1/a$b;->b(Lz1/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-static {p0}, Lz1/a;->c(Lz1/a;)V

    return v2

    :cond_0
    return v1

    .line 7
    :cond_1
    new-instance v0, Lz1/a$g;

    invoke-direct {v0, p0, p1}, Lz1/a$g;-><init>(Lz1/a;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 8
    sget-object v4, Lz1/a;->f:Lz1/a$b;

    invoke-virtual {v4, p0, v3, v0}, Lz1/a$b;->b(Lz1/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    :try_start_0
    sget-object v1, Lz1/b;->a:Lz1/b;

    invoke-interface {p1, v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    new-instance v1, Lz1/a$d;

    invoke-direct {v1, p1}, Lz1/a$d;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 11
    :catchall_1
    sget-object v1, Lz1/a$d;->b:Lz1/a$d;

    .line 12
    :goto_0
    sget-object p1, Lz1/a;->f:Lz1/a$b;

    invoke-virtual {p1, p0, v0, v1}, Lz1/a$b;->b(Lz1/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_1
    return v2

    .line 13
    :cond_2
    iget-object v0, p0, Lz1/a;->a:Ljava/lang/Object;

    .line 14
    :cond_3
    instance-of v2, v0, Lz1/a$c;

    if-eqz v2, :cond_4

    .line 15
    check-cast v0, Lz1/a$c;

    iget-boolean v0, v0, Lz1/a$c;->a:Z

    invoke-interface {p1, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    :cond_4
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v1, p0, Lz1/a;->a:Ljava/lang/Object;

    .line 3
    instance-of v1, v1, Lz1/a$c;

    const-string v2, "]"

    if-eqz v1, :cond_0

    const-string v1, "CANCELLED"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 5
    :cond_0
    iget-object v1, p0, Lz1/a;->a:Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 6
    :goto_0
    instance-of v1, v1, Lz1/a$g;

    xor-int/lit8 v1, v1, 0x1

    and-int/2addr v1, v4

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {p0, v0}, Lz1/a;->a(Ljava/lang/StringBuilder;)V

    goto :goto_2

    .line 8
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lz1/a;->i()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v4, "Exception thrown from implementation: "

    .line 9
    invoke-static {v4}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    const-string v3, "PENDING, info=["

    .line 11
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 12
    :cond_3
    iget-object v1, p0, Lz1/a;->a:Ljava/lang/Object;

    if-eqz v1, :cond_4

    const/4 v3, 0x1

    .line 13
    :cond_4
    instance-of v1, v1, Lz1/a$g;

    xor-int/lit8 v1, v1, 0x1

    and-int/2addr v1, v3

    if-eqz v1, :cond_5

    .line 14
    invoke-virtual {p0, v0}, Lz1/a;->a(Ljava/lang/StringBuilder;)V

    goto :goto_2

    :cond_5
    const-string v1, "PENDING"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
