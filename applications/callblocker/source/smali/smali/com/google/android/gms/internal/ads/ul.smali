.class final Lcom/google/android/gms/internal/ads/ul;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Ljava/lang/Object;

.field private volatile b:I

.field private volatile c:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ul;->a:Ljava/lang/Object;

    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/uk;->a:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/ul;->b:I

    .line 4
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ul;->c:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/ui;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ul;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .prologue
    .line 5
    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v2

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ul;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 9
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/ul;->b:I

    sget v4, Lcom/google/android/gms/internal/ads/uk;->c:I

    if-ne v0, v4, :cond_0

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/ul;->c:J

    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->cO:Lcom/google/android/gms/internal/ads/ect;

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-gtz v0, :cond_0

    .line 13
    sget v0, Lcom/google/android/gms/internal/ads/uk;->a:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/ul;->b:I

    .line 14
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v0

    .line 16
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ul;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 17
    :try_start_1
    iget v3, p0, Lcom/google/android/gms/internal/ads/ul;->b:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 18
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 22
    :goto_0
    return-void

    .line 14
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 19
    :cond_1
    const/4 v3, 0x3

    :try_start_3
    iput v3, p0, Lcom/google/android/gms/internal/ads/ul;->b:I

    .line 20
    iget v3, p0, Lcom/google/android/gms/internal/ads/ul;->b:I

    sget v4, Lcom/google/android/gms/internal/ads/uk;->c:I

    if-ne v3, v4, :cond_2

    .line 21
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ul;->c:J

    .line 22
    :cond_2
    monitor-exit v2

    goto :goto_0

    .line 23
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
