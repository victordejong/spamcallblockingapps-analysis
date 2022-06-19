.class public final Landroidx/media2/exoplayer/external/util/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[B

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Landroidx/media2/exoplayer/external/util/ac;->f:[B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-array v0, p1, [B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    .line 52
    iput p1, p0, Landroidx/media2/exoplayer/external/util/p;->c:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    .line 62
    array-length p1, p1

    iput p1, p0, Landroidx/media2/exoplayer/external/util/p;->c:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    .line 73
    iput p2, p0, Landroidx/media2/exoplayer/external/util/p;->c:I

    return-void
.end method


# virtual methods
.method public final a(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    .line 467
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget v2, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    invoke-direct {v0, v1, v2, p1, p2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 468
    iget p2, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    return-object v0
.end method

.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 79
    iput v0, p0, Landroidx/media2/exoplayer/external/util/p;->c:I

    return-void
.end method

.method public final a(I)V
    .locals 2

    .line 1149
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    array-length v1, v0

    if-ge v1, p1, :cond_0

    .line 89
    new-array v0, p1, [B

    :cond_0
    invoke-virtual {p0, v0, p1}, Landroidx/media2/exoplayer/external/util/p;->a([BI)V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/util/o;I)V
    .locals 2

    .line 184
    iget-object v0, p1, Landroidx/media2/exoplayer/external/util/o;->a:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Landroidx/media2/exoplayer/external/util/p;->a([BII)V

    .line 185
    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/util/o;->a(I)V

    return-void
.end method

.method public final a([BI)V
    .locals 0

    .line 109
    iput-object p1, p0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    .line 110
    iput p2, p0, Landroidx/media2/exoplayer/external/util/p;->c:I

    const/4 p1, 0x0

    .line 111
    iput p1, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    return-void
.end method

.method public final a([BII)V
    .locals 2

    .line 197
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    iget p1, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    add-int/2addr p1, p3

    iput p1, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    return-void
.end method

.method public final b()I
    .locals 2

    .line 118
    iget v0, p0, Landroidx/media2/exoplayer/external/util/p;->c:I

    iget v1, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final b(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 134
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    array-length v0, v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Z)V

    .line 135
    iput p1, p0, Landroidx/media2/exoplayer/external/util/p;->c:I

    return-void
.end method

.method public final c()I
    .locals 3

    .line 232
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final c(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 161
    iget v0, p0, Landroidx/media2/exoplayer/external/util/p;->c:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Z)V

    .line 162
    iput p1, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    return-void
.end method

.method public final d()I
    .locals 4

    .line 239
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public final d(I)V
    .locals 1

    .line 173
    iget v0, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    return-void
.end method

.method public final e()I
    .locals 4

    .line 247
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public final e(I)Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    .line 456
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/media2/exoplayer/external/util/p;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final f()I
    .locals 4

    .line 269
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public final f(I)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 484
    :cond_0
    iget v0, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    add-int v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    .line 485
    iget v2, p0, Landroidx/media2/exoplayer/external/util/p;->c:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    aget-byte v1, v2, v1

    if-nez v1, :cond_1

    add-int/lit8 v1, p1, -0x1

    goto :goto_0

    :cond_1
    move v1, p1

    .line 488
    :goto_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-static {v2, v0, v1}, Landroidx/media2/exoplayer/external/util/ac;->a([BII)Ljava/lang/String;

    move-result-object v0

    .line 489
    iget v1, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    add-int/2addr v1, p1

    iput v1, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    return-object v0
.end method

.method public final g()J
    .locals 9

    .line 305
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v1, v0, v1

    int-to-long v3, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/16 v1, 0x18

    shl-long/2addr v3, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x10

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v1, 0x8

    shl-long/2addr v7, v1

    or-long v1, v2, v7

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v0, v0, v4

    int-to-long v3, v0

    and-long/2addr v3, v5

    or-long v0, v1, v3

    return-wide v0
.end method

.method public final h()J
    .locals 9

    .line 315
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v1, v0, v1

    int-to-long v3, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x8

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v1, 0x10

    shl-long/2addr v7, v1

    or-long v1, v2, v7

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v0, v0, v4

    int-to-long v3, v0

    and-long/2addr v3, v5

    const/16 v0, 0x18

    shl-long/2addr v3, v0

    or-long v0, v1, v3

    return-wide v0
.end method

.method public final i()I
    .locals 4

    .line 325
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public final j()I
    .locals 4

    .line 335
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public final k()J
    .locals 9

    .line 345
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v1, v0, v1

    int-to-long v3, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/16 v1, 0x38

    shl-long/2addr v3, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x30

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v1, 0x28

    shl-long/2addr v7, v1

    or-long v1, v2, v7

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v4, v0, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x20

    shl-long/2addr v7, v4

    or-long/2addr v1, v7

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v3, v0, v3

    int-to-long v7, v3

    and-long/2addr v7, v5

    const/16 v3, 0x18

    shl-long/2addr v7, v3

    or-long/2addr v1, v7

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v4, v0, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x10

    shl-long/2addr v7, v4

    or-long/2addr v1, v7

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v3, v0, v3

    int-to-long v7, v3

    and-long/2addr v7, v5

    const/16 v3, 0x8

    shl-long/2addr v7, v3

    or-long/2addr v1, v7

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v0, v0, v4

    int-to-long v3, v0

    and-long/2addr v3, v5

    or-long v0, v1, v3

    return-wide v0
.end method

.method public final l()J
    .locals 9

    .line 359
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v1, v0, v1

    int-to-long v3, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x8

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v1, 0x10

    shl-long/2addr v7, v1

    or-long v1, v2, v7

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v4, v0, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x18

    shl-long/2addr v7, v4

    or-long/2addr v1, v7

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v3, v0, v3

    int-to-long v7, v3

    and-long/2addr v7, v5

    const/16 v3, 0x20

    shl-long/2addr v7, v3

    or-long/2addr v1, v7

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v4, v0, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x28

    shl-long/2addr v7, v4

    or-long/2addr v1, v7

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v3, v0, v3

    int-to-long v7, v3

    and-long/2addr v7, v5

    const/16 v3, 0x30

    shl-long/2addr v7, v3

    or-long/2addr v1, v7

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v0, v0, v4

    int-to-long v3, v0

    and-long/2addr v3, v5

    const/16 v0, 0x38

    shl-long/2addr v3, v0

    or-long v0, v1, v3

    return-wide v0
.end method

.method public final m()I
    .locals 4

    .line 388
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v0

    .line 389
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v1

    .line 390
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v2

    .line 391
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v3

    shl-int/lit8 v0, v0, 0x15

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x7

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    return v0
.end method

.method public final n()I
    .locals 4

    .line 401
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    .line 403
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const/16 v2, 0x1d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Top bit not zero: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final o()I
    .locals 4

    .line 415
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->j()I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    .line 417
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const/16 v2, 0x1d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Top bit not zero: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final p()J
    .locals 5

    .line 428
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->k()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    return-wide v0

    .line 430
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const/16 v3, 0x26

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Top bit not zero: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final q()Ljava/lang/String;
    .locals 4

    .line 501
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 504
    :cond_0
    iget v0, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 505
    :goto_0
    iget v1, p0, Landroidx/media2/exoplayer/external/util/p;->c:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 508
    :cond_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget v2, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    sub-int v3, v0, v2

    invoke-static {v1, v2, v3}, Landroidx/media2/exoplayer/external/util/ac;->a([BII)Ljava/lang/String;

    move-result-object v1

    .line 509
    iput v0, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 510
    iget v2, p0, Landroidx/media2/exoplayer/external/util/p;->c:I

    if-ge v0, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 511
    iput v0, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    :cond_2
    return-object v1
.end method

.method public final r()Ljava/lang/String;
    .locals 6

    .line 528
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 531
    :cond_0
    iget v0, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 532
    :goto_0
    iget v1, p0, Landroidx/media2/exoplayer/external/util/p;->c:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    aget-byte v1, v1, v0

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/ac;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 535
    :cond_1
    iget v1, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    sub-int v2, v0, v1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    aget-byte v4, v2, v1

    const/16 v5, -0x11

    if-ne v4, v5, :cond_2

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, v2, v4

    const/16 v5, -0x45

    if-ne v4, v5, :cond_2

    add-int/lit8 v4, v1, 0x2

    aget-byte v2, v2, v4

    const/16 v4, -0x41

    if-ne v2, v4, :cond_2

    add-int/2addr v1, v3

    .line 538
    iput v1, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 540
    :cond_2
    iget-object v1, p0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget v2, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    sub-int v3, v0, v2

    invoke-static {v1, v2, v3}, Landroidx/media2/exoplayer/external/util/ac;->a([BII)Ljava/lang/String;

    move-result-object v1

    .line 541
    iput v0, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 542
    iget v2, p0, Landroidx/media2/exoplayer/external/util/p;->c:I

    if-ne v0, v2, :cond_3

    return-object v1

    .line 545
    :cond_3
    iget-object v3, p0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    aget-byte v4, v3, v0

    const/16 v5, 0xd

    if-ne v4, v5, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 546
    iput v0, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    if-ne v0, v2, :cond_4

    return-object v1

    .line 551
    :cond_4
    iget v0, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v2, v3, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_5

    add-int/lit8 v0, v0, 0x1

    .line 552
    iput v0, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    :cond_5
    return-object v1
.end method
