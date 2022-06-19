.class abstract Lcom/google/android/gms/internal/ads/cqh;
.super Lcom/google/android/gms/internal/ads/cra;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/cra",
        "<TO;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/crt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/crt",
            "<+TI;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/crt;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/crt",
            "<+TI;>;TF;)V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cra;-><init>()V

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cor;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/crt;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cqh;->a:Lcom/google/android/gms/internal/ads/crt;

    .line 11
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/cor;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cqh;->b:Ljava/lang/Object;

    .line 12
    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/coe;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/crt",
            "<TI;>;",
            "Lcom/google/android/gms/internal/ads/coe",
            "<-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/crt",
            "<TO;>;"
        }
    .end annotation

    .prologue
    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cor;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/cqk;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/cqk;-><init>(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/coe;)V

    .line 7
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/crv;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/cqf;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/ads/crt;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 8
    return-object v0
.end method

.method static a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/crt",
            "<TI;>;",
            "Lcom/google/android/gms/internal/ads/cqt",
            "<-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/crt",
            "<TO;>;"
        }
    .end annotation

    .prologue
    .line 1
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/cor;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/cql;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/cql;-><init>(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/cqt;)V

    .line 3
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/crv;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/cqf;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/ads/crt;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 4
    return-object v0
.end method


# virtual methods
.method abstract a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TI;)TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end method

.method protected final a()Ljava/lang/String;
    .locals 5

    .prologue
    .line 51
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cqh;->a:Lcom/google/android/gms/internal/ads/crt;

    .line 52
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cqh;->b:Ljava/lang/Object;

    .line 53
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/cra;->a()Ljava/lang/String;

    move-result-object v3

    .line 54
    const-string/jumbo v0, ""

    .line 55
    if-eqz v1, :cond_0

    .line 56
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "inputFuture=["

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    :cond_0
    if-eqz v2, :cond_1

    .line 58
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xb

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "function=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    .line 59
    :cond_1
    if-eqz v3, :cond_3

    .line 60
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

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

    .line 61
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

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqh;->a:Lcom/google/android/gms/internal/ads/crt;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/cqf;->a(Ljava/util/concurrent/Future;)V

    .line 48
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/cqh;->a:Lcom/google/android/gms/internal/ads/crt;

    .line 49
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/cqh;->b:Ljava/lang/Object;

    .line 50
    return-void
.end method

.method public final run()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 13
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cqh;->a:Lcom/google/android/gms/internal/ads/crt;

    .line 14
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/cqh;->b:Ljava/lang/Object;

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cqf;->isCancelled()Z

    move-result v5

    if-nez v3, :cond_0

    move v2, v0

    :goto_0
    or-int/2addr v2, v5

    if-nez v4, :cond_1

    :goto_1
    or-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 46
    :goto_2
    return-void

    :cond_0
    move v2, v1

    .line 15
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 17
    :cond_2
    iput-object v6, p0, Lcom/google/android/gms/internal/ads/cqh;->a:Lcom/google/android/gms/internal/ads/crt;

    .line 18
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/crt;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/cqf;->a(Lcom/google/android/gms/internal/ads/crt;)Z

    goto :goto_2

    .line 22
    :cond_3
    :try_start_0
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 36
    :try_start_1
    invoke-virtual {p0, v4, v0}, Lcom/google/android/gms/internal/ads/cqh;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 37
    iput-object v6, p0, Lcom/google/android/gms/internal/ads/cqh;->b:Ljava/lang/Object;

    .line 45
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/cqh;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 25
    :catch_0
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/cqf;->cancel(Z)Z

    goto :goto_2

    .line 27
    :catch_1
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/cqf;->a(Ljava/lang/Throwable;)Z

    goto :goto_2

    .line 30
    :catch_2
    move-exception v0

    .line 31
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/cqf;->a(Ljava/lang/Throwable;)Z

    goto :goto_2

    .line 33
    :catch_3
    move-exception v0

    .line 34
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/cqf;->a(Ljava/lang/Throwable;)Z

    goto :goto_2

    .line 39
    :catch_4
    move-exception v0

    .line 40
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/cqf;->a(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    iput-object v6, p0, Lcom/google/android/gms/internal/ads/cqh;->b:Ljava/lang/Object;

    goto :goto_2

    .line 43
    :catchall_0
    move-exception v0

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/cqh;->b:Ljava/lang/Object;

    .line 44
    throw v0
.end method
