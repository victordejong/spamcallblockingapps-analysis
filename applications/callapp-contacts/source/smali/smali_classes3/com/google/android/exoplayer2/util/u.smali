.class public final Lcom/google/android/exoplayer2/util/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[B

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/google/android/exoplayer2/util/af;->f:[B

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/u;->a:[B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 47
    iput p1, p0, Lcom/google/android/exoplayer2/util/u;->c:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 57
    array-length p1, p1

    iput p1, p0, Lcom/google/android/exoplayer2/util/u;->c:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 68
    iput p2, p0, Lcom/google/android/exoplayer2/util/u;->c:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 120
    iget v0, p0, Lcom/google/android/exoplayer2/util/u;->c:I

    iget v1, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final a(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    .line 479
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/u;->a:[B

    iget v2, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    invoke-direct {v0, v1, v2, p1, p2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 480
    iget p2, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    return-object v0
.end method

.method public final a(I)V
    .locals 2

    .line 1174
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/u;->a:[B

    array-length v1, v0

    if-ge v1, p1, :cond_0

    .line 78
    new-array v0, p1, [B

    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/util/u;->a([BI)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/util/t;I)V
    .locals 2

    .line 196
    iget-object v0, p1, Lcom/google/android/exoplayer2/util/t;->a:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/exoplayer2/util/u;->a([BII)V

    .line 197
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/t;->a(I)V

    return-void
.end method

.method public final a([BI)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 99
    iput p2, p0, Lcom/google/android/exoplayer2/util/u;->c:I

    const/4 p1, 0x0

    .line 100
    iput p1, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    return-void
.end method

.method public final a([BII)V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/u;->a:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    iget p1, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    return-void
.end method

.method public final b()I
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/u;->a:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final b(I)V
    .locals 2

    .line 2174
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/u;->a:[B

    array-length v1, v0

    if-le p1, v1, :cond_0

    .line 114
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/u;->a:[B

    :cond_0
    return-void
.end method

.method public final c()I
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/u;->a:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final c(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/u;->a:[B

    array-length v0, v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 137
    iput p1, p0, Lcom/google/android/exoplayer2/util/u;->c:I

    return-void
.end method

.method public final d()I
    .locals 4

    .line 251
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/u;->a:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public final d(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 156
    iget v0, p0, Lcom/google/android/exoplayer2/util/u;->c:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 157
    iput p1, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    return-void
.end method

.method public final e()I
    .locals 4

    .line 259
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/u;->a:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public final e(I)V
    .locals 1

    .line 185
    iget v0, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    return-void
.end method

.method public final f(I)Ljava/lang/String;
    .locals 1

    .line 468
    sget-object v0, Lcom/google/common/base/d;->c:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/util/u;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final f()S
    .locals 4

    .line 274
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/u;->a:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public final g()I
    .locals 4

    .line 281
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/u;->a:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public final g(I)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 496
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    add-int v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    .line 497
    iget v2, p0, Lcom/google/android/exoplayer2/util/u;->c:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/u;->a:[B

    aget-byte v1, v2, v1

    if-nez v1, :cond_1

    add-int/lit8 v1, p1, -0x1

    goto :goto_0

    :cond_1
    move v1, p1

    .line 500
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/u;->a:[B

    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer2/util/af;->a([BII)Ljava/lang/String;

    move-result-object v0

    .line 501
    iget v1, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    return-object v0
.end method

.method public final h()J
    .locals 9

    .line 317
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/u;->a:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v1, v0, v1

    int-to-long v3, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/16 v1, 0x18

    shl-long/2addr v3, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x10

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v1, 0x8

    shl-long/2addr v7, v1

    or-long v1, v2, v7

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v0, v0, v4

    int-to-long v3, v0

    and-long/2addr v3, v5

    or-long v0, v1, v3

    return-wide v0
.end method

.method public final i()J
    .locals 9

    .line 327
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/u;->a:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v1, v0, v1

    int-to-long v3, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x8

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v1, 0x10

    shl-long/2addr v7, v1

    or-long v1, v2, v7

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v0, v0, v4

    int-to-long v3, v0

    and-long/2addr v3, v5

    const/16 v0, 0x18

    shl-long/2addr v3, v0

    or-long v0, v1, v3

    return-wide v0
.end method

.method public final j()I
    .locals 4

    .line 337
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/u;->a:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public final k()I
    .locals 4

    .line 347
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/u;->a:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public final l()J
    .locals 9

    .line 357
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/u;->a:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v1, v0, v1

    int-to-long v3, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/16 v1, 0x38

    shl-long/2addr v3, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x30

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v1, 0x28

    shl-long/2addr v7, v1

    or-long v1, v2, v7

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v4, v0, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x20

    shl-long/2addr v7, v4

    or-long/2addr v1, v7

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v3, v0, v3

    int-to-long v7, v3

    and-long/2addr v7, v5

    const/16 v3, 0x18

    shl-long/2addr v7, v3

    or-long/2addr v1, v7

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v4, v0, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x10

    shl-long/2addr v7, v4

    or-long/2addr v1, v7

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v3, v0, v3

    int-to-long v7, v3

    and-long/2addr v7, v5

    const/16 v3, 0x8

    shl-long/2addr v7, v3

    or-long/2addr v1, v7

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v0, v0, v4

    int-to-long v3, v0

    and-long/2addr v3, v5

    or-long v0, v1, v3

    return-wide v0
.end method

.method public final m()J
    .locals 9

    .line 371
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/u;->a:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v1, v0, v1

    int-to-long v3, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x8

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v1, 0x10

    shl-long/2addr v7, v1

    or-long v1, v2, v7

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v4, v0, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x18

    shl-long/2addr v7, v4

    or-long/2addr v1, v7

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v3, v0, v3

    int-to-long v7, v3

    and-long/2addr v7, v5

    const/16 v3, 0x20

    shl-long/2addr v7, v3

    or-long/2addr v1, v7

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v4, v0, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x28

    shl-long/2addr v7, v4

    or-long/2addr v1, v7

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v3, v0, v3

    int-to-long v7, v3

    and-long/2addr v7, v5

    const/16 v3, 0x30

    shl-long/2addr v7, v3

    or-long/2addr v1, v7

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v0, v0, v4

    int-to-long v3, v0

    and-long/2addr v3, v5

    const/16 v0, 0x38

    shl-long/2addr v3, v0

    or-long v0, v1, v3

    return-wide v0
.end method

.method public final n()I
    .locals 4

    .line 400
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v0

    .line 401
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v1

    .line 402
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v2

    .line 403
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v3

    shl-int/lit8 v0, v0, 0x15

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x7

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    return v0
.end method

.method public final o()I
    .locals 3

    .line 413
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    .line 415
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Top bit not zero: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final p()I
    .locals 3

    .line 427
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->k()I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    .line 429
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Top bit not zero: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final q()J
    .locals 5

    .line 440
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->l()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    return-wide v0

    .line 442
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Top bit not zero: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    .line 513
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .locals 4

    .line 524
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 527
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 528
    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer2/util/u;->c:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/u;->a:[B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 531
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/u;->a:[B

    iget v2, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    sub-int v3, v0, v2

    invoke-static {v1, v2, v3}, Lcom/google/android/exoplayer2/util/af;->a([BII)Ljava/lang/String;

    move-result-object v1

    .line 532
    iput v0, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 533
    iget v2, p0, Lcom/google/android/exoplayer2/util/u;->c:I

    if-ge v0, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 534
    iput v0, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    :cond_2
    return-object v1
.end method

.method public final t()Ljava/lang/String;
    .locals 6

    .line 551
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 554
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 555
    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer2/util/u;->c:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/u;->a:[B

    aget-byte v1, v1, v0

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/af;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 558
    :cond_1
    iget v1, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    sub-int v2, v0, v1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/u;->a:[B

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

    .line 561
    iput v1, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 563
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/u;->a:[B

    iget v2, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    sub-int v3, v0, v2

    invoke-static {v1, v2, v3}, Lcom/google/android/exoplayer2/util/af;->a([BII)Ljava/lang/String;

    move-result-object v1

    .line 564
    iput v0, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 565
    iget v2, p0, Lcom/google/android/exoplayer2/util/u;->c:I

    if-ne v0, v2, :cond_3

    return-object v1

    .line 568
    :cond_3
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/u;->a:[B

    aget-byte v4, v3, v0

    const/16 v5, 0xd

    if-ne v4, v5, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 569
    iput v0, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    if-ne v0, v2, :cond_4

    return-object v1

    .line 574
    :cond_4
    iget v0, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v2, v3, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_5

    add-int/lit8 v0, v0, 0x1

    .line 575
    iput v0, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    :cond_5
    return-object v1
.end method

.method public final u()J
    .locals 12

    .line 588
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/u;->a:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v0, v0, v1

    int-to-long v0, v0

    const/4 v2, 0x7

    const/4 v3, 0x7

    :goto_0
    const/4 v4, 0x6

    const/4 v5, 0x1

    if-ltz v3, :cond_2

    shl-int v6, v5, v3

    int-to-long v7, v6

    and-long/2addr v7, v0

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-nez v11, :cond_1

    if-ge v3, v4, :cond_0

    sub-int/2addr v6, v5

    int-to-long v6, v6

    and-long/2addr v0, v6

    sub-int/2addr v2, v3

    goto :goto_1

    :cond_0
    if-ne v3, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_5

    :goto_2
    if-ge v5, v2, :cond_4

    .line 605
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/u;->a:[B

    iget v6, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    add-int/2addr v6, v5

    aget-byte v3, v3, v6

    and-int/lit16 v6, v3, 0xc0

    const/16 v7, 0x80

    if-ne v6, v7, :cond_3

    shl-long/2addr v0, v4

    and-int/lit8 v3, v3, 0x3f

    int-to-long v6, v3

    or-long/2addr v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 607
    :cond_3
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid UTF-8 sequence continuation byte: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 611
    :cond_4
    iget v3, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    return-wide v0

    .line 602
    :cond_5
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid UTF-8 sequence first byte: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
