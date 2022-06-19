.class final Lcom/google/android/gms/internal/ads/csf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/csd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/csd",
            "<TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/csd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/csd",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/csf;->a:Lcom/google/android/gms/internal/ads/csd;

    .line 3
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/csf;->a:Lcom/google/android/gms/internal/ads/csd;

    .line 5
    if-nez v2, :cond_1

    .line 26
    :cond_0
    :goto_0
    return-void

    .line 7
    :cond_1
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/csd;->a(Lcom/google/android/gms/internal/ads/csd;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v3

    .line 8
    if-eqz v3, :cond_0

    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/csf;->a:Lcom/google/android/gms/internal/ads/csd;

    .line 11
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/crt;->isDone()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/cqf;->a(Lcom/google/android/gms/internal/ads/crt;)Z

    goto :goto_0

    .line 13
    :cond_2
    :try_start_0
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/csd;->b(Lcom/google/android/gms/internal/ads/csd;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 14
    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/csd;->a(Lcom/google/android/gms/internal/ads/csd;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 15
    const-string/jumbo v1, "Timed out"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    if-eqz v0, :cond_3

    .line 17
    :try_start_1
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 18
    const-wide/16 v6, 0xa

    cmp-long v0, v4, v6

    if-lez v0, :cond_3

    .line 19
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x42

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, " (timeout delayed by "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " ms after scheduled time)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 20
    :cond_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 21
    :try_start_2
    new-instance v1, Lcom/google/android/gms/internal/ads/cse;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v4}, Lcom/google/android/gms/internal/ads/cse;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/csc;)V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/cqf;->a(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 25
    invoke-interface {v3, v8}, Lcom/google/android/gms/internal/ads/crt;->cancel(Z)Z

    goto/16 :goto_0

    .line 23
    :catchall_0
    move-exception v0

    :try_start_3
    new-instance v4, Lcom/google/android/gms/internal/ads/cse;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lcom/google/android/gms/internal/ads/cse;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/csc;)V

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/cqf;->a(Ljava/lang/Throwable;)Z

    .line 24
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 27
    :catchall_1
    move-exception v0

    invoke-interface {v3, v8}, Lcom/google/android/gms/internal/ads/crt;->cancel(Z)Z

    .line 28
    throw v0
.end method
