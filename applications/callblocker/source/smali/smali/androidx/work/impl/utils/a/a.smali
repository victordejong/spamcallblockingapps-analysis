.class public abstract Landroidx/work/impl/utils/a/a;
.super Ljava/lang/Object;
.source "AbstractFuture.java"

# interfaces
.implements Lcom/google/a/a/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/utils/a/a$g;,
        Landroidx/work/impl/utils/a/a$e;,
        Landroidx/work/impl/utils/a/a$a;,
        Landroidx/work/impl/utils/a/a$f;,
        Landroidx/work/impl/utils/a/a$b;,
        Landroidx/work/impl/utils/a/a$c;,
        Landroidx/work/impl/utils/a/a$d;,
        Landroidx/work/impl/utils/a/a$h;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/a/a/a/a",
        "<TV;>;"
    }
.end annotation


# static fields
.field static final a:Z

.field static final b:Landroidx/work/impl/utils/a/a$a;

.field private static final f:Ljava/util/logging/Logger;

.field private static final g:Ljava/lang/Object;


# instance fields
.field volatile c:Ljava/lang/Object;

.field volatile d:Landroidx/work/impl/utils/a/a$d;

.field volatile e:Landroidx/work/impl/utils/a/a$h;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 70
    const-string/jumbo v0, "guava.concurrent.generate_cancellation_cause"

    const-string/jumbo v1, "false"

    .line 72
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroidx/work/impl/utils/a/a;->a:Z

    .line 75
    const-class v0, Landroidx/work/impl/utils/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/utils/a/a;->f:Ljava/util/logging/Logger;

    .line 86
    const/4 v6, 0x0

    .line 91
    :try_start_0
    new-instance v0, Landroidx/work/impl/utils/a/a$e;

    const-class v1, Landroidx/work/impl/utils/a/a$h;

    const-class v2, Ljava/lang/Thread;

    const-string/jumbo v3, "b"

    .line 93
    invoke-static {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    const-class v2, Landroidx/work/impl/utils/a/a$h;

    const-class v3, Landroidx/work/impl/utils/a/a$h;

    const-string/jumbo v4, "c"

    .line 94
    invoke-static {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    const-class v3, Landroidx/work/impl/utils/a/a;

    const-class v4, Landroidx/work/impl/utils/a/a$h;

    const-string/jumbo v5, "e"

    .line 95
    invoke-static {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    const-class v4, Landroidx/work/impl/utils/a/a;

    const-class v5, Landroidx/work/impl/utils/a/a$d;

    const-string/jumbo v7, "d"

    .line 96
    invoke-static {v4, v5, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    const-class v5, Landroidx/work/impl/utils/a/a;

    const-class v7, Ljava/lang/Object;

    const-string/jumbo v8, "c"

    .line 97
    invoke-static {v5, v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Landroidx/work/impl/utils/a/a$e;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v6

    move-object v2, v0

    .line 107
    :goto_0
    sput-object v2, Landroidx/work/impl/utils/a/a;->b:Landroidx/work/impl/utils/a/a$a;

    .line 112
    const-class v0, Ljava/util/concurrent/locks/LockSupport;

    .line 116
    if-eqz v1, :cond_0

    .line 117
    sget-object v0, Landroidx/work/impl/utils/a/a;->f:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v3, "SafeAtomicHelper is broken!"

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 219
    :cond_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/work/impl/utils/a/a;->g:Ljava/lang/Object;

    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 104
    new-instance v2, Landroidx/work/impl/utils/a/a$g;

    invoke-direct {v2}, Landroidx/work/impl/utils/a/a$g;-><init>()V

    move-object v1, v0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    return-void
.end method

.method private a(Landroidx/work/impl/utils/a/a$d;)Landroidx/work/impl/utils/a/a$d;
    .locals 3

    .prologue
    .line 958
    :cond_0
    iget-object v0, p0, Landroidx/work/impl/utils/a/a;->d:Landroidx/work/impl/utils/a/a$d;

    .line 959
    sget-object v1, Landroidx/work/impl/utils/a/a;->b:Landroidx/work/impl/utils/a/a$a;

    sget-object v2, Landroidx/work/impl/utils/a/a$d;->a:Landroidx/work/impl/utils/a/a$d;

    invoke-virtual {v1, p0, v0, v2}, Landroidx/work/impl/utils/a/a$a;->a(Landroidx/work/impl/utils/a/a;Landroidx/work/impl/utils/a/a$d;Landroidx/work/impl/utils/a/a$d;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 961
    :goto_0
    if-eqz v0, :cond_1

    .line 963
    iget-object v1, v0, Landroidx/work/impl/utils/a/a$d;->d:Landroidx/work/impl/utils/a/a$d;

    .line 964
    iput-object p1, v0, Landroidx/work/impl/utils/a/a$d;->d:Landroidx/work/impl/utils/a/a$d;

    move-object p1, v0

    move-object v0, v1

    .line 966
    goto :goto_0

    .line 967
    :cond_1
    return-object p1
.end method

.method private static a(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 847
    const/4 v0, 0x0

    .line 851
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 857
    if-eqz v0, :cond_0

    .line 858
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 851
    :cond_0
    return-object v1

    .line 852
    :catch_0
    move-exception v0

    .line 853
    const/4 v0, 0x1

    .line 854
    goto :goto_0

    .line 857
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 858
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 860
    :cond_1
    throw v1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;
    .locals 1

    .prologue
    .line 1184
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 1185
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1186
    return-object v0
.end method

.method private a(Landroidx/work/impl/utils/a/a$h;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 174
    iput-object v3, p1, Landroidx/work/impl/utils/a/a$h;->b:Ljava/lang/Thread;

    .line 178
    :goto_0
    iget-object v1, p0, Landroidx/work/impl/utils/a/a;->e:Landroidx/work/impl/utils/a/a$h;

    .line 179
    sget-object v0, Landroidx/work/impl/utils/a/a$h;->a:Landroidx/work/impl/utils/a/a$h;

    if-ne v1, v0, :cond_4

    .line 200
    :cond_0
    return-void

    .line 183
    :goto_1
    if-eqz v1, :cond_0

    .line 184
    iget-object v2, v1, Landroidx/work/impl/utils/a/a$h;->c:Landroidx/work/impl/utils/a/a$h;

    .line 185
    iget-object v4, v1, Landroidx/work/impl/utils/a/a$h;->b:Ljava/lang/Thread;

    if-eqz v4, :cond_2

    move-object v0, v1

    :cond_1
    move-object v1, v2

    .line 196
    goto :goto_1

    .line 187
    :cond_2
    if-eqz v0, :cond_3

    .line 188
    iput-object v2, v0, Landroidx/work/impl/utils/a/a$h;->c:Landroidx/work/impl/utils/a/a$h;

    .line 189
    iget-object v1, v0, Landroidx/work/impl/utils/a/a$h;->b:Ljava/lang/Thread;

    if-nez v1, :cond_1

    goto :goto_0

    .line 193
    :cond_3
    sget-object v4, Landroidx/work/impl/utils/a/a;->b:Landroidx/work/impl/utils/a/a$a;

    invoke-virtual {v4, p0, v1, v2}, Landroidx/work/impl/utils/a/a$a;->a(Landroidx/work/impl/utils/a/a;Landroidx/work/impl/utils/a/a$h;Landroidx/work/impl/utils/a/a$h;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_4
    move-object v0, v3

    goto :goto_1
.end method

.method static a(Landroidx/work/impl/utils/a/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/utils/a/a",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 866
    const/4 v0, 0x0

    .line 869
    :goto_0
    invoke-direct {p0}, Landroidx/work/impl/utils/a/a;->d()V

    .line 875
    invoke-virtual {p0}, Landroidx/work/impl/utils/a/a;->b()V

    .line 877
    invoke-direct {p0, v0}, Landroidx/work/impl/utils/a/a;->a(Landroidx/work/impl/utils/a/a$d;)Landroidx/work/impl/utils/a/a$d;

    move-result-object v1

    move-object v2, v1

    .line 879
    :goto_1
    if-eqz v2, :cond_2

    .line 881
    iget-object v1, v2, Landroidx/work/impl/utils/a/a$d;->d:Landroidx/work/impl/utils/a/a$d;

    .line 882
    iget-object v0, v2, Landroidx/work/impl/utils/a/a$d;->b:Ljava/lang/Runnable;

    .line 883
    instance-of v3, v0, Landroidx/work/impl/utils/a/a$f;

    if-eqz v3, :cond_0

    .line 884
    check-cast v0, Landroidx/work/impl/utils/a/a$f;

    .line 891
    iget-object p0, v0, Landroidx/work/impl/utils/a/a$f;->a:Landroidx/work/impl/utils/a/a;

    .line 892
    iget-object v2, p0, Landroidx/work/impl/utils/a/a;->c:Ljava/lang/Object;

    if-ne v2, v0, :cond_1

    .line 893
    iget-object v2, v0, Landroidx/work/impl/utils/a/a$f;->b:Lcom/google/a/a/a/a;

    invoke-static {v2}, Landroidx/work/impl/utils/a/a;->b(Lcom/google/a/a/a/a;)Ljava/lang/Object;

    move-result-object v2

    .line 894
    sget-object v3, Landroidx/work/impl/utils/a/a;->b:Landroidx/work/impl/utils/a/a$a;

    invoke-virtual {v3, p0, v0, v2}, Landroidx/work/impl/utils/a/a$a;->a(Landroidx/work/impl/utils/a/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 895
    goto :goto_0

    .line 900
    :cond_0
    iget-object v2, v2, Landroidx/work/impl/utils/a/a$d;->c:Ljava/util/concurrent/Executor;

    invoke-static {v0, v2}, Landroidx/work/impl/utils/a/a;->b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_1
    move-object v2, v1

    .line 902
    goto :goto_1

    .line 905
    :cond_2
    return-void
.end method

.method private a(Ljava/lang/StringBuilder;)V
    .locals 2

    .prologue
    .line 1021
    :try_start_0
    invoke-static {p0}, Landroidx/work/impl/utils/a/a;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    .line 1022
    const-string/jumbo v1, "SUCCESS, result=["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0}, Landroidx/work/impl/utils/a/a;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1030
    :goto_0
    return-void

    .line 1023
    :catch_0
    move-exception v0

    .line 1024
    const-string/jumbo v1, "FAILURE, cause=["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1025
    :catch_1
    move-exception v0

    .line 1026
    const-string/jumbo v0, "CANCELLED"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1027
    :catch_2
    move-exception v0

    .line 1028
    const-string/jumbo v1, "UNKNOWN, cause=["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " thrown from get()]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static b(Lcom/google/a/a/a/a;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/a/a/a",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 798
    instance-of v0, p0, Landroidx/work/impl/utils/a/a;

    if-eqz v0, :cond_2

    .line 804
    check-cast p0, Landroidx/work/impl/utils/a/a;

    iget-object v1, p0, Landroidx/work/impl/utils/a/a;->c:Ljava/lang/Object;

    .line 805
    instance-of v0, v1, Landroidx/work/impl/utils/a/a$b;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 809
    check-cast v0, Landroidx/work/impl/utils/a/a$b;

    .line 810
    iget-boolean v3, v0, Landroidx/work/impl/utils/a/a$b;->c:Z

    if-eqz v3, :cond_0

    .line 811
    iget-object v1, v0, Landroidx/work/impl/utils/a/a$b;->d:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    new-instance v1, Landroidx/work/impl/utils/a/a$b;

    iget-object v0, v0, Landroidx/work/impl/utils/a/a$b;->d:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v0}, Landroidx/work/impl/utils/a/a$b;-><init>(ZLjava/lang/Throwable;)V

    move-object v0, v1

    :goto_0
    move-object v1, v0

    .line 839
    :cond_0
    :goto_1
    return-object v1

    .line 811
    :cond_1
    sget-object v0, Landroidx/work/impl/utils/a/a$b;->b:Landroidx/work/impl/utils/a/a$b;

    goto :goto_0

    .line 817
    :cond_2
    invoke-interface {p0}, Lcom/google/a/a/a/a;->isCancelled()Z

    move-result v1

    .line 819
    sget-boolean v0, Landroidx/work/impl/utils/a/a;->a:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 820
    sget-object v1, Landroidx/work/impl/utils/a/a$b;->b:Landroidx/work/impl/utils/a/a$b;

    goto :goto_1

    :cond_3
    move v0, v2

    .line 819
    goto :goto_2

    .line 824
    :cond_4
    :try_start_0
    invoke-static {p0}, Landroidx/work/impl/utils/a/a;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    .line 825
    if-nez v0, :cond_5

    sget-object v0, Landroidx/work/impl/utils/a/a;->g:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :cond_5
    move-object v1, v0

    goto :goto_1

    .line 826
    :catch_0
    move-exception v0

    .line 827
    new-instance v1, Landroidx/work/impl/utils/a/a$c;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/work/impl/utils/a/a$c;-><init>(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 828
    :catch_1
    move-exception v0

    .line 829
    if-nez v1, :cond_6

    .line 830
    new-instance v1, Landroidx/work/impl/utils/a/a$c;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get() threw CancellationException, despite reporting isCancelled() == false: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2}, Landroidx/work/impl/utils/a/a$c;-><init>(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 837
    :cond_6
    new-instance v1, Landroidx/work/impl/utils/a/a$b;

    invoke-direct {v1, v2, v0}, Landroidx/work/impl/utils/a/a$b;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_1

    .line 838
    :catch_2
    move-exception v0

    .line 839
    new-instance v1, Landroidx/work/impl/utils/a/a$c;

    invoke-direct {v1, v0}, Landroidx/work/impl/utils/a/a$c;-><init>(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 1192
    if-nez p0, :cond_0

    .line 1193
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1195
    :cond_0
    return-object p0
.end method

.method private static b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 5

    .prologue
    .line 1051
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1062
    :goto_0
    return-void

    .line 1052
    :catch_0
    move-exception v0

    .line 1056
    sget-object v1, Landroidx/work/impl/utils/a/a;->f:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RuntimeException while executing runnable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with executor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 513
    instance-of v0, p1, Landroidx/work/impl/utils/a/a$b;

    if-eqz v0, :cond_0

    .line 514
    const-string/jumbo v0, "Task was cancelled."

    check-cast p1, Landroidx/work/impl/utils/a/a$b;

    iget-object v1, p1, Landroidx/work/impl/utils/a/a$b;->d:Ljava/lang/Throwable;

    invoke-static {v0, v1}, Landroidx/work/impl/utils/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    throw v0

    .line 515
    :cond_0
    instance-of v0, p1, Landroidx/work/impl/utils/a/a$c;

    if-eqz v0, :cond_1

    .line 516
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    check-cast p1, Landroidx/work/impl/utils/a/a$c;

    iget-object v1, p1, Landroidx/work/impl/utils/a/a$c;->b:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 517
    :cond_1
    sget-object v0, Landroidx/work/impl/utils/a/a;->g:Ljava/lang/Object;

    if-ne p1, v0, :cond_2

    .line 518
    const/4 p1, 0x0

    .line 522
    :cond_2
    return-object p1
.end method

.method private d(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1039
    if-ne p1, p0, :cond_0

    .line 1040
    const-string/jumbo v0, "this future"

    .line 1042
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 937
    :cond_0
    iget-object v0, p0, Landroidx/work/impl/utils/a/a;->e:Landroidx/work/impl/utils/a/a$h;

    .line 938
    sget-object v1, Landroidx/work/impl/utils/a/a;->b:Landroidx/work/impl/utils/a/a$a;

    sget-object v2, Landroidx/work/impl/utils/a/a$h;->a:Landroidx/work/impl/utils/a/a$h;

    invoke-virtual {v1, p0, v0, v2}, Landroidx/work/impl/utils/a/a$a;->a(Landroidx/work/impl/utils/a/a;Landroidx/work/impl/utils/a/a$h;Landroidx/work/impl/utils/a/a$h;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 939
    :goto_0
    if-eqz v0, :cond_1

    .line 941
    invoke-virtual {v0}, Landroidx/work/impl/utils/a/a$h;->a()V

    .line 940
    iget-object v0, v0, Landroidx/work/impl/utils/a/a$h;->c:Landroidx/work/impl/utils/a/a$h;

    goto :goto_0

    .line 943
    :cond_1
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 631
    return-void
.end method

.method public final a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 3

    .prologue
    .line 651
    invoke-static {p1}, Landroidx/work/impl/utils/a/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    invoke-static {p2}, Landroidx/work/impl/utils/a/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    iget-object v0, p0, Landroidx/work/impl/utils/a/a;->d:Landroidx/work/impl/utils/a/a$d;

    .line 654
    sget-object v1, Landroidx/work/impl/utils/a/a$d;->a:Landroidx/work/impl/utils/a/a$d;

    if-eq v0, v1, :cond_2

    .line 655
    new-instance v1, Landroidx/work/impl/utils/a/a$d;

    invoke-direct {v1, p1, p2}, Landroidx/work/impl/utils/a/a$d;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 657
    :cond_0
    iput-object v0, v1, Landroidx/work/impl/utils/a/a$d;->d:Landroidx/work/impl/utils/a/a$d;

    .line 658
    sget-object v2, Landroidx/work/impl/utils/a/a;->b:Landroidx/work/impl/utils/a/a$a;

    invoke-virtual {v2, p0, v0, v1}, Landroidx/work/impl/utils/a/a$a;->a(Landroidx/work/impl/utils/a/a;Landroidx/work/impl/utils/a/a$d;Landroidx/work/impl/utils/a/a$d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 667
    :goto_0
    return-void

    .line 661
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/utils/a/a;->d:Landroidx/work/impl/utils/a/a$d;

    .line 662
    sget-object v2, Landroidx/work/impl/utils/a/a$d;->a:Landroidx/work/impl/utils/a/a$d;

    if-ne v0, v2, :cond_0

    .line 666
    :cond_2
    invoke-static {p1, p2}, Landroidx/work/impl/utils/a/a;->b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_0
.end method

.method protected a(Lcom/google/a/a/a/a;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/a/a/a",
            "<+TV;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 744
    invoke-static {p1}, Landroidx/work/impl/utils/a/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    iget-object v0, p0, Landroidx/work/impl/utils/a/a;->c:Ljava/lang/Object;

    .line 746
    if-nez v0, :cond_3

    .line 747
    invoke-interface {p1}, Lcom/google/a/a/a/a;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 748
    invoke-static {p1}, Landroidx/work/impl/utils/a/a;->b(Lcom/google/a/a/a/a;)Ljava/lang/Object;

    move-result-object v0

    .line 749
    sget-object v3, Landroidx/work/impl/utils/a/a;->b:Landroidx/work/impl/utils/a/a$a;

    invoke-virtual {v3, p0, v4, v0}, Landroidx/work/impl/utils/a/a$a;->a(Landroidx/work/impl/utils/a/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    invoke-static {p0}, Landroidx/work/impl/utils/a/a;->a(Landroidx/work/impl/utils/a/a;)V

    move v0, v1

    .line 787
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 753
    goto :goto_0

    .line 755
    :cond_1
    new-instance v3, Landroidx/work/impl/utils/a/a$f;

    invoke-direct {v3, p0, p1}, Landroidx/work/impl/utils/a/a$f;-><init>(Landroidx/work/impl/utils/a/a;Lcom/google/a/a/a/a;)V

    .line 756
    sget-object v0, Landroidx/work/impl/utils/a/a;->b:Landroidx/work/impl/utils/a/a$a;

    invoke-virtual {v0, p0, v4, v3}, Landroidx/work/impl/utils/a/a$a;->a(Landroidx/work/impl/utils/a/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 761
    :try_start_0
    sget-object v0, Landroidx/work/impl/utils/a/b;->a:Landroidx/work/impl/utils/a/b;

    invoke-interface {p1, v3, v0}, Lcom/google/a/a/a/a;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v0, v1

    .line 777
    goto :goto_0

    .line 762
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 769
    :try_start_1
    new-instance v0, Landroidx/work/impl/utils/a/a$c;

    invoke-direct {v0, v2}, Landroidx/work/impl/utils/a/a$c;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 775
    :goto_2
    sget-object v2, Landroidx/work/impl/utils/a/a;->b:Landroidx/work/impl/utils/a/a$a;

    invoke-virtual {v2, p0, v3, v0}, Landroidx/work/impl/utils/a/a$a;->a(Landroidx/work/impl/utils/a/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    .line 770
    :catch_1
    move-exception v0

    .line 771
    sget-object v0, Landroidx/work/impl/utils/a/a$c;->a:Landroidx/work/impl/utils/a/a$c;

    goto :goto_2

    .line 779
    :cond_2
    iget-object v0, p0, Landroidx/work/impl/utils/a/a;->c:Ljava/lang/Object;

    .line 783
    :cond_3
    instance-of v1, v0, Landroidx/work/impl/utils/a/a$b;

    if-eqz v1, :cond_4

    .line 785
    check-cast v0, Landroidx/work/impl/utils/a/a$b;

    iget-boolean v0, v0, Landroidx/work/impl/utils/a/a$b;->c:Z

    invoke-interface {p1, v0}, Lcom/google/a/a/a/a;->cancel(Z)Z

    :cond_4
    move v0, v2

    .line 787
    goto :goto_0
.end method

.method protected a(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 683
    if-nez p1, :cond_0

    sget-object p1, Landroidx/work/impl/utils/a/a;->g:Ljava/lang/Object;

    .line 684
    :cond_0
    sget-object v0, Landroidx/work/impl/utils/a/a;->b:Landroidx/work/impl/utils/a/a$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroidx/work/impl/utils/a/a$a;->a(Landroidx/work/impl/utils/a/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 685
    invoke-static {p0}, Landroidx/work/impl/utils/a/a;->a(Landroidx/work/impl/utils/a/a;)V

    .line 686
    const/4 v0, 0x1

    .line 688
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Throwable;)Z
    .locals 3

    .prologue
    .line 708
    new-instance v1, Landroidx/work/impl/utils/a/a$c;

    invoke-static {p1}, Landroidx/work/impl/utils/a/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Landroidx/work/impl/utils/a/a$c;-><init>(Ljava/lang/Throwable;)V

    .line 709
    sget-object v0, Landroidx/work/impl/utils/a/a;->b:Landroidx/work/impl/utils/a/a$a;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroidx/work/impl/utils/a/a$a;->a(Landroidx/work/impl/utils/a/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    invoke-static {p0}, Landroidx/work/impl/utils/a/a;->a(Landroidx/work/impl/utils/a/a;)V

    .line 711
    const/4 v0, 0x1

    .line 713
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 920
    return-void
.end method

.method protected c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1008
    iget-object v0, p0, Landroidx/work/impl/utils/a/a;->c:Ljava/lang/Object;

    .line 1009
    instance-of v1, v0, Landroidx/work/impl/utils/a/a$f;

    if-eqz v1, :cond_0

    .line 1010
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFuture=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast v0, Landroidx/work/impl/utils/a/a$f;

    iget-object v0, v0, Landroidx/work/impl/utils/a/a$f;->b:Lcom/google/a/a/a/a;

    invoke-direct {p0, v0}, Landroidx/work/impl/utils/a/a;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1016
    :goto_0
    return-object v0

    .line 1011
    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 1012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "remaining delay=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p0, Ljava/util/concurrent/ScheduledFuture;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1013
    invoke-interface {p0, v1}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ms]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1016
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final cancel(Z)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 553
    iget-object v1, p0, Landroidx/work/impl/utils/a/a;->c:Ljava/lang/Object;

    .line 555
    if-nez v1, :cond_2

    move v0, v2

    :goto_0
    instance-of v4, v1, Landroidx/work/impl/utils/a/a$f;

    or-int/2addr v0, v4

    if-eqz v0, :cond_9

    .line 558
    sget-boolean v0, Landroidx/work/impl/utils/a/a;->a:Z

    if-eqz v0, :cond_3

    new-instance v0, Landroidx/work/impl/utils/a/a$b;

    new-instance v4, Ljava/util/concurrent/CancellationException;

    const-string/jumbo v5, "Future.cancel() was called."

    invoke-direct {v4, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p1, v4}, Landroidx/work/impl/utils/a/a$b;-><init>(ZLjava/lang/Throwable;)V

    move-object v4, v0

    :goto_1
    move v5, v3

    move-object v0, v1

    .line 568
    :cond_0
    :goto_2
    sget-object v1, Landroidx/work/impl/utils/a/a;->b:Landroidx/work/impl/utils/a/a$a;

    invoke-virtual {v1, p0, v0, v4}, Landroidx/work/impl/utils/a/a$a;->a(Landroidx/work/impl/utils/a/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 572
    if-eqz p1, :cond_1

    .line 573
    invoke-virtual {p0}, Landroidx/work/impl/utils/a/a;->a()V

    .line 575
    :cond_1
    invoke-static {p0}, Landroidx/work/impl/utils/a/a;->a(Landroidx/work/impl/utils/a/a;)V

    .line 576
    instance-of v1, v0, Landroidx/work/impl/utils/a/a$f;

    if-eqz v1, :cond_7

    .line 580
    check-cast v0, Landroidx/work/impl/utils/a/a$f;

    iget-object v0, v0, Landroidx/work/impl/utils/a/a$f;->b:Lcom/google/a/a/a/a;

    .line 581
    instance-of v1, v0, Landroidx/work/impl/utils/a/a;

    if-eqz v1, :cond_6

    move-object v1, v0

    .line 591
    check-cast v1, Landroidx/work/impl/utils/a/a;

    .line 592
    iget-object v0, v1, Landroidx/work/impl/utils/a/a;->c:Ljava/lang/Object;

    .line 593
    if-nez v0, :cond_5

    move v5, v2

    :goto_3
    instance-of v6, v0, Landroidx/work/impl/utils/a/a$f;

    or-int/2addr v5, v6

    if-eqz v5, :cond_7

    move-object p0, v1

    move v5, v2

    .line 595
    goto :goto_2

    :cond_2
    move v0, v3

    .line 555
    goto :goto_0

    .line 558
    :cond_3
    if-eqz p1, :cond_4

    sget-object v0, Landroidx/work/impl/utils/a/a$b;->a:Landroidx/work/impl/utils/a/a$b;

    move-object v4, v0

    goto :goto_1

    :cond_4
    sget-object v0, Landroidx/work/impl/utils/a/a$b;->b:Landroidx/work/impl/utils/a/a$b;

    move-object v4, v0

    goto :goto_1

    :cond_5
    move v5, v3

    .line 593
    goto :goto_3

    .line 599
    :cond_6
    invoke-interface {v0, p1}, Lcom/google/a/a/a/a;->cancel(Z)Z

    .line 615
    :cond_7
    :goto_4
    return v2

    .line 605
    :cond_8
    iget-object v0, p0, Landroidx/work/impl/utils/a/a;->c:Ljava/lang/Object;

    .line 606
    instance-of v1, v0, Landroidx/work/impl/utils/a/a$f;

    if-nez v1, :cond_0

    move v2, v5

    .line 611
    goto :goto_4

    :cond_9
    move v2, v3

    goto :goto_4
.end method

.method public final get()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 470
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 473
    :cond_0
    iget-object v4, p0, Landroidx/work/impl/utils/a/a;->c:Ljava/lang/Object;

    .line 474
    if-eqz v4, :cond_1

    move v0, v1

    :goto_0
    instance-of v3, v4, Landroidx/work/impl/utils/a/a$f;

    if-nez v3, :cond_2

    move v3, v1

    :goto_1
    and-int/2addr v0, v3

    if-eqz v0, :cond_3

    .line 475
    invoke-direct {p0, v4}, Landroidx/work/impl/utils/a/a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 506
    :goto_2
    return-object v0

    :cond_1
    move v0, v2

    .line 474
    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    .line 477
    :cond_3
    iget-object v0, p0, Landroidx/work/impl/utils/a/a;->e:Landroidx/work/impl/utils/a/a$h;

    .line 478
    sget-object v3, Landroidx/work/impl/utils/a/a$h;->a:Landroidx/work/impl/utils/a/a$h;

    if-eq v0, v3, :cond_a

    .line 479
    new-instance v4, Landroidx/work/impl/utils/a/a$h;

    invoke-direct {v4}, Landroidx/work/impl/utils/a/a$h;-><init>()V

    .line 481
    :cond_4
    invoke-virtual {v4, v0}, Landroidx/work/impl/utils/a/a$h;->a(Landroidx/work/impl/utils/a/a$h;)V

    .line 482
    sget-object v3, Landroidx/work/impl/utils/a/a;->b:Landroidx/work/impl/utils/a/a$a;

    invoke-virtual {v3, p0, v0, v4}, Landroidx/work/impl/utils/a/a$a;->a(Landroidx/work/impl/utils/a/a;Landroidx/work/impl/utils/a/a$h;Landroidx/work/impl/utils/a/a$h;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 485
    :cond_5
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 488
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 489
    invoke-direct {p0, v4}, Landroidx/work/impl/utils/a/a;->a(Landroidx/work/impl/utils/a/a$h;)V

    .line 490
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 495
    :cond_6
    iget-object v5, p0, Landroidx/work/impl/utils/a/a;->c:Ljava/lang/Object;

    .line 496
    if-eqz v5, :cond_7

    move v0, v1

    :goto_3
    instance-of v3, v5, Landroidx/work/impl/utils/a/a$f;

    if-nez v3, :cond_8

    move v3, v1

    :goto_4
    and-int/2addr v0, v3

    if-eqz v0, :cond_5

    .line 497
    invoke-direct {p0, v5}, Landroidx/work/impl/utils/a/a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_7
    move v0, v2

    .line 496
    goto :goto_3

    :cond_8
    move v3, v2

    goto :goto_4

    .line 501
    :cond_9
    iget-object v0, p0, Landroidx/work/impl/utils/a/a;->e:Landroidx/work/impl/utils/a/a$h;

    .line 502
    sget-object v3, Landroidx/work/impl/utils/a/a$h;->a:Landroidx/work/impl/utils/a/a$h;

    if-ne v0, v3, :cond_4

    .line 506
    :cond_a
    iget-object v0, p0, Landroidx/work/impl/utils/a/a;->c:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/work/impl/utils/a/a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 360
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 362
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 365
    :cond_0
    iget-object v4, p0, Landroidx/work/impl/utils/a/a;->c:Ljava/lang/Object;

    .line 366
    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :goto_0
    instance-of v1, v4, Landroidx/work/impl/utils/a/a$f;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 367
    invoke-direct {p0, v4}, Landroidx/work/impl/utils/a/a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 417
    :goto_2
    return-object v0

    .line 366
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 370
    :cond_3
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    add-long/2addr v0, v2

    move-wide v4, v0

    .line 372
    :goto_3
    const-wide/16 v0, 0x3e8

    cmp-long v0, v2, v0

    if-ltz v0, :cond_b

    .line 373
    iget-object v0, p0, Landroidx/work/impl/utils/a/a;->e:Landroidx/work/impl/utils/a/a$h;

    .line 374
    sget-object v1, Landroidx/work/impl/utils/a/a$h;->a:Landroidx/work/impl/utils/a/a$h;

    if-eq v0, v1, :cond_d

    .line 375
    new-instance v6, Landroidx/work/impl/utils/a/a$h;

    invoke-direct {v6}, Landroidx/work/impl/utils/a/a$h;-><init>()V

    .line 377
    :cond_4
    invoke-virtual {v6, v0}, Landroidx/work/impl/utils/a/a$h;->a(Landroidx/work/impl/utils/a/a$h;)V

    .line 378
    sget-object v1, Landroidx/work/impl/utils/a/a;->b:Landroidx/work/impl/utils/a/a$a;

    invoke-virtual {v1, p0, v0, v6}, Landroidx/work/impl/utils/a/a$a;->a(Landroidx/work/impl/utils/a/a;Landroidx/work/impl/utils/a/a$h;Landroidx/work/impl/utils/a/a$h;)Z

    move-result v0

    if-eqz v0, :cond_c

    move-wide v0, v2

    .line 380
    :cond_5
    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 383
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 384
    invoke-direct {p0, v6}, Landroidx/work/impl/utils/a/a;->a(Landroidx/work/impl/utils/a/a$h;)V

    .line 385
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 370
    :cond_6
    const-wide/16 v0, 0x0

    move-wide v4, v0

    goto :goto_3

    .line 390
    :cond_7
    iget-object v2, p0, Landroidx/work/impl/utils/a/a;->c:Ljava/lang/Object;

    .line 391
    if-eqz v2, :cond_8

    const/4 v0, 0x1

    :goto_4
    instance-of v1, v2, Landroidx/work/impl/utils/a/a$f;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    :goto_5
    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    .line 392
    invoke-direct {p0, v2}, Landroidx/work/impl/utils/a/a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 391
    :cond_8
    const/4 v0, 0x0

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    goto :goto_5

    .line 396
    :cond_a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v0, v4, v0

    .line 397
    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-gez v2, :cond_5

    .line 400
    invoke-direct {p0, v6}, Landroidx/work/impl/utils/a/a;->a(Landroidx/work/impl/utils/a/a$h;)V

    move-wide v2, v0

    .line 414
    :cond_b
    :goto_6
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_12

    .line 415
    iget-object v2, p0, Landroidx/work/impl/utils/a/a;->c:Ljava/lang/Object;

    .line 416
    if-eqz v2, :cond_e

    const/4 v0, 0x1

    :goto_7
    instance-of v1, v2, Landroidx/work/impl/utils/a/a$f;

    if-nez v1, :cond_f

    const/4 v1, 0x1

    :goto_8
    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    .line 417
    invoke-direct {p0, v2}, Landroidx/work/impl/utils/a/a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_2

    .line 405
    :cond_c
    iget-object v0, p0, Landroidx/work/impl/utils/a/a;->e:Landroidx/work/impl/utils/a/a$h;

    .line 406
    sget-object v1, Landroidx/work/impl/utils/a/a$h;->a:Landroidx/work/impl/utils/a/a$h;

    if-ne v0, v1, :cond_4

    .line 410
    :cond_d
    iget-object v0, p0, Landroidx/work/impl/utils/a/a;->c:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/work/impl/utils/a/a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_2

    .line 416
    :cond_e
    const/4 v0, 0x0

    goto :goto_7

    :cond_f
    const/4 v1, 0x0

    goto :goto_8

    .line 419
    :cond_10
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 420
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 422
    :cond_11
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v0, v4, v0

    move-wide v2, v0

    goto :goto_6

    .line 425
    :cond_12
    invoke-virtual {p0}, Landroidx/work/impl/utils/a/a;->toString()Ljava/lang/String;

    move-result-object v4

    .line 426
    invoke-virtual {p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Waited "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 430
    const-wide/16 v6, 0x3e8

    add-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-gez v1, :cond_17

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (plus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 433
    neg-long v2, v2

    .line 434
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    .line 435
    invoke-virtual {p3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    sub-long/2addr v2, v8

    .line 436
    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-eqz v1, :cond_13

    const-wide/16 v8, 0x3e8

    cmp-long v1, v2, v8

    if-lez v1, :cond_18

    :cond_13
    const/4 v1, 0x1

    .line 438
    :goto_9
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_15

    .line 439
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 440
    if-eqz v1, :cond_14

    .line 441
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 443
    :cond_14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 445
    :cond_15
    if-eqz v1, :cond_16

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " nanoseconds "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 449
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "delay)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 454
    :cond_17
    invoke-virtual {p0}, Landroidx/work/impl/utils/a/a;->isDone()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 455
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " but future completed as timeout expired"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 436
    :cond_18
    const/4 v1, 0x0

    goto/16 :goto_9

    .line 457
    :cond_19
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final isCancelled()Z
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Landroidx/work/impl/utils/a/a;->c:Ljava/lang/Object;

    .line 535
    instance-of v0, v0, Landroidx/work/impl/utils/a/a$b;

    return v0
.end method

.method public final isDone()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 528
    iget-object v3, p0, Landroidx/work/impl/utils/a/a;->c:Ljava/lang/Object;

    .line 529
    if-eqz v3, :cond_0

    move v0, v1

    :goto_0
    instance-of v3, v3, Landroidx/work/impl/utils/a/a$f;

    if-nez v3, :cond_1

    :goto_1
    and-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "[status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 974
    invoke-virtual {p0}, Landroidx/work/impl/utils/a/a;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 975
    const-string/jumbo v0, "CANCELLED"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    :goto_0
    const-string/jumbo v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 976
    :cond_0
    invoke-virtual {p0}, Landroidx/work/impl/utils/a/a;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 977
    invoke-direct {p0, v1}, Landroidx/work/impl/utils/a/a;->a(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 981
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroidx/work/impl/utils/a/a;->c()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 989
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 990
    const-string/jumbo v2, "PENDING, info=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 982
    :catch_0
    move-exception v0

    .line 985
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception thrown from implementation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 991
    :cond_2
    invoke-virtual {p0}, Landroidx/work/impl/utils/a/a;->isDone()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 992
    invoke-direct {p0, v1}, Landroidx/work/impl/utils/a/a;->a(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 994
    :cond_3
    const-string/jumbo v0, "PENDING"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
