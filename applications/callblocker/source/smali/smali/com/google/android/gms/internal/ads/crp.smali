.class abstract Lcom/google/android/gms/internal/ads/crp;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Ljava/lang/Runnable;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Runnable;

.field private static final b:Ljava/lang/Runnable;

.field private static final c:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    new-instance v0, Lcom/google/android/gms/internal/ads/crq;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/crq;-><init>(Lcom/google/android/gms/internal/ads/crr;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/crp;->a:Ljava/lang/Runnable;

    .line 82
    new-instance v0, Lcom/google/android/gms/internal/ads/crq;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/crq;-><init>(Lcom/google/android/gms/internal/ads/crr;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/crp;->b:Ljava/lang/Runnable;

    .line 83
    new-instance v0, Lcom/google/android/gms/internal/ads/crq;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/crq;-><init>(Lcom/google/android/gms/internal/ads/crr;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/crp;->c:Ljava/lang/Runnable;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation
.end method

.method abstract a()Z
.end method

.method abstract c()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method abstract d()Ljava/lang/String;
.end method

.method final e()V
    .locals 5

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/crp;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 61
    instance-of v2, v1, Ljava/lang/Thread;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/android/gms/internal/ads/crp;->b:Ljava/lang/Runnable;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/crp;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    :try_start_0
    move-object v0, v1

    check-cast v0, Ljava/lang/Thread;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    sget-object v2, Lcom/google/android/gms/internal/ads/crp;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/crp;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 64
    sget-object v3, Lcom/google/android/gms/internal/ads/crp;->c:Ljava/lang/Runnable;

    if-ne v2, v3, :cond_0

    .line 65
    check-cast v1, Ljava/lang/Thread;

    invoke-static {v1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 71
    :cond_0
    return-void

    .line 67
    :catchall_0
    move-exception v2

    move-object v3, v2

    sget-object v2, Lcom/google/android/gms/internal/ads/crp;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/crp;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 68
    sget-object v4, Lcom/google/android/gms/internal/ads/crp;->c:Ljava/lang/Runnable;

    if-ne v2, v4, :cond_1

    .line 69
    check-cast v1, Ljava/lang/Thread;

    invoke-static {v1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 70
    :cond_1
    throw v3
.end method

.method public final run()V
    .locals 11

    .prologue
    const/16 v10, 0x3e8

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    .line 3
    invoke-virtual {p0, v5, v8}, Lcom/google/android/gms/internal/ads/crp;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/crp;->a()Z

    move-result v0

    if-nez v0, :cond_6

    move v1, v2

    .line 7
    :goto_1
    if-eqz v1, :cond_1c

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/crp;->c()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    move-object v4, v0

    .line 9
    :goto_2
    sget-object v0, Lcom/google/android/gms/internal/ads/crp;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v8, v0}, Lcom/google/android/gms/internal/ads/crp;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/crp;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    move v6, v3

    move v7, v3

    .line 13
    :goto_3
    sget-object v9, Lcom/google/android/gms/internal/ads/crp;->b:Ljava/lang/Runnable;

    if-eq v0, v9, :cond_2

    sget-object v9, Lcom/google/android/gms/internal/ads/crp;->c:Ljava/lang/Runnable;

    if-ne v0, v9, :cond_9

    .line 14
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 15
    if-le v6, v10, :cond_8

    .line 16
    sget-object v9, Lcom/google/android/gms/internal/ads/crp;->c:Ljava/lang/Runnable;

    if-eq v0, v9, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/ads/crp;->b:Ljava/lang/Runnable;

    sget-object v9, Lcom/google/android/gms/internal/ads/crp;->c:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v9}, Lcom/google/android/gms/internal/ads/crp;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz v7, :cond_7

    :cond_4
    move v0, v2

    .line 18
    :goto_4
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    move v7, v0

    .line 20
    :cond_5
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/crp;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    goto :goto_3

    :cond_6
    move v1, v3

    .line 5
    goto :goto_1

    :cond_7
    move v0, v3

    .line 17
    goto :goto_4

    .line 19
    :cond_8
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_5

    .line 21
    :cond_9
    if-eqz v7, :cond_a

    .line 22
    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V

    .line 23
    :cond_a
    if-eqz v1, :cond_0

    .line 24
    invoke-virtual {p0, v4, v5}, Lcom/google/android/gms/internal/ads/crp;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 25
    :catch_0
    move-exception v7

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/ads/crp;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v8, v0}, Lcom/google/android/gms/internal/ads/crp;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/crp;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    move v4, v3

    move v6, v3

    .line 30
    :goto_6
    sget-object v9, Lcom/google/android/gms/internal/ads/crp;->b:Ljava/lang/Runnable;

    if-eq v0, v9, :cond_b

    sget-object v9, Lcom/google/android/gms/internal/ads/crp;->c:Ljava/lang/Runnable;

    if-ne v0, v9, :cond_11

    .line 31
    :cond_b
    add-int/lit8 v4, v4, 0x1

    .line 32
    if-le v4, v10, :cond_10

    .line 33
    sget-object v9, Lcom/google/android/gms/internal/ads/crp;->c:Ljava/lang/Runnable;

    if-eq v0, v9, :cond_c

    sget-object v0, Lcom/google/android/gms/internal/ads/crp;->b:Ljava/lang/Runnable;

    sget-object v9, Lcom/google/android/gms/internal/ads/crp;->c:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v9}, Lcom/google/android/gms/internal/ads/crp;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 34
    :cond_c
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_d

    if-eqz v6, :cond_f

    :cond_d
    move v0, v2

    .line 35
    :goto_7
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    move v6, v0

    .line 37
    :cond_e
    :goto_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/crp;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    goto :goto_6

    :cond_f
    move v0, v3

    .line 34
    goto :goto_7

    .line 36
    :cond_10
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_8

    .line 38
    :cond_11
    if-eqz v6, :cond_12

    .line 39
    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V

    .line 40
    :cond_12
    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {p0, v5, v7}, Lcom/google/android/gms/internal/ads/crp;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 42
    :catchall_0
    move-exception v7

    sget-object v0, Lcom/google/android/gms/internal/ads/crp;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v8, v0}, Lcom/google/android/gms/internal/ads/crp;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/crp;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    move v4, v3

    move v6, v3

    .line 46
    :goto_9
    sget-object v9, Lcom/google/android/gms/internal/ads/crp;->b:Ljava/lang/Runnable;

    if-eq v0, v9, :cond_13

    sget-object v9, Lcom/google/android/gms/internal/ads/crp;->c:Ljava/lang/Runnable;

    if-ne v0, v9, :cond_19

    .line 47
    :cond_13
    add-int/lit8 v4, v4, 0x1

    .line 48
    if-le v4, v10, :cond_18

    .line 49
    sget-object v9, Lcom/google/android/gms/internal/ads/crp;->c:Ljava/lang/Runnable;

    if-eq v0, v9, :cond_14

    sget-object v0, Lcom/google/android/gms/internal/ads/crp;->b:Ljava/lang/Runnable;

    sget-object v9, Lcom/google/android/gms/internal/ads/crp;->c:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v9}, Lcom/google/android/gms/internal/ads/crp;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 50
    :cond_14
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_15

    if-eqz v6, :cond_17

    :cond_15
    move v0, v2

    .line 51
    :goto_a
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    move v6, v0

    .line 53
    :cond_16
    :goto_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/crp;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    goto :goto_9

    :cond_17
    move v0, v3

    .line 50
    goto :goto_a

    .line 52
    :cond_18
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_b

    .line 54
    :cond_19
    if-eqz v6, :cond_1a

    .line 55
    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V

    .line 56
    :cond_1a
    if-eqz v1, :cond_1b

    .line 57
    invoke-virtual {p0, v5, v5}, Lcom/google/android/gms/internal/ads/crp;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 58
    :cond_1b
    throw v7

    :cond_1c
    move-object v4, v5

    goto/16 :goto_2
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/crp;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 73
    sget-object v1, Lcom/google/android/gms/internal/ads/crp;->a:Ljava/lang/Runnable;

    if-ne v0, v1, :cond_0

    .line 74
    const-string/jumbo v0, "running=[DONE]"

    .line 80
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/crp;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 75
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/crp;->b:Ljava/lang/Runnable;

    if-ne v0, v1, :cond_1

    .line 76
    const-string/jumbo v0, "running=[INTERRUPTED]"

    goto :goto_0

    .line 77
    :cond_1
    instance-of v1, v0, Ljava/lang/Thread;

    if-eqz v1, :cond_2

    .line 78
    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "running=[RUNNING ON "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 79
    :cond_2
    const-string/jumbo v0, "running=[NOT STARTED YET]"

    goto :goto_0
.end method
