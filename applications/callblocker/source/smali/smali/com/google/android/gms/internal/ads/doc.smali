.class final Lcom/google/android/gms/internal/ads/doc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dsk;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/dsk;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dsk;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/doc;->a:Lcom/google/android/gms/internal/ads/dsk;

    .line 3
    return-void
.end method

.method private final b(Lcom/google/android/gms/internal/ads/dng;)J
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 32
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doc;->a:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    invoke-interface {p1, v1, v0, v5}, Lcom/google/android/gms/internal/ads/dng;->c([BII)V

    .line 33
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doc;->a:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    aget-byte v1, v1, v0

    and-int/lit16 v4, v1, 0xff

    .line 34
    if-nez v4, :cond_0

    .line 35
    const-wide/high16 v0, -0x8000000000000000L

    .line 48
    :goto_0
    return-wide v0

    .line 36
    :cond_0
    const/16 v1, 0x80

    move v2, v0

    move v3, v1

    .line 38
    :goto_1
    and-int v1, v4, v3

    if-nez v1, :cond_1

    .line 39
    shr-int/lit8 v3, v3, 0x1

    .line 40
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 41
    :cond_1
    xor-int/lit8 v1, v3, -0x1

    and-int/2addr v1, v4

    .line 42
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/doc;->a:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    invoke-interface {p1, v3, v5, v2}, Lcom/google/android/gms/internal/ads/dng;->c([BII)V

    .line 43
    :goto_2
    if-ge v0, v2, :cond_2

    .line 44
    shl-int/lit8 v1, v1, 0x8

    .line 45
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/doc;->a:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v1, v3

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 47
    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/doc;->b:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/doc;->b:I

    .line 48
    int-to-long v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/dng;)Z
    .locals 14

    .prologue
    const-wide/16 v12, -0x1

    const-wide/high16 v10, -0x8000000000000000L

    const/4 v7, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dng;->c()J

    move-result-wide v2

    .line 5
    cmp-long v0, v2, v12

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x400

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    .line 6
    :cond_0
    const-wide/16 v0, 0x400

    :goto_0
    long-to-int v6, v0

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doc;->a:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    invoke-interface {p1, v0, v4, v7}, Lcom/google/android/gms/internal/ads/dng;->c([BII)V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doc;->a:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dsk;->j()J

    move-result-wide v0

    .line 9
    iput v7, p0, Lcom/google/android/gms/internal/ads/doc;->b:I

    .line 10
    :goto_1
    const-wide/32 v8, 0x1a45dfa3

    cmp-long v7, v0, v8

    if-eqz v7, :cond_3

    .line 11
    iget v7, p0, Lcom/google/android/gms/internal/ads/doc;->b:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/android/gms/internal/ads/doc;->b:I

    if-ne v7, v6, :cond_2

    move v0, v4

    .line 31
    :goto_2
    return v0

    :cond_1
    move-wide v0, v2

    .line 6
    goto :goto_0

    .line 13
    :cond_2
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/doc;->a:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    invoke-interface {p1, v7, v4, v5}, Lcom/google/android/gms/internal/ads/dng;->c([BII)V

    .line 14
    const/16 v7, 0x8

    shl-long/2addr v0, v7

    const-wide/16 v8, -0x100

    and-long/2addr v0, v8

    .line 15
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/doc;->a:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    aget-byte v7, v7, v4

    and-int/lit16 v7, v7, 0xff

    int-to-long v8, v7

    or-long/2addr v0, v8

    goto :goto_1

    .line 16
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/doc;->b(Lcom/google/android/gms/internal/ads/dng;)J

    move-result-wide v0

    .line 17
    iget v6, p0, Lcom/google/android/gms/internal/ads/doc;->b:I

    int-to-long v6, v6

    .line 18
    cmp-long v8, v0, v10

    if-eqz v8, :cond_4

    cmp-long v8, v2, v12

    if-eqz v8, :cond_6

    add-long v8, v6, v0

    cmp-long v2, v8, v2

    if-ltz v2, :cond_6

    :cond_4
    move v0, v4

    .line 19
    goto :goto_2

    .line 27
    :cond_5
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-eqz v8, :cond_6

    .line 28
    long-to-int v8, v2

    invoke-interface {p1, v8}, Lcom/google/android/gms/internal/ads/dng;->c(I)V

    .line 29
    iget v8, p0, Lcom/google/android/gms/internal/ads/doc;->b:I

    int-to-long v8, v8

    add-long/2addr v2, v8

    long-to-int v2, v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/doc;->b:I

    .line 20
    :cond_6
    iget v2, p0, Lcom/google/android/gms/internal/ads/doc;->b:I

    int-to-long v2, v2

    add-long v8, v6, v0

    cmp-long v2, v2, v8

    if-gez v2, :cond_9

    .line 21
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/doc;->b(Lcom/google/android/gms/internal/ads/dng;)J

    move-result-wide v2

    .line 22
    cmp-long v2, v2, v10

    if-nez v2, :cond_7

    move v0, v4

    .line 23
    goto :goto_2

    .line 24
    :cond_7
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/doc;->b(Lcom/google/android/gms/internal/ads/dng;)J

    move-result-wide v2

    .line 25
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-ltz v8, :cond_8

    const-wide/32 v8, 0x7fffffff

    cmp-long v8, v2, v8

    if-lez v8, :cond_5

    :cond_8
    move v0, v4

    .line 26
    goto :goto_2

    .line 31
    :cond_9
    iget v2, p0, Lcom/google/android/gms/internal/ads/doc;->b:I

    int-to-long v2, v2

    add-long/2addr v0, v6

    cmp-long v0, v2, v0

    if-nez v0, :cond_a

    move v0, v5

    goto :goto_2

    :cond_a
    move v0, v4

    goto :goto_2
.end method
