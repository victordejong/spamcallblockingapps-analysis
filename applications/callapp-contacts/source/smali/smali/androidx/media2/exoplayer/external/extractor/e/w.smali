.class final Landroidx/media2/exoplayer/external/extractor/e/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroidx/media2/exoplayer/external/util/z;

.field final b:Landroidx/media2/exoplayer/external/util/p;

.field c:Z

.field d:Z

.field e:Z

.field f:J

.field g:J

.field h:J


# direct methods
.method constructor <init>()V
    .locals 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroidx/media2/exoplayer/external/util/z;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/util/z;-><init>(J)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/w;->a:Landroidx/media2/exoplayer/external/util/z;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 63
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/e/w;->f:J

    .line 64
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/e/w;->g:J

    .line 65
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/e/w;->h:J

    .line 66
    new-instance v0, Landroidx/media2/exoplayer/external/util/p;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/p;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/w;->b:Landroidx/media2/exoplayer/external/util/p;

    return-void
.end method

.method static a([BI)I
    .locals 2

    .line 219
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

.method public static a(Landroidx/media2/exoplayer/external/util/p;)J
    .locals 6

    .line 1142
    iget v0, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 125
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v4, 0x9

    if-ge v1, v4, :cond_0

    return-wide v2

    :cond_0
    new-array v1, v4, [B

    const/4 v5, 0x0

    .line 130
    invoke-virtual {p0, v1, v5, v4}, Landroidx/media2/exoplayer/external/util/p;->a([BII)V

    .line 131
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 132
    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/e/w;->a([B)Z

    move-result p0

    if-nez p0, :cond_1

    return-wide v2

    .line 135
    :cond_1
    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/e/w;->b([B)J

    move-result-wide v0

    return-wide v0
.end method

.method private static a([B)Z
    .locals 3

    const/4 v0, 0x0

    .line 227
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xc4

    const/16 v2, 0x44

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    .line 232
    aget-byte v1, p0, v1

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_1

    return v0

    .line 237
    :cond_1
    aget-byte v1, p0, v2

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    const/4 v1, 0x5

    .line 241
    aget-byte v1, p0, v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_3

    return v0

    :cond_3
    const/16 v1, 0x8

    .line 246
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

    .line 257
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
.method final a(Landroidx/media2/exoplayer/external/extractor/h;)I
    .locals 3

    .line 139
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/w;->b:Landroidx/media2/exoplayer/external/util/p;

    sget-object v1, Landroidx/media2/exoplayer/external/util/ac;->f:[B

    .line 2099
    array-length v2, v1

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/util/p;->a([BI)V

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/e/w;->c:Z

    .line 141
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/h;->a()V

    const/4 p1, 0x0

    return p1
.end method
