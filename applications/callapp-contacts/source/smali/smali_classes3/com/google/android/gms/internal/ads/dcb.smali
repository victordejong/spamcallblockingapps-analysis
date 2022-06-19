.class final Lcom/google/android/gms/internal/ads/dcb;
.super Lcom/google/android/gms/internal/ads/dbb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/dbb<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/dbt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dbt<",
            "TV;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/dbt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "TV;>;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dbb;-><init>()V

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cyg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/dbt;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dcb;->a:Lcom/google/android/gms/internal/ads/dbt;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/dbt;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/dcb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/dcb;-><init>(Lcom/google/android/gms/internal/ads/dbt;)V

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/dcd;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/dcd;-><init>(Lcom/google/android/gms/internal/ads/dcb;)V

    .line 3
    invoke-interface {p4, v1, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/dcb;->b:Ljava/util/concurrent/ScheduledFuture;

    .line 5
    sget-object p1, Lcom/google/android/gms/internal/ads/dba;->zzidl:Lcom/google/android/gms/internal/ads/dba;

    .line 6
    invoke-interface {p0, v1, p1}, Lcom/google/android/gms/internal/ads/dbt;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dcb;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/dcb;->a:Lcom/google/android/gms/internal/ads/dbt;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/dcb;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/dcb;->b:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/dcb;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dcb;->b:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 6

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dcb;->a:Lcom/google/android/gms/internal/ads/dbt;

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dcb;->b:Ljava/util/concurrent/ScheduledFuture;

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

    const-string v2, "inputFuture=["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    .line 16
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 18
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", remaining delay=["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final b()V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dcb;->a:Lcom/google/android/gms/internal/ads/dbt;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/dag;->a(Ljava/util/concurrent/Future;)V

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dcb;->b:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 24
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dcb;->a:Lcom/google/android/gms/internal/ads/dbt;

    .line 26
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dcb;->b:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
