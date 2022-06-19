.class abstract Lcom/google/android/gms/internal/ads/cqe;
.super Lcom/google/android/gms/internal/ads/cra;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "X:",
        "Ljava/lang/Throwable;",
        "F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/cra",
        "<TV;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/crt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/crt",
            "<+TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TX;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/crt;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/crt",
            "<+TV;>;",
            "Ljava/lang/Class",
            "<TX;>;TF;)V"
        }
    .end annotation

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cra;-><init>()V

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cor;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/crt;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cqe;->a:Lcom/google/android/gms/internal/ads/crt;

    .line 6
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/cor;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cqe;->b:Ljava/lang/Class;

    .line 7
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/cor;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cqe;->c:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/crt;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/crt",
            "<+TV;>;",
            "Ljava/lang/Class",
            "<TX;>;",
            "Lcom/google/android/gms/internal/ads/cqt",
            "<-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/crt",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/cqd;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/cqd;-><init>(Lcom/google/android/gms/internal/ads/crt;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/cqt;)V

    .line 2
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/crv;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/cqf;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/ads/crt;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 3
    return-object v0
.end method


# virtual methods
.method abstract a(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TX;)TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end method

.method protected final a()Ljava/lang/String;
    .locals 6

    .prologue
    .line 55
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cqe;->a:Lcom/google/android/gms/internal/ads/crt;

    .line 56
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cqe;->b:Ljava/lang/Class;

    .line 57
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cqe;->c:Ljava/lang/Object;

    .line 58
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/cra;->a()Ljava/lang/String;

    move-result-object v4

    .line 59
    const-string/jumbo v0, ""

    .line 60
    if-eqz v1, :cond_0

    .line 61
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "inputFuture=["

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    :cond_0
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 63
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1d

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "exceptionType=["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "], fallback=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    .line 64
    :cond_1
    if-eqz v4, :cond_3

    .line 65
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract a(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqe;->a:Lcom/google/android/gms/internal/ads/crt;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/cqf;->a(Ljava/util/concurrent/Future;)V

    .line 68
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/cqe;->a:Lcom/google/android/gms/internal/ads/crt;

    .line 69
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/cqe;->b:Ljava/lang/Class;

    .line 70
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/cqe;->c:Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public final run()V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cqe;->a:Lcom/google/android/gms/internal/ads/crt;

    .line 10
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/cqe;->b:Ljava/lang/Class;

    .line 11
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/cqe;->c:Ljava/lang/Object;

    .line 12
    if-nez v2, :cond_1

    move v6, v1

    :goto_0
    if-nez v7, :cond_2

    move v5, v1

    :goto_1
    or-int/2addr v5, v6

    if-nez v8, :cond_3

    :goto_2
    or-int/2addr v1, v5

    if-nez v1, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cqf;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 54
    :cond_0
    :goto_3
    return-void

    :cond_1
    move v6, v4

    .line 12
    goto :goto_0

    :cond_2
    move v5, v4

    goto :goto_1

    :cond_3
    move v1, v4

    goto :goto_2

    .line 15
    :cond_4
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/cqe;->a:Lcom/google/android/gms/internal/ads/crt;

    .line 18
    :try_start_0
    instance-of v1, v2, Lcom/google/android/gms/internal/ads/csj;

    if-eqz v1, :cond_9

    .line 19
    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/internal/ads/csj;

    move-object v1, v0

    .line 20
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/csn;->a(Lcom/google/android/gms/internal/ads/csj;)Ljava/lang/Throwable;

    move-result-object v4

    .line 21
    :goto_4
    if-nez v4, :cond_8

    .line 22
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_5
    move-object v5, v1

    .line 32
    :goto_6
    if-nez v4, :cond_6

    .line 33
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/ads/cqf;->b(Ljava/lang/Object;)Z

    goto :goto_3

    .line 24
    :catch_0
    move-exception v1

    move-object v4, v1

    .line 25
    invoke-virtual {v4}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 26
    if-nez v1, :cond_5

    .line 27
    new-instance v1, Ljava/lang/NullPointerException;

    .line 28
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 29
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x23

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v6, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v6, "Future type "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " threw "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " without a cause"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    :cond_5
    move-object v4, v1

    move-object v5, v3

    .line 30
    goto :goto_6

    .line 31
    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v5, v3

    goto :goto_6

    .line 36
    :cond_6
    invoke-virtual {v7, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    .line 37
    if-nez v1, :cond_7

    .line 38
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/cqf;->a(Lcom/google/android/gms/internal/ads/crt;)Z

    goto/16 :goto_3

    .line 41
    :cond_7
    :try_start_1
    invoke-virtual {p0, v8, v4}, Lcom/google/android/gms/internal/ads/cqe;->a(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 42
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/cqe;->b:Ljava/lang/Class;

    .line 43
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/cqe;->c:Ljava/lang/Object;

    .line 53
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/cqe;->a(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 45
    :catch_2
    move-exception v1

    .line 46
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/cqf;->a(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/cqe;->b:Ljava/lang/Class;

    .line 48
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/cqe;->c:Ljava/lang/Object;

    goto/16 :goto_3

    .line 50
    :catchall_0
    move-exception v1

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/cqe;->b:Ljava/lang/Class;

    .line 51
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/cqe;->c:Ljava/lang/Object;

    .line 52
    throw v1

    :cond_8
    move-object v1, v3

    goto/16 :goto_5

    :cond_9
    move-object v4, v3

    goto/16 :goto_4
.end method
