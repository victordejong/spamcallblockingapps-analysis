.class public final Lcom/google/android/gms/internal/ads/amc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/arg;
.implements Lcom/google/android/gms/internal/ads/dtr;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cgr;

.field private final b:Lcom/google/android/gms/internal/ads/aqh;

.field private final c:Lcom/google/android/gms/internal/ads/ark;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/aqh;Lcom/google/android/gms/internal/ads/ark;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/amc;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/amc;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/amc;->a:Lcom/google/android/gms/internal/ads/cgr;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/amc;->b:Lcom/google/android/gms/internal/ads/aqh;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/amc;->c:Lcom/google/android/gms/internal/ads/ark;

    .line 7
    return-void
.end method

.method private final b()V
    .locals 3

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/amc;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/amc;->b:Lcom/google/android/gms/internal/ads/aqh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aqh;->a()V

    .line 20
    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    .prologue
    .line 8
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/amc;->a:Lcom/google/android/gms/internal/ads/cgr;

    iget v0, v0, Lcom/google/android/gms/internal/ads/cgr;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/amc;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_0
    monitor-exit p0

    return-void

    .line 8
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dtt;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/amc;->a:Lcom/google/android/gms/internal/ads/cgr;

    iget v0, v0, Lcom/google/android/gms/internal/ads/cgr;->e:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/dtt;->j:Z

    if-eqz v0, :cond_0

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/amc;->b()V

    .line 13
    :cond_0
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/dtt;->j:Z

    if-eqz v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/amc;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/amc;->c:Lcom/google/android/gms/internal/ads/ark;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ark;->a()V

    .line 17
    :cond_1
    return-void
.end method
