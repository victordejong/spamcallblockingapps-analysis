.class public Lcom/esotericsoftware/kryo/a/a;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field protected a:[B

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:J

.field protected f:[C

.field protected g:Ljava/io/InputStream;

.field protected h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [C

    .line 38
    iput-object v0, p0, Lcom/esotericsoftware/kryo/a/a;->f:[C

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/a/a;->h:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [C

    .line 38
    iput-object v0, p0, Lcom/esotericsoftware/kryo/a/a;->f:[C

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/a/a;->h:Z

    .line 50
    iput p1, p0, Lcom/esotericsoftware/kryo/a/a;->c:I

    .line 51
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/esotericsoftware/kryo/a/a;->a:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/16 v0, 0x1000

    .line 70
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/a/a;-><init>(I)V

    if-eqz p1, :cond_0

    .line 72
    iput-object p1, p0, Lcom/esotericsoftware/kryo/a/a;->g:Ljava/io/InputStream;

    return-void

    .line 71
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "inputStream cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p2}, Lcom/esotericsoftware/kryo/a/a;-><init>(I)V

    if-eqz p1, :cond_0

    .line 79
    iput-object p1, p0, Lcom/esotericsoftware/kryo/a/a;->g:Ljava/io/InputStream;

    return-void

    .line 78
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "inputStream cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [C

    .line 38
    iput-object v0, p0, Lcom/esotericsoftware/kryo/a/a;->f:[C

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/a/a;->h:Z

    .line 58
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/esotericsoftware/kryo/a/a;->a([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [C

    .line 38
    iput-object v0, p0, Lcom/esotericsoftware/kryo/a/a;->f:[C

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/a/a;->h:Z

    .line 65
    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/a/a;->a([BII)V

    return-void
.end method

.method private a(II)V
    .locals 6

    .line 832
    iget-object v0, p0, Lcom/esotericsoftware/kryo/a/a;->f:[C

    .line 833
    iget-object v1, p0, Lcom/esotericsoftware/kryo/a/a;->a:[B

    :goto_0
    if-ge p2, p1, :cond_2

    .line 835
    iget v2, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    iget v3, p0, Lcom/esotericsoftware/kryo/a/a;->d:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    invoke-direct {p0, v4}, Lcom/esotericsoftware/kryo/a/a;->j(I)I

    .line 836
    :cond_0
    iget v2, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v5, v2, 0x4

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    const/4 v3, 0x2

    .line 854
    invoke-direct {p0, v3}, Lcom/esotericsoftware/kryo/a/a;->j(I)I

    .line 855
    iget v3, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    add-int/lit8 v5, v3, 0x2

    .line 856
    iput v5, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0xc

    .line 857
    aget-byte v5, v1, v3

    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v2, v5

    add-int/2addr v3, v4

    aget-byte v3, v1, v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v0, p2

    goto :goto_1

    .line 850
    :pswitch_2
    iget v5, p0, Lcom/esotericsoftware/kryo/a/a;->d:I

    if-ne v3, v5, :cond_1

    invoke-direct {p0, v4}, Lcom/esotericsoftware/kryo/a/a;->j(I)I

    :cond_1
    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x6

    .line 851
    iget v3, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    aget-byte v3, v1, v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v0, p2

    goto :goto_1

    :pswitch_3
    int-to-char v2, v2

    .line 846
    aput-char v2, v0, p2

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private d(Z)I
    .locals 6

    .line 434
    iget-object v0, p0, Lcom/esotericsoftware/kryo/a/a;->a:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    aget-byte v0, v0, v1

    and-int/lit8 v1, v0, 0x7f

    and-int/lit16 v0, v0, 0x80

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 437
    iget v0, p0, Lcom/esotericsoftware/kryo/a/a;->d:I

    if-ne v2, v0, :cond_0

    invoke-direct {p0, v3}, Lcom/esotericsoftware/kryo/a/a;->j(I)I

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/a/a;->a:[B

    .line 439
    iget v2, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    aget-byte v2, v0, v2

    and-int/lit8 v5, v2, 0x7f

    shl-int/lit8 v5, v5, 0x7

    or-int/2addr v1, v5

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_4

    .line 442
    iget v2, p0, Lcom/esotericsoftware/kryo/a/a;->d:I

    if-ne v4, v2, :cond_1

    invoke-direct {p0, v3}, Lcom/esotericsoftware/kryo/a/a;->j(I)I

    .line 443
    :cond_1
    iget v2, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    aget-byte v2, v0, v2

    and-int/lit8 v5, v2, 0x7f

    shl-int/lit8 v5, v5, 0xe

    or-int/2addr v1, v5

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_4

    .line 446
    iget v2, p0, Lcom/esotericsoftware/kryo/a/a;->d:I

    if-ne v4, v2, :cond_2

    invoke-direct {p0, v3}, Lcom/esotericsoftware/kryo/a/a;->j(I)I

    .line 447
    :cond_2
    iget v2, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    aget-byte v2, v0, v2

    and-int/lit8 v5, v2, 0x7f

    shl-int/lit8 v5, v5, 0x15

    or-int/2addr v1, v5

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_4

    .line 450
    iget v2, p0, Lcom/esotericsoftware/kryo/a/a;->d:I

    if-ne v4, v2, :cond_3

    invoke-direct {p0, v3}, Lcom/esotericsoftware/kryo/a/a;->j(I)I

    .line 451
    :cond_3
    iget v2, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    aget-byte v0, v0, v2

    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x1c

    or-int/2addr v1, v0

    :cond_4
    if-eqz p1, :cond_5

    return v1

    :cond_5
    ushr-int/lit8 p1, v1, 0x1

    and-int/lit8 v0, v1, 0x1

    neg-int v0, v0

    xor-int/2addr p1, v0

    return p1
.end method

.method private j(I)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 194
    iget v0, p0, Lcom/esotericsoftware/kryo/a/a;->d:I

    iget v1, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    sub-int v1, v0, v1

    if-lt v1, p1, :cond_0

    return v1

    .line 196
    :cond_0
    iget v2, p0, Lcom/esotericsoftware/kryo/a/a;->c:I

    if-gt p1, v2, :cond_6

    const-string v3, "Buffer underflow."

    const/4 v4, -0x1

    if-lez v1, :cond_2

    .line 201
    iget-object v5, p0, Lcom/esotericsoftware/kryo/a/a;->a:[B

    sub-int/2addr v2, v0

    invoke-virtual {p0, v5, v0, v2}, Lcom/esotericsoftware/kryo/a/a;->b([BII)I

    move-result v0

    if-eq v0, v4, :cond_1

    add-int/2addr v1, v0

    if-lt v1, p1, :cond_2

    .line 205
    iget p1, p0, Lcom/esotericsoftware/kryo/a/a;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/a/a;->d:I

    return v1

    .line 202
    :cond_1
    new-instance p1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {p1, v3}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/esotericsoftware/kryo/a/a;->a:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    const/4 v5, 0x0

    invoke-static {v0, v2, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    iget-wide v6, p0, Lcom/esotericsoftware/kryo/a/a;->e:J

    iget v0, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    int-to-long v8, v0

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/esotericsoftware/kryo/a/a;->e:J

    .line 213
    iput v5, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    .line 216
    :cond_3
    iget-object v0, p0, Lcom/esotericsoftware/kryo/a/a;->a:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/a/a;->c:I

    sub-int/2addr v2, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/esotericsoftware/kryo/a/a;->b([BII)I

    move-result v0

    if-ne v0, v4, :cond_5

    if-lt v1, p1, :cond_4

    goto :goto_0

    .line 219
    :cond_4
    new-instance p1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {p1, v3}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    add-int/2addr v1, v0

    if-lt v1, p1, :cond_3

    .line 225
    :goto_0
    iput v1, p0, Lcom/esotericsoftware/kryo/a/a;->d:I

    return v1

    .line 196
    :cond_6
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Buffer too small: capacity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/esotericsoftware/kryo/a/a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", required: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private k(I)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 234
    iget v0, p0, Lcom/esotericsoftware/kryo/a/a;->d:I

    iget v1, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    sub-int/2addr v0, v1

    if-lt v0, p1, :cond_0

    return p1

    .line 236
    :cond_0
    iget v1, p0, Lcom/esotericsoftware/kryo/a/a;->c:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 241
    iget-object v1, p0, Lcom/esotericsoftware/kryo/a/a;->a:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/a/a;->d:I

    iget v3, p0, Lcom/esotericsoftware/kryo/a/a;->c:I

    sub-int/2addr v3, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/esotericsoftware/kryo/a/a;->b([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    if-nez v0, :cond_1

    return v2

    .line 242
    :cond_1
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    :cond_2
    add-int/2addr v0, v1

    if-lt v0, p1, :cond_3

    .line 245
    iget v0, p0, Lcom/esotericsoftware/kryo/a/a;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/esotericsoftware/kryo/a/a;->d:I

    return p1

    .line 250
    :cond_3
    iget-object v1, p0, Lcom/esotericsoftware/kryo/a/a;->a:[B

    iget v3, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    const/4 v4, 0x0

    invoke-static {v1, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    iget-wide v5, p0, Lcom/esotericsoftware/kryo/a/a;->e:J

    iget v1, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    int-to-long v7, v1

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/esotericsoftware/kryo/a/a;->e:J

    .line 252
    iput v4, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    .line 255
    :cond_4
    iget-object v1, p0, Lcom/esotericsoftware/kryo/a/a;->a:[B

    iget v3, p0, Lcom/esotericsoftware/kryo/a/a;->c:I

    sub-int/2addr v3, v0

    invoke-virtual {p0, v1, v0, v3}, Lcom/esotericsoftware/kryo/a/a;->b([BII)I

    move-result v1

    if-eq v1, v2, :cond_5

    add-int/2addr v0, v1

    if-lt v0, p1, :cond_4

    .line 261
    :cond_5
    iput v0, p0, Lcom/esotericsoftware/kryo/a/a;->d:I

    if-nez v0, :cond_6

    return v2

    .line 262
    :cond_6
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private l(I)V
    .locals 7

    .line 811
    iget-object v0, p0, Lcom/esotericsoftware/kryo/a/a;->f:[C

    array-length v0, v0

    if-ge v0, p1, :cond_0

    new-array v0, p1, [C

    iput-object v0, p0, Lcom/esotericsoftware/kryo/a/a;->f:[C

    .line 812
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/a/a;->a:[B

    .line 813
    iget-object v1, p0, Lcom/esotericsoftware/kryo/a/a;->f:[C

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 816
    invoke-direct {p0, v3}, Lcom/esotericsoftware/kryo/a/a;->j(I)I

    move-result v3

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 817
    iget v4, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    :goto_0
    if-ge v2, v3, :cond_2

    add-int/lit8 v5, v4, 0x1

    .line 819
    aget-byte v4, v0, v4

    if-gez v4, :cond_1

    add-int/lit8 v4, v5, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v2, 0x1

    int-to-char v4, v4

    .line 824
    aput-char v4, v1, v2

    move v4, v5

    move v2, v6

    goto :goto_0

    .line 826
    :cond_2
    :goto_1
    iput v4, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    if-ge v2, p1, :cond_3

    .line 828
    invoke-direct {p0, p1, v2}, Lcom/esotericsoftware/kryo/a/a;->a(II)V

    :cond_3
    return-void
.end method

.method private m(I)Ljava/lang/String;
    .locals 7

    .line 883
    iget-object v0, p0, Lcom/esotericsoftware/kryo/a/a;->f:[C

    .line 884
    iget-object v1, p0, Lcom/esotericsoftware/kryo/a/a;->a:[B

    .line 886
    :goto_0
    iget v2, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    iget v3, p0, Lcom/esotericsoftware/kryo/a/a;->d:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    invoke-direct {p0, v4}, Lcom/esotericsoftware/kryo/a/a;->j(I)I

    .line 887
    :cond_0
    iget v2, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    aget-byte v2, v1, v2

    .line 888
    array-length v3, v0

    const/4 v5, 0x0

    if-ne p1, v3, :cond_1

    mul-int/lit8 v3, p1, 0x2

    .line 889
    new-array v3, v3, [C

    .line 890
    invoke-static {v0, v5, v3, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 892
    iput-object v3, p0, Lcom/esotericsoftware/kryo/a/a;->f:[C

    move-object v0, v3

    :cond_1
    and-int/lit16 v3, v2, 0x80

    const/16 v6, 0x80

    if-ne v3, v6, :cond_2

    and-int/lit8 v1, v2, 0x7f

    int-to-char v1, v1

    .line 895
    aput-char v1, v0, p1

    .line 896
    new-instance v1, Ljava/lang/String;

    add-int/2addr p1, v4

    invoke-direct {v1, v0, v5, p1}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    :cond_2
    add-int/lit8 v3, p1, 0x1

    int-to-char v2, v2

    .line 898
    aput-char v2, v0, p1

    move p1, v3

    goto :goto_0
.end method

.method private o()Ljava/lang/String;
    .locals 9

    .line 865
    iget-object v0, p0, Lcom/esotericsoftware/kryo/a/a;->f:[C

    .line 866
    iget-object v1, p0, Lcom/esotericsoftware/kryo/a/a;->a:[B

    .line 867
    iget v2, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    .line 869
    array-length v3, v0

    iget v4, p0, Lcom/esotericsoftware/kryo/a/a;->d:I

    sub-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    .line 870
    aget-byte v6, v1, v2

    and-int/lit16 v7, v6, 0x80

    const/16 v8, 0x80

    if-ne v7, v8, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 872
    iput v2, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    and-int/lit8 v1, v6, 0x7f

    int-to-char v1, v1

    .line 873
    aput-char v1, v0, v5

    .line 874
    new-instance v1, Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v1, v0, v4, v5}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    :cond_0
    int-to-char v6, v6

    .line 876
    aput-char v6, v0, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 878
    :cond_1
    iput v2, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    .line 879
    invoke-direct {p0, v5}, Lcom/esotericsoftware/kryo/a/a;->m(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 393
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/a/a;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/a/a;->b(Z)I

    move-result p1

    return p1

    .line 394
    :cond_0
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/a/a;->d()I

    move-result p1

    return p1
.end method

.method public final a()Ljava/io/InputStream;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/esotericsoftware/kryo/a/a;->g:Ljava/io/InputStream;

    return-object v0
.end method

.method public final a(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 167
    iget v0, p0, Lcom/esotericsoftware/kryo/a/a;->d:I

    iget v1, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 169
    :goto_0
    iget v1, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    sub-int/2addr p1, v0

    if-eqz p1, :cond_0

    .line 172
    iget v0, p0, Lcom/esotericsoftware/kryo/a/a;->c:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 173
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/a/a;->j(I)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a([BII)V
    .locals 0

    if-eqz p1, :cond_0

    .line 92
    iput-object p1, p0, Lcom/esotericsoftware/kryo/a/a;->a:[B

    .line 93
    iput p2, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    add-int/2addr p2, p3

    .line 94
    iput p2, p0, Lcom/esotericsoftware/kryo/a/a;->d:I

    .line 95
    array-length p1, p1

    iput p1, p0, Lcom/esotericsoftware/kryo/a/a;->c:I

    const-wide/16 p1, 0x0

    .line 96
    iput-wide p1, p0, Lcom/esotericsoftware/kryo/a/a;->e:J

    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lcom/esotericsoftware/kryo/a/a;->g:Ljava/io/InputStream;

    return-void

    .line 91
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bytes cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    iget v0, p0, Lcom/esotericsoftware/kryo/a/a;->d:I

    iget v1, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/esotericsoftware/kryo/a/a;->g:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final b()I
    .locals 1

    .line 140
    iget v0, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    return v0
.end method

.method public final b(Z)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 407
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/a/a;->j(I)I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/a/a;->d(Z)I

    move-result p1

    return p1

    .line 408
    :cond_0
    iget-object v1, p0, Lcom/esotericsoftware/kryo/a/a;->a:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    aget-byte v2, v1, v2

    and-int/lit8 v4, v2, 0x7f

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_3

    add-int/lit8 v2, v3, 0x1

    .line 413
    aget-byte v3, v1, v3

    and-int/lit8 v5, v3, 0x7f

    shl-int/lit8 v5, v5, 0x7

    or-int/2addr v4, v5

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    .line 416
    aget-byte v2, v1, v2

    and-int/lit8 v5, v2, 0x7f

    shl-int/lit8 v5, v5, 0xe

    or-int/2addr v4, v5

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    add-int/lit8 v2, v3, 0x1

    .line 419
    aget-byte v3, v1, v3

    and-int/lit8 v5, v3, 0x7f

    shl-int/lit8 v5, v5, 0x15

    or-int/2addr v4, v5

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    .line 422
    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x1c

    or-int/2addr v1, v4

    move v4, v1

    :cond_1
    move v2, v3

    .line 427
    :cond_2
    iput v2, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    :cond_3
    if-eqz p1, :cond_4

    return v4

    :cond_4
    ushr-int/lit8 p1, v4, 0x1

    and-int/2addr v0, v4

    neg-int v0, v0

    xor-int/2addr p1, v0

    return p1
.end method

.method protected b([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/esotericsoftware/kryo/a/a;->g:Ljava/io/InputStream;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 183
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 185
    new-instance p2, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {p2, p1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final b(I)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 349
    new-array v0, p1, [B

    .line 1362
    iget v1, p0, Lcom/esotericsoftware/kryo/a/a;->d:I

    iget v2, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    sub-int/2addr v1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    .line 1364
    :goto_0
    iget-object v3, p0, Lcom/esotericsoftware/kryo/a/a;->a:[B

    iget v4, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    invoke-static {v3, v4, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1365
    iget v3, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    sub-int/2addr p1, v1

    if-eqz p1, :cond_0

    add-int/2addr v2, v1

    .line 1369
    iget v1, p0, Lcom/esotericsoftware/kryo/a/a;->c:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1370
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/a/a;->j(I)I

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final c()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 337
    iget v0, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    iget v1, p0, Lcom/esotericsoftware/kryo/a/a;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/a/a;->j(I)I

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/a/a;->a:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public final c(Z)J
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 570
    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/a/a;->j(I)I

    move-result v2

    const/16 v3, 0x38

    const/16 v4, 0x31

    const/16 v5, 0x2a

    const/16 v6, 0x23

    const/16 v7, 0x1c

    const-wide/16 v8, 0x1

    const/16 v10, 0x9

    if-ge v2, v10, :cond_a

    .line 1613
    iget-object v2, v0, Lcom/esotericsoftware/kryo/a/a;->a:[B

    iget v10, v0, Lcom/esotericsoftware/kryo/a/a;->b:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lcom/esotericsoftware/kryo/a/a;->b:I

    aget-byte v2, v2, v10

    and-int/lit8 v10, v2, 0x7f

    int-to-long v12, v10

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_8

    .line 1616
    iget v2, v0, Lcom/esotericsoftware/kryo/a/a;->d:I

    if-ne v11, v2, :cond_0

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/a/a;->j(I)I

    .line 1617
    :cond_0
    iget-object v2, v0, Lcom/esotericsoftware/kryo/a/a;->a:[B

    .line 1618
    iget v10, v0, Lcom/esotericsoftware/kryo/a/a;->b:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lcom/esotericsoftware/kryo/a/a;->b:I

    aget-byte v10, v2, v10

    and-int/lit8 v14, v10, 0x7f

    shl-int/lit8 v14, v14, 0x7

    int-to-long v14, v14

    or-long/2addr v12, v14

    and-int/lit16 v10, v10, 0x80

    if-eqz v10, :cond_8

    .line 1621
    iget v10, v0, Lcom/esotericsoftware/kryo/a/a;->d:I

    if-ne v11, v10, :cond_1

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/a/a;->j(I)I

    .line 1622
    :cond_1
    iget v10, v0, Lcom/esotericsoftware/kryo/a/a;->b:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lcom/esotericsoftware/kryo/a/a;->b:I

    aget-byte v10, v2, v10

    and-int/lit8 v14, v10, 0x7f

    shl-int/lit8 v14, v14, 0xe

    int-to-long v14, v14

    or-long/2addr v12, v14

    and-int/lit16 v10, v10, 0x80

    if-eqz v10, :cond_8

    .line 1625
    iget v10, v0, Lcom/esotericsoftware/kryo/a/a;->d:I

    if-ne v11, v10, :cond_2

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/a/a;->j(I)I

    .line 1626
    :cond_2
    iget v10, v0, Lcom/esotericsoftware/kryo/a/a;->b:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lcom/esotericsoftware/kryo/a/a;->b:I

    aget-byte v10, v2, v10

    and-int/lit8 v14, v10, 0x7f

    shl-int/lit8 v14, v14, 0x15

    int-to-long v14, v14

    or-long/2addr v12, v14

    and-int/lit16 v10, v10, 0x80

    if-eqz v10, :cond_8

    .line 1629
    iget v10, v0, Lcom/esotericsoftware/kryo/a/a;->d:I

    if-ne v11, v10, :cond_3

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/a/a;->j(I)I

    .line 1630
    :cond_3
    iget v10, v0, Lcom/esotericsoftware/kryo/a/a;->b:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lcom/esotericsoftware/kryo/a/a;->b:I

    aget-byte v10, v2, v10

    and-int/lit8 v14, v10, 0x7f

    int-to-long v14, v14

    shl-long/2addr v14, v7

    or-long/2addr v12, v14

    and-int/lit16 v7, v10, 0x80

    if-eqz v7, :cond_8

    .line 1633
    iget v7, v0, Lcom/esotericsoftware/kryo/a/a;->d:I

    if-ne v11, v7, :cond_4

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/a/a;->j(I)I

    .line 1634
    :cond_4
    iget v7, v0, Lcom/esotericsoftware/kryo/a/a;->b:I

    add-int/lit8 v10, v7, 0x1

    iput v10, v0, Lcom/esotericsoftware/kryo/a/a;->b:I

    aget-byte v7, v2, v7

    and-int/lit8 v11, v7, 0x7f

    int-to-long v14, v11

    shl-long/2addr v14, v6

    or-long/2addr v12, v14

    and-int/lit16 v6, v7, 0x80

    if-eqz v6, :cond_8

    .line 1637
    iget v6, v0, Lcom/esotericsoftware/kryo/a/a;->d:I

    if-ne v10, v6, :cond_5

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/a/a;->j(I)I

    .line 1638
    :cond_5
    iget v6, v0, Lcom/esotericsoftware/kryo/a/a;->b:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lcom/esotericsoftware/kryo/a/a;->b:I

    aget-byte v6, v2, v6

    and-int/lit8 v10, v6, 0x7f

    int-to-long v10, v10

    shl-long/2addr v10, v5

    or-long/2addr v12, v10

    and-int/lit16 v5, v6, 0x80

    if-eqz v5, :cond_8

    .line 1641
    iget v5, v0, Lcom/esotericsoftware/kryo/a/a;->d:I

    if-ne v7, v5, :cond_6

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/a/a;->j(I)I

    .line 1642
    :cond_6
    iget v5, v0, Lcom/esotericsoftware/kryo/a/a;->b:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v0, Lcom/esotericsoftware/kryo/a/a;->b:I

    aget-byte v5, v2, v5

    and-int/lit8 v7, v5, 0x7f

    int-to-long v10, v7

    shl-long/2addr v10, v4

    or-long/2addr v12, v10

    and-int/lit16 v4, v5, 0x80

    if-eqz v4, :cond_8

    .line 1645
    iget v4, v0, Lcom/esotericsoftware/kryo/a/a;->d:I

    if-ne v6, v4, :cond_7

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/a/a;->j(I)I

    .line 1646
    :cond_7
    iget v4, v0, Lcom/esotericsoftware/kryo/a/a;->b:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v0, Lcom/esotericsoftware/kryo/a/a;->b:I

    aget-byte v2, v2, v4

    int-to-long v4, v2

    shl-long v2, v4, v3

    or-long/2addr v12, v2

    :cond_8
    if-eqz p1, :cond_9

    return-wide v12

    :cond_9
    ushr-long v1, v12, v1

    and-long v3, v12, v8

    neg-long v3, v3

    xor-long/2addr v1, v3

    return-wide v1

    .line 571
    :cond_a
    iget v2, v0, Lcom/esotericsoftware/kryo/a/a;->b:I

    .line 572
    iget-object v10, v0, Lcom/esotericsoftware/kryo/a/a;->a:[B

    add-int/lit8 v11, v2, 0x1

    aget-byte v2, v10, v2

    and-int/lit8 v12, v2, 0x7f

    int-to-long v12, v12

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_c

    add-int/lit8 v2, v11, 0x1

    .line 576
    aget-byte v11, v10, v11

    and-int/lit8 v14, v11, 0x7f

    shl-int/lit8 v14, v14, 0x7

    int-to-long v14, v14

    or-long/2addr v12, v14

    and-int/lit16 v11, v11, 0x80

    if-eqz v11, :cond_b

    add-int/lit8 v11, v2, 0x1

    .line 579
    aget-byte v2, v10, v2

    and-int/lit8 v14, v2, 0x7f

    shl-int/lit8 v14, v14, 0xe

    int-to-long v14, v14

    or-long/2addr v12, v14

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_c

    add-int/lit8 v2, v11, 0x1

    .line 582
    aget-byte v11, v10, v11

    and-int/lit8 v14, v11, 0x7f

    shl-int/lit8 v14, v14, 0x15

    int-to-long v14, v14

    or-long/2addr v12, v14

    and-int/lit16 v11, v11, 0x80

    if-eqz v11, :cond_b

    add-int/lit8 v11, v2, 0x1

    .line 585
    aget-byte v2, v10, v2

    and-int/lit8 v14, v2, 0x7f

    int-to-long v14, v14

    shl-long/2addr v14, v7

    or-long/2addr v12, v14

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_c

    add-int/lit8 v2, v11, 0x1

    .line 588
    aget-byte v7, v10, v11

    and-int/lit8 v11, v7, 0x7f

    int-to-long v14, v11

    shl-long/2addr v14, v6

    or-long/2addr v12, v14

    and-int/lit16 v6, v7, 0x80

    if-eqz v6, :cond_b

    add-int/lit8 v11, v2, 0x1

    .line 591
    aget-byte v2, v10, v2

    and-int/lit8 v6, v2, 0x7f

    int-to-long v6, v6

    shl-long v5, v6, v5

    or-long/2addr v12, v5

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_c

    add-int/lit8 v2, v11, 0x1

    .line 594
    aget-byte v5, v10, v11

    and-int/lit8 v6, v5, 0x7f

    int-to-long v6, v6

    shl-long/2addr v6, v4

    or-long/2addr v12, v6

    and-int/lit16 v4, v5, 0x80

    if-eqz v4, :cond_b

    add-int/lit8 v11, v2, 0x1

    .line 597
    aget-byte v2, v10, v2

    int-to-long v4, v2

    shl-long v2, v4, v3

    or-long/2addr v12, v2

    goto :goto_0

    :cond_b
    move v11, v2

    .line 607
    :cond_c
    :goto_0
    iput v11, v0, Lcom/esotericsoftware/kryo/a/a;->b:I

    if-eqz p1, :cond_9

    return-wide v12
.end method

.method public final c(I)[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 927
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/a/a;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 928
    new-array v0, p1, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 930
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/a/a;->b(Z)I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 1906
    :cond_1
    new-array v0, p1, [I

    shl-int/lit8 v2, p1, 0x2

    .line 1907
    invoke-direct {p0, v2}, Lcom/esotericsoftware/kryo/a/a;->k(I)I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 1908
    iget-object v2, p0, Lcom/esotericsoftware/kryo/a/a;->a:[B

    .line 1909
    iget v3, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    :goto_1
    if-ge v1, p1, :cond_2

    .line 1911
    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, v3, 0x2

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v5, v3, 0x3

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    aput v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x4

    goto :goto_1

    .line 1916
    :cond_2
    iput v3, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    goto :goto_3

    :cond_3
    :goto_2
    if-ge v1, p1, :cond_4

    .line 1919
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/a/a;->d()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/esotericsoftware/kryo/a/a;->g:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 327
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final d()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 378
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/a/a;->j(I)I

    .line 379
    iget-object v0, p0, Lcom/esotericsoftware/kryo/a/a;->a:[B

    .line 380
    iget v1, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    add-int/lit8 v2, v1, 0x4

    .line 381
    iput v2, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    .line 382
    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0
.end method

.method public final d(I)[J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 938
    new-array v0, p1, [J

    shl-int/lit8 v1, p1, 0x3

    .line 939
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/a/a;->k(I)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    .line 940
    iget-object v1, p0, Lcom/esotericsoftware/kryo/a/a;->a:[B

    .line 941
    iget v2, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    :goto_0
    if-ge v3, p1, :cond_0

    .line 943
    aget-byte v4, v1, v2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x2

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    int-to-long v4, v4

    add-int/lit8 v6, v2, 0x3

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v2, 0x4

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v2, 0x5

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v2, 0x6

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x30

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v2, 0x7

    aget-byte v6, v1, v6

    int-to-long v6, v6

    const/16 v8, 0x38

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x8

    goto :goto_0

    .line 952
    :cond_0
    iput v2, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    goto :goto_2

    :cond_1
    :goto_1
    if-ge v3, p1, :cond_2

    .line 955
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/a/a;->g()J

    move-result-wide v1

    aput-wide v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-object v0
.end method

.method public final e()Z
    .locals 3

    .line 480
    iget v0, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    iget v1, p0, Lcom/esotericsoftware/kryo/a/a;->d:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v2}, Lcom/esotericsoftware/kryo/a/a;->j(I)I

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/a/a;->a:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final e(I)[J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 963
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/a/a;->h:Z

    if-eqz v0, :cond_1

    .line 964
    new-array v0, p1, [J

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 966
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/a/a;->c(Z)J

    move-result-wide v3

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 969
    :cond_1
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/a/a;->d(I)[J

    move-result-object p1

    return-object p1
.end method

.method public final f()I
    .locals 6

    const/4 v0, 0x1

    .line 487
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/a/a;->j(I)I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    .line 1514
    iget-object v1, p0, Lcom/esotericsoftware/kryo/a/a;->a:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    aget-byte v1, v1, v2

    and-int/lit8 v2, v1, 0x3f

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_4

    .line 1517
    iget v1, p0, Lcom/esotericsoftware/kryo/a/a;->d:I

    if-ne v3, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/a/a;->j(I)I

    .line 1518
    :cond_0
    iget-object v1, p0, Lcom/esotericsoftware/kryo/a/a;->a:[B

    .line 1519
    iget v3, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    aget-byte v3, v1, v3

    and-int/lit8 v5, v3, 0x7f

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v2, v5

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_4

    .line 1522
    iget v3, p0, Lcom/esotericsoftware/kryo/a/a;->d:I

    if-ne v4, v3, :cond_1

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/a/a;->j(I)I

    .line 1523
    :cond_1
    iget v3, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    aget-byte v3, v1, v3

    and-int/lit8 v5, v3, 0x7f

    shl-int/lit8 v5, v5, 0xd

    or-int/2addr v2, v5

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_4

    .line 1526
    iget v3, p0, Lcom/esotericsoftware/kryo/a/a;->d:I

    if-ne v4, v3, :cond_2

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/a/a;->j(I)I

    .line 1527
    :cond_2
    iget v3, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    aget-byte v3, v1, v3

    and-int/lit8 v5, v3, 0x7f

    shl-int/lit8 v5, v5, 0x14

    or-int/2addr v2, v5

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_4

    .line 1530
    iget v3, p0, Lcom/esotericsoftware/kryo/a/a;->d:I

    if-ne v4, v3, :cond_3

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/a/a;->j(I)I

    .line 1531
    :cond_3
    iget v0, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    aget-byte v0, v1, v0

    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x1b

    or-int/2addr v2, v0

    :cond_4
    return v2

    .line 488
    :cond_5
    iget-object v0, p0, Lcom/esotericsoftware/kryo/a/a;->a:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    aget-byte v1, v0, v1

    and-int/lit8 v3, v1, 0x3f

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_8

    add-int/lit8 v1, v2, 0x1

    .line 493
    aget-byte v2, v0, v2

    and-int/lit8 v4, v2, 0x7f

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v3, v4

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_7

    add-int/lit8 v2, v1, 0x1

    .line 496
    aget-byte v1, v0, v1

    and-int/lit8 v4, v1, 0x7f

    shl-int/lit8 v4, v4, 0xd

    or-int/2addr v3, v4

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_6

    add-int/lit8 v1, v2, 0x1

    .line 499
    aget-byte v2, v0, v2

    and-int/lit8 v4, v2, 0x7f

    shl-int/lit8 v4, v4, 0x14

    or-int/2addr v3, v4

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_7

    add-int/lit8 v2, v1, 0x1

    .line 502
    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x1b

    or-int/2addr v0, v3

    move v3, v0

    :cond_6
    move v1, v2

    .line 507
    :cond_7
    iput v1, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    :cond_8
    return v3
.end method

.method public final f(I)[F
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 974
    new-array v0, p1, [F

    shl-int/lit8 v1, p1, 0x2

    .line 975
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/a/a;->k(I)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    .line 976
    iget-object v1, p0, Lcom/esotericsoftware/kryo/a/a;->a:[B

    .line 977
    iget v2, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    :goto_0
    if-ge v3, p1, :cond_0

    .line 979
    aget-byte v4, v1, v2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x2

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x3

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    aput v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    .line 984
    :cond_0
    iput v2, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    goto :goto_2

    :cond_1
    :goto_1
    if-ge v3, p1, :cond_2

    .line 987
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/a/a;->h()F

    move-result v1

    aput v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-object v0
.end method

.method public final g()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 544
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/a/a;->j(I)I

    .line 545
    iget-object v1, p0, Lcom/esotericsoftware/kryo/a/a;->a:[B

    .line 546
    iget v2, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    add-int/lit8 v3, v2, 0x8

    .line 547
    iput v3, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    .line 548
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v0, v4, 0x8

    or-int/2addr v0, v3

    add-int/lit8 v3, v2, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v0, v3

    int-to-long v3, v0

    add-int/lit8 v0, v2, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x18

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    add-int/lit8 v0, v2, 0x4

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x20

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    add-int/lit8 v0, v2, 0x5

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x28

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    add-int/lit8 v0, v2, 0x6

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x30

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    add-int/lit8 v2, v2, 0x7

    aget-byte v0, v1, v2

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    or-long/2addr v0, v3

    return-wide v0
.end method

.method public final g(I)[D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 994
    new-array v0, p1, [D

    shl-int/lit8 v1, p1, 0x3

    .line 995
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/a/a;->k(I)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    .line 996
    iget-object v1, p0, Lcom/esotericsoftware/kryo/a/a;->a:[B

    .line 997
    iget v2, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    :goto_0
    if-ge v3, p1, :cond_0

    .line 999
    aget-byte v4, v1, v2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x2

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    int-to-long v4, v4

    add-int/lit8 v6, v2, 0x3

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v2, 0x4

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v2, 0x5

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v2, 0x6

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x30

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v2, 0x7

    aget-byte v6, v1, v6

    int-to-long v6, v6

    const/16 v8, 0x38

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    aput-wide v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x8

    goto :goto_0

    .line 1008
    :cond_0
    iput v2, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    goto :goto_2

    :cond_1
    :goto_1
    if-ge v3, p1, :cond_2

    .line 1011
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/a/a;->i()D

    move-result-wide v1

    aput-wide v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-object v0
.end method

.method public final h()F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 695
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/a/a;->j(I)I

    .line 696
    iget-object v0, p0, Lcom/esotericsoftware/kryo/a/a;->a:[B

    .line 697
    iget v1, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    add-int/lit8 v2, v1, 0x4

    .line 698
    iput v2, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    .line 699
    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final h(I)[S
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 1018
    new-array v0, p1, [S

    shl-int/lit8 v1, p1, 0x1

    .line 1019
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/a/a;->k(I)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    .line 1020
    iget-object v1, p0, Lcom/esotericsoftware/kryo/a/a;->a:[B

    .line 1021
    iget v2, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    :goto_0
    if-ge v3, p1, :cond_0

    .line 1023
    aget-byte v4, v1, v2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 1024
    :cond_0
    iput v2, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    goto :goto_2

    :cond_1
    :goto_1
    if-ge v3, p1, :cond_2

    .line 1027
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/a/a;->j()S

    move-result v1

    aput-short v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-object v0
.end method

.method public final i()D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 714
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/a/a;->j(I)I

    .line 715
    iget-object v1, p0, Lcom/esotericsoftware/kryo/a/a;->a:[B

    .line 716
    iget v2, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    add-int/lit8 v3, v2, 0x8

    .line 717
    iput v3, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    .line 718
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v0, v4, 0x8

    or-int/2addr v0, v3

    add-int/lit8 v3, v2, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v0, v3

    int-to-long v3, v0

    add-int/lit8 v0, v2, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x18

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    add-int/lit8 v0, v2, 0x4

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x20

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    add-int/lit8 v0, v2, 0x5

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x28

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    add-int/lit8 v0, v2, 0x6

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x30

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    add-int/lit8 v2, v2, 0x7

    aget-byte v0, v1, v2

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    or-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final i(I)[C
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 1034
    new-array v0, p1, [C

    shl-int/lit8 v1, p1, 0x1

    .line 1035
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/a/a;->k(I)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    .line 1036
    iget-object v1, p0, Lcom/esotericsoftware/kryo/a/a;->a:[B

    .line 1037
    iget v2, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    :goto_0
    if-ge v3, p1, :cond_0

    .line 1039
    aget-byte v4, v1, v2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 1040
    :cond_0
    iput v2, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    goto :goto_2

    :cond_1
    :goto_1
    if-ge v3, p1, :cond_2

    .line 1043
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/a/a;->k()C

    move-result v1

    aput-char v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-object v0
.end method

.method public final j()S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 737
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/a/a;->j(I)I

    .line 738
    iget v0, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    add-int/lit8 v1, v0, 0x2

    .line 739
    iput v1, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    .line 740
    iget-object v1, p0, Lcom/esotericsoftware/kryo/a/a;->a:[B

    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v2

    int-to-short v0, v0

    return v0
.end method

.method public final k()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 755
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/a/a;->j(I)I

    .line 756
    iget v0, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    add-int/lit8 v1, v0, 0x2

    .line 757
    iput v1, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    .line 758
    iget-object v1, p0, Lcom/esotericsoftware/kryo/a/a;->a:[B

    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v2

    int-to-char v0, v0

    return v0
.end method

.method public final l()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 765
    iget v0, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    iget v1, p0, Lcom/esotericsoftware/kryo/a/a;->d:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v2}, Lcom/esotericsoftware/kryo/a/a;->j(I)I

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/a/a;->a:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    aget-byte v0, v0, v1

    if-ne v0, v2, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final m()Ljava/lang/String;
    .locals 4

    .line 775
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/a/a;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/a/a;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 777
    :cond_0
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/a/a;->f()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 785
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/a/a;->l(I)V

    .line 786
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/esotericsoftware/kryo/a/a;->f:[C

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    :cond_1
    const-string v0, ""

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n()Ljava/lang/StringBuilder;
    .locals 4

    .line 794
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/a/a;->e()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/a/a;->o()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 796
    :cond_0
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/a/a;->f()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 804
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/a/a;->l(I)V

    .line 805
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 806
    iget-object v3, p0, Lcom/esotericsoftware/kryo/a/a;->f:[C

    invoke-virtual {v1, v3, v2, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-object v1

    .line 801
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 279
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/a/a;->k(I)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/a/a;->a:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 286
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/esotericsoftware/kryo/a/a;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 294
    iget v0, p0, Lcom/esotericsoftware/kryo/a/a;->d:I

    iget v1, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, p3

    .line 296
    :cond_0
    iget-object v2, p0, Lcom/esotericsoftware/kryo/a/a;->a:[B

    iget v3, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    iget v2, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_2

    add-int/2addr p2, v0

    .line 301
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/a/a;->k(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    if-ne p3, v1, :cond_2

    return v2

    .line 307
    :cond_1
    iget v2, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    iget v3, p0, Lcom/esotericsoftware/kryo/a/a;->d:I

    if-ne v2, v3, :cond_0

    :cond_2
    sub-int/2addr p3, v1

    return p3

    .line 292
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bytes cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 161
    iput v0, p0, Lcom/esotericsoftware/kryo/a/a;->b:I

    const-wide/16 v0, 0x0

    .line 162
    iput-wide v0, p0, Lcom/esotericsoftware/kryo/a/a;->e:J

    return-void
.end method

.method public skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    move-wide v0, p1

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide/32 v2, 0x7ffffff7

    .line 316
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    .line 317
    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryo/a/a;->a(I)V

    int-to-long v2, v3

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide p1
.end method
