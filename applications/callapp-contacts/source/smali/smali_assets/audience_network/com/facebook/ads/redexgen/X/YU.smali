.class public final Lcom/facebook/ads/redexgen/X/YU;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Az;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/audio/SilenceSkippingAudioProcessor$State;
    }
.end annotation


# static fields
.field public static A0E:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:J

.field public A07:Ljava/nio/ByteBuffer;

.field public A08:Ljava/nio/ByteBuffer;

.field public A09:Z

.field public A0A:Z

.field public A0B:Z

.field public A0C:[B

.field public A0D:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/YU;->A03()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 60315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60316
    sget-object v0, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A07:Ljava/nio/ByteBuffer;

    .line 60317
    sget-object v0, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A08:Ljava/nio/ByteBuffer;

    .line 60318
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A01:I

    .line 60319
    iput v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A04:I

    .line 60320
    const/4 v1, 0x0

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A0C:[B

    .line 60321
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A0D:[B

    .line 60322
    return-void
.end method

.method private A00(J)I
    .locals 4

    .line 60323
    iget v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A04:I

    int-to-long v2, v0

    mul-long/2addr v2, p1

    const-wide/32 v0, 0xf4240

    div-long/2addr v2, v0

    long-to-int v0, v2

    return v0
.end method

.method private A01(Ljava/nio/ByteBuffer;)I
    .locals 4

    .line 60324
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .local p0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lt v2, v0, :cond_1

    .line 60325
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v0, 0x4

    if-le v1, v0, :cond_0

    .line 60326
    iget v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A00:I

    div-int/2addr v2, v0

    mul-int/2addr v2, v0

    add-int/2addr v2, v0

    return v2

    .line 60327
    :cond_0
    add-int/lit8 v2, v2, -0x2

    goto :goto_0

    .line 60328
    .end local p0    # "i":I
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/YU;->A0E:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/YU;->A0E:[Ljava/lang/String;

    const-string v1, "KbmXU"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "sStp2WQndpDzY5UDNElAkrU"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return v3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A02(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 60329
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    .local p0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 60330
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v0, 0x4

    if-le v1, v0, :cond_0

    .line 60331
    iget v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A00:I

    div-int/2addr v2, v0

    mul-int/2addr v0, v2

    return v0

    .line 60332
    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 60333
    .end local p0    # "i":I
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    return v0
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "tvm2mqRs7a3ehYHdc1yBQoSNsWCnK"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "tOWfSaULM8EnbecBF3SZtCA"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "iNgvpQne2"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "1AcoT6GEPIUQ3JZIKBz6KhI4GHeuy79P"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "lryhUlLd6yxpw4rz006xnThMb"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "3cZRB"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "VTjWgXugqiR9aqruhTtZOoVTfcJyB76i"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "EEKliZG5v6PVzs3xPcyqxwhc3FAivYta"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/YU;->A0E:[Ljava/lang/String;

    return-void
.end method

.method private A04(I)V
    .locals 2

    .line 60334
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A07:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 60335
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A07:Ljava/nio/ByteBuffer;

    .line 60336
    :goto_0
    if-lez p1, :cond_0

    .line 60337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A0A:Z

    .line 60338
    :cond_0
    return-void

    .line 60339
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A07:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method private A05(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 60340
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/YU;->A04(I)V

    .line 60341
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A07:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 60342
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A07:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 60343
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A07:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A08:Ljava/nio/ByteBuffer;

    .line 60344
    return-void
.end method

.method private A06(Ljava/nio/ByteBuffer;)V
    .locals 8

    .line 60345
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    .line 60346
    .local p0, "limit":I
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/YU;->A02(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 60347
    .local p1, "noisePosition":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int v3, v4, v0

    .line 60348
    .local v6, "maybeSilenceInputSize":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/YU;->A0C:[B

    array-length v1, v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A02:I

    sub-int/2addr v1, v0

    .line 60349
    .local v0, "maybeSilenceBufferRemaining":I
    const/4 v5, 0x0

    if-ge v4, v6, :cond_0

    if-ge v3, v1, :cond_0

    .line 60350
    invoke-direct {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/YU;->A0A([BI)V

    .line 60351
    iput v5, p0, Lcom/facebook/ads/redexgen/X/YU;->A02:I

    .line 60352
    iput v5, p0, Lcom/facebook/ads/redexgen/X/YU;->A05:I

    .line 60353
    .end local v4
    :goto_0
    return-void

    .line 60354
    :cond_0
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 60355
    .local v4, "bytesToWrite":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    sget-object v2, Lcom/facebook/ads/redexgen/X/YU;->A0E:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    .line 60356
    sget-object v2, Lcom/facebook/ads/redexgen/X/YU;->A0E:[Ljava/lang/String;

    const-string v1, "wWIHZuTOncQcUu5TT4FAsoGOHgVjS7Hw"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "FL1HwHnzDnNmmMdWBTP73LL49pAAT75M"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YU;->A0C:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A02:I

    invoke-virtual {p1, v1, v0, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 60357
    iget v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A02:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A02:I

    .line 60358
    iget v7, p0, Lcom/facebook/ads/redexgen/X/YU;->A02:I

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YU;->A0C:[B

    array-length v0, v1

    if-ne v7, v0, :cond_1

    .line 60359
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A0A:Z

    const/4 v4, 0x2

    if-eqz v0, :cond_2

    .line 60360
    iget v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A03:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/YU;->A0A([BI)V

    .line 60361
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/YU;->A06:J

    iget v1, p0, Lcom/facebook/ads/redexgen/X/YU;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A03:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A00:I

    div-int/2addr v1, v0

    int-to-long v0, v1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/YU;->A06:J

    .line 60362
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YU;->A0C:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A02:I

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/YU;->A09(Ljava/nio/ByteBuffer;[BI)V

    .line 60363
    iput v5, p0, Lcom/facebook/ads/redexgen/X/YU;->A02:I

    .line 60364
    iput v4, p0, Lcom/facebook/ads/redexgen/X/YU;->A05:I

    .line 60365
    :cond_1
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 60366
    :cond_2
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/YU;->A06:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A03:I

    sub-int/2addr v7, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A00:I

    div-int/2addr v7, v0

    int-to-long v0, v7

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/YU;->A06:J

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A07(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 60367
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 60368
    .local p0, "limit":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A0C:[B

    array-length v0, v0

    add-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 60369
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/YU;->A01(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 60370
    .local p1, "noiseLimit":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 60371
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A05:I

    .line 60372
    :goto_0
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 60373
    return-void

    .line 60374
    :cond_0
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 60375
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/YU;->A05(Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method private A08(Ljava/nio/ByteBuffer;)V
    .locals 6

    .line 60376
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    .line 60377
    .local p0, "limit":I
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/YU;->A02(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 60378
    .local p1, "noisyPosition":I
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 60379
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/YU;->A06:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A00:I

    div-int/2addr v1, v0

    int-to-long v0, v1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/YU;->A06:J

    .line 60380
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YU;->A0D:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A03:I

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/YU;->A09(Ljava/nio/ByteBuffer;[BI)V

    .line 60381
    if-ge v4, v5, :cond_0

    .line 60382
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YU;->A0D:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A03:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/YU;->A0A([BI)V

    .line 60383
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A05:I

    .line 60384
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 60385
    :cond_0
    return-void
.end method

.method private A09(Ljava/nio/ByteBuffer;[BI)V
    .locals 4

    .line 60386
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A03:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 60387
    .local p0, "fromInputSize":I
    iget v2, p0, Lcom/facebook/ads/redexgen/X/YU;->A03:I

    sub-int/2addr v2, v3

    .line 60388
    .local p1, "fromBufferSize":I
    sub-int/2addr p3, v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YU;->A0D:[B

    const/4 v0, 0x0

    invoke-static {p2, p3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60389
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 60390
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A0D:[B

    invoke-virtual {p1, v0, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 60391
    return-void
.end method

.method private A0A([BI)V
    .locals 2

    .line 60392
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/YU;->A04(I)V

    .line 60393
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YU;->A07:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 60394
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A07:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 60395
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A07:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A08:Ljava/nio/ByteBuffer;

    .line 60396
    return-void
.end method


# virtual methods
.method public final A0B()J
    .locals 2

    .line 60397
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A06:J

    return-wide v0
.end method

.method public final A0C(Z)V
    .locals 0

    .line 60398
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/YU;->A09:Z

    .line 60399
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/YU;->flush()V

    .line 60400
    return-void
.end method

.method public final A48(III)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Ay;
        }
    .end annotation

    .line 60401
    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    .line 60402
    iget v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A04:I

    if-ne v0, p1, :cond_1

    iget v3, p0, Lcom/facebook/ads/redexgen/X/YU;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/YU;->A0E:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/YU;->A0E:[Ljava/lang/String;

    const-string v1, "H8XMnFWveFctl2wFWM9cW2gP9UHr1"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "PgSQZHBtM"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ne v3, p2, :cond_1

    .line 60403
    const/4 v0, 0x0

    return v0

    .line 60404
    :cond_1
    iput p1, p0, Lcom/facebook/ads/redexgen/X/YU;->A04:I

    .line 60405
    iput p2, p0, Lcom/facebook/ads/redexgen/X/YU;->A01:I

    .line 60406
    mul-int/lit8 v0, p2, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A00:I

    .line 60407
    const/4 v0, 0x1

    return v0

    .line 60408
    :cond_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ay;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Ay;-><init>(III)V

    throw v0
.end method

.method public final A6p()Ljava/nio/ByteBuffer;
    .locals 2

    .line 60409
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YU;->A08:Ljava/nio/ByteBuffer;

    .line 60410
    .local p0, "outputBuffer":Ljava/nio/ByteBuffer;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A08:Ljava/nio/ByteBuffer;

    .line 60411
    return-object v1
.end method

.method public final A6q()I
    .locals 1

    .line 60412
    iget v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A01:I

    return v0
.end method

.method public final A6r()I
    .locals 1

    .line 60413
    const/4 v0, 0x2

    return v0
.end method

.method public final A6s()I
    .locals 1

    .line 60414
    iget v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A04:I

    return v0
.end method

.method public final A7v()Z
    .locals 2

    .line 60415
    iget v1, p0, Lcom/facebook/ads/redexgen/X/YU;->A04:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A09:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A7z()Z
    .locals 2

    .line 60416
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A0B:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YU;->A08:Ljava/nio/ByteBuffer;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ACh()V
    .locals 4

    .line 60417
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A0B:Z

    .line 60418
    iget v1, p0, Lcom/facebook/ads/redexgen/X/YU;->A02:I

    if-lez v1, :cond_0

    .line 60419
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A0C:[B

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/YU;->A0A([BI)V

    .line 60420
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A0A:Z

    if-nez v0, :cond_1

    .line 60421
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/YU;->A06:J

    iget v1, p0, Lcom/facebook/ads/redexgen/X/YU;->A03:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A00:I

    div-int/2addr v1, v0

    int-to-long v0, v1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/YU;->A06:J

    .line 60422
    :cond_1
    return-void
.end method

.method public final ACi(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 60423
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A08:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_4

    .line 60424
    iget v4, p0, Lcom/facebook/ads/redexgen/X/YU;->A05:I

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/YU;->A0E:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/YU;->A0E:[Ljava/lang/String;

    const-string v1, "AiWUvfGcxq4zga3HVbzIicdLH"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eq v4, v3, :cond_0

    const/4 v0, 0x2

    if-ne v4, v0, :cond_2

    .line 60425
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/YU;->A08(Ljava/nio/ByteBuffer;)V

    .line 60426
    goto :goto_0

    .line 60427
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/YU;->A06(Ljava/nio/ByteBuffer;)V

    .line 60428
    goto :goto_0

    .line 60429
    :cond_1
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/YU;->A07(Ljava/nio/ByteBuffer;)V

    .line 60430
    goto :goto_0

    .line 60431
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 60432
    :cond_4
    return-void
.end method

.method public final flush()V
    .locals 4

    .line 60433
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/YU;->A7v()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60434
    const-wide/32 v0, 0x249f0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/YU;->A00(J)I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A00:I

    mul-int/2addr v1, v0

    .line 60435
    .local p0, "maybeSilenceBufferSize":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A0C:[B

    array-length v0, v0

    if-eq v0, v1, :cond_0

    .line 60436
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A0C:[B

    .line 60437
    :cond_0
    const-wide/16 v0, 0x4e20

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/YU;->A00(J)I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A00:I

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/YU;->A03:I

    .line 60438
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A0D:[B

    array-length v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A03:I

    if-eq v1, v0, :cond_1

    .line 60439
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A0D:[B

    .line 60440
    .end local p0    # "maybeSilenceBufferSize":I
    :cond_1
    const/4 v3, 0x0

    iput v3, p0, Lcom/facebook/ads/redexgen/X/YU;->A05:I

    .line 60441
    sget-object v0, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A08:Ljava/nio/ByteBuffer;

    .line 60442
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/YU;->A0B:Z

    .line 60443
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A06:J

    sget-object v2, Lcom/facebook/ads/redexgen/X/YU;->A0E:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    .line 60444
    sget-object v2, Lcom/facebook/ads/redexgen/X/YU;->A0E:[Ljava/lang/String;

    const-string v1, "CYbGl"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "FkXGzwkTO5dsiSfEVL3DvOQ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iput v3, p0, Lcom/facebook/ads/redexgen/X/YU;->A02:I

    .line 60445
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/YU;->A0A:Z

    .line 60446
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final reset()V
    .locals 2

    .line 60447
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/YU;->A09:Z

    .line 60448
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/YU;->flush()V

    .line 60449
    sget-object v0, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A07:Ljava/nio/ByteBuffer;

    .line 60450
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A01:I

    .line 60451
    iput v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A04:I

    .line 60452
    iput v1, p0, Lcom/facebook/ads/redexgen/X/YU;->A03:I

    .line 60453
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A0C:[B

    .line 60454
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A0D:[B

    .line 60455
    return-void
.end method
