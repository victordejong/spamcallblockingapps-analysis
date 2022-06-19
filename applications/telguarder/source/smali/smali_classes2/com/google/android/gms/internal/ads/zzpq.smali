.class public final Lcom/google/android/gms/internal/ads/zzpq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# instance fields
.field private data:[B

.field private zzbki:I

.field private zzbkj:I

.field private zzbkk:I


# direct methods
.method public constructor <init>([BII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpq;->data:[B

    .line 4
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzbki:I

    .line 5
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzbkk:I

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzbkj:I

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpq;->zzjh()V

    return-void
.end method

.method private final zzbn(I)Z
    .locals 3

    const/4 v0, 0x2

    if-gt v0, p1, :cond_0

    .line 56
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzbkk:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpq;->data:[B

    aget-byte v1, v0, p1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, p1, -0x2

    aget-byte v1, v0, v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    aget-byte p1, v0, p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final zzjg()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 53
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpq;->zzjd()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    shl-int v3, v2, v1

    sub-int/2addr v3, v2

    if-lez v1, :cond_1

    .line 55
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzpq;->zzbl(I)I

    move-result v0

    :cond_1
    add-int/2addr v3, v0

    return v3
.end method

.method private final zzjh()V
    .locals 3

    .line 57
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzbki:I

    if-ltz v0, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzbkj:I

    if-ltz v1, :cond_1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzbkk:I

    if-lt v0, v2, :cond_0

    if-ne v0, v2, :cond_1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpg;->checkState(Z)V

    return-void
.end method


# virtual methods
.method public final zzbl(I)I
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 26
    :cond_0
    div-int/lit8 v1, p1, 0x8

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xff

    if-ge v0, v1, :cond_3

    .line 28
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzbki:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzpq;->zzbn(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzbki:I

    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    :cond_1
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzbki:I

    add-int/lit8 v4, v4, 0x1

    .line 29
    :goto_1
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzbkj:I

    if-eqz v5, :cond_2

    .line 30
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzpq;->data:[B

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzbki:I

    aget-byte v7, v6, v7

    and-int/2addr v7, v3

    shl-int/2addr v7, v5

    aget-byte v6, v6, v4

    and-int/2addr v6, v3

    rsub-int/lit8 v5, v5, 0x8

    ushr-int v5, v6, v5

    or-int/2addr v5, v7

    goto :goto_2

    .line 31
    :cond_2
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzpq;->data:[B

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzbki:I

    aget-byte v5, v5, v6

    :goto_2
    add-int/lit8 p1, p1, -0x8

    and-int/2addr v3, v5

    shl-int/2addr v3, p1

    or-int/2addr v2, v3

    .line 34
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzbki:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-lez p1, :cond_7

    .line 37
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzbkj:I

    add-int/2addr v0, p1

    const/16 v1, 0x8

    rsub-int/lit8 p1, p1, 0x8

    shr-int p1, v3, p1

    int-to-byte p1, p1

    .line 39
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzbki:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzpq;->zzbn(I)Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzbki:I

    add-int/lit8 v4, v4, 0x2

    goto :goto_3

    :cond_4
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzbki:I

    add-int/lit8 v4, v4, 0x1

    :goto_3
    if-le v0, v1, :cond_5

    .line 41
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzpq;->data:[B

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzbki:I

    aget-byte v6, v5, v6

    and-int/2addr v6, v3

    add-int/lit8 v7, v0, -0x8

    shl-int/2addr v6, v7

    aget-byte v5, v5, v4

    and-int/2addr v3, v5

    rsub-int/lit8 v5, v0, 0x10

    shr-int/2addr v3, v5

    or-int/2addr v3, v6

    and-int/2addr p1, v3

    or-int/2addr p1, v2

    .line 42
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzbki:I

    goto :goto_4

    .line 43
    :cond_5
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzpq;->data:[B

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzbki:I

    aget-byte v5, v5, v6

    and-int/2addr v3, v5

    rsub-int/lit8 v5, v0, 0x8

    shr-int/2addr v3, v5

    and-int/2addr p1, v3

    or-int/2addr p1, v2

    if-ne v0, v1, :cond_6

    .line 45
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzbki:I

    :cond_6
    :goto_4
    move v2, p1

    .line 46
    rem-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzbkj:I

    .line 47
    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpq;->zzjh()V

    return v2
.end method

.method public final zzbm(I)V
    .locals 3

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzbki:I

    .line 10
    div-int/lit8 v1, p1, 0x8

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzbki:I

    .line 11
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzbkj:I

    rem-int/lit8 p1, p1, 0x8

    add-int/2addr v2, p1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzbkj:I

    const/4 p1, 0x7

    if-le v2, p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 13
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzbki:I

    add-int/lit8 v2, v2, -0x8

    .line 14
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzbkj:I

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 15
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzbki:I

    if-gt v0, p1, :cond_1

    .line 16
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzpq;->zzbn(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 17
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzbki:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzbki:I

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 20
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpq;->zzjh()V

    return-void
.end method

.method public final zzjd()Z
    .locals 2

    const/4 v0, 0x1

    .line 22
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzpq;->zzbl(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzje()I
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpq;->zzjg()I

    move-result v0

    return v0
.end method

.method public final zzjf()I
    .locals 3

    .line 50
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpq;->zzjg()I

    move-result v0

    .line 51
    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    mul-int v1, v1, v0

    return v1
.end method
