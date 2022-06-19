.class public final Lcom/facebook/ads/redexgen/X/Vw;
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

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vw;->A03()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 62249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62250
    sget-object v0, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A07:Ljava/nio/ByteBuffer;

    .line 62251
    sget-object v0, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A08:Ljava/nio/ByteBuffer;

    .line 62252
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A01:I

    .line 62253
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A04:I

    .line 62254
    const/4 v1, 0x0

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A0C:[B

    .line 62255
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A0D:[B

    .line 62256
    return-void
.end method

.method private A00(J)I
    .locals 4

    .line 62257
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A04:I

    int-to-long v2, v0

    mul-long/2addr v2, p1

    const-wide/32 v0, 0xf4240

    div-long/2addr v2, v0

    long-to-int v0, v2

    return v0
.end method

.method private A01(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 62258
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .local p0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lt v2, v0, :cond_1

    .line 62259
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v0, 0x4

    if-le v1, v0, :cond_0

    .line 62260
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A00:I

    div-int/2addr v2, v0

    mul-int/2addr v2, v0

    add-int/2addr v2, v0

    return v2

    .line 62261
    :cond_0
    add-int/lit8 v2, v2, -0x2

    goto :goto_0

    .line 62262
    .end local p0    # "i":I
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method private A02(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 62263
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    .local p0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 62264
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v0, 0x4

    if-le v1, v0, :cond_0

    .line 62265
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A00:I

    div-int/2addr v2, v0

    mul-int/2addr v0, v2

    return v0

    .line 62266
    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 62267
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

    const-string v0, "ViQETqqd0awkyMziPQg5gSVR7ZB"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "aD2xhfysJMsxHL6y2v8U"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "rJBVes8C"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "tRHDWXwOzWvNacXUZ85vVXdGW5R4HSLp"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Aj1p8LziXZh7c57eO6qGd5QfaWX4tmFJ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "K8nsdcWZFTx55pYdtHOsT72gBYLmD"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "GBPpcYcSekIZ0CVXFqgNieBe769"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "nPrTxBe7r9tXNIbJVthfMzemKP5blAHC"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vw;->A0E:[Ljava/lang/String;

    return-void
.end method

.method private A04(I)V
    .locals 2

    .line 62268
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A07:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 62269
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A07:Ljava/nio/ByteBuffer;

    .line 62270
    :goto_0
    if-lez p1, :cond_0

    .line 62271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A0A:Z

    .line 62272
    :cond_0
    return-void

    .line 62273
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A07:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method private A05(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 62274
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Vw;->A04(I)V

    .line 62275
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A07:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 62276
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A07:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 62277
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A07:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A08:Ljava/nio/ByteBuffer;

    .line 62278
    return-void
.end method

.method private A06(Ljava/nio/ByteBuffer;)V
    .locals 8

    .line 62279
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    .line 62280
    .local p0, "limit":I
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Vw;->A02(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 62281
    .local p1, "noisePosition":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int v3, v4, v0

    .line 62282
    .local v6, "maybeSilenceInputSize":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Vw;->A0C:[B

    array-length v1, v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A02:I

    sub-int/2addr v1, v0

    .line 62283
    .local v0, "maybeSilenceBufferRemaining":I
    const/4 v5, 0x0

    if-ge v4, v6, :cond_0

    if-ge v3, v1, :cond_0

    .line 62284
    invoke-direct {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/Vw;->A0A([BI)V

    .line 62285
    iput v5, p0, Lcom/facebook/ads/redexgen/X/Vw;->A02:I

    .line 62286
    iput v5, p0, Lcom/facebook/ads/redexgen/X/Vw;->A05:I

    .line 62287
    .end local v4
    :goto_0
    return-void

    .line 62288
    :cond_0
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 62289
    .local v4, "bytesToWrite":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vw;->A0E:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 62290
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vw;->A0E:[Ljava/lang/String;

    const-string v1, "SlT0U8nzbWkRATB5Lq55mHHf32Z"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "AvQQexvHPq52xzcefwYRTjqMtME"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vw;->A0C:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A02:I

    invoke-virtual {p1, v1, v0, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 62291
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A02:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A02:I

    .line 62292
    iget v7, p0, Lcom/facebook/ads/redexgen/X/Vw;->A02:I

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vw;->A0C:[B

    array-length v0, v1

    if-ne v7, v0, :cond_4

    .line 62293
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A0A:Z

    const/4 v4, 0x2

    if-eqz v0, :cond_3

    .line 62294
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A03:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Vw;->A0A([BI)V

    .line 62295
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Vw;->A06:J

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vw;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A03:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A00:I

    div-int/2addr v1, v0

    int-to-long v0, v1

    add-long/2addr v2, v0

    sget-object v7, Lcom/facebook/ads/redexgen/X/Vw;->A0E:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v7, v0

    const/4 v0, 0x0

    aget-object v0, v7, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v7, Lcom/facebook/ads/redexgen/X/Vw;->A0E:[Ljava/lang/String;

    const-string v1, "gxS5BLwFAidqJmDbKDE6WtXzAMTiz"

    const/4 v0, 0x5

    aput-object v1, v7, v0

    const-string v1, "EUf9mYlz"

    const/4 v0, 0x2

    aput-object v1, v7, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Vw;->A06:J

    goto :goto_2

    .line 62296
    :cond_3
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Vw;->A06:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A03:I

    sub-int/2addr v7, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A00:I

    div-int/2addr v7, v0

    int-to-long v0, v7

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Vw;->A06:J

    .line 62297
    :goto_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vw;->A0C:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A02:I

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Vw;->A09(Ljava/nio/ByteBuffer;[BI)V

    .line 62298
    iput v5, p0, Lcom/facebook/ads/redexgen/X/Vw;->A02:I

    .line 62299
    iput v4, p0, Lcom/facebook/ads/redexgen/X/Vw;->A05:I

    .line 62300
    :cond_4
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto/16 :goto_0
.end method

.method private A07(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 62301
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 62302
    .local p0, "limit":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A0C:[B

    array-length v0, v0

    add-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 62303
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Vw;->A01(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 62304
    .local p1, "noiseLimit":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 62305
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A05:I

    .line 62306
    :goto_0
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 62307
    return-void

    .line 62308
    :cond_0
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 62309
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Vw;->A05(Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method private A08(Ljava/nio/ByteBuffer;)V
    .locals 6

    .line 62310
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    .line 62311
    .local p0, "limit":I
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Vw;->A02(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 62312
    .local p1, "noisyPosition":I
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 62313
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Vw;->A06:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A00:I

    div-int/2addr v1, v0

    int-to-long v0, v1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Vw;->A06:J

    .line 62314
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vw;->A0D:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A03:I

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Vw;->A09(Ljava/nio/ByteBuffer;[BI)V

    .line 62315
    if-ge v4, v5, :cond_0

    .line 62316
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vw;->A0D:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A03:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Vw;->A0A([BI)V

    .line 62317
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A05:I

    .line 62318
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 62319
    :cond_0
    return-void
.end method

.method private A09(Ljava/nio/ByteBuffer;[BI)V
    .locals 4

    .line 62320
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A03:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 62321
    .local p0, "fromInputSize":I
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Vw;->A03:I

    sub-int/2addr v2, v3

    .line 62322
    .local p1, "fromBufferSize":I
    sub-int/2addr p3, v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vw;->A0D:[B

    const/4 v0, 0x0

    invoke-static {p2, p3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62323
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 62324
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A0D:[B

    invoke-virtual {p1, v0, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 62325
    return-void
.end method

.method private A0A([BI)V
    .locals 2

    .line 62326
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/Vw;->A04(I)V

    .line 62327
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vw;->A07:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 62328
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A07:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 62329
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A07:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A08:Ljava/nio/ByteBuffer;

    .line 62330
    return-void
.end method


# virtual methods
.method public final A0B()J
    .locals 2

    .line 62331
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A06:J

    return-wide v0
.end method

.method public final A0C(Z)V
    .locals 0

    .line 62332
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Vw;->A09:Z

    .line 62333
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Vw;->flush()V

    .line 62334
    return-void
.end method

.method public final A44(III)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Ay;
        }
    .end annotation

    .line 62335
    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    .line 62336
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A04:I

    if-ne v0, p1, :cond_1

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Vw;->A01:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vw;->A0E:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vw;->A0E:[Ljava/lang/String;

    const-string v1, "LINPF"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ne v3, p2, :cond_1

    .line 62337
    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 62338
    :cond_1
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Vw;->A04:I

    .line 62339
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Vw;->A01:I

    .line 62340
    mul-int/lit8 v0, p2, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A00:I

    .line 62341
    const/4 v0, 0x1

    return v0

    .line 62342
    :cond_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ay;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Ay;-><init>(III)V

    throw v0
.end method

.method public final A6p()Ljava/nio/ByteBuffer;
    .locals 2

    .line 62343
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vw;->A08:Ljava/nio/ByteBuffer;

    .line 62344
    .local p0, "outputBuffer":Ljava/nio/ByteBuffer;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A08:Ljava/nio/ByteBuffer;

    .line 62345
    return-object v1
.end method

.method public final A6q()I
    .locals 1

    .line 62346
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A01:I

    return v0
.end method

.method public final A6r()I
    .locals 1

    .line 62347
    const/4 v0, 0x2

    return v0
.end method

.method public final A6s()I
    .locals 1

    .line 62348
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A04:I

    return v0
.end method

.method public final A7x()Z
    .locals 2

    .line 62349
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vw;->A04:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A09:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A81()Z
    .locals 2

    .line 62350
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A0B:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vw;->A08:Ljava/nio/ByteBuffer;

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

    .line 62351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A0B:Z

    .line 62352
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vw;->A02:I

    if-lez v1, :cond_0

    .line 62353
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A0C:[B

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Vw;->A0A([BI)V

    .line 62354
    :cond_0
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Vw;->A0A:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vw;->A0E:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vw;->A0E:[Ljava/lang/String;

    const-string v1, "kvc1PqyVI5YYrzLUR"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v3, :cond_2

    .line 62355
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Vw;->A06:J

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vw;->A03:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A00:I

    div-int/2addr v1, v0

    int-to-long v0, v1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Vw;->A06:J

    .line 62356
    :cond_2
    return-void
.end method

.method public final ACi(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 62357
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A08:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vw;->A0E:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vw;->A0E:[Ljava/lang/String;

    const-string v1, "csNue4jImnoSuGIyG14zgnsIiEtPH4Hw"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-nez v3, :cond_4

    .line 62358
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vw;->A05:I

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    .line 62359
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Vw;->A08(Ljava/nio/ByteBuffer;)V

    .line 62360
    goto :goto_0

    .line 62361
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Vw;->A06(Ljava/nio/ByteBuffer;)V

    .line 62362
    goto :goto_0

    .line 62363
    :cond_1
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Vw;->A07(Ljava/nio/ByteBuffer;)V

    .line 62364
    goto :goto_0

    .line 62365
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 62366
    :cond_4
    return-void
.end method

.method public final flush()V
    .locals 3

    .line 62367
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Vw;->A7x()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62368
    const-wide/32 v0, 0x249f0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Vw;->A00(J)I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A00:I

    mul-int/2addr v1, v0

    .line 62369
    .local p0, "maybeSilenceBufferSize":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A0C:[B

    array-length v0, v0

    if-eq v0, v1, :cond_0

    .line 62370
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A0C:[B

    .line 62371
    :cond_0
    const-wide/16 v0, 0x4e20

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Vw;->A00(J)I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A00:I

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Vw;->A03:I

    .line 62372
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A0D:[B

    array-length v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A03:I

    if-eq v1, v0, :cond_1

    .line 62373
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A0D:[B

    .line 62374
    .end local p0    # "maybeSilenceBufferSize":I
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/facebook/ads/redexgen/X/Vw;->A05:I

    .line 62375
    sget-object v0, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A08:Ljava/nio/ByteBuffer;

    .line 62376
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Vw;->A0B:Z

    .line 62377
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A06:J

    .line 62378
    iput v2, p0, Lcom/facebook/ads/redexgen/X/Vw;->A02:I

    .line 62379
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Vw;->A0A:Z

    .line 62380
    return-void
.end method

.method public final reset()V
    .locals 2

    .line 62381
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Vw;->A09:Z

    .line 62382
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Vw;->flush()V

    .line 62383
    sget-object v0, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A07:Ljava/nio/ByteBuffer;

    .line 62384
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A01:I

    .line 62385
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A04:I

    .line 62386
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Vw;->A03:I

    .line 62387
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A0C:[B

    .line 62388
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A0D:[B

    .line 62389
    return-void
.end method
