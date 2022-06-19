.class public final Lcom/facebook/ads/redexgen/X/Ie;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A05:[B


# instance fields
.field public final A00:F

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ie;->A02()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;IIIF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;IIIF)V"
        }
    .end annotation

    .line 38936
    .local p1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38937
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ie;->A04:Ljava/util/List;

    .line 38938
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Ie;->A02:I

    .line 38939
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Ie;->A03:I

    .line 38940
    iput p4, p0, Lcom/facebook/ads/redexgen/X/Ie;->A01:I

    .line 38941
    iput p5, p0, Lcom/facebook/ads/redexgen/X/Ie;->A00:F

    .line 38942
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/Ie;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 38943
    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 38944
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v1

    const/4 v0, 0x3

    and-int/2addr v1, v0

    add-int/lit8 v5, v1, 0x1

    .line 38945
    .local p0, "nalUnitLengthFieldLength":I
    if-eq v5, v0, :cond_3

    .line 38946
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 38947
    .local v0, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    and-int/lit8 v3, v0, 0x1f

    .line 38948
    .local v3, "numSequenceParameterSets":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 38949
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Ie;->A03(Lcom/facebook/ads/redexgen/X/IM;)[B

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38950
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38951
    .end local v1    # "j":I
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v2

    .line 38952
    .local v1, "numPictureParameterSets":I
    const/4 v1, 0x0

    .restart local v1    # "numPictureParameterSets":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 38953
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Ie;->A03(Lcom/facebook/ads/redexgen/X/IM;)[B

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38954
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 38955
    .end local v1    # "numPictureParameterSets":I
    :cond_1
    const/4 v6, -0x1

    .line 38956
    .local v1, "width":I
    const/4 v7, -0x1

    .line 38957
    .local v0, "height":I
    const/high16 p0, 0x3f800000    # 1.0f

    .line 38958
    .local v1, "pixelWidthAspectRatio":F
    if-lez v3, :cond_2

    .line 38959
    const/4 v1, 0x0

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 38960
    .local v4, "sps":[B
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v0, v0

    .line 38961
    invoke-static {v1, v5, v0}, Lcom/facebook/ads/redexgen/X/II;->A06([BII)Lcom/facebook/ads/redexgen/X/IH;

    move-result-object v0

    .line 38962
    .local v5, "spsData":Lcom/facebook/ads/redexgen/X/IH;
    iget v6, v0, Lcom/facebook/ads/redexgen/X/IH;->A06:I

    .line 38963
    iget v7, v0, Lcom/facebook/ads/redexgen/X/IH;->A02:I

    .line 38964
    iget p0, v0, Lcom/facebook/ads/redexgen/X/IH;->A00:F

    .line 38965
    .end local v1    # "pixelWidthAspectRatio":F
    .end local v0    # "height":I
    .end local v1
    .local v0, "width":I
    .local v2, "height":I
    .local v2, "pixelWidthAspectRatio":F
    :cond_2
    new-instance v3, Lcom/facebook/ads/redexgen/X/Ie;

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/Ie;-><init>(Ljava/util/List;IIIF)V

    return-object v3

    .line 38966
    .end local v0    # "width":I
    .end local v3    # "numSequenceParameterSets":I
    .end local v1
    .end local v0
    .end local v2    # "pixelWidthAspectRatio":F
    .end local v2
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .end local v0
    throw v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38967
    .end local p0    # "nalUnitLengthFieldLength":I
    .restart local v0    # "width":I
    :catch_0
    move-exception v3

    .line 38968
    .local p0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v2, 0x0

    const/16 v1, 0x18

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ie;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ie;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x5f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ie;->A05:[B

    return-void

    :array_0
    .array-data 1
        0x1et
        0x4bt
        0x4bt
        0x48t
        0x4bt
        -0x7t
        0x49t
        0x3at
        0x4bt
        0x4ct
        0x42t
        0x47t
        0x40t
        -0x7t
        0x1at
        0x2ft
        0x1ct
        -0x7t
        0x3ct
        0x48t
        0x47t
        0x3ft
        0x42t
        0x40t
    .end array-data
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/IM;)[B
    .locals 3

    .line 38969
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v2

    .line 38970
    .local p0, "length":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v1

    .line 38971
    .local v2, "offset":I
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 38972
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-static {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/I1;->A09([BII)[B

    move-result-object v0

    return-object v0
.end method
