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

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 55
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

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 7

    .line 798
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, La/u;->a(JJJ)V

    .line 800
    iget-object v0, p0, La/c;->a:La/o;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 802
    :cond_0
    iget v1, v0, La/o;->c:I

    iget v2, v0, La/o;->b:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 803
    iget-object v1, v0, La/o;->a:[B

    iget v2, v0, La/o;->b:I

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 805
    iget p1, v0, La/o;->b:I

    add-int/2addr p1, p3

    iput p1, v0, La/o;->b:I

    .line 806
    iget-wide p1, p0, La/c;->b:J

    int-to-long v1, p3

    sub-long/2addr p1, v1

    iput-wide p1, p0, La/c;->b:J

    .line 808
    iget p1, v0, La/o;->b:I

    iget p2, v0, La/o;->c:I

    if-ne p1, p2, :cond_1

    .line 809
    invoke-virtual {v0}, La/o;->b()La/o;

    move-result-object p1

    iput-object p1, p0, La/c;->a:La/o;

    .line 810
    invoke-static {v0}, La/p;->a(La/o;)V

    :cond_1
    return p3
.end method

.method public a(B)J
    .locals 6

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    .line 1323
    invoke-virtual/range {v0 .. v5}, La/c;->a(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(BJJ)J
    .locals 15

    move-object v0, p0

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-ltz v3, :cond_8

    cmp-long v3, p4, p2

    if-ltz v3, :cond_8

    .line 1340
    iget-wide v3, v0, La/c;->b:J

    cmp-long v5, p4, v3

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    move-wide/from16 v3, p4

    :goto_0
    cmp-long v5, p2, v3

    const-wide/16 v6, -0x1

    if-nez v5, :cond_1

    return-wide v6

    .line 1349
    :cond_1
    iget-object v5, v0, La/c;->a:La/o;

    if-nez v5, :cond_2

    return-wide v6

    .line 1353
    :cond_2
    iget-wide v8, v0, La/c;->b:J

    sub-long v10, v8, p2

    cmp-long v10, v10, p2

    if-gez v10, :cond_3

    :goto_1
    cmp-long v1, v8, p2

    if-lez v1, :cond_4

    .line 1357
    iget-object v5, v5, La/o;->g:La/o;

    .line 1358
    iget v1, v5, La/o;->c:I

    iget v2, v5, La/o;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    sub-long/2addr v8, v1

    goto :goto_1

    :cond_3
    :goto_2
    move-wide v8, v1

    .line 1363
    iget v1, v5, La/o;->c:I

    iget v2, v5, La/o;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long/2addr v1, v8

    cmp-long v10, v1, p2

    if-gez v10, :cond_4

    .line 1364
    iget-object v5, v5, La/o;->f:La/o;

    goto :goto_2

    :cond_4
    move-wide/from16 v1, p2

    :goto_3
    cmp-long v10, v8, v3

    if-gez v10, :cond_7

    .line 1372
    iget-object v10, v5, La/o;->a:[B

    .line 1373
    iget v11, v5, La/o;->c:I

    int-to-long v11, v11

    iget v13, v5, La/o;->b:I

    int-to-long v13, v13

    add-long/2addr v13, v3

    sub-long/2addr v13, v8

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v11, v11

    .line 1374
    iget v12, v5, La/o;->b:I

    int-to-long v12, v12

    add-long/2addr v12, v1

    sub-long/2addr v12, v8

    long-to-int v1, v12

    :goto_4
    if-ge v1, v11, :cond_6

    .line 1376
    aget-byte v2, v10, v1

    move/from16 v12, p1

    if-ne v2, v12, :cond_5

    .line 1377
    iget v2, v5, La/o;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long/2addr v1, v8

    return-wide v1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    move/from16 v12, p1

    .line 1382
    iget v1, v5, La/o;->c:I

    iget v2, v5, La/o;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long/2addr v1, v8

    .line 1384
    iget-object v5, v5, La/o;->f:La/o;

    move-wide v8, v1

    goto :goto_3

    :cond_7
    return-wide v6

    .line 1336
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, v0, La/c;->b:J

    .line 1337
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "size=%s fromIndex=%s toIndex=%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public a(La/c;J)J
    .locals 4

    if-eqz p1, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    .line 1316
    iget-wide v2, p0, La/c;->b:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_0
    cmp-long v0, p2, v2

    if-lez v0, :cond_1

    move-wide p2, v2

    .line 1318
    :cond_1
    invoke-virtual {p1, p0, p2, p3}, La/c;->a_(La/c;J)V

    return-wide p2

    .line 1315
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1314
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sink == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(La/s;)J
    .locals 6

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    :goto_0
    const-wide/16 v2, 0x2000

    .line 1053
    invoke-interface {p1, p0, v2, v3}, La/s;->a(La/c;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0

    .line 1051
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(I)La/c;
    .locals 3

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    .line 953
    invoke-virtual {p0, p1}, La/c;->b(I)La/c;

    goto :goto_0

    :cond_0
    const/16 v1, 0x800

    const/16 v2, 0x3f

    if-ge p1, v1, :cond_1

    shr-int/lit8 v1, p1, 0x6

    or-int/lit16 v1, v1, 0xc0

    .line 957
    invoke-virtual {p0, v1}, La/c;->b(I)La/c;

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    .line 958
    invoke-virtual {p0, p1}, La/c;->b(I)La/c;

    goto :goto_0

    :cond_1
    const/high16 v1, 0x10000

    if-ge p1, v1, :cond_3

    const v1, 0xd800

    if-lt p1, v1, :cond_2

    const v1, 0xdfff

    if-gt p1, v1, :cond_2

    .line 963
    invoke-virtual {p0, v2}, La/c;->b(I)La/c;

    goto :goto_0

    :cond_2
    shr-int/lit8 v1, p1, 0xc

    or-int/lit16 v1, v1, 0xe0

    .line 966
    invoke-virtual {p0, v1}, La/c;->b(I)La/c;

    shr-int/lit8 v1, p1, 0x6

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    .line 967
    invoke-virtual {p0, v1}, La/c;->b(I)La/c;

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    .line 968
    invoke-virtual {p0, p1}, La/c;->b(I)La/c;

    goto :goto_0

    :cond_3
    const v1, 0x10ffff

    if-gt p1, v1, :cond_4

    shr-int/lit8 v1, p1, 0x12

    or-int/lit16 v1, v1, 0xf0

    .line 973
    invoke-virtual {p0, v1}, La/c;->b(I)La/c;

    shr-int/lit8 v1, p1, 0xc

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    .line 974
    invoke-virtual {p0, v1}, La/c;->b(I)La/c;

    shr-int/lit8 v1, p1, 0x6

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    .line 975
    invoke-virtual {p0, v1}, La/c;->b(I)La/c;

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    .line 976
    invoke-virtual {p0, p1}, La/c;->b(I)La/c;

    :goto_0
    return-object p0

    .line 979
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected code point: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(La/c;JJ)La/c;
    .locals 6

    if-eqz p1, :cond_4

    .line 175
    iget-wide v0, p0, La/c;->b:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, La/u;->a(JJJ)V

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_0

    return-object p0

    .line 178
    :cond_0
    iget-wide v2, p1, La/c;->b:J

    add-long/2addr v2, p4

    iput-wide v2, p1, La/c;->b:J

    .line 181
    iget-object v2, p0, La/c;->a:La/o;

    .line 182
    :goto_0
    iget v3, v2, La/o;->c:I

    iget v4, v2, La/o;->b:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    cmp-long v3, p2, v3

    if-ltz v3, :cond_1

    .line 183
    iget v3, v2, La/o;->c:I

    iget v4, v2, La/o;->b:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long/2addr p2, v3

    .line 182
    iget-object v2, v2, La/o;->f:La/o;

    goto :goto_0

    :cond_1
    :goto_1
    cmp-long v3, p4, v0

    if-lez v3, :cond_3

    .line 188
    invoke-virtual {v2}, La/o;->a()La/o;

    move-result-object v3

    .line 189
    iget v4, v3, La/o;->b:I

    int-to-long v4, v4

    add-long/2addr v4, p2

    long-to-int p2, v4

    iput p2, v3, La/o;->b:I

    .line 190
    iget p2, v3, La/o;->b:I

    long-to-int p3, p4

    add-int/2addr p2, p3

    iget p3, v3, La/o;->c:I

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, v3, La/o;->c:I

    .line 191
    iget-object p2, p1, La/c;->a:La/o;

    if-nez p2, :cond_2

    .line 192
    iput-object v3, v3, La/o;->g:La/o;

    iput-object v3, v3, La/o;->f:La/o;

    iput-object v3, p1, La/c;->a:La/o;

    goto :goto_2

    .line 194
    :cond_2
    iget-object p2, p2, La/o;->g:La/o;

    invoke-virtual {p2, v3}, La/o;->a(La/o;)La/o;

    .line 196
    :goto_2
    iget p2, v3, La/o;->c:I

    iget p3, v3, La/o;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    sub-long/2addr p4, p2

    .line 187
    iget-object v2, v2, La/o;->f:La/o;

    move-wide p2, v0

    goto :goto_1

    :cond_3
    return-object p0

    .line 174
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(La/f;)La/c;
    .locals 1

    if-eqz p1, :cond_0

    .line 866
    invoke-virtual {p1, p0}, La/f;->a(La/c;)V

    return-object p0

    .line 865
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteString == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;)La/c;
    .locals 2

    .line 871
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, La/c;->a(Ljava/lang/String;II)La/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;II)La/c;
    .locals 7

    if-eqz p1, :cond_d

    if-ltz p2, :cond_c

    if-lt p3, p2, :cond_b

    .line 880
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_a

    :goto_0
    if-ge p2, p3, :cond_9

    .line 887
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x80

    if-ge v0, v1, :cond_2

    const/4 v2, 0x1

    .line 890
    invoke-virtual {p0, v2}, La/c;->e(I)La/o;

    move-result-object v2

    .line 891
    iget-object v3, v2, La/o;->a:[B

    .line 892
    iget v4, v2, La/o;->c:I

    sub-int/2addr v4, p2

    rsub-int v5, v4, 0x2000

    .line 893
    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v6, p2, 0x1

    add-int/2addr p2, v4

    int-to-byte v0, v0

    .line 896
    aput-byte v0, v3, p2

    :goto_1
    if-ge v6, v5, :cond_1

    .line 901
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-lt p2, v1, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v6, 0x1

    add-int/2addr v6, v4

    int-to-byte p2, p2

    .line 903
    aput-byte p2, v3, v6

    move v6, v0

    goto :goto_1

    :cond_1
    :goto_2
    add-int/2addr v4, v6

    .line 906
    iget p2, v2, La/o;->c:I

    sub-int/2addr v4, p2

    .line 907
    iget p2, v2, La/o;->c:I

    add-int/2addr p2, v4

    iput p2, v2, La/o;->c:I

    .line 908
    iget-wide v0, p0, La/c;->b:J

    int-to-long v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, La/c;->b:J

    move p2, v6

    goto :goto_0

    :cond_2
    const/16 v2, 0x800

    if-ge v0, v2, :cond_3

    shr-int/lit8 v2, v0, 0x6

    or-int/lit16 v2, v2, 0xc0

    .line 912
    invoke-virtual {p0, v2}, La/c;->b(I)La/c;

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    .line 913
    invoke-virtual {p0, v0}, La/c;->b(I)La/c;

    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    const v2, 0xd800

    const/16 v3, 0x3f

    if-lt v0, v2, :cond_8

    const v2, 0xdfff

    if-le v0, v2, :cond_4

    goto :goto_6

    :cond_4
    add-int/lit8 v4, p2, 0x1

    if-ge v4, p3, :cond_5

    .line 926
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    :goto_4
    const v6, 0xdbff

    if-gt v0, v6, :cond_7

    const v6, 0xdc00

    if-lt v5, v6, :cond_7

    if-le v5, v2, :cond_6

    goto :goto_5

    :cond_6
    const/high16 v2, 0x10000

    const v4, -0xd801

    and-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0xa

    const v4, -0xdc01

    and-int/2addr v4, v5

    or-int/2addr v0, v4

    add-int/2addr v0, v2

    shr-int/lit8 v2, v0, 0x12

    or-int/lit16 v2, v2, 0xf0

    .line 939
    invoke-virtual {p0, v2}, La/c;->b(I)La/c;

    shr-int/lit8 v2, v0, 0xc

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    .line 940
    invoke-virtual {p0, v2}, La/c;->b(I)La/c;

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    .line 941
    invoke-virtual {p0, v2}, La/c;->b(I)La/c;

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    .line 942
    invoke-virtual {p0, v0}, La/c;->b(I)La/c;

    add-int/lit8 p2, p2, 0x2

    goto/16 :goto_0

    .line 928
    :cond_7
    :goto_5
    invoke-virtual {p0, v3}, La/c;->b(I)La/c;

    move p2, v4

    goto/16 :goto_0

    :cond_8
    :goto_6
    shr-int/lit8 v2, v0, 0xc

    or-int/lit16 v2, v2, 0xe0

    .line 918
    invoke-virtual {p0, v2}, La/c;->b(I)La/c;

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    .line 919
    invoke-virtual {p0, v2}, La/c;->b(I)La/c;

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    .line 920
    invoke-virtual {p0, v0}, La/c;->b(I)La/c;

    goto :goto_3

    :cond_9
    return-object p0

    .line 881
    :cond_a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endIndex > string.length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 878
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endIndex < beginIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 876
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "beginIndex < 0: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 875
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "string == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;IILjava/nio/charset/Charset;)La/c;
    .locals 1

    if-eqz p1, :cond_5

    if-ltz p2, :cond_4

    if-lt p3, p2, :cond_3

    .line 997
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_2

    if-eqz p4, :cond_1

    .line 1002
    sget-object v0, La/u;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, La/c;->a(Ljava/lang/String;II)La/c;

    move-result-object p1

    return-object p1

    .line 1003
    :cond_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/4 p2, 0x0

    .line 1004
    array-length p3, p1

    invoke-virtual {p0, p1, p2, p3}, La/c;->b([BII)La/c;

    move-result-object p1

    return-object p1

    .line 1001
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "charset == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 998
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex > string.length: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 995
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex < beginIndex: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 993
    :cond_4
    new-instance p1, Ljava/lang/IllegalAccessError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "beginIndex < 0: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 992
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "string == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()La/t;
    .locals 1

    .line 1586
    sget-object v0, La/t;->c:La/t;

    return-object v0
.end method

.method public a(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6

    .line 621
    iget-wide v0, p0, La/c;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, La/u;->a(JJJ)V

    if-eqz p3, :cond_4

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 628
    :cond_0
    iget-object v0, p0, La/c;->a:La/o;

    .line 629
    iget v1, v0, La/o;->b:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    iget v3, v0, La/o;->c:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 631
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, La/c;->g(J)[B

    move-result-object p1

    invoke-direct {v0, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 634
    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, La/o;->a:[B

    iget v3, v0, La/o;->b:I

    long-to-int v4, p1

    invoke-direct {v1, v2, v3, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 635
    iget p3, v0, La/o;->b:I

    int-to-long v2, p3

    add-long/2addr v2, p1

    long-to-int p3, v2

    iput p3, v0, La/o;->b:I

    .line 636
    iget-wide v2, p0, La/c;->b:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, La/c;->b:J

    .line 638
    iget p1, v0, La/o;->b:I

    iget p2, v0, La/o;->c:I

    if-ne p1, p2, :cond_2

    .line 639
    invoke-virtual {v0}, La/o;->b()La/o;

    move-result-object p1

    iput-object p1, p0, La/c;->a:La/o;

    .line 640
    invoke-static {v0}, La/p;->a(La/o;)V

    :cond_2
    return-object v1

    .line 624
    :cond_3
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 622
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "charset == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .line 614
    :try_start_0
    iget-wide v0, p0, La/c;->b:J

    invoke-virtual {p0, v0, v1, p1}, La/c;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 616
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public a(J)V
    .locals 2

    .line 109
    iget-wide v0, p0, La/c;->b:J

    cmp-long p1, v0, p1

    if-ltz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public a([B)V
    .locals 3

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

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    .line 792
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    return-void
.end method

.method public a(JLa/f;)Z
    .locals 6

    .line 1527
    invoke-virtual {p3}, La/f;->g()I

    move-result v5

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, La/c;->a(JLa/f;II)Z

    move-result p1

    return p1
.end method

.method public a(JLa/f;II)Z
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_3

    if-ltz p4, :cond_3

    if-ltz p5, :cond_3

    .line 1532
    iget-wide v2, p0, La/c;->b:J

    sub-long/2addr v2, p1

    int-to-long v4, p5

    cmp-long v0, v2, v4

    if-ltz v0, :cond_3

    .line 1536
    invoke-virtual {p3}, La/f;->g()I

    move-result v0

    sub-int/2addr v0, p4

    if-ge v0, p5, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    :goto_0
    if-ge v0, p5, :cond_2

    int-to-long v2, v0

    add-long/2addr v2, p1

    .line 1540
    invoke-virtual {p0, v2, v3}, La/c;->b(J)B

    move-result v2

    add-int v3, p4, v0

    invoke-virtual {p3, v3}, La/f;->a(I)B

    move-result v3

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method public a_(La/c;J)V
    .locals 6

    if-eqz p1, :cond_7

    if-eq p1, p0, :cond_6

    .line 1275
    iget-wide v0, p1, La/c;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, La/u;->a(JJJ)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_5

    .line 1279
    iget-object v0, p1, La/c;->a:La/o;

    iget v0, v0, La/o;->c:I

    iget-object v1, p1, La/c;->a:La/o;

    iget v1, v1, La/o;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-gez v0, :cond_3

    .line 1280
    iget-object v0, p0, La/c;->a:La/o;

    if-eqz v0, :cond_0

    iget-object v0, v0, La/o;->g:La/o;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 1281
    iget-boolean v1, v0, La/o;->e:Z

    if-eqz v1, :cond_2

    iget v1, v0, La/o;->c:I

    int-to-long v1, v1

    add-long/2addr v1, p2

    iget-boolean v3, v0, La/o;->d:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    .line 1282
    :cond_1
    iget v3, v0, La/o;->b:I

    :goto_2
    int-to-long v3, v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x2000

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    .line 1284
    iget-object v1, p1, La/c;->a:La/o;

    long-to-int v2, p2

    invoke-virtual {v1, v0, v2}, La/o;->a(La/o;I)V

    .line 1285
    iget-wide v0, p1, La/c;->b:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, La/c;->b:J

    .line 1286
    iget-wide v0, p0, La/c;->b:J

    add-long/2addr v0, p2

    iput-wide v0, p0, La/c;->b:J

    return-void

    .line 1291
    :cond_2
    iget-object v0, p1, La/c;->a:La/o;

    long-to-int v1, p2

    invoke-virtual {v0, v1}, La/o;->a(I)La/o;

    move-result-object v0

    iput-object v0, p1, La/c;->a:La/o;

    .line 1296
    :cond_3
    iget-object v0, p1, La/c;->a:La/o;

    .line 1297
    iget v1, v0, La/o;->c:I

    iget v2, v0, La/o;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    .line 1298
    invoke-virtual {v0}, La/o;->b()La/o;

    move-result-object v3

    iput-object v3, p1, La/c;->a:La/o;

    .line 1299
    iget-object v3, p0, La/c;->a:La/o;

    if-nez v3, :cond_4

    .line 1300
    iput-object v0, p0, La/c;->a:La/o;

    .line 1301
    iget-object v0, p0, La/c;->a:La/o;

    iput-object v0, v0, La/o;->g:La/o;

    iput-object v0, v0, La/o;->f:La/o;

    goto :goto_3

    .line 1303
    :cond_4
    iget-object v3, v3, La/o;->g:La/o;

    .line 1304
    invoke-virtual {v3, v0}, La/o;->a(La/o;)La/o;

    move-result-object v0

    .line 1305
    invoke-virtual {v0}, La/o;->c()V

    .line 1307
    :goto_3
    iget-wide v3, p1, La/c;->b:J

    sub-long/2addr v3, v1

    iput-wide v3, p1, La/c;->b:J

    .line 1308
    iget-wide v3, p0, La/c;->b:J

    add-long/2addr v3, v1

    iput-wide v3, p0, La/c;->b:J

    sub-long/2addr p2, v1

    goto :goto_0

    :cond_5
    return-void

    .line 1274
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == this"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1273
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(J)B
    .locals 6

    .line 302
    iget-wide v0, p0, La/c;->b:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, La/u;->a(JJJ)V

    .line 303
    iget-wide v0, p0, La/c;->b:J

    sub-long v2, v0, p1

    cmp-long v2, v2, p1

    if-lez v2, :cond_1

    .line 304
    iget-object v0, p0, La/c;->a:La/o;

    .line 305
    :goto_0
    iget v1, v0, La/o;->c:I

    iget v2, v0, La/o;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    cmp-long v3, p1, v1

    if-gez v3, :cond_0

    .line 306
    iget-object v1, v0, La/o;->a:[B

    iget v0, v0, La/o;->b:I

    long-to-int p1, p1

    add-int/2addr v0, p1

    aget-byte p1, v1, v0

    return p1

    :cond_0
    sub-long/2addr p1, v1

    .line 304
    iget-object v0, v0, La/o;->f:La/o;

    goto :goto_0

    :cond_1
    sub-long/2addr p1, v0

    .line 311
    iget-object v0, p0, La/c;->a:La/o;

    :cond_2
    iget-object v0, v0, La/o;->g:La/o;

    .line 312
    iget v1, v0, La/o;->c:I

    iget v2, v0, La/o;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long/2addr p1, v1

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_2

    .line 313
    iget-object v1, v0, La/o;->a:[B

    iget v0, v0, La/o;->b:I

    long-to-int p1, p1

    add-int/2addr v0, p1

    aget-byte p1, v1, v0

    return p1
.end method

.method public b()J
    .locals 2

    .line 67
    iget-wide v0, p0, La/c;->b:J

    return-wide v0
.end method

.method public b(I)La/c;
    .locals 4

    const/4 v0, 0x1

    .line 1069
    invoke-virtual {p0, v0}, La/c;->e(I)La/o;

    move-result-object v0

    .line 1070
    iget-object v1, v0, La/o;->a:[B

    iget v2, v0, La/o;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, La/o;->c:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 1071
    iget-wide v0, p0, La/c;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, La/c;->b:J

    return-object p0
.end method

.method public b([B)La/c;
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1009
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, La/c;->b([BII)La/c;

    move-result-object p1

    return-object p1

    .line 1008
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b([BII)La/c;
    .locals 9

    if-eqz p1, :cond_1

    .line 1014
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v7, p3

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, La/u;->a(JJJ)V

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    const/4 v0, 0x1

    .line 1018
    invoke-virtual {p0, v0}, La/c;->e(I)La/o;

    move-result-object v0

    sub-int v1, p3, p2

    .line 1020
    iget v2, v0, La/o;->c:I

    rsub-int v2, v2, 0x2000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1021
    iget-object v2, v0, La/o;->a:[B

    iget v3, v0, La/o;->c:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    .line 1024
    iget v2, v0, La/o;->c:I

    add-int/2addr v2, v1

    iput v2, v0, La/o;->c:I

    goto :goto_0

    .line 1027
    :cond_0
    iget-wide p1, p0, La/c;->b:J

    add-long/2addr p1, v7

    iput-wide p1, p0, La/c;->b:J

    return-object p0

    .line 1013
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic b(La/f;)La/d;
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, La/c;->a(La/f;)La/c;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Ljava/lang/String;)La/d;
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, La/c;->a(Ljava/lang/String;)La/c;

    move-result-object p1

    return-object p1
.end method

.method public c()La/c;
    .locals 0

    return-object p0
.end method

.method public c(I)La/c;
    .locals 5

    const/4 v0, 0x2

    .line 1076
    invoke-virtual {p0, v0}, La/c;->e(I)La/o;

    move-result-object v0

    .line 1077
    iget-object v1, v0, La/o;->a:[B

    .line 1078
    iget v2, v0, La/o;->c:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 1079
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 1080
    aput-byte p1, v1, v3

    .line 1081
    iput v2, v0, La/o;->c:I

    .line 1082
    iget-wide v0, p0, La/c;->b:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, La/c;->b:J

    return-object p0
.end method

.method public synthetic c([B)La/d;
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, La/c;->b([B)La/c;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c([BII)La/d;
    .locals 0

    .line 54
    invoke-virtual {p0, p1, p2, p3}, La/c;->b([BII)La/c;

    move-result-object p1

    return-object p1
.end method

.method public c(J)La/f;
    .locals 1

    .line 544
    new-instance v0, La/f;

    invoke-virtual {p0, p1, p2}, La/c;->g(J)[B

    move-result-object p1

    invoke-direct {v0, p1}, La/f;-><init>([B)V

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 54
    invoke-virtual {p0}, La/c;->s()La/c;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public d()La/c;
    .locals 0

    return-object p0
.end method

.method public d(I)La/c;
    .locals 5

    const/4 v0, 0x4

    .line 1091
    invoke-virtual {p0, v0}, La/c;->e(I)La/o;

    move-result-object v0

    .line 1092
    iget-object v1, v0, La/o;->a:[B

    .line 1093
    iget v2, v0, La/o;->c:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 1094
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 1095
    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 1096
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 1097
    aput-byte p1, v1, v3

    .line 1098
    iput v2, v0, La/o;->c:I

    .line 1099
    iget-wide v0, p0, La/c;->b:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, La/c;->b:J

    return-object p0
.end method

.method public d(J)Ljava/lang/String;
    .locals 1

    .line 609
    sget-object v0, La/u;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, La/c;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method e(I)La/o;
    .locals 3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_3

    const/16 v0, 0x2000

    if-gt p1, v0, :cond_3

    .line 1210
    iget-object v1, p0, La/c;->a:La/o;

    if-nez v1, :cond_0

    .line 1211
    invoke-static {}, La/p;->a()La/o;

    move-result-object p1

    iput-object p1, p0, La/c;->a:La/o;

    .line 1212
    iget-object p1, p0, La/c;->a:La/o;

    iput-object p1, p1, La/o;->g:La/o;

    iput-object p1, p1, La/o;->f:La/o;

    return-object p1

    .line 1215
    :cond_0
    iget-object v1, v1, La/o;->g:La/o;

    .line 1216
    iget v2, v1, La/o;->c:I

    add-int/2addr v2, p1

    if-gt v2, v0, :cond_1

    iget-boolean p1, v1, La/o;->e:Z

    if-nez p1, :cond_2

    .line 1217
    :cond_1
    invoke-static {}, La/p;->a()La/o;

    move-result-object p1

    invoke-virtual {v1, p1}, La/o;->a(La/o;)La/o;

    move-result-object v1

    :cond_2
    return-object v1

    .line 1208
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public e(J)Ljava/lang/String;
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    const-wide/16 v3, 0x1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    add-long v0, p1, v3

    :goto_0
    const/16 v6, 0xa

    const-wide/16 v7, 0x0

    move-object v5, p0

    move-wide v9, v0

    .line 663
    invoke-virtual/range {v5 .. v10}, La/c;->a(BJJ)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v2, v5, v7

    if-eqz v2, :cond_1

    .line 664
    invoke-virtual {p0, v5, v6}, La/c;->f(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 665
    :cond_1
    invoke-virtual {p0}, La/c;->b()J

    move-result-wide v5

    cmp-long v2, v0, v5

    if-gez v2, :cond_2

    sub-long v2, v0, v3

    .line 666
    invoke-virtual {p0, v2, v3}, La/c;->b(J)B

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v0, v1}, La/c;->b(J)B

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    .line 667
    invoke-virtual {p0, v0, v1}, La/c;->f(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 669
    :cond_2
    new-instance v6, La/c;

    invoke-direct {v6}, La/c;-><init>()V

    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x20

    .line 670
    invoke-virtual {p0}, La/c;->b()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, La/c;->a(La/c;JJ)La/c;

    .line 671
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\n not found: limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, La/c;->b()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " content="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    invoke-virtual {v6}, La/c;->n()La/f;

    move-result-object p1

    invoke-virtual {p1}, La/f;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2026

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 661
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limit < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()Z
    .locals 4

    .line 105
    iget-wide v0, p0, La/c;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 13

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1670
    :cond_0
    instance-of v1, p1, La/c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1671
    :cond_1
    check-cast p1, La/c;

    .line 1672
    iget-wide v3, p0, La/c;->b:J

    iget-wide v5, p1, La/c;->b:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    return v0

    .line 1675
    :cond_3
    iget-object v1, p0, La/c;->a:La/o;

    .line 1676
    iget-object p1, p1, La/c;->a:La/o;

    .line 1677
    iget v3, v1, La/o;->b:I

    .line 1678
    iget v4, p1, La/o;->b:I

    .line 1680
    :goto_0
    iget-wide v7, p0, La/c;->b:J

    cmp-long v7, v5, v7

    if-gez v7, :cond_8

    .line 1681
    iget v7, v1, La/o;->c:I

    sub-int/2addr v7, v3

    iget v8, p1, La/o;->c:I

    sub-int/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-long v7, v7

    move v9, v4

    move v4, v3

    move v3, v2

    :goto_1
    int-to-long v10, v3

    cmp-long v10, v10, v7

    if-gez v10, :cond_5

    .line 1684
    iget-object v10, v1, La/o;->a:[B

    add-int/lit8 v11, v4, 0x1

    aget-byte v4, v10, v4

    iget-object v10, p1, La/o;->a:[B

    add-int/lit8 v12, v9, 0x1

    aget-byte v9, v10, v9

    if-eq v4, v9, :cond_4

    return v2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    move v4, v11

    move v9, v12

    goto :goto_1

    .line 1687
    :cond_5
    iget v3, v1, La/o;->c:I

    if-ne v4, v3, :cond_6

    .line 1688
    iget-object v1, v1, La/o;->f:La/o;

    .line 1689
    iget v3, v1, La/o;->b:I

    goto :goto_2

    :cond_6
    move v3, v4

    .line 1692
    :goto_2
    iget v4, p1, La/o;->c:I

    if-ne v9, v4, :cond_7

    .line 1693
    iget-object p1, p1, La/o;->f:La/o;

    .line 1694
    iget v4, p1, La/o;->b:I

    goto :goto_3

    :cond_7
    move v4, v9

    :goto_3
    add-long/2addr v5, v7

    goto :goto_0

    :cond_8
    return v0
.end method

.method public f(I)La/f;
    .locals 1

    if-nez p1, :cond_0

    .line 1748
    sget-object p1, La/f;->b:La/f;

    return-object p1

    .line 1749
    :cond_0
    new-instance v0, La/q;

    invoke-direct {v0, p0, p1}, La/q;-><init>(La/c;I)V

    return-object v0
.end method

.method public f()Ljava/io/InputStream;
    .locals 1

    .line 117
    new-instance v0, La/c$1;

    invoke-direct {v0, p0}, La/c$1;-><init>(La/c;)V

    return-object v0
.end method

.method f(J)Ljava/lang/String;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const-wide/16 v1, 0x1

    if-lez v0, :cond_0

    sub-long v3, p1, v1

    .line 676
    invoke-virtual {p0, v3, v4}, La/c;->b(J)B

    move-result v0

    const/16 v5, 0xd

    if-ne v0, v5, :cond_0

    .line 678
    invoke-virtual {p0, v3, v4}, La/c;->d(J)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x2

    .line 679
    invoke-virtual {p0, v0, v1}, La/c;->h(J)V

    return-object p1

    .line 684
    :cond_0
    invoke-virtual {p0, p1, p2}, La/c;->d(J)Ljava/lang/String;

    move-result-object p1

    .line 685
    invoke-virtual {p0, v1, v2}, La/c;->h(J)V

    return-object p1
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public g()J
    .locals 5

    .line 267
    iget-wide v0, p0, La/c;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 271
    :cond_0
    iget-object v2, p0, La/c;->a:La/o;

    iget-object v2, v2, La/o;->g:La/o;

    .line 272
    iget v3, v2, La/o;->c:I

    const/16 v4, 0x2000

    if-ge v3, v4, :cond_1

    iget-boolean v3, v2, La/o;->e:Z

    if-eqz v3, :cond_1

    .line 273
    iget v3, v2, La/o;->c:I

    iget v2, v2, La/o;->b:I

    sub-int/2addr v3, v2

    int-to-long v2, v3

    sub-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method

.method public synthetic g(I)La/d;
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, La/c;->d(I)La/c;

    move-result-object p1

    return-object p1
.end method

.method public g(J)[B
    .locals 6

    .line 774
    iget-wide v0, p0, La/c;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, La/u;->a(JJJ)V

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    long-to-int p1, p1

    .line 779
    new-array p1, p1, [B

    .line 780
    invoke-virtual {p0, p1}, La/c;->a([B)V

    return-object p1

    .line 776
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()B
    .locals 9

    .line 280
    iget-wide v0, p0, La/c;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, La/c;->a:La/o;

    .line 283
    iget v1, v0, La/o;->b:I

    .line 284
    iget v2, v0, La/o;->c:I

    .line 286
    iget-object v3, v0, La/o;->a:[B

    add-int/lit8 v4, v1, 0x1

    .line 287
    aget-byte v1, v3, v1

    .line 288
    iget-wide v5, p0, La/c;->b:J

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    iput-wide v5, p0, La/c;->b:J

    if-ne v4, v2, :cond_0

    .line 291
    invoke-virtual {v0}, La/o;->b()La/o;

    move-result-object v2

    iput-object v2, p0, La/c;->a:La/o;

    .line 292
    invoke-static {v0}, La/p;->a(La/o;)V

    goto :goto_0

    .line 294
    :cond_0
    iput v4, v0, La/o;->b:I

    :goto_0
    return v1

    .line 280
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic h(I)La/d;
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, La/c;->c(I)La/c;

    move-result-object p1

    return-object p1
.end method

.method public h(J)V
    .locals 5

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 849
    iget-object v0, p0, La/c;->a:La/o;

    if-eqz v0, :cond_1

    .line 851
    iget v0, v0, La/o;->c:I

    iget-object v1, p0, La/c;->a:La/o;

    iget v1, v1, La/o;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 852
    iget-wide v1, p0, La/c;->b:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, La/c;->b:J

    sub-long/2addr p1, v3

    .line 854
    iget-object v1, p0, La/c;->a:La/o;

    iget v2, v1, La/o;->b:I

    add-int/2addr v2, v0

    iput v2, v1, La/o;->b:I

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

    .line 849
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_2
    return-void
.end method

.method public hashCode()I
    .locals 5

    .line 1702
    iget-object v0, p0, La/c;->a:La/o;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x1

    .line 1706
    :cond_1
    iget v2, v0, La/o;->b:I

    iget v3, v0, La/o;->c:I

    :goto_0
    if-ge v2, v3, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 1707
    iget-object v4, v0, La/o;->a:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1709
    :cond_2
    iget-object v0, v0, La/o;->f:La/o;

    .line 1710
    iget-object v2, p0, La/c;->a:La/o;

    if-ne v0, v2, :cond_1

    return v1
.end method

.method public i(J)La/c;
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/16 p1, 0x30

    .line 1131
    invoke-virtual {p0, p1}, La/c;->b(I)La/c;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_2

    neg-long p1, p1

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    const-string p1, "-9223372036854775808"

    .line 1138
    invoke-virtual {p0, p1}, La/c;->a(Ljava/lang/String;)La/c;

    move-result-object p1

    return-object p1

    :cond_1
    move v3, v4

    :cond_2
    const-wide/32 v5, 0x5f5e100

    cmp-long v2, p1, v5

    const-wide/16 v5, 0xa

    if-gez v2, :cond_a

    const-wide/16 v7, 0x2710

    cmp-long v2, p1, v7

    if-gez v2, :cond_6

    const-wide/16 v7, 0x64

    cmp-long v2, p1, v7

    if-gez v2, :cond_4

    cmp-long v2, p1, v5

    if-gez v2, :cond_3

    goto/16 :goto_0

    :cond_3
    const/4 v4, 0x2

    goto/16 :goto_0

    :cond_4
    const-wide/16 v7, 0x3e8

    cmp-long v2, p1, v7

    if-gez v2, :cond_5

    const/4 v4, 0x3

    goto/16 :goto_0

    :cond_5
    const/4 v4, 0x4

    goto/16 :goto_0

    :cond_6
    const-wide/32 v7, 0xf4240

    cmp-long v2, p1, v7

    if-gez v2, :cond_8

    const-wide/32 v7, 0x186a0

    cmp-long v2, p1, v7

    if-gez v2, :cond_7

    const/4 v4, 0x5

    goto/16 :goto_0

    :cond_7
    const/4 v4, 0x6

    goto/16 :goto_0

    :cond_8
    const-wide/32 v7, 0x989680

    cmp-long v2, p1, v7

    if-gez v2, :cond_9

    const/4 v4, 0x7

    goto/16 :goto_0

    :cond_9
    const/16 v4, 0x8

    goto/16 :goto_0

    :cond_a
    const-wide v7, 0xe8d4a51000L

    cmp-long v2, p1, v7

    if-gez v2, :cond_e

    const-wide v7, 0x2540be400L

    cmp-long v2, p1, v7

    if-gez v2, :cond_c

    const-wide/32 v7, 0x3b9aca00

    cmp-long v2, p1, v7

    if-gez v2, :cond_b

    const/16 v4, 0x9

    goto :goto_0

    :cond_b
    const/16 v4, 0xa

    goto :goto_0

    :cond_c
    const-wide v7, 0x174876e800L

    cmp-long v2, p1, v7

    if-gez v2, :cond_d

    const/16 v4, 0xb

    goto :goto_0

    :cond_d
    const/16 v4, 0xc

    goto :goto_0

    :cond_e
    const-wide v7, 0x38d7ea4c68000L

    cmp-long v2, p1, v7

    if-gez v2, :cond_11

    const-wide v7, 0x9184e72a000L

    cmp-long v2, p1, v7

    if-gez v2, :cond_f

    const/16 v4, 0xd

    goto :goto_0

    :cond_f
    const-wide v7, 0x5af3107a4000L

    cmp-long v2, p1, v7

    if-gez v2, :cond_10

    const/16 v4, 0xe

    goto :goto_0

    :cond_10
    const/16 v4, 0xf

    goto :goto_0

    :cond_11
    const-wide v7, 0x16345785d8a0000L

    cmp-long v2, p1, v7

    if-gez v2, :cond_13

    const-wide v7, 0x2386f26fc10000L

    cmp-long v2, p1, v7

    if-gez v2, :cond_12

    const/16 v4, 0x10

    goto :goto_0

    :cond_12
    const/16 v4, 0x11

    goto :goto_0

    :cond_13
    const-wide v7, 0xde0b6b3a7640000L

    cmp-long v2, p1, v7

    if-gez v2, :cond_14

    const/16 v4, 0x12

    goto :goto_0

    :cond_14
    const/16 v4, 0x13

    :goto_0
    if-eqz v3, :cond_15

    add-int/lit8 v4, v4, 0x1

    .line 1167
    :cond_15
    invoke-virtual {p0, v4}, La/c;->e(I)La/o;

    move-result-object v2

    .line 1168
    iget-object v7, v2, La/o;->a:[B

    .line 1169
    iget v8, v2, La/o;->c:I

    add-int/2addr v8, v4

    :goto_1
    cmp-long v9, p1, v0

    if-eqz v9, :cond_16

    .line 1171
    rem-long v9, p1, v5

    long-to-int v9, v9

    add-int/lit8 v8, v8, -0x1

    .line 1172
    sget-object v10, La/c;->c:[B

    aget-byte v9, v10, v9

    aput-byte v9, v7, v8

    .line 1173
    div-long/2addr p1, v5

    goto :goto_1

    :cond_16
    if-eqz v3, :cond_17

    add-int/lit8 v8, v8, -0x1

    const/16 p1, 0x2d

    .line 1176
    aput-byte p1, v7, v8

    .line 1179
    :cond_17
    iget p1, v2, La/o;->c:I

    add-int/2addr p1, v4

    iput p1, v2, La/o;->c:I

    .line 1180
    iget-wide p1, p0, La/c;->b:J

    int-to-long v0, v4

    add-long/2addr p1, v0

    iput-wide p1, p0, La/c;->b:J

    return-object p0
.end method

.method public synthetic i(I)La/d;
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, La/c;->b(I)La/c;

    move-result-object p1

    return-object p1
.end method

.method public i()S
    .locals 8

    .line 319
    iget-wide v0, p0, La/c;->b:J

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 321
    iget-object v0, p0, La/c;->a:La/o;

    .line 322
    iget v1, v0, La/o;->b:I

    .line 323
    iget v4, v0, La/o;->c:I

    sub-int v5, v4, v1

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    .line 327
    invoke-virtual {p0}, La/c;->h()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    .line 328
    invoke-virtual {p0}, La/c;->h()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    .line 332
    :cond_0
    iget-object v5, v0, La/o;->a:[B

    add-int/lit8 v6, v1, 0x1

    .line 333
    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v7, v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    .line 335
    iget-wide v5, p0, La/c;->b:J

    sub-long/2addr v5, v2

    iput-wide v5, p0, La/c;->b:J

    if-ne v7, v4, :cond_1

    .line 338
    invoke-virtual {v0}, La/o;->b()La/o;

    move-result-object v2

    iput-object v2, p0, La/c;->a:La/o;

    .line 339
    invoke-static {v0}, La/p;->a(La/o;)V

    goto :goto_0

    .line 341
    :cond_1
    iput v7, v0, La/o;->b:I

    :goto_0
    int-to-short v0, v1

    return v0

    .line 319
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, La/c;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isOpen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j()I
    .locals 8

    .line 348
    iget-wide v0, p0, La/c;->b:J

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 350
    iget-object v0, p0, La/c;->a:La/o;

    .line 351
    iget v1, v0, La/o;->b:I

    .line 352
    iget v4, v0, La/o;->c:I

    sub-int v5, v4, v1

    const/4 v6, 0x4

    if-ge v5, v6, :cond_0

    .line 356
    invoke-virtual {p0}, La/c;->h()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 357
    invoke-virtual {p0}, La/c;->h()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 358
    invoke-virtual {p0}, La/c;->h()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 359
    invoke-virtual {p0}, La/c;->h()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0

    .line 362
    :cond_0
    iget-object v5, v0, La/o;->a:[B

    add-int/lit8 v6, v1, 0x1

    .line 363
    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v1, v6

    add-int/lit8 v6, v7, 0x1

    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v1, v7

    add-int/lit8 v7, v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    .line 367
    iget-wide v5, p0, La/c;->b:J

    sub-long/2addr v5, v2

    iput-wide v5, p0, La/c;->b:J

    if-ne v7, v4, :cond_1

    .line 370
    invoke-virtual {v0}, La/o;->b()La/o;

    move-result-object v2

    iput-object v2, p0, La/c;->a:La/o;

    .line 371
    invoke-static {v0}, La/p;->a(La/o;)V

    goto :goto_0

    .line 373
    :cond_1
    iput v7, v0, La/o;->b:I

    :goto_0
    return v1

    .line 348
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, La/c;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j(J)La/c;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/16 p1, 0x30

    .line 1187
    invoke-virtual {p0, p1}, La/c;->b(I)La/c;

    move-result-object p1

    return-object p1

    .line 1190
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 1192
    invoke-virtual {p0, v0}, La/c;->e(I)La/o;

    move-result-object v2

    .line 1193
    iget-object v3, v2, La/o;->a:[B

    .line 1194
    iget v4, v2, La/o;->c:I

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    iget v5, v2, La/o;->c:I

    :goto_0
    if-lt v4, v5, :cond_1

    .line 1195
    sget-object v6, La/c;->c:[B

    const-wide/16 v7, 0xf

    and-long/2addr v7, p1

    long-to-int v7, v7

    aget-byte v6, v6, v7

    aput-byte v6, v3, v4

    ushr-long/2addr p1, v1

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1198
    :cond_1
    iget p1, v2, La/o;->c:I

    add-int/2addr p1, v0

    iput p1, v2, La/o;->c:I

    .line 1199
    iget-wide p1, p0, La/c;->b:J

    int-to-long v0, v0

    add-long/2addr p1, v0

    iput-wide p1, p0, La/c;->b:J

    return-object p0
.end method

.method public synthetic k(J)La/d;
    .locals 0

    .line 54
    invoke-virtual {p0, p1, p2}, La/c;->j(J)La/c;

    move-result-object p1

    return-object p1
.end method

.method public k()S
    .locals 1

    .line 414
    invoke-virtual {p0}, La/c;->i()S

    move-result v0

    invoke-static {v0}, La/u;->a(S)S

    move-result v0

    return v0
.end method

.method public l()I
    .locals 1

    .line 418
    invoke-virtual {p0}, La/c;->j()I

    move-result v0

    invoke-static {v0}, La/u;->a(I)I

    move-result v0

    return v0
.end method

.method public synthetic l(J)La/d;
    .locals 0

    .line 54
    invoke-virtual {p0, p1, p2}, La/c;->i(J)La/c;

    move-result-object p1

    return-object p1
.end method

.method public m()J
    .locals 14

    .line 484
    iget-wide v0, p0, La/c;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    move v1, v0

    move-wide v4, v2

    .line 491
    :cond_0
    iget-object v6, p0, La/c;->a:La/o;

    .line 493
    iget-object v7, v6, La/o;->a:[B

    .line 494
    iget v8, v6, La/o;->b:I

    .line 495
    iget v9, v6, La/o;->c:I

    :goto_0
    if-ge v8, v9, :cond_6

    .line 500
    aget-byte v10, v7, v8

    const/16 v11, 0x30

    if-lt v10, v11, :cond_1

    const/16 v11, 0x39

    if-gt v10, v11, :cond_1

    add-int/lit8 v11, v10, -0x30

    goto :goto_2

    :cond_1
    const/16 v11, 0x61

    if-lt v10, v11, :cond_2

    const/16 v11, 0x66

    if-gt v10, v11, :cond_2

    add-int/lit8 v11, v10, -0x61

    :goto_1
    add-int/lit8 v11, v11, 0xa

    goto :goto_2

    :cond_2
    const/16 v11, 0x41

    if-lt v10, v11, :cond_4

    const/16 v11, 0x46

    if-gt v10, v11, :cond_4

    add-int/lit8 v11, v10, -0x41

    goto :goto_1

    :goto_2
    const-wide/high16 v12, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v12, v4

    cmp-long v12, v12, v2

    if-nez v12, :cond_3

    const/4 v10, 0x4

    shl-long/2addr v4, v10

    int-to-long v10, v11

    or-long/2addr v4, v10

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 519
    :cond_3
    new-instance v0, La/c;

    invoke-direct {v0}, La/c;-><init>()V

    invoke-virtual {v0, v4, v5}, La/c;->j(J)La/c;

    move-result-object v0

    invoke-virtual {v0, v10}, La/c;->b(I)La/c;

    move-result-object v0

    .line 520
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, La/c;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    .line 509
    :cond_5
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_3
    if-ne v8, v9, :cond_7

    .line 528
    invoke-virtual {v6}, La/o;->b()La/o;

    move-result-object v7

    iput-object v7, p0, La/c;->a:La/o;

    .line 529
    invoke-static {v6}, La/p;->a(La/o;)V

    goto :goto_4

    .line 531
    :cond_7
    iput v8, v6, La/o;->b:I

    :goto_4
    if-nez v0, :cond_8

    .line 533
    iget-object v6, p0, La/c;->a:La/o;

    if-nez v6, :cond_0

    .line 535
    :cond_8
    iget-wide v2, p0, La/c;->b:J

    int-to-long v0, v1

    sub-long/2addr v2, v0

    iput-wide v2, p0, La/c;->b:J

    return-wide v4

    .line 484
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public n()La/f;
    .locals 2

    .line 540
    new-instance v0, La/f;

    invoke-virtual {p0}, La/c;->q()[B

    move-result-object v1

    invoke-direct {v0, v1}, La/f;-><init>([B)V

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 3

    .line 602
    :try_start_0
    iget-wide v0, p0, La/c;->b:J

    sget-object v2, La/u;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, La/c;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 604
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public p()Ljava/lang/String;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 657
    invoke-virtual {p0, v0, v1}, La/c;->e(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()[B
    .locals 2

    .line 767
    :try_start_0
    iget-wide v0, p0, La/c;->b:J

    invoke-virtual {p0, v0, v1}, La/c;->g(J)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 769
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public r()V
    .locals 2

    .line 840
    :try_start_0
    iget-wide v0, p0, La/c;->b:J

    invoke-virtual {p0, v0, v1}, La/c;->h(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 842
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 6

    .line 817
    iget-object v0, p0, La/c;->a:La/o;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 820
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget v2, v0, La/o;->c:I

    iget v3, v0, La/o;->b:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 821
    iget-object v2, v0, La/o;->a:[B

    iget v3, v0, La/o;->b:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 823
    iget p1, v0, La/o;->b:I

    add-int/2addr p1, v1

    iput p1, v0, La/o;->b:I

    .line 824
    iget-wide v2, p0, La/c;->b:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, La/c;->b:J

    .line 826
    iget p1, v0, La/o;->b:I

    iget v2, v0, La/o;->c:I

    if-ne p1, v2, :cond_1

    .line 827
    invoke-virtual {v0}, La/o;->b()La/o;

    move-result-object p1

    iput-object p1, p0, La/c;->a:La/o;

    .line 828
    invoke-static {v0}, La/p;->a(La/o;)V

    :cond_1
    return v1
.end method

.method public s()La/c;
    .locals 5

    .line 1724
    new-instance v0, La/c;

    invoke-direct {v0}, La/c;-><init>()V

    .line 1725
    iget-wide v1, p0, La/c;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    return-object v0

    .line 1727
    :cond_0
    iget-object v1, p0, La/c;->a:La/o;

    invoke-virtual {v1}, La/o;->a()La/o;

    move-result-object v1

    iput-object v1, v0, La/c;->a:La/o;

    .line 1728
    iget-object v1, v0, La/c;->a:La/o;

    iput-object v1, v1, La/o;->g:La/o;

    iput-object v1, v1, La/o;->f:La/o;

    .line 1729
    iget-object v1, p0, La/c;->a:La/o;

    :goto_0
    iget-object v1, v1, La/o;->f:La/o;

    iget-object v2, p0, La/c;->a:La/o;

    if-eq v1, v2, :cond_1

    .line 1730
    iget-object v2, v0, La/c;->a:La/o;

    iget-object v2, v2, La/o;->g:La/o;

    invoke-virtual {v1}, La/o;->a()La/o;

    move-result-object v3

    invoke-virtual {v2, v3}, La/o;->a(La/o;)La/o;

    goto :goto_0

    .line 1732
    :cond_1
    iget-wide v1, p0, La/c;->b:J

    iput-wide v1, v0, La/c;->b:J

    return-object v0
.end method

.method public t()La/f;
    .locals 4

    .line 1738
    iget-wide v0, p0, La/c;->b:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    long-to-int v0, v0

    .line 1741
    invoke-virtual {p0, v0}, La/c;->f(I)La/f;

    move-result-object v0

    return-object v0

    .line 1739
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, La/c;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1719
    invoke-virtual {p0}, La/c;->t()La/f;

    move-result-object v0

    invoke-virtual {v0}, La/f;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic u()La/d;
    .locals 1

    .line 54
    invoke-virtual {p0}, La/c;->d()La/c;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 6

    if-eqz p1, :cond_1

    .line 1034
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    move v1, v0

    :goto_0
    if-lez v1, :cond_0

    const/4 v2, 0x1

    .line 1037
    invoke-virtual {p0, v2}, La/c;->e(I)La/o;

    move-result-object v2

    .line 1039
    iget v3, v2, La/o;->c:I

    rsub-int v3, v3, 0x2000

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1040
    iget-object v4, v2, La/o;->a:[B

    iget v5, v2, La/o;->c:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v1, v3

    .line 1043
    iget v4, v2, La/o;->c:I

    add-int/2addr v4, v3

    iput v4, v2, La/o;->c:I

    goto :goto_0

    .line 1046
    :cond_0
    iget-wide v1, p0, La/c;->b:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, La/c;->b:J

    return v0

    .line 1032
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
