.class final Lcom/google/android/gms/internal/ads/dpq;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/dpn;

.field private b:Lcom/google/android/gms/internal/ads/dmd;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private final synthetic g:Lcom/google/android/gms/internal/ads/dpm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/dpm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dpq;->g:Lcom/google/android/gms/internal/ads/dpm;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dpq;->a()V

    return-void
.end method

.method private final a([BII)I
    .locals 4

    move v0, p3

    :goto_0
    if-lez v0, :cond_1

    .line 19
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dpq;->b()V

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dpq;->b:Lcom/google/android/gms/internal/ads/dmd;

    if-eqz v1, :cond_1

    .line 21
    iget v1, p0, Lcom/google/android/gms/internal/ads/dpq;->c:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/dpq;->d:I

    sub-int/2addr v1, v2

    .line 22
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-eqz p1, :cond_0

    .line 24
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dpq;->b:Lcom/google/android/gms/internal/ads/dmd;

    iget v3, p0, Lcom/google/android/gms/internal/ads/dpq;->d:I

    invoke-virtual {v2, p1, v3, p2, v1}, Lcom/google/android/gms/internal/ads/dlw;->a([BIII)V

    add-int/2addr p2, v1

    .line 26
    :cond_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/dpq;->d:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/gms/internal/ads/dpq;->d:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    sub-int/2addr p3, v0

    return p3
.end method

.method private final a()V
    .locals 3

    .line 41
    new-instance v0, Lcom/google/android/gms/internal/ads/dpn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dpq;->g:Lcom/google/android/gms/internal/ads/dpm;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dpn;-><init>(Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dpl;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dpq;->a:Lcom/google/android/gms/internal/ads/dpn;

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dpn;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dmd;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dpq;->b:Lcom/google/android/gms/internal/ads/dmd;

    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dlw;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dpq;->c:I

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/google/android/gms/internal/ads/dpq;->d:I

    .line 45
    iput v0, p0, Lcom/google/android/gms/internal/ads/dpq;->e:I

    return-void
.end method

.method private final b()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpq;->b:Lcom/google/android/gms/internal/ads/dmd;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/dpq;->d:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dpq;->c:I

    if-ne v0, v1, :cond_1

    .line 48
    iget v0, p0, Lcom/google/android/gms/internal/ads/dpq;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dpq;->e:I

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/google/android/gms/internal/ads/dpq;->d:I

    .line 50
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dpq;->a:Lcom/google/android/gms/internal/ads/dpn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dpn;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpq;->a:Lcom/google/android/gms/internal/ads/dpn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dpn;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dmd;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dpq;->b:Lcom/google/android/gms/internal/ads/dmd;

    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dlw;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dpq;->c:I

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 53
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dpq;->b:Lcom/google/android/gms/internal/ads/dmd;

    .line 54
    iput v0, p0, Lcom/google/android/gms/internal/ads/dpq;->c:I

    :cond_1
    return-void
.end method

.method private final c()I
    .locals 2

    .line 56
    iget v0, p0, Lcom/google/android/gms/internal/ads/dpq;->e:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dpq;->d:I

    add-int/2addr v0, v1

    .line 57
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dpq;->g:Lcom/google/android/gms/internal/ads/dpm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dlw;->b()I

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method


# virtual methods
.method public final available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dpq;->c()I

    move-result v0

    return v0
.end method

.method public final mark(I)V
    .locals 1

    .line 36
    iget p1, p0, Lcom/google/android/gms/internal/ads/dpq;->e:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/dpq;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/dpq;->f:I

    return-void
.end method

.method public final markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dpq;->b()V

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpq;->b:Lcom/google/android/gms/internal/ads/dmd;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 33
    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/dpq;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/dpq;->d:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dlw;->a(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final read([BII)I
    .locals 1

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    .line 6
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_2

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/dpq;->a([BII)I

    move-result p1

    if-nez p1, :cond_1

    if-gtz p3, :cond_0

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dpq;->c()I

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    const/4 p1, -0x1

    :cond_1
    return p1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final declared-synchronized reset()V
    .locals 3

    monitor-enter p0

    .line 38
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dpq;->a()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 39
    iget v2, p0, Lcom/google/android/gms/internal/ads/dpq;->f:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/dpq;->a([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final skip(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    move-wide p1, v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    long-to-int p2, p1

    .line 16
    invoke-direct {p0, v0, v1, p2}, Lcom/google/android/gms/internal/ads/dpq;->a([BII)I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
