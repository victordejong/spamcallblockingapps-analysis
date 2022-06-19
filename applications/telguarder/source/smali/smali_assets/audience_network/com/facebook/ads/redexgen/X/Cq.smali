.class public final Lcom/facebook/ads/redexgen/X/Cq;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Cp;
    }
.end annotation


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Cq;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25587
    return-void
.end method

.method public static A00(I[J[IJ)Lcom/facebook/ads/redexgen/X/Cp;
    .locals 18

    move-wide/from16 v16, p3

    .line 25588
    const/16 v5, 0x2000

    div-int v5, v5, p0

    .line 25589
    .local p1, "maxSampleCount":I
    const/4 v3, 0x0

    .line 25590
    .local v6, "rechunkedSampleCount":I
    move-object/from16 v6, p2

    array-length v2, v6

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v0, v6, v1

    .line 25591
    .local v6, "chunkSampleCount":I
    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/Ic;->A04(II)I

    move-result v0

    add-int/2addr v3, v0

    .line 25592
    .end local v6    # "chunkSampleCount":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25593
    :cond_0
    new-array v11, v3, [J

    .line 25594
    .local v16, "offsets":[J
    new-array v12, v3, [I

    .line 25595
    .local v4, "sizes":[I
    const/4 v13, 0x0

    .line 25596
    .local v6, "maximumSize":I
    new-array v14, v3, [J

    .line 25597
    .local v12, "timestamps":[J
    new-array v15, v3, [I

    .line 25598
    .local v13, "flags":[I
    const/4 v4, 0x0

    .line 25599
    .local v5, "originalSampleIndex":I
    const/4 v10, 0x0

    .line 25600
    .local v5, "newSampleIndex":I
    const/4 v3, 0x0

    .end local v6    # "maximumSize":I
    .end local v5    # "newSampleIndex":I
    .end local v5
    .local v3, "chunkIndex":I
    .local v11, "originalSampleIndex":I
    .local v14, "maximumSize":I
    .local v15, "newSampleIndex":I
    :goto_1
    array-length v0, v6

    if-ge v3, v0, :cond_3

    .line 25601
    aget v2, v6, v3

    .line 25602
    .local v6, "chunkSamplesRemaining":I
    aget-wide v8, p1, v3

    sget-object v7, Lcom/facebook/ads/redexgen/X/Cq;->A00:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v7, v0

    const/4 v0, 0x7

    aget-object v0, v7, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v7, Lcom/facebook/ads/redexgen/X/Cq;->A00:[Ljava/lang/String;

    const-string v1, "6BXgiX1fH363oEcIaQ9NfSUmU377alIP"

    const/4 v0, 0x0

    aput-object v1, v7, v0

    .line 25603
    .end local v14    # "maximumSize":I
    .local v5, "sampleOffset":J
    .local v2, "maximumSize":I
    :goto_2
    if-lez v2, :cond_2

    .line 25604
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 25605
    .local v1, "bufferSampleCount":I
    aput-wide v8, v11, v10

    .line 25606
    mul-int v0, p0, v7

    aput v0, v12, v10

    .line 25607
    aget v0, v12, v10

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 25608
    int-to-long v0, v4

    mul-long v0, v0, v16

    aput-wide v0, v14, v10

    .line 25609
    const/4 v0, 0x1

    aput v0, v15, v10

    .line 25610
    aget v0, v12, v10

    int-to-long v0, v0

    add-long/2addr v8, v0

    .line 25611
    add-int/2addr v4, v7

    .line 25612
    sub-int/2addr v2, v7

    .line 25613
    .end local v1    # "bufferSampleCount":I
    add-int/lit8 v10, v10, 0x1

    .line 25614
    goto :goto_2

    .line 25615
    .end local v6    # "chunkSamplesRemaining":I
    .end local v5    # "sampleOffset":J
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 25616
    .end local v3    # "chunkIndex":I
    .end local v2    # "maximumSize":I
    .restart local v14    # "maximumSize":I
    :cond_3
    int-to-long v0, v4

    mul-long v16, v16, v0

    .line 25617
    .local v4, "duration":J
    new-instance v10, Lcom/facebook/ads/redexgen/X/Cp;

    const/16 p0, 0x0

    .end local v11    # "originalSampleIndex":I
    .local v4, "originalSampleIndex":I
    invoke-direct/range {v10 .. v18}, Lcom/facebook/ads/redexgen/X/Cp;-><init>([J[II[J[IJLcom/facebook/ads/redexgen/X/Co;)V

    return-object v10
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "cTaARkUqiFUyvLqYVbo3oNwlMBvE0HYs"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "S484JsRw4pH6nz"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "3ddO"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "LjTuBJ81HpOj7OmWLLNm4jJE"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "umDKKmdm82OqX2LqkALAKx6fRgitXWdj"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "XE120uTD03bPS11p8lnEgEfIBNg82o7Z"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "FBZKMNGplm1vJIe0TRbCUlSeQ6Y77f"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "W78bLbCJ4pzUO1uGm8g3tOIo"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Cq;->A00:[Ljava/lang/String;

    return-void
.end method
