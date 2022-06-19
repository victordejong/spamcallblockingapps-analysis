.class final Lcom/google/android/exoplayer2/extractor/h/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/exoplayer2/util/ad;

.field final b:Lcom/google/android/exoplayer2/util/u;

.field c:Z

.field d:Z

.field e:Z

.field f:J

.field g:J

.field h:J


# direct methods
.method constructor <init>()V
    .locals 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/google/android/exoplayer2/util/ad;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/util/ad;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/v;->a:Lcom/google/android/exoplayer2/util/ad;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 59
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/h/v;->f:J

    .line 60
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/h/v;->g:J

    .line 61
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/h/v;->h:J

    .line 62
    new-instance v0, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/u;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/v;->b:Lcom/google/android/exoplayer2/util/u;

    return-void
.end method

.method static a([BI)I
    .locals 2

    .line 213
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static a(Lcom/google/android/exoplayer2/util/u;)J
    .locals 6

    .line 1144
    iget v0, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 119
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v4, 0x9

    if-ge v1, v4, :cond_0

    return-wide v2

    :cond_0
    new-array v1, v4, [B

    const/4 v5, 0x0

    .line 124
    invoke-virtual {p0, v1, v5, v4}, Lcom/google/android/exoplayer2/util/u;->a([BII)V

    .line 125
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 126
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/h/v;->a([B)Z

    move-result p0

    if-nez p0, :cond_1

    return-wide v2

    .line 129
    :cond_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/h/v;->b([B)J

    move-result-wide v0

    return-wide v0
.end method

.method private static a([B)Z
    .locals 3

    const/4 v0, 0x0

    .line 221
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xc4

    const/16 v2, 0x44

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    .line 226
    aget-byte v1, p0, v1

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_1

    return v0

    .line 231
    :cond_1
    aget-byte v1, p0, v2

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    const/4 v1, 0x5

    .line 235
    aget-byte v1, p0, v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_3

    return v0

    :cond_3
    const/16 v1, 0x8

    .line 240
    aget-byte p0, p0, v1

    const/4 v1, 0x3

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method private static b([B)J
    .locals 13

    const/4 v0, 0x0

    .line 251
    aget-byte v1, p0, v0

    int-to-long v1, v1

    const-wide/16 v3, 0x38

    and-long/2addr v1, v3

    const/4 v3, 0x3

    shr-long/2addr v1, v3

    const/16 v4, 0x1e

    shl-long/2addr v1, v4

    aget-byte v0, p0, v0

    int-to-long v4, v0

    const-wide/16 v6, 0x3

    and-long/2addr v4, v6

    const/16 v0, 0x1c

    shl-long/2addr v4, v0

    or-long v0, v1, v4

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    int-to-long v4, v2

    const-wide/16 v8, 0xff

    and-long/2addr v4, v8

    const/16 v2, 0x14

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    const/4 v2, 0x2

    aget-byte v4, p0, v2

    int-to-long v4, v4

    const-wide/16 v10, 0xf8

    and-long/2addr v4, v10

    shr-long/2addr v4, v3

    const/16 v12, 0xf

    shl-long/2addr v4, v12

    or-long/2addr v0, v4

    aget-byte v2, p0, v2

    int-to-long v4, v2

    and-long/2addr v4, v6

    const/16 v2, 0xd

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    aget-byte v2, p0, v3

    int-to-long v4, v2

    and-long/2addr v4, v8

    const/4 v2, 0x5

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    const/4 v2, 0x4

    aget-byte p0, p0, v2

    int-to-long v4, p0

    and-long/2addr v4, v10

    shr-long v2, v4, v3

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method final a(Lcom/google/android/exoplayer2/extractor/i;)I
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/v;->b:Lcom/google/android/exoplayer2/util/u;

    sget-object v1, Lcom/google/android/exoplayer2/util/af;->f:[B

    .line 2088
    array-length v2, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/u;->a([BI)V

    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/h/v;->c:Z

    .line 135
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->a()V

    const/4 p1, 0x0

    return p1
.end method
