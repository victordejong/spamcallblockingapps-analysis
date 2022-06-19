.class public final Lcom/facebook/ads/redexgen/X/Ur;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Db;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Z

.field public A03:Z

.field public final A04:Lcom/facebook/ads/redexgen/X/DU;

.field public final A05:Lcom/facebook/ads/redexgen/X/IM;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/DU;)V
    .locals 2

    .line 57401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57402
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ur;->A04:Lcom/facebook/ads/redexgen/X/DU;

    .line 57403
    const/16 v1, 0x20

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A05:Lcom/facebook/ads/redexgen/X/IM;

    .line 57404
    return-void
.end method


# virtual methods
.method public final A46(Lcom/facebook/ads/redexgen/X/IM;Z)V
    .locals 7

    .line 57405
    const/4 v1, -0x1

    .line 57406
    .local p0, "payloadStartPosition":I
    if-eqz p2, :cond_0

    .line 57407
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    .line 57408
    .local p1, "payloadStartOffset":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v1

    add-int/2addr v1, v0

    .line 57409
    .end local p1    # "payloadStartOffset":I
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A03:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 57410
    if-nez p2, :cond_1

    .line 57411
    return-void

    .line 57412
    :cond_1
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Ur;->A03:Z

    .line 57413
    invoke-virtual {p1, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 57414
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Ur;->A00:I

    .line 57415
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    if-lez v0, :cond_8

    .line 57416
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A00:I

    const/4 v4, 0x1

    const/4 v6, 0x3

    if-ge v0, v6, :cond_5

    .line 57417
    if-nez v0, :cond_3

    .line 57418
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v1

    .line 57419
    .local p1, "tableId":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 57420
    const/16 v0, 0xff

    if-ne v1, v0, :cond_3

    .line 57421
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Ur;->A03:Z

    .line 57422
    return-void

    .line 57423
    .end local p1    # "tableId":I
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A00:I

    rsub-int/lit8 v0, v0, 0x3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 57424
    .local p1, "headerBytesToRead":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A05:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A00:I

    invoke-virtual {p1, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 57425
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A00:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A00:I

    .line 57426
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A00:I

    if-ne v0, v6, :cond_2

    .line 57427
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A05:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/IM;->A0X(I)V

    .line 57428
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A05:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 57429
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A05:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v2

    .line 57430
    .local v1, "secondHeaderByte":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A05:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v1

    .line 57431
    .local v0, "thirdHeaderByte":I
    and-int/lit16 v0, v2, 0x80

    if-eqz v0, :cond_4

    :goto_1
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Ur;->A02:Z

    .line 57432
    and-int/lit8 v0, v2, 0xf

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    add-int/2addr v0, v6

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A01:I

    .line 57433
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A05:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A06()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A01:I

    if-ge v1, v0, :cond_2

    .line 57434
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A05:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    .line 57435
    .local v1, "bytes":[B
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Ur;->A05:Lcom/facebook/ads/redexgen/X/IM;

    const/16 v2, 0x1002

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ur;->A01:I

    array-length v0, v5

    mul-int/lit8 v0, v0, 0x2

    .line 57436
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 57437
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0X(I)V

    .line 57438
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A05:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-static {v5, v3, v0, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    .line 57439
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 57440
    :cond_5
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ur;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A00:I

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 57441
    .local p1, "bodyBytesToRead":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A05:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A00:I

    invoke-virtual {p1, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 57442
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A00:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A00:I

    .line 57443
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A00:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ur;->A01:I

    if-ne v0, v1, :cond_2

    .line 57444
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A02:Z

    if-eqz v0, :cond_7

    .line 57445
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A05:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ur;->A01:I

    const/4 v0, -0x1

    invoke-static {v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A09([BIII)I

    move-result v0

    if-eqz v0, :cond_6

    .line 57446
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Ur;->A03:Z

    .line 57447
    return-void

    .line 57448
    :cond_6
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ur;->A05:Lcom/facebook/ads/redexgen/X/IM;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A01:I

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0X(I)V

    goto :goto_2

    .line 57449
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A05:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0X(I)V

    .line 57450
    :goto_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ur;->A04:Lcom/facebook/ads/redexgen/X/DU;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A05:Lcom/facebook/ads/redexgen/X/IM;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/DU;->A45(Lcom/facebook/ads/redexgen/X/IM;)V

    .line 57451
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Ur;->A00:I

    goto/16 :goto_0

    .line 57452
    :cond_8
    return-void
.end method

.method public final A7u(Lcom/facebook/ads/redexgen/X/IY;Lcom/facebook/ads/redexgen/X/CI;Lcom/facebook/ads/redexgen/X/Da;)V
    .locals 1

    .line 57453
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A04:Lcom/facebook/ads/redexgen/X/DU;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/DU;->A7u(Lcom/facebook/ads/redexgen/X/IY;Lcom/facebook/ads/redexgen/X/CI;Lcom/facebook/ads/redexgen/X/Da;)V

    .line 57454
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A03:Z

    .line 57455
    return-void
.end method

.method public final ADW()V
    .locals 1

    .line 57456
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A03:Z

    .line 57457
    return-void
.end method
