.class public final Lcom/facebook/ads/redexgen/X/Ve;
.super Lcom/facebook/ads/redexgen/X/CU;
.source ""


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;

.field public static final A05:[I


# instance fields
.field public A00:I

.field public A01:Z

.field public A02:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 61340
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ve;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ve;->A01()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ve;->A05:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1588
        0x2b11
        0x5622
        0xac44
    .end array-data
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/CS;)V
    .locals 0

    .line 61341
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/CU;-><init>(Lcom/facebook/ads/redexgen/X/CS;)V

    .line 61342
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ve;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x53

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ve;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x5dt
        0x69t
        0x78t
        0x75t
        0x73t
        0x3ct
        0x7at
        0x73t
        0x6et
        0x71t
        0x7dt
        0x68t
        0x3ct
        0x72t
        0x73t
        0x68t
        0x3ct
        0x6ft
        0x69t
        0x6ct
        0x6ct
        0x73t
        0x6et
        0x68t
        0x79t
        0x78t
        0x26t
        0x3ct
        0x61t
        0x75t
        0x64t
        0x69t
        0x6ft
        0x2ft
        0x67t
        0x37t
        0x31t
        0x31t
        0x2dt
        0x61t
        0x6ct
        0x61t
        0x77t
        0x18t
        0xct
        0x1dt
        0x10t
        0x16t
        0x56t
        0x1et
        0x4et
        0x48t
        0x48t
        0x54t
        0x14t
        0x15t
        0x18t
        0xet
        0x7bt
        0x6ft
        0x7et
        0x73t
        0x75t
        0x35t
        0x77t
        0x6at
        0x2et
        0x7bt
        0x37t
        0x76t
        0x7bt
        0x6et
        0x77t
        0x22t
        0x36t
        0x27t
        0x2at
        0x2ct
        0x6ct
        0x2et
        0x33t
        0x26t
        0x24t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "J5tPsEqk1WwUKmgBHQADeFs85"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "cGAHkrXzTOkQgOZONmzbRFqUG7Mo4QAq"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "VETE52726Bkvtj85CnE8S"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "1hiZlQ36mYKob7nq1noVxq1qId2OfZLm"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "4eznY"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Z8mH68OBw5At3"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "nI7U0O2kHB1gSZfwYviA32rxuMSbDIL3"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Xh2sI"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ve;->A04:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A0C(Lcom/facebook/ads/redexgen/X/IM;J)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 61343
    move-object/from16 v1, p0

    iget v2, v1, Lcom/facebook/ads/redexgen/X/Ve;->A00:I

    const/4 v0, 0x2

    move-wide/from16 v6, p2

    move-object/from16 v5, p1

    if-ne v2, v0, :cond_1

    .line 61344
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v9

    .line 61345
    .local v6, "sampleSize":I
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/CU;->A00:Lcom/facebook/ads/redexgen/X/CS;

    invoke-interface {v0, v5, v9}, Lcom/facebook/ads/redexgen/X/CS;->ADS(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 61346
    iget-object v5, v1, Lcom/facebook/ads/redexgen/X/CU;->A00:Lcom/facebook/ads/redexgen/X/CS;

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/CS;->ADT(JIIILcom/facebook/ads/redexgen/X/CR;)V

    .line 61347
    .end local v6    # "sampleSize":I
    .end local v6
    .end local v3
    :cond_0
    :goto_0
    return-void

    .line 61348
    :cond_1
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v4

    .line 61349
    .local v6, "packetType":I
    const/4 v3, 0x1

    if-nez v4, :cond_2

    iget-boolean v0, v1, Lcom/facebook/ads/redexgen/X/Ve;->A01:Z

    if-nez v0, :cond_2

    .line 61350
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    new-array v4, v0, [B

    .line 61351
    .local v1, "audioSpecificConfig":[B
    const/4 v2, 0x0

    array-length v0, v4

    invoke-virtual {v5, v4, v2, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 61352
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/I1;->A03([B)Landroid/util/Pair;

    move-result-object v2

    .line 61353
    .local v5, "audioParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 61354
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 61355
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 61356
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 61357
    const/16 v4, 0x3a

    const/16 v2, 0xf

    const/16 v0, 0x66

    invoke-static {v4, v2, v0}, Lcom/facebook/ads/redexgen/X/Ve;->A00(III)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v5 .. v15}, Lcom/facebook/ads/internal/exoplayer2/Format;->A07(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v2

    .line 61358
    .local v2, "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/CU;->A00:Lcom/facebook/ads/redexgen/X/CS;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/CS;->A5P(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 61359
    iput-boolean v3, v1, Lcom/facebook/ads/redexgen/X/Ve;->A01:Z

    .end local v1    # "audioSpecificConfig":[B
    .end local v5    # "audioParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v2    # "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    goto :goto_0

    .line 61360
    :cond_2
    iget v2, v1, Lcom/facebook/ads/redexgen/X/Ve;->A00:I

    const/16 v0, 0xa

    if-ne v2, v0, :cond_3

    if-ne v4, v3, :cond_0

    .line 61361
    :cond_3
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v9

    .line 61362
    .local v3, "sampleSize":I
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/CU;->A00:Lcom/facebook/ads/redexgen/X/CS;

    invoke-interface {v0, v5, v9}, Lcom/facebook/ads/redexgen/X/CS;->ADS(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 61363
    iget-object v5, v1, Lcom/facebook/ads/redexgen/X/CU;->A00:Lcom/facebook/ads/redexgen/X/CS;

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/CS;->ADT(JIIILcom/facebook/ads/redexgen/X/CR;)V

    goto :goto_0
.end method

.method public final A0D(Lcom/facebook/ads/redexgen/X/IM;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Va;
        }
    .end annotation

    .line 61364
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/facebook/ads/redexgen/X/Ve;->A02:Z

    const/4 v1, 0x1

    move-object/from16 v3, p1

    if-nez v2, :cond_6

    .line 61365
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v7

    .line 61366
    .local v3, "header":I
    shr-int/lit8 v2, v7, 0x4

    and-int/lit8 v2, v2, 0xf

    iput v2, v0, Lcom/facebook/ads/redexgen/X/Ve;->A00:I

    .line 61367
    iget v6, v0, Lcom/facebook/ads/redexgen/X/Ve;->A00:I

    const/4 v4, 0x3

    const/4 v2, 0x2

    if-ne v6, v2, :cond_0

    .line 61368
    shr-int/lit8 v3, v7, 0x2

    and-int/2addr v3, v4

    .line 61369
    .local v2, "sampleRateIndex":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ve;->A05:[I

    aget v11, v2, v3

    .line 61370
    .local v1, "sampleRate":I
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 61371
    const/16 v4, 0x49

    const/16 v3, 0xa

    const/16 v2, 0x3f

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Ve;->A00(III)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v5 .. v15}, Lcom/facebook/ads/internal/exoplayer2/Format;->A07(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v3

    .line 61372
    .local v7, "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/CU;->A00:Lcom/facebook/ads/redexgen/X/CS;

    invoke-interface {v2, v3}, Lcom/facebook/ads/redexgen/X/CS;->A5P(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 61373
    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/Ve;->A01:Z

    .line 61374
    .end local v2    # "sampleRateIndex":I
    .end local v1    # "sampleRate":I
    .end local v7    # "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    :goto_0
    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/Ve;->A02:Z

    .line 61375
    .end local v3    # "header":I
    :goto_1
    return v1

    .line 61376
    :cond_0
    const/4 v5, 0x7

    sget-object v3, Lcom/facebook/ads/redexgen/X/Ve;->A04:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v2, 0x19

    if-eq v3, v2, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v4, Lcom/facebook/ads/redexgen/X/Ve;->A04:[Ljava/lang/String;

    const-string v3, "Fqx8jTu6ac1LtNfOMdhuIbQ5HrYI5tLh"

    const/4 v2, 0x3

    aput-object v3, v4, v2

    if-eq v6, v5, :cond_2

    const/16 v2, 0x8

    if-ne v6, v2, :cond_5

    .line 61377
    :cond_2
    iget v2, v0, Lcom/facebook/ads/redexgen/X/Ve;->A00:I

    if-ne v2, v5, :cond_4

    const/16 v4, 0x1c

    const/16 v3, 0xf

    const/16 v2, 0x7c

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Ve;->A00(III)Ljava/lang/String;

    move-result-object v3

    .line 61378
    .local v2, "type":Ljava/lang/String;
    :goto_2
    and-int/lit8 v2, v7, 0x1

    if-ne v2, v1, :cond_3

    const/4 v9, 0x2

    .line 61379
    .local v2, "pcmEncoding":I
    :goto_3
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/16 v8, 0x1f40

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 61380
    invoke-static/range {v2 .. v13}, Lcom/facebook/ads/internal/exoplayer2/Format;->A06(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v3

    .line 61381
    .local v2, "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/CU;->A00:Lcom/facebook/ads/redexgen/X/CS;

    invoke-interface {v2, v3}, Lcom/facebook/ads/redexgen/X/CS;->A5P(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 61382
    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/Ve;->A01:Z

    .end local v2    # "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    .end local v2
    .end local v2
    goto :goto_0

    .line 61383
    :cond_3
    const/4 v9, 0x3

    goto :goto_3

    .line 61384
    :cond_4
    const/16 v4, 0x2b

    const/16 v3, 0xf

    const/4 v2, 0x5

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Ve;->A00(III)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 61385
    :cond_5
    const/16 v2, 0xa

    if-ne v6, v2, :cond_7

    goto :goto_0

    .line 61386
    :cond_6
    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    goto :goto_1

    .line 61387
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/16 v2, 0x1c

    const/16 v1, 0x60

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Ve;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ve;->A00:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Va;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Va;-><init>(Ljava/lang/String;)V

    throw v0
.end method
