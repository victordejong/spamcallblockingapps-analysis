.class final Lcom/google/android/gms/internal/ads/csd;
.super Lcom/google/android/gms/internal/ads/cra;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/cra",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/crt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/crt",
            "<TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private b:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/crt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/crt",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cra;-><init>()V

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cor;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/crt;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/csd;->a:Lcom/google/android/gms/internal/ads/crt;

    .line 10
    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/crt;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/crt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/crt",
            "<TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lcom/google/android/gms/internal/ads/crt",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/csd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/csd;-><init>(Lcom/google/android/gms/internal/ads/crt;)V

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/csf;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/csf;-><init>(Lcom/google/android/gms/internal/ads/csd;)V

    .line 3
    invoke-interface {p4, v1, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/csd;->b:Ljava/util/concurrent/ScheduledFuture;

    .line 5
    sget-object v2, Lcom/google/android/gms/internal/ads/cqz;->a:Lcom/google/android/gms/internal/ads/cqz;

    .line 6
    invoke-interface {p0, v1, v2}, Lcom/google/android/gms/internal/ads/crt;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 7
    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/csd;)Lcom/google/android/gms/internal/ads/crt;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/csd;->a:Lcom/google/android/gms/internal/ads/crt;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/csd;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/csd;->b:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/csd;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/csd;->b:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 6

    .prologue
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/csd;->a:Lcom/google/android/gms/internal/ads/crt;

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/csd;->b:Ljava/util/concurrent/ScheduledFuture;

    .line 13
    if-eqz v0, :cond_1

    .line 14
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xe

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "inputFuture=["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    if-eqz v1, :cond_0

    .line 16
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    .line 17
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 18
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", remaining delay=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ms]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/csd;->a:Lcom/google/android/gms/internal/ads/crt;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/cqf;->a(Ljava/util/concurrent/Future;)V

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/csd;->b:Ljava/util/concurrent/ScheduledFuture;

    .line 23
    if-eqz v0, :cond_0

    .line 24
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 25
    :cond_0
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/csd;->a:Lcom/google/android/gms/internal/ads/crt;

    .line 26
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/csd;->b:Ljava/util/concurrent/ScheduledFuture;

    .line 27
    return-void
.end method
