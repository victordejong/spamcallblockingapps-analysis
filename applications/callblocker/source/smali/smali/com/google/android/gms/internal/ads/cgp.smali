.class public final Lcom/google/android/gms/internal/ads/cgp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/common/util/e;

.field private final b:Ljava/lang/Object;

.field private volatile c:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private volatile d:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/util/e;)V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cgp;->b:Ljava/lang/Object;

    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/cgo;->a:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/cgp;->c:I

    .line 4
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/cgp;->d:J

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cgp;->a:Lcom/google/android/gms/common/util/e;

    .line 6
    return-void
.end method

.method private final a(II)V
    .locals 5

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cgp;->d()V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgp;->a:Lcom/google/android/gms/common/util/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v0

    .line 9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cgp;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 10
    :try_start_0
    iget v3, p0, Lcom/google/android/gms/internal/ads/cgp;->c:I

    if-eq v3, p1, :cond_0

    .line 11
    monitor-exit v2

    .line 15
    :goto_0
    return-void

    .line 12
    :cond_0
    iput p2, p0, Lcom/google/android/gms/internal/ads/cgp;->c:I

    .line 13
    iget v3, p0, Lcom/google/android/gms/internal/ads/cgp;->c:I

    sget v4, Lcom/google/android/gms/internal/ads/cgo;->c:I

    if-ne v3, v4, :cond_1

    .line 14
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/cgp;->d:J

    .line 15
    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 16
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final d()V
    .locals 8

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgp;->a:Lcom/google/android/gms/common/util/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v2

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cgp;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 19
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/cgp;->c:I

    sget v4, Lcom/google/android/gms/internal/ads/cgo;->c:I

    if-ne v0, v4, :cond_0

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/cgp;->d:J

    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->cO:Lcom/google/android/gms/internal/ads/ect;

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-gtz v0, :cond_0

    .line 23
    sget v0, Lcom/google/android/gms/internal/ads/cgo;->a:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/cgp;->c:I

    .line 24
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .prologue
    .line 25
    if-eqz p1, :cond_0

    .line 26
    sget v0, Lcom/google/android/gms/internal/ads/cgo;->a:I

    sget v1, Lcom/google/android/gms/internal/ads/cgo;->b:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/cgp;->a(II)V

    .line 28
    :goto_0
    return-void

    .line 27
    :cond_0
    sget v0, Lcom/google/android/gms/internal/ads/cgo;->b:I

    sget v1, Lcom/google/android/gms/internal/ads/cgo;->a:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/cgp;->a(II)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 3

    .prologue
    .line 29
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cgp;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 30
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cgp;->d()V

    .line 31
    iget v0, p0, Lcom/google/android/gms/internal/ads/cgp;->c:I

    sget v2, Lcom/google/android/gms/internal/ads/cgo;->b:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()Z
    .locals 3

    .prologue
    .line 33
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cgp;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 34
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cgp;->d()V

    .line 35
    iget v0, p0, Lcom/google/android/gms/internal/ads/cgp;->c:I

    sget v2, Lcom/google/android/gms/internal/ads/cgo;->c:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 37
    sget v0, Lcom/google/android/gms/internal/ads/cgo;->b:I

    sget v1, Lcom/google/android/gms/internal/ads/cgo;->c:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/cgp;->a(II)V

    .line 38
    return-void
.end method
