.class public final Lcom/google/android/gms/internal/ads/amt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/util/concurrent/ScheduledExecutorService;

.field private final c:Lcom/google/android/gms/internal/ads/crt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/amn;",
            ">;"
        }
    .end annotation
.end field

.field private volatile d:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/crt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/amn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/amt;->d:Z

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/amt;->a:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/amt;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/amt;->c:Lcom/google/android/gms/internal/ads/crt;

    .line 6
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/amt;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/amt;->c()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/amt;Ljava/util/List;Lcom/google/android/gms/internal/ads/crh;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/amt;->a(Ljava/util/List;Lcom/google/android/gms/internal/ads/crh;)V

    return-void
.end method

.method private final a(Ljava/util/List;Lcom/google/android/gms/internal/ads/crh;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/ads/crt",
            "<+",
            "Lcom/google/android/gms/internal/ads/amh;",
            ">;>;",
            "Lcom/google/android/gms/internal/ads/crh",
            "<",
            "Lcom/google/android/gms/internal/ads/amh;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 9
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/amt;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/ams;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/ams;-><init>(Lcom/google/android/gms/internal/ads/crh;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 20
    :goto_0
    return-void

    .line 12
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/crt;

    .line 14
    const-class v3, Ljava/lang/Throwable;

    new-instance v4, Lcom/google/android/gms/internal/ads/amv;

    invoke-direct {v4, p2}, Lcom/google/android/gms/internal/ads/amv;-><init>(Lcom/google/android/gms/internal/ads/crh;)V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/amt;->a:Ljava/util/concurrent/Executor;

    .line 15
    invoke-static {v1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v1

    .line 16
    new-instance v3, Lcom/google/android/gms/internal/ads/amu;

    invoke-direct {v3, p0, p2, v0}, Lcom/google/android/gms/internal/ads/amu;-><init>(Lcom/google/android/gms/internal/ads/amt;Lcom/google/android/gms/internal/ads/crh;Lcom/google/android/gms/internal/ads/crt;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/amt;->a:Ljava/util/concurrent/Executor;

    .line 17
    invoke-static {v1, v3, v0}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    move-object v1, v0

    .line 18
    goto :goto_1

    .line 19
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/amz;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/amz;-><init>(Lcom/google/android/gms/internal/ads/amt;Lcom/google/android/gms/internal/ads/crh;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/amt;->a:Ljava/util/concurrent/Executor;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/crh;Ljava/util/concurrent/Executor;)V

    goto :goto_0
.end method

.method private final c()V
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lcom/google/android/gms/internal/ads/yg;->e:Lcom/google/android/gms/internal/ads/crs;

    new-instance v1, Lcom/google/android/gms/internal/ads/amx;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/amx;-><init>(Lcom/google/android/gms/internal/ads/amt;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/crs;->execute(Ljava/lang/Runnable;)V

    .line 23
    return-void
.end method


# virtual methods
.method final synthetic a(Lcom/google/android/gms/internal/ads/crh;Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/amh;)Lcom/google/android/gms/internal/ads/crt;
    .locals 4

    .prologue
    .line 25
    if-eqz p3, :cond_0

    .line 26
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/crh;->a(Ljava/lang/Object;)V

    .line 27
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/ba;->a:Lcom/google/android/gms/internal/ads/ab;

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/amt;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 29
    invoke-static {p2, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/crh;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/crh",
            "<",
            "Lcom/google/android/gms/internal/ads/amh;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/amt;->c:Lcom/google/android/gms/internal/ads/crt;

    new-instance v1, Lcom/google/android/gms/internal/ads/amw;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/amw;-><init>(Lcom/google/android/gms/internal/ads/amt;Lcom/google/android/gms/internal/ads/crh;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/amt;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/crh;Ljava/util/concurrent/Executor;)V

    .line 8
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/amt;->d:Z

    return v0
.end method

.method final synthetic b()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/amt;->d:Z

    return-void
.end method
