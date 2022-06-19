.class public Lcom/esotericsoftware/kryo/a/c;
.super Ljava/io/OutputStream;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field protected a:I

.field protected b:J

.field protected c:I

.field protected d:I

.field protected e:[B

.field protected f:Ljava/io/OutputStream;

.field protected g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/a/c;->g:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p1}, Lcom/esotericsoftware/kryo/a/c;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    .line 56
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/a/c;->g:Z

    const/4 v0, -0x1

    if-le p1, p2, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bufferSize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cannot be greater than maxBufferSize: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-lt p2, v0, :cond_3

    .line 60
    iput p1, p0, Lcom/esotericsoftware/kryo/a/c;->d:I

    if-ne p2, v0, :cond_2

    const p2, 0x7ffffff7

    .line 61
    :cond_2
    iput p2, p0, Lcom/esotericsoftware/kryo/a/c;->a:I

    .line 62
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    return-void

    .line 59
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "maxBufferSize cannot be < -1: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const/16 v0, 0x1000

    .line 80
    invoke-direct {p0, v0, v0}, Lcom/esotericsoftware/kryo/a/c;-><init>(II)V

    if-eqz p1, :cond_0

    .line 82
    iput-object p1, p0, Lcom/esotericsoftware/kryo/a/c;->f:Ljava/io/OutputStream;

    return-void

    .line 81
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "outputStream cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0

    .line 87
    invoke-direct {p0, p2, p2}, Lcom/esotericsoftware/kryo/a/c;-><init>(II)V

    if-eqz p1, :cond_0

    .line 89
    iput-object p1, p0, Lcom/esotericsoftware/kryo/a/c;->f:Ljava/io/OutputStream;

    return-void

    .line 88
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "outputStream cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 68
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/kryo/a/c;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 3

    .line 73
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/a/c;->g:Z

    const-string v0, "buffer cannot be null."

    if-eqz p1, :cond_5

    if-eqz p1, :cond_4

    .line 1116
    array-length v0, p1

    const/4 v1, -0x1

    if-le v0, p2, :cond_1

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "buffer has length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cannot be greater than maxBufferSize: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-lt p2, v1, :cond_3

    .line 1119
    iput-object p1, p0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    if-ne p2, v1, :cond_2

    const p2, 0x7ffffff7

    .line 1120
    :cond_2
    iput p2, p0, Lcom/esotericsoftware/kryo/a/c;->a:I

    .line 1121
    array-length p1, p1

    iput p1, p0, Lcom/esotericsoftware/kryo/a/c;->d:I

    const/4 p1, 0x0

    .line 1122
    iput p1, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    const-wide/16 p1, 0x0

    .line 1123
    iput-wide p1, p0, Lcom/esotericsoftware/kryo/a/c;->b:J

    const/4 p1, 0x0

    .line 1124
    iput-object p1, p0, Lcom/esotericsoftware/kryo/a/c;->f:Ljava/io/OutputStream;

    return-void

    .line 1118
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "maxBufferSize cannot be < -1: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1115
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 741
    :cond_0
    iget v0, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    iget v1, p0, Lcom/esotericsoftware/kryo/a/c;->d:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/a/c;->d(I)Z

    :cond_1
    const/4 v0, 0x0

    .line 743
    iget-object v1, p0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    .line 744
    iget v2, p0, Lcom/esotericsoftware/kryo/a/c;->d:I

    iget v3, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    sub-int/2addr v2, v3

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_0
    if-ge v0, p2, :cond_3

    add-int v3, v0, v2

    .line 746
    iget v4, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    invoke-virtual {p1, v0, v3, v1, v4}, Ljava/lang/String;->getBytes(II[BI)V

    .line 748
    iget v0, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    sub-int v0, p2, v3

    .line 749
    iget v2, p0, Lcom/esotericsoftware/kryo/a/c;->d:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 750
    invoke-direct {p0, v2}, Lcom/esotericsoftware/kryo/a/c;->d(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    return-void
.end method

.method private a([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 263
    iget v0, p0, Lcom/esotericsoftware/kryo/a/c;->d:I

    iget v1, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 265
    :goto_0
    iget-object v1, p0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    iget v1, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    sub-int/2addr p3, v0

    if-nez p3, :cond_0

    return-void

    :cond_0
    add-int/2addr p2, v0

    .line 270
    iget v0, p0, Lcom/esotericsoftware/kryo/a/c;->d:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 271
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/a/c;->d(I)Z

    goto :goto_0

    .line 262
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bytes cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private d(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 180
    iget v0, p0, Lcom/esotericsoftware/kryo/a/c;->d:I

    iget v1, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-lt v0, p1, :cond_0

    return v1

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/a/c;->flush()V

    .line 182
    iget v0, p0, Lcom/esotericsoftware/kryo/a/c;->d:I

    iget v2, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    sub-int v3, v0, v2

    const/4 v4, 0x1

    if-lt v3, p1, :cond_1

    return v4

    .line 183
    :cond_1
    iget v3, p0, Lcom/esotericsoftware/kryo/a/c;->a:I

    sub-int v2, v3, v2

    if-le p1, v2, :cond_3

    const-string v0, ", required: "

    if-le p1, v3, :cond_2

    .line 185
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Buffer overflow. Max capacity: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/esotericsoftware/kryo/a/c;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 186
    :cond_2
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Buffer overflow. Available: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/esotericsoftware/kryo/a/c;->a:I

    iget v4, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    if-nez v0, :cond_4

    const/16 v0, 0x10

    .line 188
    iput v0, p0, Lcom/esotericsoftware/kryo/a/c;->d:I

    .line 190
    :cond_4
    iget v0, p0, Lcom/esotericsoftware/kryo/a/c;->d:I

    mul-int/lit8 v0, v0, 0x2

    iget v2, p0, Lcom/esotericsoftware/kryo/a/c;->a:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/esotericsoftware/kryo/a/c;->d:I

    .line 191
    iget v2, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    sub-int v3, v0, v2

    if-lt v3, p1, :cond_4

    .line 192
    new-array p1, v0, [B

    .line 193
    iget-object v0, p0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    iput-object p1, p0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    return v4
.end method


# virtual methods
.method public final a(IZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 295
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/a/c;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/a/c;->b(IZ)I

    move-result p1

    return p1

    .line 296
    :cond_0
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/a/c;->b(I)V

    const/4 p1, 0x4

    return p1
.end method

.method public final a(JZ)I
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x1

    if-nez p3, :cond_0

    shl-long v2, p1, v1

    const/16 v4, 0x3f

    shr-long v4, p1, v4

    xor-long/2addr v2, v4

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    const/4 v4, 0x7

    ushr-long v5, v2, v4

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_2

    .line 450
    iget v4, v0, Lcom/esotericsoftware/kryo/a/c;->c:I

    iget v5, v0, Lcom/esotericsoftware/kryo/a/c;->d:I

    if-ne v4, v5, :cond_1

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/a/c;->d(I)Z

    .line 451
    :cond_1
    iget-object v4, v0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    iget v5, v0, Lcom/esotericsoftware/kryo/a/c;->c:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v0, Lcom/esotericsoftware/kryo/a/c;->c:I

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v4, v5

    return v1

    :cond_2
    const/16 v9, 0xe

    ushr-long v9, v2, v9

    const-wide/16 v11, 0x7f

    const/4 v13, 0x2

    const-wide/16 v14, 0x80

    cmp-long v16, v9, v7

    if-nez v16, :cond_3

    .line 455
    invoke-direct {v0, v13}, Lcom/esotericsoftware/kryo/a/c;->d(I)Z

    .line 456
    iget v4, v0, Lcom/esotericsoftware/kryo/a/c;->c:I

    add-int/lit8 v7, v4, 0x2

    .line 457
    iput v7, v0, Lcom/esotericsoftware/kryo/a/c;->c:I

    .line 458
    iget-object v7, v0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    and-long/2addr v2, v11

    or-long/2addr v2, v14

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v7, v4

    add-int/2addr v4, v1

    long-to-int v1, v5

    int-to-byte v1, v1

    .line 459
    aput-byte v1, v7, v4

    return v13

    :cond_3
    const/16 v1, 0x15

    move-wide/from16 p2, v5

    ushr-long v4, v2, v1

    const/4 v1, 0x3

    cmp-long v6, v4, v7

    if-nez v6, :cond_4

    .line 463
    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/a/c;->d(I)Z

    .line 464
    iget v4, v0, Lcom/esotericsoftware/kryo/a/c;->c:I

    add-int/lit8 v5, v4, 0x3

    .line 465
    iput v5, v0, Lcom/esotericsoftware/kryo/a/c;->c:I

    .line 466
    iget-object v5, v0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    and-long/2addr v2, v11

    or-long/2addr v2, v14

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 467
    aput-byte v2, v5, v4

    add-int/lit8 v2, v4, 0x1

    move-wide/from16 v16, p2

    or-long v6, v16, v14

    long-to-int v3, v6

    int-to-byte v3, v3

    .line 468
    aput-byte v3, v5, v2

    add-int/2addr v4, v13

    long-to-int v2, v9

    int-to-byte v2, v2

    .line 469
    aput-byte v2, v5, v4

    return v1

    :cond_4
    move-wide/from16 v16, p2

    const/16 v6, 0x1c

    ushr-long v14, v2, v6

    const/4 v6, 0x4

    cmp-long v13, v14, v7

    if-nez v13, :cond_5

    .line 473
    invoke-direct {v0, v6}, Lcom/esotericsoftware/kryo/a/c;->d(I)Z

    .line 474
    iget v7, v0, Lcom/esotericsoftware/kryo/a/c;->c:I

    add-int/lit8 v8, v7, 0x4

    .line 475
    iput v8, v0, Lcom/esotericsoftware/kryo/a/c;->c:I

    .line 476
    iget-object v8, v0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    and-long/2addr v2, v11

    const-wide/16 v11, 0x80

    or-long/2addr v2, v11

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 477
    aput-byte v2, v8, v7

    add-int/lit8 v2, v7, 0x1

    or-long v13, v16, v11

    long-to-int v3, v13

    int-to-byte v3, v3

    .line 478
    aput-byte v3, v8, v2

    add-int/lit8 v2, v7, 0x2

    or-long/2addr v9, v11

    long-to-int v3, v9

    int-to-byte v3, v3

    .line 479
    aput-byte v3, v8, v2

    add-int/2addr v7, v1

    long-to-int v1, v4

    int-to-byte v1, v1

    .line 480
    aput-byte v1, v8, v7

    return v6

    :cond_5
    const/16 v1, 0x23

    ushr-long v11, v2, v1

    const/4 v1, 0x5

    cmp-long v13, v11, v7

    if-nez v13, :cond_6

    .line 484
    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/a/c;->d(I)Z

    .line 485
    iget v7, v0, Lcom/esotericsoftware/kryo/a/c;->c:I

    add-int/lit8 v8, v7, 0x5

    .line 486
    iput v8, v0, Lcom/esotericsoftware/kryo/a/c;->c:I

    .line 487
    iget-object v8, v0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    const-wide/16 v11, 0x7f

    and-long/2addr v2, v11

    const-wide/16 v11, 0x80

    or-long/2addr v2, v11

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 488
    aput-byte v2, v8, v7

    add-int/lit8 v2, v7, 0x1

    move v13, v7

    or-long v6, v16, v11

    long-to-int v3, v6

    int-to-byte v3, v3

    .line 489
    aput-byte v3, v8, v2

    add-int/lit8 v7, v13, 0x2

    or-long v2, v9, v11

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 490
    aput-byte v2, v8, v7

    add-int/lit8 v7, v13, 0x3

    or-long v2, v4, v11

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 491
    aput-byte v2, v8, v7

    const/4 v2, 0x4

    add-int/lit8 v7, v13, 0x4

    long-to-int v2, v14

    int-to-byte v2, v2

    .line 492
    aput-byte v2, v8, v7

    return v1

    :cond_6
    const/16 v6, 0x2a

    move-wide/from16 v20, v11

    ushr-long v11, v2, v6

    const/4 v6, 0x6

    cmp-long v13, v11, v7

    if-nez v13, :cond_7

    .line 496
    invoke-direct {v0, v6}, Lcom/esotericsoftware/kryo/a/c;->d(I)Z

    .line 497
    iget v7, v0, Lcom/esotericsoftware/kryo/a/c;->c:I

    add-int/lit8 v8, v7, 0x6

    .line 498
    iput v8, v0, Lcom/esotericsoftware/kryo/a/c;->c:I

    .line 499
    iget-object v8, v0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    const-wide/16 v11, 0x7f

    and-long/2addr v2, v11

    const-wide/16 v11, 0x80

    or-long/2addr v2, v11

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 500
    aput-byte v2, v8, v7

    add-int/lit8 v2, v7, 0x1

    move/from16 v18, v7

    or-long v6, v16, v11

    long-to-int v3, v6

    int-to-byte v3, v3

    .line 501
    aput-byte v3, v8, v2

    add-int/lit8 v7, v18, 0x2

    or-long v2, v9, v11

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 502
    aput-byte v2, v8, v7

    add-int/lit8 v7, v18, 0x3

    or-long v2, v4, v11

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 503
    aput-byte v2, v8, v7

    add-int/lit8 v7, v18, 0x4

    or-long v2, v14, v11

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 504
    aput-byte v2, v8, v7

    add-int/lit8 v7, v18, 0x5

    move-wide/from16 v1, v20

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 505
    aput-byte v1, v8, v7

    const/4 v1, 0x6

    return v1

    :cond_7
    const/16 v1, 0x31

    move-wide/from16 v22, v14

    ushr-long v13, v2, v1

    cmp-long v1, v13, v7

    if-nez v1, :cond_8

    const/4 v1, 0x7

    .line 509
    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/a/c;->d(I)Z

    .line 510
    iget v1, v0, Lcom/esotericsoftware/kryo/a/c;->c:I

    add-int/lit8 v7, v1, 0x7

    .line 511
    iput v7, v0, Lcom/esotericsoftware/kryo/a/c;->c:I

    .line 512
    iget-object v7, v0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    const-wide/16 v13, 0x7f

    and-long/2addr v2, v13

    const-wide/16 v13, 0x80

    or-long/2addr v2, v13

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 513
    aput-byte v2, v7, v1

    add-int/lit8 v2, v1, 0x1

    move-object v8, v7

    or-long v6, v16, v13

    long-to-int v3, v6

    int-to-byte v3, v3

    .line 514
    aput-byte v3, v8, v2

    add-int/lit8 v2, v1, 0x2

    or-long v6, v9, v13

    long-to-int v3, v6

    int-to-byte v3, v3

    .line 515
    aput-byte v3, v8, v2

    add-int/lit8 v2, v1, 0x3

    or-long v3, v4, v13

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 516
    aput-byte v3, v8, v2

    add-int/lit8 v2, v1, 0x4

    or-long v3, v22, v13

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 517
    aput-byte v3, v8, v2

    add-int/lit8 v2, v1, 0x5

    or-long v3, v20, v13

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 518
    aput-byte v3, v8, v2

    const/4 v2, 0x6

    add-int/2addr v1, v2

    long-to-int v2, v11

    int-to-byte v2, v2

    .line 519
    aput-byte v2, v8, v1

    const/4 v1, 0x7

    return v1

    :cond_8
    const/16 v1, 0x38

    move-wide/from16 v24, v13

    ushr-long v13, v2, v1

    const/16 v1, 0x8

    cmp-long v6, v13, v7

    if-nez v6, :cond_9

    .line 523
    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/a/c;->d(I)Z

    .line 524
    iget v6, v0, Lcom/esotericsoftware/kryo/a/c;->c:I

    add-int/lit8 v7, v6, 0x8

    .line 525
    iput v7, v0, Lcom/esotericsoftware/kryo/a/c;->c:I

    .line 526
    iget-object v7, v0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    const-wide/16 v13, 0x7f

    and-long/2addr v2, v13

    const-wide/16 v13, 0x80

    or-long/2addr v2, v13

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 527
    aput-byte v2, v7, v6

    add-int/lit8 v2, v6, 0x1

    move/from16 p2, v2

    or-long v1, v16, v13

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 528
    aput-byte v1, v7, p2

    add-int/lit8 v1, v6, 0x2

    or-long v2, v9, v13

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 529
    aput-byte v2, v7, v1

    add-int/lit8 v1, v6, 0x3

    or-long v2, v4, v13

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 530
    aput-byte v2, v7, v1

    add-int/lit8 v1, v6, 0x4

    or-long v2, v22, v13

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 531
    aput-byte v2, v7, v1

    add-int/lit8 v1, v6, 0x5

    or-long v2, v20, v13

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 532
    aput-byte v2, v7, v1

    add-int/lit8 v1, v6, 0x6

    or-long v2, v11, v13

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 533
    aput-byte v2, v7, v1

    const/4 v1, 0x7

    add-int/2addr v6, v1

    move-wide/from16 v1, v24

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 534
    aput-byte v1, v7, v6

    const/16 v1, 0x8

    return v1

    :cond_9
    move-wide/from16 v6, v24

    const/16 v1, 0x9

    .line 537
    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/a/c;->d(I)Z

    .line 538
    iget v15, v0, Lcom/esotericsoftware/kryo/a/c;->c:I

    add-int/lit8 v8, v15, 0x9

    .line 539
    iput v8, v0, Lcom/esotericsoftware/kryo/a/c;->c:I

    .line 540
    iget-object v8, v0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    const-wide/16 v18, 0x7f

    and-long v2, v2, v18

    const-wide/16 v18, 0x80

    or-long v2, v2, v18

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 541
    aput-byte v2, v8, v15

    add-int/lit8 v2, v15, 0x1

    move/from16 p3, v2

    or-long v1, v16, v18

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 542
    aput-byte v1, v8, p3

    add-int/lit8 v1, v15, 0x2

    or-long v2, v9, v18

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 543
    aput-byte v2, v8, v1

    add-int/lit8 v1, v15, 0x3

    or-long v2, v4, v18

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 544
    aput-byte v2, v8, v1

    add-int/lit8 v1, v15, 0x4

    or-long v2, v22, v18

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 545
    aput-byte v2, v8, v1

    add-int/lit8 v1, v15, 0x5

    or-long v2, v20, v18

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 546
    aput-byte v2, v8, v1

    add-int/lit8 v1, v15, 0x6

    or-long v2, v11, v18

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 547
    aput-byte v2, v8, v1

    add-int/lit8 v1, v15, 0x7

    or-long v2, v6, v18

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 548
    aput-byte v2, v8, v1

    const/16 v1, 0x8

    add-int/2addr v15, v1

    long-to-int v1, v13

    int-to-byte v1, v1

    .line 549
    aput-byte v1, v8, v15

    const/16 v1, 0x9

    return v1
.end method

.method public final a(ZI)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    and-int/lit8 v0, p2, 0x3f

    const/16 v1, 0x80

    if-eqz p1, :cond_0

    const/16 p1, 0x80

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v0

    ushr-int/lit8 v0, p2, 0x6

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 361
    iget p2, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    iget v0, p0, Lcom/esotericsoftware/kryo/a/c;->d:I

    if-ne p2, v0, :cond_1

    invoke-direct {p0, v2}, Lcom/esotericsoftware/kryo/a/c;->d(I)Z

    .line 362
    :cond_1
    iget-object p2, p0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    iget v0, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    int-to-byte p1, p1

    aput-byte p1, p2, v0

    return v2

    :cond_2
    ushr-int/lit8 v3, p2, 0xd

    const/4 v4, 0x2

    if-nez v3, :cond_3

    .line 366
    invoke-direct {p0, v4}, Lcom/esotericsoftware/kryo/a/c;->d(I)Z

    .line 367
    iget p2, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    add-int/lit8 v1, p2, 0x2

    .line 368
    iput v1, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    .line 369
    iget-object v1, p0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    or-int/lit8 p1, p1, 0x40

    int-to-byte p1, p1

    aput-byte p1, v1, p2

    add-int/2addr p2, v2

    int-to-byte p1, v0

    .line 370
    aput-byte p1, v1, p2

    return v4

    :cond_3
    ushr-int/lit8 v2, p2, 0x14

    const/4 v5, 0x3

    if-nez v2, :cond_4

    .line 374
    invoke-direct {p0, v5}, Lcom/esotericsoftware/kryo/a/c;->d(I)Z

    .line 375
    iget-object p2, p0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    .line 376
    iget v2, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    add-int/lit8 v6, v2, 0x3

    .line 377
    iput v6, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    or-int/lit8 p1, p1, 0x40

    int-to-byte p1, p1

    .line 378
    aput-byte p1, p2, v2

    add-int/lit8 p1, v2, 0x1

    or-int/2addr v0, v1

    int-to-byte v0, v0

    .line 379
    aput-byte v0, p2, p1

    add-int/2addr v2, v4

    int-to-byte p1, v3

    .line 380
    aput-byte p1, p2, v2

    return v5

    :cond_4
    ushr-int/lit8 p2, p2, 0x1b

    const/4 v4, 0x4

    if-nez p2, :cond_5

    .line 384
    invoke-direct {p0, v4}, Lcom/esotericsoftware/kryo/a/c;->d(I)Z

    .line 385
    iget-object p2, p0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    .line 386
    iget v6, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    add-int/lit8 v7, v6, 0x4

    .line 387
    iput v7, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    or-int/lit8 p1, p1, 0x40

    int-to-byte p1, p1

    .line 388
    aput-byte p1, p2, v6

    add-int/lit8 p1, v6, 0x1

    or-int/2addr v0, v1

    int-to-byte v0, v0

    .line 389
    aput-byte v0, p2, p1

    add-int/lit8 p1, v6, 0x2

    or-int/lit16 v0, v3, 0x80

    int-to-byte v0, v0

    .line 390
    aput-byte v0, p2, p1

    add-int/2addr v6, v5

    int-to-byte p1, v2

    .line 391
    aput-byte p1, p2, v6

    return v4

    :cond_5
    const/4 v5, 0x5

    .line 394
    invoke-direct {p0, v5}, Lcom/esotericsoftware/kryo/a/c;->d(I)Z

    .line 395
    iget-object v6, p0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    .line 396
    iget v7, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    add-int/lit8 v8, v7, 0x5

    .line 397
    iput v8, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    or-int/lit8 p1, p1, 0x40

    int-to-byte p1, p1

    .line 398
    aput-byte p1, v6, v7

    add-int/lit8 p1, v7, 0x1

    or-int/2addr v0, v1

    int-to-byte v0, v0

    .line 399
    aput-byte v0, v6, p1

    add-int/lit8 p1, v7, 0x2

    or-int/lit16 v0, v3, 0x80

    int-to-byte v0, v0

    .line 400
    aput-byte v0, v6, p1

    add-int/lit8 p1, v7, 0x3

    or-int/lit16 v0, v2, 0x80

    int-to-byte v0, v0

    .line 401
    aput-byte v0, v6, p1

    add-int/2addr v7, v4

    int-to-byte p1, p2

    .line 402
    aput-byte p1, v6, v7

    return v5
.end method

.method public final a()Ljava/io/OutputStream;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/esotericsoftware/kryo/a/c;->f:Ljava/io/OutputStream;

    return-object v0
.end method

.method public final a(B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 245
    iget v0, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    iget v1, p0, Lcom/esotericsoftware/kryo/a/c;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/a/c;->d(I)Z

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public final a(C)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 624
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/a/c;->d(I)Z

    .line 625
    iget v0, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    add-int/lit8 v1, v0, 0x2

    .line 626
    iput v1, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    .line 627
    iget-object v1, p0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    int-to-byte v2, p1

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    .line 628
    aput-byte p1, v1, v0

    return-void
.end method

.method public final a(D)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 586
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/a/c;->d(I)Z

    .line 587
    iget-object v1, p0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    .line 588
    iget v2, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    add-int/lit8 v3, v2, 0x8

    .line 589
    iput v3, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    .line 590
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    long-to-int v3, p1

    int-to-byte v3, v3

    .line 591
    aput-byte v3, v1, v2

    add-int/lit8 v3, v2, 0x1

    ushr-long v4, p1, v0

    long-to-int v0, v4

    int-to-byte v0, v0

    .line 592
    aput-byte v0, v1, v3

    add-int/lit8 v0, v2, 0x2

    const/16 v3, 0x10

    ushr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 593
    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x3

    const/16 v3, 0x18

    ushr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 594
    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x4

    const/16 v3, 0x20

    ushr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 595
    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x5

    const/16 v3, 0x28

    ushr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 596
    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x6

    const/16 v3, 0x30

    ushr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 597
    aput-byte v3, v1, v0

    add-int/lit8 v2, v2, 0x7

    const/16 v0, 0x38

    ushr-long/2addr p1, v0

    long-to-int p2, p1

    int-to-byte p1, p2

    .line 598
    aput-byte p1, v1, v2

    return-void
.end method

.method public final a(F)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 563
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/a/c;->d(I)Z

    .line 564
    iget-object v0, p0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    .line 565
    iget v1, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    add-int/lit8 v2, v1, 0x4

    .line 566
    iput v2, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    .line 567
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    int-to-byte v2, p1

    .line 568
    aput-byte v2, v0, v1

    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    .line 569
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x2

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    .line 570
    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x3

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    .line 571
    aput-byte p1, v0, v1

    return-void
.end method

.method public final a(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 250
    iget v0, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    iget v1, p0, Lcom/esotericsoftware/kryo/a/c;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/a/c;->d(I)Z

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method public final a(J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 416
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/a/c;->d(I)Z

    .line 417
    iget-object v1, p0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    .line 418
    iget v2, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    add-int/lit8 v3, v2, 0x8

    .line 419
    iput v3, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    long-to-int v3, p1

    int-to-byte v3, v3

    .line 420
    aput-byte v3, v1, v2

    add-int/lit8 v3, v2, 0x1

    ushr-long v4, p1, v0

    long-to-int v0, v4

    int-to-byte v0, v0

    .line 421
    aput-byte v0, v1, v3

    add-int/lit8 v0, v2, 0x2

    const/16 v3, 0x10

    ushr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 422
    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x3

    const/16 v3, 0x18

    ushr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 423
    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x4

    const/16 v3, 0x20

    ushr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 424
    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x5

    const/16 v3, 0x28

    ushr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 425
    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x6

    const/16 v3, 0x30

    ushr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 426
    aput-byte v3, v1, v0

    add-int/lit8 v2, v2, 0x7

    const/16 v0, 0x38

    ushr-long/2addr p1, v0

    long-to-int p2, p1

    int-to-byte p1, p2

    .line 427
    aput-byte p1, v1, v2

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/16 v0, 0x80

    if-nez p1, :cond_0

    .line 647
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/a/c;->a(I)V

    return-void

    .line 650
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/16 p1, 0x81

    .line 652
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/a/c;->a(I)V

    return-void

    :cond_1
    const/16 v2, 0x7f

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v1, v4, :cond_4

    const/16 v5, 0x20

    if-gt v1, v5, :cond_4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_2

    .line 659
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-gt v6, v2, :cond_4

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 660
    :cond_2
    iget v2, p0, Lcom/esotericsoftware/kryo/a/c;->d:I

    iget v5, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    sub-int/2addr v2, v5

    if-ge v2, v1, :cond_3

    .line 661
    invoke-direct {p0, p1, v1}, Lcom/esotericsoftware/kryo/a/c;->a(Ljava/lang/String;I)V

    goto :goto_1

    .line 663
    :cond_3
    iget-object v2, p0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    invoke-virtual {p1, v3, v1, v2, v5}, Ljava/lang/String;->getBytes(II[BI)V

    .line 664
    iget p1, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    .line 666
    :goto_1
    iget-object p1, p0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    sub-int/2addr v1, v4

    aget-byte v2, p1, v1

    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    return-void

    :cond_4
    add-int/lit8 v5, v1, 0x1

    .line 669
    invoke-virtual {p0, v4, v5}, Lcom/esotericsoftware/kryo/a/c;->a(ZI)I

    .line 671
    iget v5, p0, Lcom/esotericsoftware/kryo/a/c;->d:I

    iget v6, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    sub-int/2addr v5, v6

    if-lt v5, v1, :cond_7

    .line 673
    iget-object v5, p0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    .line 676
    :goto_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-gt v7, v2, :cond_6

    add-int/lit8 v8, v6, 0x1

    int-to-byte v7, v7

    .line 678
    aput-byte v7, v5, v6

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_5

    .line 681
    iput v8, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    return-void

    :cond_5
    move v6, v8

    goto :goto_2

    .line 685
    :cond_6
    iput v6, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    :cond_7
    if-ge v3, v1, :cond_c

    :goto_3
    if-ge v3, v1, :cond_c

    .line 1722
    iget v5, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    iget v6, p0, Lcom/esotericsoftware/kryo/a/c;->d:I

    if-ne v5, v6, :cond_8

    sub-int v5, v1, v3

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/esotericsoftware/kryo/a/c;->d(I)Z

    .line 1723
    :cond_8
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-gt v5, v2, :cond_9

    .line 1725
    iget-object v6, p0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    iget v7, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    int-to-byte v5, v5

    aput-byte v5, v6, v7

    goto :goto_5

    :cond_9
    const/16 v6, 0x7ff

    if-le v5, v6, :cond_a

    .line 1727
    iget-object v6, p0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    iget v7, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    shr-int/lit8 v8, v5, 0xc

    and-int/lit8 v8, v8, 0xf

    or-int/lit16 v8, v8, 0xe0

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    const/4 v6, 0x2

    .line 1728
    invoke-direct {p0, v6}, Lcom/esotericsoftware/kryo/a/c;->d(I)Z

    .line 1729
    iget-object v6, p0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    iget v7, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    shr-int/lit8 v8, v5, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v8, v0

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    goto :goto_4

    .line 1732
    :cond_a
    iget-object v6, p0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    iget v7, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    shr-int/lit8 v9, v5, 0x6

    and-int/lit8 v9, v9, 0x1f

    or-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    aput-byte v9, v6, v7

    .line 1733
    iget v6, p0, Lcom/esotericsoftware/kryo/a/c;->d:I

    if-ne v8, v6, :cond_b

    invoke-direct {p0, v4}, Lcom/esotericsoftware/kryo/a/c;->d(I)Z

    .line 1734
    :cond_b
    :goto_4
    iget-object v6, p0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    iget v7, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v0

    int-to-byte v5, v5

    aput-byte v5, v6, v7

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_c
    return-void
.end method

.method public final a(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 635
    iget v0, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    iget v1, p0, Lcom/esotericsoftware/kryo/a/c;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/a/c;->d(I)Z

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public final a([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 257
    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/esotericsoftware/kryo/a/c;->a([BII)V

    return-void

    .line 256
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bytes cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a([CII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 884
    iget v0, p0, Lcom/esotericsoftware/kryo/a/c;->d:I

    shl-int/lit8 v1, p3, 0x1

    if-lt v0, v1, :cond_1

    .line 885
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/a/c;->d(I)Z

    .line 886
    iget-object v0, p0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    .line 887
    iget v1, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    add-int/lit8 p3, p3, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    .line 889
    aget-char v2, p1, p2

    int-to-byte v3, v2

    .line 890
    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    .line 891
    aput-byte v2, v0, v3

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 893
    :cond_0
    iput v1, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    return-void

    :cond_1
    add-int/lit8 p3, p3, 0x0

    :goto_1
    if-ge p2, p3, :cond_2

    .line 896
    aget-char v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/a/c;->a(C)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final a([DII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 842
    iget v0, p0, Lcom/esotericsoftware/kryo/a/c;->d:I

    shl-int/lit8 v1, p3, 0x3

    if-lt v0, v1, :cond_1

    .line 843
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/a/c;->d(I)Z

    .line 844
    iget-object v0, p0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    .line 845
    iget v1, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    add-int/lit8 p3, p3, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    .line 847
    aget-wide v2, p1, p2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    long-to-int v4, v2

    int-to-byte v4, v4

    .line 848
    aput-byte v4, v0, v1

    add-int/lit8 v4, v1, 0x1

    const/16 v5, 0x8

    ushr-long v5, v2, v5

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 849
    aput-byte v5, v0, v4

    add-int/lit8 v4, v1, 0x2

    const/16 v5, 0x10

    ushr-long v5, v2, v5

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 850
    aput-byte v5, v0, v4

    add-int/lit8 v4, v1, 0x3

    const/16 v5, 0x18

    ushr-long v5, v2, v5

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 851
    aput-byte v5, v0, v4

    add-int/lit8 v4, v1, 0x4

    const/16 v5, 0x20

    ushr-long v5, v2, v5

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 852
    aput-byte v5, v0, v4

    add-int/lit8 v4, v1, 0x5

    const/16 v5, 0x28

    ushr-long v5, v2, v5

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 853
    aput-byte v5, v0, v4

    add-int/lit8 v4, v1, 0x6

    const/16 v5, 0x30

    ushr-long v5, v2, v5

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 854
    aput-byte v5, v0, v4

    add-int/lit8 v4, v1, 0x7

    const/16 v5, 0x38

    ushr-long/2addr v2, v5

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 855
    aput-byte v2, v0, v4

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v1, v1, 0x8

    goto :goto_0

    .line 857
    :cond_0
    iput v1, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    return-void

    :cond_1
    add-int/lit8 p3, p3, 0x0

    :goto_1
    if-ge p2, p3, :cond_2

    .line 860
    aget-wide v0, p1, p2

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/a/c;->a(D)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final a([FII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 822
    iget v0, p0, Lcom/esotericsoftware/kryo/a/c;->d:I

    shl-int/lit8 v1, p3, 0x2

    if-lt v0, v1, :cond_1

    .line 823
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/a/c;->d(I)Z

    .line 824
    iget-object v0, p0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    .line 825
    iget v1, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    add-int/lit8 p3, p3, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    .line 827
    aget v2, p1, p2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    int-to-byte v3, v2

    .line 828
    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    shr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    .line 829
    aput-byte v4, v0, v3

    add-int/lit8 v3, v1, 0x2

    shr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    .line 830
    aput-byte v4, v0, v3

    add-int/lit8 v3, v1, 0x3

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    .line 831
    aput-byte v2, v0, v3

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 833
    :cond_0
    iput v1, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    return-void

    :cond_1
    add-int/lit8 p3, p3, 0x0

    :goto_1
    if-ge p2, p3, :cond_2

    .line 836
    aget v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/a/c;->a(F)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final a([III)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 779
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/a/c;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    add-int/2addr p3, v1

    :goto_0
    if-ge p2, p3, :cond_0

    .line 781
    aget v0, p1, p2

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/a/c;->b(IZ)I

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 1758
    :cond_1
    iget p2, p0, Lcom/esotericsoftware/kryo/a/c;->d:I

    shl-int/lit8 v0, p3, 0x2

    if-lt p2, v0, :cond_3

    .line 1759
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/a/c;->d(I)Z

    .line 1760
    iget-object p2, p0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    .line 1761
    iget v0, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    add-int/2addr p3, v1

    :goto_1
    if-ge v1, p3, :cond_2

    .line 1763
    aget v2, p1, v1

    int-to-byte v3, v2

    .line 1764
    aput-byte v3, p2, v0

    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    .line 1765
    aput-byte v4, p2, v3

    add-int/lit8 v3, v0, 0x2

    shr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    .line 1766
    aput-byte v4, p2, v3

    add-int/lit8 v3, v0, 0x3

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    .line 1767
    aput-byte v2, p2, v3

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 1769
    :cond_2
    iput v0, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    return-void

    :cond_3
    add-int/2addr p3, v1

    :goto_2
    if-ge v1, p3, :cond_4

    .line 1772
    aget p2, p1, v1

    invoke-virtual {p0, p2}, Lcom/esotericsoftware/kryo/a/c;->b(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final a([JII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 788
    iget v0, p0, Lcom/esotericsoftware/kryo/a/c;->d:I

    shl-int/lit8 v1, p3, 0x3

    if-lt v0, v1, :cond_1

    .line 789
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/a/c;->d(I)Z

    .line 790
    iget-object v0, p0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    .line 791
    iget v1, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    add-int/lit8 p3, p3, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    .line 793
    aget-wide v2, p1, p2

    long-to-int v4, v2

    int-to-byte v4, v4

    .line 794
    aput-byte v4, v0, v1

    add-int/lit8 v4, v1, 0x1

    const/16 v5, 0x8

    ushr-long v5, v2, v5

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 795
    aput-byte v5, v0, v4

    add-int/lit8 v4, v1, 0x2

    const/16 v5, 0x10

    ushr-long v5, v2, v5

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 796
    aput-byte v5, v0, v4

    add-int/lit8 v4, v1, 0x3

    const/16 v5, 0x18

    ushr-long v5, v2, v5

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 797
    aput-byte v5, v0, v4

    add-int/lit8 v4, v1, 0x4

    const/16 v5, 0x20

    ushr-long v5, v2, v5

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 798
    aput-byte v5, v0, v4

    add-int/lit8 v4, v1, 0x5

    const/16 v5, 0x28

    ushr-long v5, v2, v5

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 799
    aput-byte v5, v0, v4

    add-int/lit8 v4, v1, 0x6

    const/16 v5, 0x30

    ushr-long v5, v2, v5

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 800
    aput-byte v5, v0, v4

    add-int/lit8 v4, v1, 0x7

    const/16 v5, 0x38

    ushr-long/2addr v2, v5

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 801
    aput-byte v2, v0, v4

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v1, v1, 0x8

    goto :goto_0

    .line 803
    :cond_0
    iput v1, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    return-void

    :cond_1
    add-int/lit8 p3, p3, 0x0

    :goto_1
    if-ge p2, p3, :cond_2

    .line 806
    aget-wide v0, p1, p2

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/a/c;->a(J)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final a([SII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 866
    iget v0, p0, Lcom/esotericsoftware/kryo/a/c;->d:I

    shl-int/lit8 v1, p3, 0x1

    if-lt v0, v1, :cond_1

    .line 867
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/a/c;->d(I)Z

    .line 868
    iget-object v0, p0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    .line 869
    iget v1, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    add-int/lit8 p3, p3, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    .line 871
    aget-short v2, p1, p2

    int-to-byte v3, v2

    .line 872
    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    .line 873
    aput-byte v2, v0, v3

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 875
    :cond_0
    iput v1, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    return-void

    :cond_1
    add-int/lit8 p3, p3, 0x0

    :goto_1
    if-ge p2, p3, :cond_2

    .line 878
    aget-short v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/a/c;->c(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final b()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    return v0
.end method

.method public final b(IZ)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    if-nez p2, :cond_0

    shl-int/lit8 p2, p1, 0x1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, p2

    :cond_0
    ushr-int/lit8 p2, p1, 0x7

    const/4 v0, 0x1

    if-nez p2, :cond_2

    .line 308
    iget p2, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    iget v1, p0, Lcom/esotericsoftware/kryo/a/c;->d:I

    if-ne p2, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/a/c;->d(I)Z

    .line 309
    :cond_1
    iget-object p2, p0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    int-to-byte p1, p1

    aput-byte p1, p2, v1

    return v0

    :cond_2
    ushr-int/lit8 v1, p1, 0xe

    const/4 v2, 0x2

    if-nez v1, :cond_3

    .line 313
    invoke-direct {p0, v2}, Lcom/esotericsoftware/kryo/a/c;->d(I)Z

    .line 314
    iget v1, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    add-int/lit8 v3, v1, 0x2

    .line 315
    iput v3, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    .line 316
    iget-object v3, p0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    aput-byte p1, v3, v1

    add-int/2addr v1, v0

    int-to-byte p1, p2

    .line 317
    aput-byte p1, v3, v1

    return v2

    :cond_3
    ushr-int/lit8 v0, p1, 0x15

    const/4 v3, 0x3

    if-nez v0, :cond_4

    .line 321
    invoke-direct {p0, v3}, Lcom/esotericsoftware/kryo/a/c;->d(I)Z

    .line 322
    iget v0, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    add-int/lit8 v4, v0, 0x3

    .line 323
    iput v4, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    .line 324
    iget-object v4, p0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    .line 325
    aput-byte p1, v4, v0

    add-int/lit8 p1, v0, 0x1

    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    .line 326
    aput-byte p2, v4, p1

    add-int/2addr v0, v2

    int-to-byte p1, v1

    .line 327
    aput-byte p1, v4, v0

    return v3

    :cond_4
    ushr-int/lit8 v2, p1, 0x1c

    const/4 v4, 0x4

    if-nez v2, :cond_5

    .line 331
    invoke-direct {p0, v4}, Lcom/esotericsoftware/kryo/a/c;->d(I)Z

    .line 332
    iget v2, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    add-int/lit8 v5, v2, 0x4

    .line 333
    iput v5, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    .line 334
    iget-object v5, p0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    .line 335
    aput-byte p1, v5, v2

    add-int/lit8 p1, v2, 0x1

    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    .line 336
    aput-byte p2, v5, p1

    add-int/lit8 p1, v2, 0x2

    or-int/lit16 p2, v1, 0x80

    int-to-byte p2, p2

    .line 337
    aput-byte p2, v5, p1

    add-int/2addr v2, v3

    int-to-byte p1, v0

    .line 338
    aput-byte p1, v5, v2

    return v4

    :cond_5
    const/4 v3, 0x5

    .line 341
    invoke-direct {p0, v3}, Lcom/esotericsoftware/kryo/a/c;->d(I)Z

    .line 342
    iget v5, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    add-int/lit8 v6, v5, 0x5

    .line 343
    iput v6, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    .line 344
    iget-object v6, p0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    .line 345
    aput-byte p1, v6, v5

    add-int/lit8 p1, v5, 0x1

    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    .line 346
    aput-byte p2, v6, p1

    add-int/lit8 p1, v5, 0x2

    or-int/lit16 p2, v1, 0x80

    int-to-byte p2, p2

    .line 347
    aput-byte p2, v6, p1

    add-int/lit8 p1, v5, 0x3

    or-int/lit16 p2, v0, 0x80

    int-to-byte p2, p2

    .line 348
    aput-byte p2, v6, p1

    add-int/2addr v5, v4

    int-to-byte p1, v2

    .line 349
    aput-byte p1, v6, v5

    return v3
.end method

.method public final b(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 279
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/a/c;->d(I)Z

    .line 280
    iget-object v0, p0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    .line 281
    iget v1, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    add-int/lit8 v2, v1, 0x4

    .line 282
    iput v2, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    int-to-byte v2, p1

    .line 283
    aput-byte v2, v0, v1

    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    .line 284
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x2

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    .line 285
    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x3

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    .line 286
    aput-byte p1, v0, v1

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/16 v0, 0x80

    if-nez p1, :cond_0

    .line 697
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/a/c;->a(I)V

    return-void

    .line 700
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    .line 711
    iget v4, p0, Lcom/esotericsoftware/kryo/a/c;->d:I

    iget v5, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    sub-int/2addr v4, v5

    if-ge v4, v1, :cond_1

    .line 712
    invoke-direct {p0, p1, v1}, Lcom/esotericsoftware/kryo/a/c;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 714
    :cond_1
    iget-object v4, p0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    invoke-virtual {p1, v2, v1, v4, v5}, Ljava/lang/String;->getBytes(II[BI)V

    .line 715
    iget p1, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    .line 717
    :goto_0
    iget-object p1, p0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    sub-int/2addr v1, v3

    aget-byte v2, p1, v1

    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    return-void

    :cond_2
    const/4 v0, 0x2

    .line 706
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/a/c;->d(I)Z

    .line 707
    iget-object v0, p0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    const/16 v4, -0x7e

    aput-byte v4, v0, v1

    add-int/lit8 v1, v3, 0x1

    .line 708
    iput v1, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    int-to-byte p1, p1

    aput-byte p1, v0, v3

    return-void

    :cond_3
    const/16 p1, 0x81

    .line 703
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/a/c;->a(I)V

    return-void
.end method

.method public final b([JII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 813
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/a/c;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    add-int/2addr p3, v1

    :goto_0
    if-ge p2, p3, :cond_0

    .line 815
    aget-wide v2, p1, p2

    invoke-virtual {p0, v2, v3, v1}, Lcom/esotericsoftware/kryo/a/c;->a(JZ)I

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 817
    :cond_1
    invoke-virtual {p0, p1, v1, p3}, Lcom/esotericsoftware/kryo/a/c;->a([JII)V

    return-void
.end method

.method public final c(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 613
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/a/c;->d(I)Z

    .line 614
    iget v0, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    add-int/lit8 v1, v0, 0x2

    .line 615
    iput v1, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    .line 616
    iget-object v1, p0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    int-to-byte v2, p1

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    .line 617
    aput-byte p1, v1, v0

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 216
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/a/c;->flush()V

    .line 217
    iget-object v0, p0, Lcom/esotericsoftware/kryo/a/c;->f:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 219
    :try_start_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/esotericsoftware/kryo/a/c;->f:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    return-void

    .line 205
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 206
    iget-object v0, p0, Lcom/esotericsoftware/kryo/a/c;->f:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    iget-wide v0, p0, Lcom/esotericsoftware/kryo/a/c;->b:J

    iget v2, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    int-to-long v4, v2

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/esotericsoftware/kryo/a/c;->b:J

    .line 211
    iput v3, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    return-void

    :catch_0
    move-exception v0

    .line 208
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 227
    iget v0, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    iget v1, p0, Lcom/esotericsoftware/kryo/a/c;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/a/c;->d(I)Z

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/a/c;->e:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/a/c;->c:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 234
    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/esotericsoftware/kryo/a/c;->a([BII)V

    return-void

    .line 233
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bytes cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 239
    invoke-direct {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/a/c;->a([BII)V

    return-void
.end method
