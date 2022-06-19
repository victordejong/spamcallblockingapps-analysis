.class public final Lcom/google/android/gms/internal/ads/daz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:[B

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>([B)V
    .locals 7

    .prologue
    const/16 v6, 0x100

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array v0, v6, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/daz;->a:[B

    move v0, v1

    .line 3
    :goto_0
    if-ge v0, v6, :cond_0

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/daz;->a:[B

    int-to-byte v3, v0

    aput-byte v3, v2, v0

    .line 5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    move v2, v1

    .line 6
    :goto_1
    if-ge v2, v6, :cond_1

    .line 7
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/daz;->a:[B

    aget-byte v3, v3, v2

    add-int/2addr v0, v3

    array-length v3, p1

    rem-int v3, v2, v3

    aget-byte v3, p1, v3

    add-int/2addr v0, v3

    and-int/lit16 v0, v0, 0xff

    .line 8
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/daz;->a:[B

    aget-byte v3, v3, v2

    .line 9
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/daz;->a:[B

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/daz;->a:[B

    aget-byte v5, v5, v0

    aput-byte v5, v4, v2

    .line 10
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/daz;->a:[B

    aput-byte v3, v4, v0

    .line 11
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 12
    :cond_1
    iput v1, p0, Lcom/google/android/gms/internal/ads/daz;->b:I

    .line 13
    iput v1, p0, Lcom/google/android/gms/internal/ads/daz;->c:I

    .line 14
    return-void
.end method


# virtual methods
.method public final a([B)V
    .locals 7

    .prologue
    .line 15
    iget v2, p0, Lcom/google/android/gms/internal/ads/daz;->b:I

    .line 16
    iget v1, p0, Lcom/google/android/gms/internal/ads/daz;->c:I

    .line 17
    const/4 v0, 0x0

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 18
    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    .line 19
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/daz;->a:[B

    aget-byte v3, v3, v2

    add-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    .line 20
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/daz;->a:[B

    aget-byte v3, v3, v2

    .line 21
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/daz;->a:[B

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/daz;->a:[B

    aget-byte v5, v5, v1

    aput-byte v5, v4, v2

    .line 22
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/daz;->a:[B

    aput-byte v3, v4, v1

    .line 23
    aget-byte v3, p1, v0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/daz;->a:[B

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/daz;->a:[B

    aget-byte v5, v5, v2

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/daz;->a:[B

    aget-byte v6, v6, v1

    add-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 25
    :cond_0
    iput v2, p0, Lcom/google/android/gms/internal/ads/daz;->b:I

    .line 26
    iput v1, p0, Lcom/google/android/gms/internal/ads/daz;->c:I

    .line 27
    return-void
.end method
