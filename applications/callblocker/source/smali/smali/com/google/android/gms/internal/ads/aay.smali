.class public final Lcom/google/android/gms/internal/ads/aay;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dlh;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/drs;

.field private b:J

.field private c:J

.field private d:J

.field private e:J

.field private f:I

.field private g:Z


# direct methods
.method constructor <init>()V
    .locals 8

    .prologue
    .line 1
    const/16 v2, 0x3a98

    const/16 v3, 0x7530

    const-wide/16 v4, 0x9c4

    const-wide/16 v6, 0x1388

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/aay;-><init>(IIJJ)V

    .line 2
    return-void
.end method

.method private constructor <init>(IIJJ)V
    .locals 3

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/drs;

    const/4 v1, 0x1

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/drs;-><init>(ZI)V

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aay;->a:Lcom/google/android/gms/internal/ads/drs;

    .line 7
    const-wide/32 v0, 0xe4e1c0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/aay;->b:J

    .line 8
    const-wide/32 v0, 0x1c9c380

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/aay;->c:J

    .line 9
    const-wide/32 v0, 0x2625a0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/aay;->d:J

    .line 10
    const-wide/32 v0, 0x4c4b40

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/aay;->e:J

    .line 11
    return-void
.end method

.method private final a(Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/google/android/gms/internal/ads/aay;->f:I

    .line 45
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aay;->g:Z

    .line 46
    if-eqz p1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aay;->a:Lcom/google/android/gms/internal/ads/drs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/drs;->d()V

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/aay;->a(Z)V

    .line 13
    return-void
.end method

.method public final declared-synchronized a(I)V
    .locals 4

    .prologue
    .line 36
    monitor-enter p0

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :try_start_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/aay;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit p0

    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a([Lcom/google/android/gms/internal/ads/dli;Lcom/google/android/gms/internal/ads/dqv;Lcom/google/android/gms/internal/ads/drg;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/google/android/gms/internal/ads/aay;->f:I

    .line 15
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 16
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/ads/drg;->a(I)Lcom/google/android/gms/internal/ads/dre;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 17
    iget v1, p0, Lcom/google/android/gms/internal/ads/aay;->f:I

    aget-object v2, p1, v0

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/dli;->a()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/dsn;->b(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/aay;->f:I

    .line 18
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aay;->a:Lcom/google/android/gms/internal/ads/drs;

    iget v1, p0, Lcom/google/android/gms/internal/ads/aay;->f:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/drs;->a(I)V

    .line 20
    return-void
.end method

.method public final declared-synchronized a(J)Z
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 28
    monitor-enter p0

    .line 29
    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/aay;->c:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_2

    move v3, v0

    .line 33
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aay;->a:Lcom/google/android/gms/internal/ads/drs;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/drs;->e()I

    move-result v2

    iget v5, p0, Lcom/google/android/gms/internal/ads/aay;->f:I

    if-lt v2, v5, :cond_4

    move v2, v1

    .line 34
    :goto_1
    if-eq v3, v4, :cond_0

    if-ne v3, v1, :cond_1

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/aay;->g:Z

    if-eqz v3, :cond_1

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aay;->g:Z

    .line 35
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aay;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 31
    :cond_2
    :try_start_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/aay;->b:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v2, p1, v2

    if-gez v2, :cond_3

    move v3, v4

    goto :goto_0

    :cond_3
    move v3, v1

    goto :goto_0

    :cond_4
    move v2, v0

    .line 33
    goto :goto_1

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(JZ)Z
    .locals 5

    .prologue
    .line 26
    monitor-enter p0

    if-eqz p3, :cond_1

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/aay;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    .line 26
    :cond_1
    :try_start_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/aay;->d:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 27
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/aay;->a(Z)V

    .line 22
    return-void
.end method

.method public final declared-synchronized b(I)V
    .locals 4

    .prologue
    .line 38
    monitor-enter p0

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :try_start_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/aay;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/aay;->a(Z)V

    .line 24
    return-void
.end method

.method public final declared-synchronized c(I)V
    .locals 4

    .prologue
    .line 40
    monitor-enter p0

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :try_start_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/aay;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    return-void

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()Lcom/google/android/gms/internal/ads/drn;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aay;->a:Lcom/google/android/gms/internal/ads/drs;

    return-object v0
.end method

.method public final declared-synchronized d(I)V
    .locals 4

    .prologue
    .line 42
    monitor-enter p0

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :try_start_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/aay;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
