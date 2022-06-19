.class final Lcom/google/android/gms/internal/ads/dob;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# static fields
.field private static final a:[J


# instance fields
.field private final b:[B

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/dob;->a:[J

    return-void

    :array_0
    .array-data 8
        0x80
        0x40
        0x20
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dob;->b:[B

    .line 3
    return-void
.end method

.method public static a(I)I
    .locals 6

    .prologue
    .line 23
    const/4 v1, -0x1

    .line 24
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/google/android/gms/internal/ads/dob;->a:[J

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 25
    sget-object v2, Lcom/google/android/gms/internal/ads/dob;->a:[J

    aget-wide v2, v2, v0

    int-to-long v4, p0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 29
    :goto_1
    return v0

    .line 28
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static a([BIZ)J
    .locals 8

    .prologue
    const-wide/16 v6, 0xff

    .line 30
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    int-to-long v0, v0

    and-long/2addr v0, v6

    .line 31
    if-eqz p2, :cond_0

    .line 32
    sget-object v2, Lcom/google/android/gms/internal/ads/dob;->a:[J

    add-int/lit8 v3, p1, -0x1

    aget-wide v2, v2, v3

    const-wide/16 v4, -0x1

    xor-long/2addr v2, v4

    and-long/2addr v0, v2

    .line 33
    :cond_0
    const/4 v2, 0x1

    move-wide v4, v0

    :goto_0
    if-ge v2, p1, :cond_1

    .line 34
    const/16 v0, 0x8

    shl-long v0, v4, v0

    aget-byte v3, p0, v2

    int-to-long v4, v3

    and-long/2addr v4, v6

    or-long/2addr v4, v0

    .line 35
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 36
    :cond_1
    return-wide v4
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/dng;ZZI)J
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/ads/dob;->c:I

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dob;->b:[B

    invoke-interface {p1, v0, v2, v3, p2}, Lcom/google/android/gms/internal/ads/dng;->a([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    const-wide/16 v0, -0x1

    .line 21
    :goto_0
    return-wide v0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dob;->b:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dob;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dob;->d:I

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/dob;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No valid varint length mask found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_1
    iput v3, p0, Lcom/google/android/gms/internal/ads/dob;->c:I

    .line 15
    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/dob;->d:I

    if-le v0, p4, :cond_3

    .line 16
    iput v2, p0, Lcom/google/android/gms/internal/ads/dob;->c:I

    .line 17
    const-wide/16 v0, -0x2

    goto :goto_0

    .line 18
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/dob;->d:I

    if-eq v0, v3, :cond_4

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dob;->b:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/dob;->d:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v0, v3, v1}, Lcom/google/android/gms/internal/ads/dng;->b([BII)V

    .line 20
    :cond_4
    iput v2, p0, Lcom/google/android/gms/internal/ads/dob;->c:I

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dob;->b:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/dob;->d:I

    invoke-static {v0, v1, p3}, Lcom/google/android/gms/internal/ads/dob;->a([BIZ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/dob;->c:I

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/dob;->d:I

    .line 6
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/google/android/gms/internal/ads/dob;->d:I

    return v0
.end method
