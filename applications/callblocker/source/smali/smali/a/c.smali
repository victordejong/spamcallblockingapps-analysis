.class public final La/c;
.super Ljava/lang/Object;
.source "Buffer.java"

# interfaces
.implements La/d;
.implements La/e;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# static fields
.field private static final c:[B


# instance fields
.field a:La/o;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, La/c;->c:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 6

    .prologue
    .line 798
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, La/u;->a(JJJ)V

    .line 800
    iget-object v1, p0, La/c;->a:La/o;

    .line 801
    if-nez v1, :cond_1

    const/4 v0, -0x1

    .line 813
    :cond_0
    :goto_0
    return v0

    .line 802
    :cond_1
    iget v0, v1, La/o;->c:I

    iget v2, v1, La/o;->b:I

    sub-int/2addr v0, v2

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 803
    iget-object v2, v1, La/o;->a:[B

    iget v3, v1, La/o;->b:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 805
    iget v2, v1, La/o;->b:I

    add-int/2addr v2, v0

    iput v2, v1, La/o;->b:I

    .line 806
    iget-wide v2, p0, La/c;->b:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, La/c;->b:J

    .line 808
    iget v2, v1, La/o;->b:I

    iget v3, v1, La/o;->c:I

    if-ne v2, v3, :cond_0

    .line 809
    invoke-virtual {v1}, La/o;->b()La/o;

    move-result-object v2

    iput-object v2, p0, La/c;->a:La/o;

    .line 810
    invoke-static {v1}, La/p;->a(La/o;)V

    goto :goto_0
.end method

.method public a(B)J
    .locals 6

    .prologue
    .line 1323
    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, La/c;->a(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(BJJ)J
    .locals 10

    .prologue
    .line 1335
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    cmp-long v0, p4, p2

    if-gez v0, :cond_1

    .line 1336
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size=%s fromIndex=%s toIndex=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, La/c;->b:J

    .line 1337
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1340
    :cond_1
    iget-wide v0, p0, La/c;->b:J

    cmp-long v0, p4, v0

    if-lez v0, :cond_2

    iget-wide p4, p0, La/c;->b:J

    .line 1341
    :cond_2
    cmp-long v0, p2, p4

    if-nez v0, :cond_3

    const-wide/16 v0, -0x1

    .line 1387
    :goto_0
    return-wide v0

    .line 1349
    :cond_3
    iget-object v2, p0, La/c;->a:La/o;

    .line 1350
    if-nez v2, :cond_4

    .line 1352
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 1353
    :cond_4
    iget-wide v0, p0, La/c;->b:J

    sub-long/2addr v0, p2

    cmp-long v0, v0, p2

    if-gez v0, :cond_5

    .line 1355
    iget-wide v0, p0, La/c;->b:J

    move-object v4, v2

    .line 1356
    :goto_1
    cmp-long v2, v0, p2

    if-lez v2, :cond_9

    .line 1357
    iget-object v4, v4, La/o;->g:La/o;

    .line 1358
    iget v2, v4, La/o;->c:I

    iget v3, v4, La/o;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_1

    .line 1362
    :cond_5
    const-wide/16 v0, 0x0

    move-object v4, v2

    .line 1363
    :goto_2
    iget v2, v4, La/o;->c:I

    iget v3, v4, La/o;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v2, v0

    cmp-long v5, v2, p2

    if-gez v5, :cond_9

    .line 1364
    iget-object v4, v4, La/o;->f:La/o;

    move-wide v0, v2

    .line 1365
    goto :goto_2

    .line 1382
    :cond_6
    iget v0, v4, La/o;->c:I

    iget v1, v4, La/o;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v0, v2

    .line 1384
    iget-object v4, v4, La/o;->f:La/o;

    move-wide v2, v0

    move-wide p2, v0

    .line 1371
    :goto_3
    cmp-long v0, v2, p4

    if-gez v0, :cond_8

    .line 1372
    iget-object v1, v4, La/o;->a:[B

    .line 1373
    iget v0, v4, La/o;->c:I

    int-to-long v6, v0

    iget v0, v4, La/o;->b:I

    int-to-long v8, v0

    add-long/2addr v8, p4

    sub-long/2addr v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v5, v6

    .line 1374
    iget v0, v4, La/o;->b:I

    int-to-long v6, v0

    add-long/2addr v6, p2

    sub-long/2addr v6, v2

    long-to-int v0, v6

    .line 1375
    :goto_4
    if-ge v0, v5, :cond_6

    .line 1376
    aget-byte v6, v1, v0

    if-ne v6, p1, :cond_7

    .line 1377
    iget v1, v4, La/o;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v0, v2

    goto :goto_0

    .line 1375
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1387
    :cond_8
    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_9
    move-wide v2, v0

    goto :goto_3
.end method

.method public a(La/c;J)J
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1314
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1315
    :cond_0
    cmp-long v0, p2, v2

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1316
    :cond_1
    iget-wide v0, p0, La/c;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const-wide/16 p2, -0x1

    .line 1319
    :goto_0
    return-wide p2

    .line 1317
    :cond_2
    iget-wide v0, p0, La/c;->b:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_3

    iget-wide p2, p0, La/c;->b:J

    .line 1318
    :cond_3
    invoke-virtual {p1, p0, p2, p3}, La/c;->a_(La/c;J)V

    goto :goto_0
.end method

.method public a(La/r;)J
    .locals 4

    .prologue
    .line 593
    iget-wide v0, p0, La/c;->b:J

    .line 594
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 595
    invoke-interface {p1, p0, v0, v1}, La/r;->a_(La/c;J)V

    .line 597
    :cond_0
    return-wide v0
.end method

.method public a(La/s;)J
    .locals 6

    .prologue
    .line 1051
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1052
    :cond_0
    const-wide/16 v0, 0x0

    .line 1053
    :goto_0
    const-wide/16 v2, 0x2000

    invoke-interface {p1, p0, v2, v3}, La/s;->a(La/c;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    .line 1054
    add-long/2addr v0, v2

    goto :goto_0

    .line 1056
    :cond_1
    return-wide v0
.end method

.method public a(I)La/c;
    .locals 3

    .prologue
    .line 951
    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    .line 953
    invoke-virtual {p0, p1}, La/c;->b(I)La/c;

    .line 983
    :goto_0
    return-object p0

    .line 955
    :cond_0
    const/16 v0, 0x800

    if-ge p1, v0, :cond_1

    .line 957
    shr-int/lit8 v0, p1, 0x6

    or-int/lit16 v0, v0, 0xc0

    invoke-virtual {p0, v0}, La/c;->b(I)La/c;

    .line 958
    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, La/c;->b(I)La/c;

    goto :goto_0

    .line 960
    :cond_1
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_3

    .line 961
    const v0, 0xd800

    if-lt p1, v0, :cond_2

    const v0, 0xdfff

    if-gt p1, v0, :cond_2

    .line 963
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, La/c;->b(I)La/c;

    goto :goto_0

    .line 966
    :cond_2
    shr-int/lit8 v0, p1, 0xc

    or-int/lit16 v0, v0, 0xe0

    invoke-virtual {p0, v0}, La/c;->b(I)La/c;

    .line 967
    shr-int/lit8 v0, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, La/c;->b(I)La/c;

    .line 968
    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, La/c;->b(I)La/c;

    goto :goto_0

    .line 971
    :cond_3
    const v0, 0x10ffff

    if-gt p1, v0, :cond_4

    .line 973
    shr-int/lit8 v0, p1, 0x12

    or-int/lit16 v0, v0, 0xf0

    invoke-virtual {p0, v0}, La/c;->b(I)La/c;

    .line 974
    shr-int/lit8 v0, p1, 0xc

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, La/c;->b(I)La/c;

    .line 975
    shr-int/lit8 v0, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, La/c;->b(I)La/c;

    .line 976
    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, La/c;->b(I)La/c;

    goto :goto_0

    .line 979
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected code point: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 980
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(La/c;JJ)La/c;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 174
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_0
    iget-wide v0, p0, La/c;->b:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, La/u;->a(JJJ)V

    .line 176
    cmp-long v0, p4, v6

    if-nez v0, :cond_2

    .line 200
    :cond_1
    return-object p0

    .line 178
    :cond_2
    iget-wide v0, p1, La/c;->b:J

    add-long/2addr v0, p4

    iput-wide v0, p1, La/c;->b:J

    .line 181
    iget-object v0, p0, La/c;->a:La/o;

    .line 182
    :goto_0
    iget v1, v0, La/o;->c:I

    iget v2, v0, La/o;->b:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v1, p2, v2

    if-ltz v1, :cond_3

    .line 183
    iget v1, v0, La/o;->c:I

    iget v2, v0, La/o;->b:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    sub-long/2addr p2, v2

    .line 182
    iget-object v0, v0, La/o;->f:La/o;

    goto :goto_0

    .line 187
    :cond_3
    :goto_1
    cmp-long v1, p4, v6

    if-lez v1, :cond_1

    .line 188
    invoke-virtual {v0}, La/o;->a()La/o;

    move-result-object v1

    .line 189
    iget v2, v1, La/o;->b:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    long-to-int v2, v2

    iput v2, v1, La/o;->b:I

    .line 190
    iget v2, v1, La/o;->b:I

    long-to-int v3, p4

    add-int/2addr v2, v3

    iget v3, v1, La/o;->c:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, La/o;->c:I

    .line 191
    iget-object v2, p1, La/c;->a:La/o;

    if-nez v2, :cond_4

    .line 192
    iput-object v1, v1, La/o;->g:La/o;

    iput-object v1, v1, La/o;->f:La/o;

    iput-object v1, p1, La/c;->a:La/o;

    .line 196
    :goto_2
    iget v2, v1, La/o;->c:I

    iget v1, v1, La/o;->b:I

    sub-int v1, v2, v1

    int-to-long v2, v1

    sub-long/2addr p4, v2

    .line 187
    iget-object v0, v0, La/o;->f:La/o;

    move-wide p2, v6

    goto :goto_1

    .line 194
    :cond_4
    iget-object v2, p1, La/c;->a:La/o;

    iget-object v2, v2, La/o;->g:La/o;

    invoke-virtual {v2, v1}, La/o;->a(La/o;)La/o;

    goto :goto_2
.end method

.method public a(La/f;)La/c;
    .locals 2

    .prologue
    .line 865
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "byteString == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 866
    :cond_0
    invoke-virtual {p1, p0}, La/f;->a(La/c;)V

    .line 867
    return-object p0
.end method

.method public a(Ljava/lang/String;)La/c;
    .locals 2

    .prologue
    .line 871
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, La/c;->a(Ljava/lang/String;II)La/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;II)La/c;
    .locals 9

    .prologue
    const v8, 0xdfff

    const/16 v7, 0x80

    .line 875
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 876
    :cond_0
    if-gez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "beginIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 877
    :cond_1
    if-ge p3, p2, :cond_2

    .line 878
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "endIndex < beginIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 880
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le p3, v0, :cond_5

    .line 881
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "endIndex > string.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 882
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 926
    :cond_3
    const/4 v0, 0x0

    .line 927
    :goto_0
    const v2, 0xdbff

    if-gt v1, v2, :cond_4

    const v2, 0xdc00

    if-lt v0, v2, :cond_4

    if-le v0, v8, :cond_c

    .line 928
    :cond_4
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, La/c;->b(I)La/c;

    .line 929
    add-int/lit8 p2, p2, 0x1

    .line 886
    :cond_5
    :goto_1
    if-ge p2, p3, :cond_d

    .line 887
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 889
    if-ge v1, v7, :cond_8

    .line 890
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, La/c;->e(I)La/o;

    move-result-object v2

    .line 891
    iget-object v3, v2, La/o;->a:[B

    .line 892
    iget v0, v2, La/o;->c:I

    sub-int v4, v0, p2

    .line 893
    rsub-int v0, v4, 0x2000

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 896
    add-int/lit8 v0, p2, 0x1

    add-int v6, v4, p2

    int-to-byte v1, v1

    aput-byte v1, v3, v6

    .line 900
    :goto_2
    if-ge v0, v5, :cond_6

    .line 901
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 902
    if-lt v6, v7, :cond_7

    .line 906
    :cond_6
    add-int v1, v0, v4

    iget v3, v2, La/o;->c:I

    sub-int/2addr v1, v3

    .line 907
    iget v3, v2, La/o;->c:I

    add-int/2addr v3, v1

    iput v3, v2, La/o;->c:I

    .line 908
    iget-wide v2, p0, La/c;->b:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, La/c;->b:J

    :goto_3
    move p2, v0

    .line 945
    goto :goto_1

    .line 903
    :cond_7
    add-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v4

    int-to-byte v6, v6

    aput-byte v6, v3, v0

    move v0, v1

    goto :goto_2

    .line 910
    :cond_8
    const/16 v0, 0x800

    if-ge v1, v0, :cond_9

    .line 912
    shr-int/lit8 v0, v1, 0x6

    or-int/lit16 v0, v0, 0xc0

    invoke-virtual {p0, v0}, La/c;->b(I)La/c;

    .line 913
    and-int/lit8 v0, v1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, La/c;->b(I)La/c;

    .line 914
    add-int/lit8 v0, p2, 0x1

    goto :goto_3

    .line 916
    :cond_9
    const v0, 0xd800

    if-lt v1, v0, :cond_a

    if-le v1, v8, :cond_b

    .line 918
    :cond_a
    shr-int/lit8 v0, v1, 0xc

    or-int/lit16 v0, v0, 0xe0

    invoke-virtual {p0, v0}, La/c;->b(I)La/c;

    .line 919
    shr-int/lit8 v0, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, La/c;->b(I)La/c;

    .line 920
    and-int/lit8 v0, v1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, La/c;->b(I)La/c;

    .line 921
    add-int/lit8 v0, p2, 0x1

    goto :goto_3

    .line 926
    :cond_b
    add-int/lit8 v0, p2, 0x1

    if-ge v0, p3, :cond_3

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto/16 :goto_0

    .line 936
    :cond_c
    const/high16 v2, 0x10000

    const v3, -0xd801

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0xa

    const v3, -0xdc01

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    add-int/2addr v0, v2

    .line 939
    shr-int/lit8 v1, v0, 0x12

    or-int/lit16 v1, v1, 0xf0

    invoke-virtual {p0, v1}, La/c;->b(I)La/c;

    .line 940
    shr-int/lit8 v1, v0, 0xc

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {p0, v1}, La/c;->b(I)La/c;

    .line 941
    shr-int/lit8 v1, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {p0, v1}, La/c;->b(I)La/c;

    .line 942
    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, La/c;->b(I)La/c;

    .line 943
    add-int/lit8 v0, p2, 0x2

    goto :goto_3

    .line 947
    :cond_d
    return-object p0
.end method

.method public a(Ljava/lang/String;IILjava/nio/charset/Charset;)La/c;
    .locals 3

    .prologue
    .line 992
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 993
    :cond_0
    if-gez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalAccessError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "beginIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 994
    :cond_1
    if-ge p3, p2, :cond_2

    .line 995
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "endIndex < beginIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 997
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le p3, v0, :cond_3

    .line 998
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "endIndex > string.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 999
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1001
    :cond_3
    if-nez p4, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1002
    :cond_4
    sget-object v0, La/u;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1, p2, p3}, La/c;->a(Ljava/lang/String;II)La/c;

    move-result-object v0

    .line 1004
    :goto_0
    return-object v0

    .line 1003
    :cond_5
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 1004
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, La/c;->b([BII)La/c;

    move-result-object v0

    goto :goto_0
.end method

.method public a()La/t;
    .locals 1

    .prologue
    .line 1586
    sget-object v0, La/t;->c:La/t;

    return-object v0
.end method

.method public a(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    .line 621
    iget-wide v0, p0, La/c;->b:J

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, La/u;->a(JJJ)V

    .line 622
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 623
    :cond_0
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 624
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 626
    :cond_1
    cmp-long v0, p1, v2

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    .line 643
    :cond_2
    :goto_0
    return-object v0

    .line 628
    :cond_3
    iget-object v1, p0, La/c;->a:La/o;

    .line 629
    iget v0, v1, La/o;->b:I

    int-to-long v2, v0

    add-long/2addr v2, p1

    iget v0, v1, La/o;->c:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    .line 631
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, La/c;->g(J)[B

    move-result-object v1

    invoke-direct {v0, v1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    .line 634
    :cond_4
    new-instance v0, Ljava/lang/String;

    iget-object v2, v1, La/o;->a:[B

    iget v3, v1, La/o;->b:I

    long-to-int v4, p1

    invoke-direct {v0, v2, v3, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 635
    iget v2, v1, La/o;->b:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    long-to-int v2, v2

    iput v2, v1, La/o;->b:I

    .line 636
    iget-wide v2, p0, La/c;->b:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, La/c;->b:J

    .line 638
    iget v2, v1, La/o;->b:I

    iget v3, v1, La/o;->c:I

    if-ne v2, v3, :cond_2

    .line 639
    invoke-virtual {v1}, La/o;->b()La/o;

    move-result-object v2

    iput-object v2, p0, La/c;->a:La/o;

    .line 640
    invoke-static {v1}, La/p;->a(La/o;)V

    goto :goto_0
.end method

.method public a(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 614
    :try_start_0
    iget-wide v0, p0, La/c;->b:J

    invoke-virtual {p0, v0, v1, p1}, La/c;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 615
    :catch_0
    move-exception v0

    .line 616
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public a(J)V
    .locals 3

    .prologue
    .line 109
    iget-wide v0, p0, La/c;->b:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 110
    :cond_0
    return-void
.end method

.method public a([B)V
    .locals 3

    .prologue
    .line 789
    const/4 v0, 0x0

    .line 790
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 791
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, La/c;->a([BII)I

    move-result v1

    .line 792
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 793
    :cond_0
    add-int/2addr v0, v1

    .line 794
    goto :goto_0

    .line 795
    :cond_1
    return-void
.end method

.method public a(JLa/f;)Z
    .locals 7

    .prologue
    .line 1527
    const/4 v5, 0x0

    invoke-virtual {p3}, La/f;->g()I

    move-result v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, La/c;->a(JLa/f;II)Z

    move-result v0

    return v0
.end method

.method public a(JLa/f;II)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 1532
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    if-ltz p4, :cond_0

    if-ltz p5, :cond_0

    iget-wide v2, p0, La/c;->b:J

    sub-long/2addr v2, p1

    int-to-long v4, p5

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 1536
    invoke-virtual {p3}, La/f;->g()I

    move-result v1

    sub-int/2addr v1, p4

    if-ge v1, p5, :cond_1

    .line 1544
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v0

    .line 1539
    :goto_1
    if-ge v1, p5, :cond_2

    .line 1540
    int-to-long v2, v1

    add-long/2addr v2, p1

    invoke-virtual {p0, v2, v3}, La/c;->b(J)B

    move-result v2

    add-int v3, p4, v1

    invoke-virtual {p3, v3}, La/f;->a(I)B

    move-result v3

    if-ne v2, v3, :cond_0

    .line 1539
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1544
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a_(La/c;J)V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 1273
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1274
    :cond_0
    if-ne p1, p0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == this"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1275
    :cond_1
    iget-wide v0, p1, La/c;->b:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, La/u;->a(JJJ)V

    .line 1277
    :goto_0
    cmp-long v0, p2, v2

    if-lez v0, :cond_2

    .line 1279
    iget-object v0, p1, La/c;->a:La/o;

    iget v0, v0, La/o;->c:I

    iget-object v1, p1, La/c;->a:La/o;

    iget v1, v1, La/o;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-gez v0, :cond_6

    .line 1280
    iget-object v0, p0, La/c;->a:La/o;

    if-eqz v0, :cond_3

    iget-object v0, p0, La/c;->a:La/o;

    iget-object v0, v0, La/o;->g:La/o;

    move-object v1, v0

    .line 1281
    :goto_1
    if-eqz v1, :cond_5

    iget-boolean v0, v1, La/o;->e:Z

    if-eqz v0, :cond_5

    iget v0, v1, La/o;->c:I

    int-to-long v4, v0

    add-long/2addr v4, p2

    iget-boolean v0, v1, La/o;->d:Z

    if-eqz v0, :cond_4

    .line 1282
    const/4 v0, 0x0

    :goto_2
    int-to-long v6, v0

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x2000

    cmp-long v0, v4, v6

    if-gtz v0, :cond_5

    .line 1284
    iget-object v0, p1, La/c;->a:La/o;

    long-to-int v2, p2

    invoke-virtual {v0, v1, v2}, La/o;->a(La/o;I)V

    .line 1285
    iget-wide v0, p1, La/c;->b:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, La/c;->b:J

    .line 1286
    iget-wide v0, p0, La/c;->b:J

    add-long/2addr v0, p2

    iput-wide v0, p0, La/c;->b:J

    .line 1311
    :cond_2
    return-void

    .line 1280
    :cond_3
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1

    .line 1282
    :cond_4
    iget v0, v1, La/o;->b:I

    goto :goto_2

    .line 1291
    :cond_5
    iget-object v0, p1, La/c;->a:La/o;

    long-to-int v1, p2

    invoke-virtual {v0, v1}, La/o;->a(I)La/o;

    move-result-object v0

    iput-object v0, p1, La/c;->a:La/o;

    .line 1296
    :cond_6
    iget-object v0, p1, La/c;->a:La/o;

    .line 1297
    iget v1, v0, La/o;->c:I

    iget v4, v0, La/o;->b:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    .line 1298
    invoke-virtual {v0}, La/o;->b()La/o;

    move-result-object v1

    iput-object v1, p1, La/c;->a:La/o;

    .line 1299
    iget-object v1, p0, La/c;->a:La/o;

    if-nez v1, :cond_7

    .line 1300
    iput-object v0, p0, La/c;->a:La/o;

    .line 1301
    iget-object v0, p0, La/c;->a:La/o;

    iget-object v1, p0, La/c;->a:La/o;

    iget-object v6, p0, La/c;->a:La/o;

    iput-object v6, v1, La/o;->g:La/o;

    iput-object v6, v0, La/o;->f:La/o;

    .line 1307
    :goto_3
    iget-wide v0, p1, La/c;->b:J

    sub-long/2addr v0, v4

    iput-wide v0, p1, La/c;->b:J

    .line 1308
    iget-wide v0, p0, La/c;->b:J

    add-long/2addr v0, v4

    iput-wide v0, p0, La/c;->b:J

    .line 1309
    sub-long/2addr p2, v4

    .line 1310
    goto :goto_0

    .line 1303
    :cond_7
    iget-object v1, p0, La/c;->a:La/o;

    iget-object v1, v1, La/o;->g:La/o;

    .line 1304
    invoke-virtual {v1, v0}, La/o;->a(La/o;)La/o;

    move-result-object v0

    .line 1305
    invoke-virtual {v0}, La/o;->c()V

    goto :goto_3
.end method

.method public b(J)B
    .locals 7

    .prologue
    .line 302
    iget-wide v0, p0, La/c;->b:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, La/u;->a(JJJ)V

    .line 303
    iget-wide v0, p0, La/c;->b:J

    sub-long/2addr v0, p1

    cmp-long v0, v0, p1

    if-lez v0, :cond_1

    .line 304
    iget-object v0, p0, La/c;->a:La/o;

    .line 305
    :goto_0
    iget v1, v0, La/o;->c:I

    iget v2, v0, La/o;->b:I

    sub-int/2addr v1, v2

    .line 306
    int-to-long v2, v1

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    iget-object v1, v0, La/o;->a:[B

    iget v0, v0, La/o;->b:I

    long-to-int v2, p1

    add-int/2addr v0, v2

    aget-byte v0, v1, v0

    .line 313
    :goto_1
    return v0

    .line 307
    :cond_0
    int-to-long v2, v1

    sub-long/2addr p1, v2

    .line 304
    iget-object v0, v0, La/o;->f:La/o;

    goto :goto_0

    .line 310
    :cond_1
    iget-wide v0, p0, La/c;->b:J

    sub-long v2, p1, v0

    .line 311
    iget-object v0, p0, La/c;->a:La/o;

    iget-object v0, v0, La/o;->g:La/o;

    .line 312
    :goto_2
    iget v1, v0, La/o;->c:I

    iget v4, v0, La/o;->b:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 313
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_2

    iget-object v1, v0, La/o;->a:[B

    iget v0, v0, La/o;->b:I

    long-to-int v2, v2

    add-int/2addr v0, v2

    aget-byte v0, v1, v0

    goto :goto_1

    .line 311
    :cond_2
    iget-object v0, v0, La/o;->g:La/o;

    goto :goto_2
.end method

.method public b()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, La/c;->b:J

    return-wide v0
.end method

.method public b(I)La/c;
    .locals 4

    .prologue
    .line 1069
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, La/c;->e(I)La/o;

    move-result-object v0

    .line 1070
    iget-object v1, v0, La/o;->a:[B

    iget v2, v0, La/o;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, La/o;->c:I

    int-to-byte v0, p1

    aput-byte v0, v1, v2

    .line 1071
    iget-wide v0, p0, La/c;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, La/c;->b:J

    .line 1072
    return-object p0
.end method

.method public b([B)La/c;
    .locals 2

    .prologue
    .line 1008
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1009
    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, La/c;->b([BII)La/c;

    move-result-object v0

    return-object v0
.end method

.method public b([BII)La/c;
    .locals 6

    .prologue
    .line 1013
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1014
    :cond_0
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, La/u;->a(JJJ)V

    .line 1016
    add-int v0, p2, p3

    .line 1017
    :goto_0
    if-ge p2, v0, :cond_1

    .line 1018
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, La/c;->e(I)La/o;

    move-result-object v1

    .line 1020
    sub-int v2, v0, p2

    iget v3, v1, La/o;->c:I

    rsub-int v3, v3, 0x2000

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1021
    iget-object v3, v1, La/o;->a:[B

    iget v4, v1, La/o;->c:I

    invoke-static {p1, p2, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1023
    add-int/2addr p2, v2

    .line 1024
    iget v3, v1, La/o;->c:I

    add-int/2addr v2, v3

    iput v2, v1, La/o;->c:I

    goto :goto_0

    .line 1027
    :cond_1
    iget-wide v0, p0, La/c;->b:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, La/c;->b:J

    .line 1028
    return-object p0
.end method

.method public synthetic b(La/f;)La/d;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, La/c;->a(La/f;)La/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/String;)La/d;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, La/c;->a(Ljava/lang/String;)La/c;

    move-result-object v0

    return-object v0
.end method

.method public c()La/c;
    .locals 0

    .prologue
    .line 71
    return-object p0
.end method

.method public c(I)La/c;
    .locals 5

    .prologue
    .line 1076
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, La/c;->e(I)La/o;

    move-result-object v0

    .line 1077
    iget-object v1, v0, La/o;->a:[B

    .line 1078
    iget v2, v0, La/o;->c:I

    .line 1079
    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1080
    add-int/lit8 v2, v3, 0x1

    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1081
    iput v2, v0, La/o;->c:I

    .line 1082
    iget-wide v0, p0, La/c;->b:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, La/c;->b:J

    .line 1083
    return-object p0
.end method

.method public synthetic c([B)La/d;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, La/c;->b([B)La/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c([BII)La/d;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2, p3}, La/c;->b([BII)La/c;

    move-result-object v0

    return-object v0
.end method

.method public c(J)La/f;
    .locals 3

    .prologue
    .line 544
    new-instance v0, La/f;

    invoke-virtual {p0, p1, p2}, La/c;->g(J)[B

    move-result-object v1

    invoke-direct {v0, v1}, La/f;-><init>([B)V

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, La/c;->r()La/c;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 1583
    return-void
.end method

.method public d()La/c;
    .locals 0

    .prologue
    .line 97
    return-object p0
.end method

.method public d(I)La/c;
    .locals 5

    .prologue
    .line 1091
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, La/c;->e(I)La/o;

    move-result-object v0

    .line 1092
    iget-object v1, v0, La/o;->a:[B

    .line 1093
    iget v2, v0, La/o;->c:I

    .line 1094
    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1095
    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1096
    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1097
    add-int/lit8 v2, v3, 0x1

    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1098
    iput v2, v0, La/o;->c:I

    .line 1099
    iget-wide v0, p0, La/c;->b:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, La/c;->b:J

    .line 1100
    return-object p0
.end method

.method public d(J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 609
    sget-object v0, La/u;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, La/c;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method e(I)La/o;
    .locals 3

    .prologue
    const/16 v2, 0x2000

    .line 1208
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    if-le p1, v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1210
    :cond_1
    iget-object v0, p0, La/c;->a:La/o;

    if-nez v0, :cond_3

    .line 1211
    invoke-static {}, La/p;->a()La/o;

    move-result-object v0

    iput-object v0, p0, La/c;->a:La/o;

    .line 1212
    iget-object v1, p0, La/c;->a:La/o;

    iget-object v2, p0, La/c;->a:La/o;

    iget-object v0, p0, La/c;->a:La/o;

    iput-object v0, v2, La/o;->g:La/o;

    iput-object v0, v1, La/o;->f:La/o;

    .line 1219
    :cond_2
    :goto_0
    return-object v0

    .line 1215
    :cond_3
    iget-object v0, p0, La/c;->a:La/o;

    iget-object v0, v0, La/o;->g:La/o;

    .line 1216
    iget v1, v0, La/o;->c:I

    add-int/2addr v1, p1

    if-gt v1, v2, :cond_4

    iget-boolean v1, v0, La/o;->e:Z

    if-nez v1, :cond_2

    .line 1217
    :cond_4
    invoke-static {}, La/p;->a()La/o;

    move-result-object v1

    invoke-virtual {v0, v1}, La/o;->a(La/o;)La/o;

    move-result-object v0

    goto :goto_0
.end method

.method public e(J)Ljava/lang/String;
    .locals 13

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    const-wide/16 v10, 0x1

    const/16 v1, 0xa

    const-wide/16 v2, 0x0

    .line 661
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "limit < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 662
    :cond_0
    cmp-long v0, p1, v4

    if-nez v0, :cond_1

    :goto_0
    move-object v0, p0

    .line 663
    invoke-virtual/range {v0 .. v5}, La/c;->a(BJJ)J

    move-result-wide v6

    .line 664
    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-eqz v0, :cond_2

    invoke-virtual {p0, v6, v7}, La/c;->f(J)Ljava/lang/String;

    move-result-object v0

    .line 667
    :goto_1
    return-object v0

    .line 662
    :cond_1
    add-long v4, p1, v10

    goto :goto_0

    .line 665
    :cond_2
    invoke-virtual {p0}, La/c;->b()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gez v0, :cond_3

    sub-long v6, v4, v10

    .line 666
    invoke-virtual {p0, v6, v7}, La/c;->b(J)B

    move-result v0

    const/16 v6, 0xd

    if-ne v0, v6, :cond_3

    invoke-virtual {p0, v4, v5}, La/c;->b(J)B

    move-result v0

    if-ne v0, v1, :cond_3

    .line 667
    invoke-virtual {p0, v4, v5}, La/c;->f(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 669
    :cond_3
    new-instance v1, La/c;

    invoke-direct {v1}, La/c;-><init>()V

    .line 670
    const-wide/16 v4, 0x20

    invoke-virtual {p0}, La/c;->b()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, La/c;->a(La/c;JJ)La/c;

    .line 671
    new-instance v0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\\n not found: limit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, La/c;->b()J

    move-result-wide v4

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 672
    invoke-virtual {v1}, La/c;->m()La/f;

    move-result-object v1

    invoke-virtual {v1}, La/f;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2026

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()Z
    .locals 4

    .prologue
    .line 105
    iget-wide v0, p0, La/c;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 14

    .prologue
    const-wide/16 v0, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1669
    if-ne p0, p1, :cond_0

    move v0, v6

    .line 1698
    :goto_0
    return v0

    .line 1670
    :cond_0
    instance-of v2, p1, La/c;

    if-nez v2, :cond_1

    move v0, v7

    goto :goto_0

    .line 1671
    :cond_1
    check-cast p1, La/c;

    .line 1672
    iget-wide v2, p0, La/c;->b:J

    iget-wide v4, p1, La/c;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    move v0, v7

    goto :goto_0

    .line 1673
    :cond_2
    iget-wide v2, p0, La/c;->b:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_3

    move v0, v6

    goto :goto_0

    .line 1675
    :cond_3
    iget-object v5, p0, La/c;->a:La/o;

    .line 1676
    iget-object v4, p1, La/c;->a:La/o;

    .line 1677
    iget v3, v5, La/o;->b:I

    .line 1678
    iget v2, v4, La/o;->b:I

    .line 1680
    :goto_1
    iget-wide v8, p0, La/c;->b:J

    cmp-long v8, v0, v8

    if-gez v8, :cond_8

    .line 1681
    iget v8, v5, La/o;->c:I

    sub-int/2addr v8, v3

    iget v9, v4, La/o;->c:I

    sub-int/2addr v9, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-long v12, v8

    move v8, v7

    .line 1683
    :goto_2
    int-to-long v10, v8

    cmp-long v9, v10, v12

    if-gez v9, :cond_5

    .line 1684
    iget-object v9, v5, La/o;->a:[B

    add-int/lit8 v10, v3, 0x1

    aget-byte v3, v9, v3

    iget-object v11, v4, La/o;->a:[B

    add-int/lit8 v9, v2, 0x1

    aget-byte v2, v11, v2

    if-eq v3, v2, :cond_4

    move v0, v7

    goto :goto_0

    .line 1683
    :cond_4
    add-int/lit8 v8, v8, 0x1

    move v2, v9

    move v3, v10

    goto :goto_2

    .line 1687
    :cond_5
    iget v8, v5, La/o;->c:I

    if-ne v3, v8, :cond_6

    .line 1688
    iget-object v5, v5, La/o;->f:La/o;

    .line 1689
    iget v3, v5, La/o;->b:I

    .line 1692
    :cond_6
    iget v8, v4, La/o;->c:I

    if-ne v2, v8, :cond_7

    .line 1693
    iget-object v4, v4, La/o;->f:La/o;

    .line 1694
    iget v2, v4, La/o;->b:I

    .line 1680
    :cond_7
    add-long/2addr v0, v12

    goto :goto_1

    :cond_8
    move v0, v6

    .line 1698
    goto :goto_0
.end method

.method public f()J
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 267
    iget-wide v0, p0, La/c;->b:J

    .line 268
    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    move-wide v0, v2

    .line 276
    :cond_0
    :goto_0
    return-wide v0

    .line 271
    :cond_1
    iget-object v2, p0, La/c;->a:La/o;

    iget-object v2, v2, La/o;->g:La/o;

    .line 272
    iget v3, v2, La/o;->c:I

    const/16 v4, 0x2000

    if-ge v3, v4, :cond_0

    iget-boolean v3, v2, La/o;->e:Z

    if-eqz v3, :cond_0

    .line 273
    iget v3, v2, La/o;->c:I

    iget v2, v2, La/o;->b:I

    sub-int v2, v3, v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public f(I)La/f;
    .locals 1

    .prologue
    .line 1748
    if-nez p1, :cond_0

    sget-object v0, La/f;->b:La/f;

    .line 1749
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, La/q;

    invoke-direct {v0, p0, p1}, La/q;-><init>(La/c;I)V

    goto :goto_0
.end method

.method f(J)Ljava/lang/String;
    .locals 5

    .prologue
    const-wide/16 v2, 0x1

    .line 676
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    sub-long v0, p1, v2

    invoke-virtual {p0, v0, v1}, La/c;->b(J)B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 678
    sub-long v0, p1, v2

    invoke-virtual {p0, v0, v1}, La/c;->d(J)Ljava/lang/String;

    move-result-object v0

    .line 679
    const-wide/16 v2, 0x2

    invoke-virtual {p0, v2, v3}, La/c;->h(J)V

    .line 686
    :goto_0
    return-object v0

    .line 684
    :cond_0
    invoke-virtual {p0, p1, p2}, La/c;->d(J)Ljava/lang/String;

    move-result-object v0

    .line 685
    invoke-virtual {p0, v2, v3}, La/c;->h(J)V

    goto :goto_0
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 1576
    return-void
.end method

.method public g()B
    .locals 10

    .prologue
    .line 280
    iget-wide v0, p0, La/c;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_0
    iget-object v0, p0, La/c;->a:La/o;

    .line 283
    iget v1, v0, La/o;->b:I

    .line 284
    iget v2, v0, La/o;->c:I

    .line 286
    iget-object v3, v0, La/o;->a:[B

    .line 287
    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    .line 288
    iget-wide v6, p0, La/c;->b:J

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iput-wide v6, p0, La/c;->b:J

    .line 290
    if-ne v4, v2, :cond_1

    .line 291
    invoke-virtual {v0}, La/o;->b()La/o;

    move-result-object v2

    iput-object v2, p0, La/c;->a:La/o;

    .line 292
    invoke-static {v0}, La/p;->a(La/o;)V

    .line 297
    :goto_0
    return v1

    .line 294
    :cond_1
    iput v4, v0, La/o;->b:I

    goto :goto_0
.end method

.method public synthetic g(I)La/d;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, La/c;->d(I)La/c;

    move-result-object v0

    return-object v0
.end method

.method public g(J)[B
    .locals 7

    .prologue
    .line 774
    iget-wide v0, p0, La/c;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, La/u;->a(JJJ)V

    .line 775
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 776
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 779
    :cond_0
    long-to-int v0, p1

    new-array v0, v0, [B

    .line 780
    invoke-virtual {p0, v0}, La/c;->a([B)V

    .line 781
    return-object v0
.end method

.method public synthetic h(I)La/d;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, La/c;->c(I)La/c;

    move-result-object v0

    return-object v0
.end method

.method public h()S
    .locals 10

    .prologue
    const-wide/16 v8, 0x2

    .line 319
    iget-wide v0, p0, La/c;->b:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size < 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, La/c;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_0
    iget-object v0, p0, La/c;->a:La/o;

    .line 322
    iget v1, v0, La/o;->b:I

    .line 323
    iget v2, v0, La/o;->c:I

    .line 326
    sub-int v3, v2, v1

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 327
    invoke-virtual {p0}, La/c;->g()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    .line 328
    invoke-virtual {p0}, La/c;->g()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 329
    int-to-short v0, v0

    .line 344
    :goto_0
    return v0

    .line 332
    :cond_1
    iget-object v3, v0, La/o;->a:[B

    .line 333
    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    .line 335
    iget-wide v6, p0, La/c;->b:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, La/c;->b:J

    .line 337
    if-ne v5, v2, :cond_2

    .line 338
    invoke-virtual {v0}, La/o;->b()La/o;

    move-result-object v2

    iput-object v2, p0, La/c;->a:La/o;

    .line 339
    invoke-static {v0}, La/p;->a(La/o;)V

    .line 344
    :goto_1
    int-to-short v0, v1

    goto :goto_0

    .line 341
    :cond_2
    iput v5, v0, La/o;->b:I

    goto :goto_1
.end method

.method public h(J)V
    .locals 7

    .prologue
    .line 848
    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 849
    iget-object v0, p0, La/c;->a:La/o;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 851
    :cond_1
    iget-object v0, p0, La/c;->a:La/o;

    iget v0, v0, La/o;->c:I

    iget-object v1, p0, La/c;->a:La/o;

    iget v1, v1, La/o;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 852
    iget-wide v2, p0, La/c;->b:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, La/c;->b:J

    .line 853
    int-to-long v2, v0

    sub-long/2addr p1, v2

    .line 854
    iget-object v1, p0, La/c;->a:La/o;

    iget v2, v1, La/o;->b:I

    add-int/2addr v0, v2

    iput v0, v1, La/o;->b:I

    .line 856
    iget-object v0, p0, La/c;->a:La/o;

    iget v0, v0, La/o;->b:I

    iget-object v1, p0, La/c;->a:La/o;

    iget v1, v1, La/o;->c:I

    if-ne v0, v1, :cond_0

    .line 857
    iget-object v0, p0, La/c;->a:La/o;

    .line 858
    invoke-virtual {v0}, La/o;->b()La/o;

    move-result-object v1

    iput-object v1, p0, La/c;->a:La/o;

    .line 859
    invoke-static {v0}, La/p;->a(La/o;)V

    goto :goto_0

    .line 862
    :cond_2
    return-void
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 1702
    iget-object v1, p0, La/c;->a:La/o;

    .line 1703
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 1711
    :goto_0
    return v0

    .line 1704
    :cond_0
    const/4 v0, 0x1

    .line 1706
    :cond_1
    iget v2, v1, La/o;->b:I

    iget v3, v1, La/o;->c:I

    :goto_1
    if-ge v2, v3, :cond_2

    .line 1707
    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, v1, La/o;->a:[B

    aget-byte v4, v4, v2

    add-int/2addr v0, v4

    .line 1706
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1709
    :cond_2
    iget-object v1, v1, La/o;->f:La/o;

    .line 1710
    iget-object v2, p0, La/c;->a:La/o;

    if-ne v1, v2, :cond_1

    goto :goto_0
.end method

.method public i()I
    .locals 10

    .prologue
    const-wide/16 v8, 0x4

    .line 348
    iget-wide v0, p0, La/c;->b:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size < 4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, La/c;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_0
    iget-object v1, p0, La/c;->a:La/o;

    .line 351
    iget v0, v1, La/o;->b:I

    .line 352
    iget v2, v1, La/o;->c:I

    .line 355
    sub-int v3, v2, v0

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    .line 356
    invoke-virtual {p0}, La/c;->g()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 357
    invoke-virtual {p0}, La/c;->g()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 358
    invoke-virtual {p0}, La/c;->g()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 359
    invoke-virtual {p0}, La/c;->g()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 376
    :goto_0
    return v0

    .line 362
    :cond_1
    iget-object v3, v1, La/o;->a:[B

    .line 363
    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    add-int/lit8 v4, v5, 0x1

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v0, v5

    add-int/lit8 v5, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    .line 367
    iget-wide v6, p0, La/c;->b:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, La/c;->b:J

    .line 369
    if-ne v5, v2, :cond_2

    .line 370
    invoke-virtual {v1}, La/o;->b()La/o;

    move-result-object v2

    iput-object v2, p0, La/c;->a:La/o;

    .line 371
    invoke-static {v1}, La/p;->a(La/o;)V

    goto :goto_0

    .line 373
    :cond_2
    iput v5, v1, La/o;->b:I

    goto :goto_0
.end method

.method public i(J)La/c;
    .locals 11

    .prologue
    .line 1129
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1131
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, La/c;->b(I)La/c;

    move-result-object p0

    .line 1181
    :goto_0
    return-object p0

    .line 1134
    :cond_0
    const/4 v0, 0x0

    .line 1135
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_17

    .line 1136
    neg-long v2, p1

    .line 1137
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    .line 1138
    const-string/jumbo v0, "-9223372036854775808"

    invoke-virtual {p0, v0}, La/c;->a(Ljava/lang/String;)La/c;

    move-result-object p0

    goto :goto_0

    .line 1140
    :cond_1
    const/4 v0, 0x1

    move v4, v0

    .line 1144
    :goto_1
    const-wide/32 v0, 0x5f5e100

    cmp-long v0, v2, v0

    if-gez v0, :cond_a

    .line 1147
    const-wide/16 v0, 0x2710

    cmp-long v0, v2, v0

    if-gez v0, :cond_6

    .line 1148
    const-wide/16 v0, 0x64

    cmp-long v0, v2, v0

    if-gez v0, :cond_4

    const-wide/16 v0, 0xa

    cmp-long v0, v2, v0

    if-gez v0, :cond_3

    const/4 v0, 0x1

    .line 1163
    :goto_2
    if-eqz v4, :cond_2

    .line 1164
    add-int/lit8 v0, v0, 0x1

    .line 1167
    :cond_2
    invoke-virtual {p0, v0}, La/c;->e(I)La/o;

    move-result-object v5

    .line 1168
    iget-object v6, v5, La/o;->a:[B

    .line 1169
    iget v1, v5, La/o;->c:I

    add-int/2addr v1, v0

    .line 1170
    :goto_3
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-eqz v7, :cond_15

    .line 1171
    const-wide/16 v8, 0xa

    rem-long v8, v2, v8

    long-to-int v7, v8

    .line 1172
    add-int/lit8 v1, v1, -0x1

    sget-object v8, La/c;->c:[B

    aget-byte v7, v8, v7

    aput-byte v7, v6, v1

    .line 1173
    const-wide/16 v8, 0xa

    div-long/2addr v2, v8

    goto :goto_3

    .line 1148
    :cond_3
    const/4 v0, 0x2

    goto :goto_2

    .line 1149
    :cond_4
    const-wide/16 v0, 0x3e8

    cmp-long v0, v2, v0

    if-gez v0, :cond_5

    const/4 v0, 0x3

    goto :goto_2

    :cond_5
    const/4 v0, 0x4

    goto :goto_2

    .line 1151
    :cond_6
    const-wide/32 v0, 0xf4240

    cmp-long v0, v2, v0

    if-gez v0, :cond_8

    const-wide/32 v0, 0x186a0

    cmp-long v0, v2, v0

    if-gez v0, :cond_7

    const/4 v0, 0x5

    goto :goto_2

    :cond_7
    const/4 v0, 0x6

    goto :goto_2

    .line 1152
    :cond_8
    const-wide/32 v0, 0x989680

    cmp-long v0, v2, v0

    if-gez v0, :cond_9

    const/4 v0, 0x7

    goto :goto_2

    :cond_9
    const/16 v0, 0x8

    goto :goto_2

    .line 1154
    :cond_a
    const-wide v0, 0xe8d4a51000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_e

    .line 1155
    const-wide v0, 0x2540be400L

    cmp-long v0, v2, v0

    if-gez v0, :cond_c

    const-wide/32 v0, 0x3b9aca00

    cmp-long v0, v2, v0

    if-gez v0, :cond_b

    const/16 v0, 0x9

    goto :goto_2

    :cond_b
    const/16 v0, 0xa

    goto :goto_2

    .line 1156
    :cond_c
    const-wide v0, 0x174876e800L

    cmp-long v0, v2, v0

    if-gez v0, :cond_d

    const/16 v0, 0xb

    goto :goto_2

    :cond_d
    const/16 v0, 0xc

    goto :goto_2

    .line 1158
    :cond_e
    const-wide v0, 0x38d7ea4c68000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_11

    const-wide v0, 0x9184e72a000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_f

    const/16 v0, 0xd

    goto/16 :goto_2

    .line 1159
    :cond_f
    const-wide v0, 0x5af3107a4000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_10

    const/16 v0, 0xe

    goto/16 :goto_2

    :cond_10
    const/16 v0, 0xf

    goto/16 :goto_2

    .line 1161
    :cond_11
    const-wide v0, 0x16345785d8a0000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_13

    const-wide v0, 0x2386f26fc10000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_12

    const/16 v0, 0x10

    goto/16 :goto_2

    :cond_12
    const/16 v0, 0x11

    goto/16 :goto_2

    .line 1162
    :cond_13
    const-wide v0, 0xde0b6b3a7640000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_14

    const/16 v0, 0x12

    goto/16 :goto_2

    :cond_14
    const/16 v0, 0x13

    goto/16 :goto_2

    .line 1175
    :cond_15
    if-eqz v4, :cond_16

    .line 1176
    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x2d

    aput-byte v2, v6, v1

    .line 1179
    :cond_16
    iget v1, v5, La/o;->c:I

    add-int/2addr v1, v0

    iput v1, v5, La/o;->c:I

    .line 1180
    iget-wide v2, p0, La/c;->b:J

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, La/c;->b:J

    goto/16 :goto_0

    :cond_17
    move v4, v0

    move-wide v2, p1

    goto/16 :goto_1
.end method

.method public synthetic i(I)La/d;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, La/c;->b(I)La/c;

    move-result-object v0

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 1579
    const/4 v0, 0x1

    return v0
.end method

.method public j(J)La/c;
    .locals 9

    .prologue
    .line 1185
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1187
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, La/c;->b(I)La/c;

    move-result-object p0

    .line 1200
    :goto_0
    return-object p0

    .line 1190
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v0, 0x1

    .line 1192
    invoke-virtual {p0, v1}, La/c;->e(I)La/o;

    move-result-object v2

    .line 1193
    iget-object v3, v2, La/o;->a:[B

    .line 1194
    iget v0, v2, La/o;->c:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v4, v2, La/o;->c:I

    :goto_1
    if-lt v0, v4, :cond_1

    .line 1195
    sget-object v5, La/c;->c:[B

    const-wide/16 v6, 0xf

    and-long/2addr v6, p1

    long-to-int v6, v6

    aget-byte v5, v5, v6

    aput-byte v5, v3, v0

    .line 1196
    const/4 v5, 0x4

    ushr-long/2addr p1, v5

    .line 1194
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1198
    :cond_1
    iget v0, v2, La/o;->c:I

    add-int/2addr v0, v1

    iput v0, v2, La/o;->c:I

    .line 1199
    iget-wide v2, p0, La/c;->b:J

    int-to-long v0, v1

    add-long/2addr v0, v2

    iput-wide v0, p0, La/c;->b:J

    goto :goto_0
.end method

.method public j()S
    .locals 1

    .prologue
    .line 414
    invoke-virtual {p0}, La/c;->h()S

    move-result v0

    invoke-static {v0}, La/u;->a(S)S

    move-result v0

    return v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 418
    invoke-virtual {p0}, La/c;->i()I

    move-result v0

    invoke-static {v0}, La/u;->a(I)I

    move-result v0

    return v0
.end method

.method public synthetic k(J)La/d;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, La/c;->j(J)La/c;

    move-result-object v0

    return-object v0
.end method

.method public l()J
    .locals 14

    .prologue
    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    .line 484
    iget-wide v2, p0, La/c;->b:J

    cmp-long v0, v2, v6

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    move v2, v1

    move-wide v4, v6

    .line 491
    :goto_0
    iget-object v8, p0, La/c;->a:La/o;

    .line 493
    iget-object v9, v8, La/o;->a:[B

    .line 494
    iget v3, v8, La/o;->b:I

    .line 495
    iget v10, v8, La/o;->c:I

    move v1, v2

    .line 497
    :goto_1
    if-ge v3, v10, :cond_5

    .line 500
    aget-byte v11, v9, v3

    .line 501
    const/16 v2, 0x30

    if-lt v11, v2, :cond_1

    const/16 v2, 0x39

    if-gt v11, v2, :cond_1

    .line 502
    add-int/lit8 v2, v11, -0x30

    .line 518
    :goto_2
    const-wide/high16 v12, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v12, v4

    cmp-long v12, v12, v6

    if-eqz v12, :cond_7

    .line 519
    new-instance v0, La/c;

    invoke-direct {v0}, La/c;-><init>()V

    invoke-virtual {v0, v4, v5}, La/c;->j(J)La/c;

    move-result-object v0

    invoke-virtual {v0, v11}, La/c;->b(I)La/c;

    move-result-object v0

    .line 520
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Number too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, La/c;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 503
    :cond_1
    const/16 v2, 0x61

    if-lt v11, v2, :cond_2

    const/16 v2, 0x66

    if-gt v11, v2, :cond_2

    .line 504
    add-int/lit8 v2, v11, -0x61

    add-int/lit8 v2, v2, 0xa

    goto :goto_2

    .line 505
    :cond_2
    const/16 v2, 0x41

    if-lt v11, v2, :cond_3

    const/16 v2, 0x46

    if-gt v11, v2, :cond_3

    .line 506
    add-int/lit8 v2, v11, -0x41

    add-int/lit8 v2, v2, 0xa

    goto :goto_2

    .line 508
    :cond_3
    if-nez v1, :cond_4

    .line 509
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 510
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    :cond_4
    const/4 v0, 0x1

    .line 527
    :cond_5
    if-ne v3, v10, :cond_8

    .line 528
    invoke-virtual {v8}, La/o;->b()La/o;

    move-result-object v2

    iput-object v2, p0, La/c;->a:La/o;

    .line 529
    invoke-static {v8}, La/p;->a(La/o;)V

    .line 533
    :goto_3
    if-nez v0, :cond_6

    iget-object v2, p0, La/c;->a:La/o;

    if-nez v2, :cond_9

    .line 535
    :cond_6
    iget-wide v2, p0, La/c;->b:J

    int-to-long v0, v1

    sub-long v0, v2, v0

    iput-wide v0, p0, La/c;->b:J

    .line 536
    return-wide v4

    .line 523
    :cond_7
    const/4 v11, 0x4

    shl-long/2addr v4, v11

    .line 524
    int-to-long v12, v2

    or-long/2addr v4, v12

    .line 497
    add-int/lit8 v2, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto/16 :goto_1

    .line 531
    :cond_8
    iput v3, v8, La/o;->b:I

    goto :goto_3

    :cond_9
    move v2, v1

    goto/16 :goto_0
.end method

.method public synthetic l(J)La/d;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, La/c;->i(J)La/c;

    move-result-object v0

    return-object v0
.end method

.method public m()La/f;
    .locals 2

    .prologue
    .line 540
    new-instance v0, La/f;

    invoke-virtual {p0}, La/c;->p()[B

    move-result-object v1

    invoke-direct {v0, v1}, La/f;-><init>([B)V

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 3

    .prologue
    .line 602
    :try_start_0
    iget-wide v0, p0, La/c;->b:J

    sget-object v2, La/u;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, La/c;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 603
    :catch_0
    move-exception v0

    .line 604
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public o()Ljava/lang/String;
    .locals 2

    .prologue
    .line 657
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, La/c;->e(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()[B
    .locals 2

    .prologue
    .line 767
    :try_start_0
    iget-wide v0, p0, La/c;->b:J

    invoke-virtual {p0, v0, v1}, La/c;->g(J)[B
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 768
    :catch_0
    move-exception v0

    .line 769
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public q()V
    .locals 2

    .prologue
    .line 840
    :try_start_0
    iget-wide v0, p0, La/c;->b:J

    invoke-virtual {p0, v0, v1}, La/c;->h(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 844
    return-void

    .line 841
    :catch_0
    move-exception v0

    .line 842
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public r()La/c;
    .locals 6

    .prologue
    .line 1724
    new-instance v1, La/c;

    invoke-direct {v1}, La/c;-><init>()V

    .line 1725
    iget-wide v2, p0, La/c;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    move-object v0, v1

    .line 1733
    :goto_0
    return-object v0

    .line 1727
    :cond_0
    iget-object v0, p0, La/c;->a:La/o;

    invoke-virtual {v0}, La/o;->a()La/o;

    move-result-object v0

    iput-object v0, v1, La/c;->a:La/o;

    .line 1728
    iget-object v0, v1, La/c;->a:La/o;

    iget-object v2, v1, La/c;->a:La/o;

    iget-object v3, v1, La/c;->a:La/o;

    iput-object v3, v2, La/o;->g:La/o;

    iput-object v3, v0, La/o;->f:La/o;

    .line 1729
    iget-object v0, p0, La/c;->a:La/o;

    iget-object v0, v0, La/o;->f:La/o;

    :goto_1
    iget-object v2, p0, La/c;->a:La/o;

    if-eq v0, v2, :cond_1

    .line 1730
    iget-object v2, v1, La/c;->a:La/o;

    iget-object v2, v2, La/o;->g:La/o;

    invoke-virtual {v0}, La/o;->a()La/o;

    move-result-object v3

    invoke-virtual {v2, v3}, La/o;->a(La/o;)La/o;

    .line 1729
    iget-object v0, v0, La/o;->f:La/o;

    goto :goto_1

    .line 1732
    :cond_1
    iget-wide v2, p0, La/c;->b:J

    iput-wide v2, v1, La/c;->b:J

    move-object v0, v1

    .line 1733
    goto :goto_0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 6

    .prologue
    .line 817
    iget-object v1, p0, La/c;->a:La/o;

    .line 818
    if-nez v1, :cond_1

    const/4 v0, -0x1

    .line 831
    :cond_0
    :goto_0
    return v0

    .line 820
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v2, v1, La/o;->c:I

    iget v3, v1, La/o;->b:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 821
    iget-object v2, v1, La/o;->a:[B

    iget v3, v1, La/o;->b:I

    invoke-virtual {p1, v2, v3, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 823
    iget v2, v1, La/o;->b:I

    add-int/2addr v2, v0

    iput v2, v1, La/o;->b:I

    .line 824
    iget-wide v2, p0, La/c;->b:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, La/c;->b:J

    .line 826
    iget v2, v1, La/o;->b:I

    iget v3, v1, La/o;->c:I

    if-ne v2, v3, :cond_0

    .line 827
    invoke-virtual {v1}, La/o;->b()La/o;

    move-result-object v2

    iput-object v2, p0, La/c;->a:La/o;

    .line 828
    invoke-static {v1}, La/p;->a(La/o;)V

    goto :goto_0
.end method

.method public s()La/f;
    .locals 4

    .prologue
    .line 1738
    iget-wide v0, p0, La/c;->b:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1739
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, La/c;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1741
    :cond_0
    iget-wide v0, p0, La/c;->b:J

    long-to-int v0, v0

    invoke-virtual {p0, v0}, La/c;->f(I)La/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic t()La/d;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, La/c;->d()La/c;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1719
    invoke-virtual {p0}, La/c;->s()La/f;

    move-result-object v0

    invoke-virtual {v0}, La/f;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 6

    .prologue
    .line 1032
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1034
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    move v0, v1

    .line 1036
    :goto_0
    if-lez v0, :cond_1

    .line 1037
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, La/c;->e(I)La/o;

    move-result-object v2

    .line 1039
    iget v3, v2, La/o;->c:I

    rsub-int v3, v3, 0x2000

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1040
    iget-object v4, v2, La/o;->a:[B

    iget v5, v2, La/o;->c:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1042
    sub-int/2addr v0, v3

    .line 1043
    iget v4, v2, La/o;->c:I

    add-int/2addr v3, v4

    iput v3, v2, La/o;->c:I

    goto :goto_0

    .line 1046
    :cond_1
    iget-wide v2, p0, La/c;->b:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, La/c;->b:J

    .line 1047
    return v1
.end method
