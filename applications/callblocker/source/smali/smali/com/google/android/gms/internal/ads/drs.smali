.class public final Lcom/google/android/gms/internal/ads/drs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/drn;


# instance fields
.field private final a:Z

.field private final b:I

.field private final c:[B

.field private final d:[Lcom/google/android/gms/internal/ads/drk;

.field private e:I

.field private f:I

.field private g:I

.field private h:[Lcom/google/android/gms/internal/ads/drk;


# direct methods
.method public constructor <init>(ZI)V
    .locals 3

    .prologue
    .line 1
    const/4 v0, 0x1

    const/high16 v1, 0x10000

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/drs;-><init>(ZII)V

    .line 2
    return-void
.end method

.method private constructor <init>(ZII)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/drz;->a(Z)V

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/drz;->a(Z)V

    .line 6
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/drs;->a:Z

    .line 7
    const/high16 v0, 0x10000

    iput v0, p0, Lcom/google/android/gms/internal/ads/drs;->b:I

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/drs;->g:I

    .line 9
    const/16 v0, 0x64

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/drk;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/drs;->h:[Lcom/google/android/gms/internal/ads/drk;

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/drs;->c:[B

    .line 11
    new-array v0, v1, [Lcom/google/android/gms/internal/ads/drk;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/drs;->d:[Lcom/google/android/gms/internal/ads/drk;

    .line 12
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/google/android/gms/internal/ads/drk;
    .locals 4

    .prologue
    .line 21
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/drs;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/drs;->f:I

    .line 22
    iget v0, p0, Lcom/google/android/gms/internal/ads/drs;->g:I

    if-lez v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drs;->h:[Lcom/google/android/gms/internal/ads/drk;

    iget v1, p0, Lcom/google/android/gms/internal/ads/drs;->g:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/drs;->g:I

    aget-object v0, v0, v1

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/drs;->h:[Lcom/google/android/gms/internal/ads/drk;

    iget v2, p0, Lcom/google/android/gms/internal/ads/drs;->g:I

    const/4 v3, 0x0

    aput-object v3, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :goto_0
    monitor-exit p0

    return-object v0

    .line 25
    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/ads/drk;

    iget v1, p0, Lcom/google/android/gms/internal/ads/drs;->b:I

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/drk;-><init>([BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)V
    .locals 1

    .prologue
    .line 16
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/drs;->e:I

    if-ge p1, v0, :cond_1

    const/4 v0, 0x1

    .line 17
    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/drs;->e:I

    .line 18
    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/drs;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_0
    monitor-exit p0

    return-void

    .line 16
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/drk;)V
    .locals 2

    .prologue
    .line 27
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drs;->d:[Lcom/google/android/gms/internal/ads/drk;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drs;->d:[Lcom/google/android/gms/internal/ads/drk;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/drs;->a([Lcom/google/android/gms/internal/ads/drk;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p0

    return-void

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a([Lcom/google/android/gms/internal/ads/drk;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 30
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/drs;->g:I

    array-length v2, p1

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/drs;->h:[Lcom/google/android/gms/internal/ads/drk;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drs;->h:[Lcom/google/android/gms/internal/ads/drk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/drs;->h:[Lcom/google/android/gms/internal/ads/drk;

    array-length v2, v2

    shl-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/ads/drs;->g:I

    array-length v4, p1

    add-int/2addr v3, v4

    .line 32
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 33
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/drk;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/drs;->h:[Lcom/google/android/gms/internal/ads/drk;

    .line 34
    :cond_0
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v4, p1, v2

    .line 35
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/drk;->a:[B

    if-eqz v0, :cond_1

    iget-object v0, v4, Lcom/google/android/gms/internal/ads/drk;->a:[B

    array-length v0, v0

    iget v5, p0, Lcom/google/android/gms/internal/ads/drs;->b:I

    if-ne v0, v5, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/drz;->a(Z)V

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drs;->h:[Lcom/google/android/gms/internal/ads/drk;

    iget v5, p0, Lcom/google/android/gms/internal/ads/drs;->g:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/android/gms/internal/ads/drs;->g:I

    aput-object v4, v0, v5

    .line 37
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 35
    goto :goto_1

    .line 38
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/drs;->f:I

    array-length v1, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/drs;->f:I

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit p0

    return-void

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 4

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/drs;->e:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/drs;->b:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dsn;->a(II)I

    move-result v0

    .line 42
    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/ads/drs;->f:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 43
    iget v1, p0, Lcom/google/android/gms/internal/ads/drs;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    .line 47
    :goto_0
    monitor-exit p0

    return-void

    .line 45
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/drs;->h:[Lcom/google/android/gms/internal/ads/drk;

    iget v2, p0, Lcom/google/android/gms/internal/ads/drs;->g:I

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 46
    iput v0, p0, Lcom/google/android/gms/internal/ads/drs;->g:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/google/android/gms/internal/ads/drs;->b:I

    return v0
.end method

.method public final declared-synchronized d()V
    .locals 1

    .prologue
    .line 13
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/drs;->a:Z

    if-eqz v0, :cond_0

    .line 14
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/drs;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :cond_0
    monitor-exit p0

    return-void

    .line 13
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()I
    .locals 2

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/drs;->f:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/drs;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
