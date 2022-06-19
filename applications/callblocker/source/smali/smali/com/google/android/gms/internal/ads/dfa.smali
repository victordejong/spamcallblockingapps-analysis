.class final Lcom/google/android/gms/internal/ads/dfa;
.super Ljava/io/InputStream;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/dfb;

.field private b:Lcom/google/android/gms/internal/ads/dbu;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private final synthetic g:Lcom/google/android/gms/internal/ads/dew;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/dew;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dfa;->g:Lcom/google/android/gms/internal/ads/dew;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dfa;->a()V

    .line 3
    return-void
.end method

.method private final a([BII)I
    .locals 5

    .prologue
    .line 17
    move v1, p3

    move v0, p2

    .line 18
    :goto_0
    if-lez v1, :cond_1

    .line 19
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dfa;->b()V

    .line 20
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dfa;->b:Lcom/google/android/gms/internal/ads/dbu;

    if-eqz v2, :cond_1

    .line 21
    iget v2, p0, Lcom/google/android/gms/internal/ads/dfa;->c:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/dfa;->d:I

    sub-int/2addr v2, v3

    .line 22
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 23
    if-eqz p1, :cond_0

    .line 24
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dfa;->b:Lcom/google/android/gms/internal/ads/dbu;

    iget v4, p0, Lcom/google/android/gms/internal/ads/dfa;->d:I

    invoke-virtual {v3, p1, v4, v0, v2}, Lcom/google/android/gms/internal/ads/dbi;->a([BIII)V

    .line 25
    add-int/2addr v0, v2

    .line 26
    :cond_0
    iget v3, p0, Lcom/google/android/gms/internal/ads/dfa;->d:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/android/gms/internal/ads/dfa;->d:I

    .line 27
    sub-int/2addr v1, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    sub-int v0, p3, v1

    return v0
.end method

.method private final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 42
    new-instance v0, Lcom/google/android/gms/internal/ads/dfb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dfa;->g:Lcom/google/android/gms/internal/ads/dew;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dfb;-><init>(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dez;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dfa;->a:Lcom/google/android/gms/internal/ads/dfb;

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dfa;->a:Lcom/google/android/gms/internal/ads/dfb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dfb;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dbu;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dfa;->b:Lcom/google/android/gms/internal/ads/dbu;

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dfa;->b:Lcom/google/android/gms/internal/ads/dbu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dfa;->c:I

    .line 45
    iput v3, p0, Lcom/google/android/gms/internal/ads/dfa;->d:I

    .line 46
    iput v3, p0, Lcom/google/android/gms/internal/ads/dfa;->e:I

    .line 47
    return-void
.end method

.method private final b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dfa;->b:Lcom/google/android/gms/internal/ads/dbu;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/dfa;->d:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dfa;->c:I

    if-ne v0, v1, :cond_0

    .line 49
    iget v0, p0, Lcom/google/android/gms/internal/ads/dfa;->e:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dfa;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dfa;->e:I

    .line 50
    iput v2, p0, Lcom/google/android/gms/internal/ads/dfa;->d:I

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dfa;->a:Lcom/google/android/gms/internal/ads/dfb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dfb;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dfa;->a:Lcom/google/android/gms/internal/ads/dfb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dfb;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dbu;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dfa;->b:Lcom/google/android/gms/internal/ads/dbu;

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dfa;->b:Lcom/google/android/gms/internal/ads/dbu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dfa;->c:I

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dfa;->b:Lcom/google/android/gms/internal/ads/dbu;

    .line 55
    iput v2, p0, Lcom/google/android/gms/internal/ads/dfa;->c:I

    goto :goto_0
.end method


# virtual methods
.method public final available()I
    .locals 2

    .prologue
    .line 34
    iget v0, p0, Lcom/google/android/gms/internal/ads/dfa;->e:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dfa;->d:I

    add-int/2addr v0, v1

    .line 35
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dfa;->g:Lcom/google/android/gms/internal/ads/dew;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v1

    sub-int v0, v1, v0

    return v0
.end method

.method public final mark(I)V
    .locals 2

    .prologue
    .line 37
    iget v0, p0, Lcom/google/android/gms/internal/ads/dfa;->e:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dfa;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dfa;->f:I

    .line 38
    return-void
.end method

.method public final markSupported()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public final read()I
    .locals 3

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dfa;->b()V

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dfa;->b:Lcom/google/android/gms/internal/ads/dbu;

    if-nez v0, :cond_0

    .line 32
    const/4 v0, -0x1

    .line 33
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dfa;->b:Lcom/google/android/gms/internal/ads/dbu;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dfa;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/dfa;->d:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dbi;->a(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public final read([BII)I
    .locals 1

    .prologue
    .line 4
    if-nez p1, :cond_0

    .line 5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6
    :cond_0
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_2

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 8
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/dfa;->a([BII)I

    move-result v0

    .line 9
    if-nez v0, :cond_3

    .line 10
    const/4 v0, -0x1

    .line 11
    :cond_3
    return v0
.end method

.method public final declared-synchronized reset()V
    .locals 3

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dfa;->a()V

    .line 40
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/ads/dfa;->f:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/dfa;->a([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final skip(J)J
    .locals 5

    .prologue
    const-wide/32 v0, 0x7fffffff

    .line 12
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 13
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 14
    :cond_0
    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    move-wide p1, v0

    .line 16
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    long-to-int v2, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/dfa;->a([BII)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
