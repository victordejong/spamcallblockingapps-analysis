.class public final Lcom/facebook/ads/redexgen/X/Vx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Az;


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Ljava/nio/ByteBuffer;

.field public A04:Ljava/nio/ByteBuffer;

.field public A05:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vx;->A00()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 62390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62391
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A02:I

    .line 62392
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A00:I

    .line 62393
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A01:I

    .line 62394
    sget-object v0, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A03:Ljava/nio/ByteBuffer;

    .line 62395
    sget-object v0, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A04:Ljava/nio/ByteBuffer;

    .line 62396
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ETYuqvm9oPELmTuyl52eVyaQ5C3tQTPc"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "BHXHyRuWdYuoDSkKBQ5hhEiniocfFcVj"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ZrLmXMzRTvh3kuNvVAYJlhX1tR6hzsGV"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Ob9Fh2WBygMBwAYqBNQCucqcMYUAgfwb"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "gvfF6SMnM13ZiRgRFO7E8GPdEabFqrqn"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "pW1oi2HPIwkLDoO2ibWz5Ux7vvJ5GR67"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "zIxW499y4m3RvQw0ZYOKJFDracAYBnnp"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "9NIrBPbxMPkAnlarcnVrMKe8II3MVDVA"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vx;->A06:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A44(III)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Ay;
        }
    .end annotation

    .line 62397
    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    const/high16 v0, -0x80000000

    if-eq p3, v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p3, v0, :cond_3

    .line 62398
    :cond_0
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Vx;->A02:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vx;->A06:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vx;->A06:[Ljava/lang/String;

    const-string v1, "UMeGtWEtrmCgRGXoTpZ9KMH0ys0VwAUC"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "CmEiUzjV0oqnvpfGeJo2Q93HWoeZRsMS"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ne v3, p1, :cond_2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A00:I

    if-ne v0, p2, :cond_2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A01:I

    if-ne v0, p3, :cond_2

    .line 62399
    const/4 v0, 0x0

    return v0

    .line 62400
    :cond_2
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Vx;->A02:I

    .line 62401
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Vx;->A00:I

    .line 62402
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Vx;->A01:I

    .line 62403
    const/4 v0, 0x1

    return v0

    .line 62404
    :cond_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ay;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Ay;-><init>(III)V

    throw v0
.end method

.method public final A6p()Ljava/nio/ByteBuffer;
    .locals 2

    .line 62405
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vx;->A04:Ljava/nio/ByteBuffer;

    .line 62406
    .local p0, "outputBuffer":Ljava/nio/ByteBuffer;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A04:Ljava/nio/ByteBuffer;

    .line 62407
    return-object v1
.end method

.method public final A6q()I
    .locals 1

    .line 62408
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A00:I

    return v0
.end method

.method public final A6r()I
    .locals 1

    .line 62409
    const/4 v0, 0x2

    return v0
.end method

.method public final A6s()I
    .locals 1

    .line 62410
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A02:I

    return v0
.end method

.method public final A7x()Z
    .locals 2

    .line 62411
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vx;->A01:I

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A81()Z
    .locals 4

    .line 62412
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A05:Z

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Vx;->A04:Ljava/nio/ByteBuffer;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vx;->A06:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vx;->A06:[Ljava/lang/String;

    const-string v1, "oyBBCUt3QsgDzLJ9sua70H8fSy9U102p"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "I7ddFZNlXNXuLO9RiSH8JW0H9oyhgdpr"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    if-ne v3, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final ACh()V
    .locals 1

    .line 62413
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A05:Z

    .line 62414
    return-void
.end method

.method public final ACi(Ljava/nio/ByteBuffer;)V
    .locals 7

    .line 62415
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 62416
    .local p0, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 62417
    .local p1, "limit":I
    sub-int v1, v2, v3

    .line 62418
    .local v3, "size":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A01:I

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    const/4 v4, 0x3

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_1

    if-ne v0, v6, :cond_7

    .line 62419
    div-int/lit8 v1, v1, 0x2

    .line 62420
    .local v2, "resampledSize":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A03:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 62421
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A03:Ljava/nio/ByteBuffer;

    .line 62422
    :goto_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A01:I

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_4

    if-ne v0, v6, :cond_3

    .line 62423
    .local v1, "i":I
    :goto_2
    if-ge v3, v2, :cond_6

    .line 62424
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vx;->A03:Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v3, 0x2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 62425
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vx;->A03:Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v3, 0x3

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 62426
    add-int/lit8 v3, v3, 0x4

    goto :goto_2

    .line 62427
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A03:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_1

    .line 62428
    :cond_1
    mul-int/lit8 v1, v1, 0x2

    .line 62429
    .restart local v2    # "resampledSize":I
    goto :goto_0

    .line 62430
    .end local v2    # "resampledSize":I
    :cond_2
    div-int/lit8 v0, v1, 0x3

    mul-int/lit8 v1, v0, 0x2

    .line 62431
    .restart local v2    # "resampledSize":I
    goto :goto_0

    .line 62432
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 62433
    .restart local v1    # "i":I
    :cond_4
    :goto_3
    if-ge v3, v2, :cond_6

    .line 62434
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vx;->A03:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 62435
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vx;->A03:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v0, v0, -0x80

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 62436
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 62437
    .restart local v1    # "i":I
    :cond_5
    :goto_4
    if-ge v3, v2, :cond_6

    .line 62438
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vx;->A03:Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 62439
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vx;->A03:Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v3, 0x2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 62440
    add-int/lit8 v3, v3, 0x3

    goto :goto_4

    .line 62441
    :cond_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 62442
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A03:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 62443
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A03:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A04:Ljava/nio/ByteBuffer;

    .line 62444
    return-void

    .line 62445
    .end local v2    # "resampledSize":I
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final flush()V
    .locals 1

    .line 62446
    sget-object v0, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A04:Ljava/nio/ByteBuffer;

    .line 62447
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A05:Z

    .line 62448
    return-void
.end method

.method public final reset()V
    .locals 1

    .line 62449
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Vx;->flush()V

    .line 62450
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A02:I

    .line 62451
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A00:I

    .line 62452
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A01:I

    .line 62453
    sget-object v0, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A03:Ljava/nio/ByteBuffer;

    .line 62454
    return-void
.end method
