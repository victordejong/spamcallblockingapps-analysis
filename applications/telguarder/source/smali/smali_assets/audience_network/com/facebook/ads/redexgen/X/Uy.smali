.class public final Lcom/facebook/ads/redexgen/X/Uy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/DM;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/DR;
    }
.end annotation


# static fields
.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/CS;

.field public A03:Lcom/facebook/ads/redexgen/X/DR;

.field public A04:Ljava/lang/String;

.field public A05:Z

.field public final A06:Lcom/facebook/ads/redexgen/X/DS;

.field public final A07:Lcom/facebook/ads/redexgen/X/DS;

.field public final A08:Lcom/facebook/ads/redexgen/X/DS;

.field public final A09:Lcom/facebook/ads/redexgen/X/DS;

.field public final A0A:Lcom/facebook/ads/redexgen/X/DS;

.field public final A0B:Lcom/facebook/ads/redexgen/X/DV;

.field public final A0C:Lcom/facebook/ads/redexgen/X/IM;

.field public final A0D:[Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Uy;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Uy;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/DV;)V
    .locals 3

    .line 57919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57920
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Uy;->A0B:Lcom/facebook/ads/redexgen/X/DV;

    .line 57921
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A0D:[Z

    .line 57922
    const/16 v2, 0x80

    const/16 v1, 0x20

    new-instance v0, Lcom/facebook/ads/redexgen/X/DS;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/DS;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A0A:Lcom/facebook/ads/redexgen/X/DS;

    .line 57923
    const/16 v1, 0x21

    new-instance v0, Lcom/facebook/ads/redexgen/X/DS;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/DS;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A08:Lcom/facebook/ads/redexgen/X/DS;

    .line 57924
    const/16 v1, 0x22

    new-instance v0, Lcom/facebook/ads/redexgen/X/DS;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/DS;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A06:Lcom/facebook/ads/redexgen/X/DS;

    .line 57925
    const/16 v1, 0x27

    new-instance v0, Lcom/facebook/ads/redexgen/X/DS;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/DS;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A07:Lcom/facebook/ads/redexgen/X/DS;

    .line 57926
    const/16 v1, 0x28

    new-instance v0, Lcom/facebook/ads/redexgen/X/DS;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/DS;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A09:Lcom/facebook/ads/redexgen/X/DS;

    .line 57927
    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IM;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A0C:Lcom/facebook/ads/redexgen/X/IM;

    .line 57928
    return-void
.end method

.method public static A00(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/DS;Lcom/facebook/ads/redexgen/X/DS;Lcom/facebook/ads/redexgen/X/DS;)Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 17

    .line 57929
    move-object/from16 v7, p1

    iget v1, v7, Lcom/facebook/ads/redexgen/X/DS;->A00:I

    move-object/from16 v4, p2

    iget v0, v4, Lcom/facebook/ads/redexgen/X/DS;->A00:I

    add-int/2addr v1, v0

    move-object/from16 v6, p3

    iget v0, v6, Lcom/facebook/ads/redexgen/X/DS;->A00:I

    add-int/2addr v1, v0

    new-array v5, v1, [B

    .line 57930
    .local v6, "csd":[B
    iget-object v1, v7, Lcom/facebook/ads/redexgen/X/DS;->A01:[B

    iget v0, v7, Lcom/facebook/ads/redexgen/X/DS;->A00:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v5, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57931
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/DS;->A01:[B

    iget v1, v7, Lcom/facebook/ads/redexgen/X/DS;->A00:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/DS;->A00:I

    invoke-static {v2, v3, v5, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57932
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/DS;->A01:[B

    iget v1, v7, Lcom/facebook/ads/redexgen/X/DS;->A00:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/DS;->A00:I

    add-int/2addr v1, v0

    iget v0, v6, Lcom/facebook/ads/redexgen/X/DS;->A00:I

    invoke-static {v2, v3, v5, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57933
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/DS;->A01:[B

    iget v0, v4, Lcom/facebook/ads/redexgen/X/DS;->A00:I

    new-instance v2, Lcom/facebook/ads/redexgen/X/IN;

    invoke-direct {v2, v1, v3, v0}, Lcom/facebook/ads/redexgen/X/IN;-><init>([BII)V

    .line 57934
    .local v7, "bitArray":Lcom/facebook/ads/redexgen/X/IN;
    const/16 v0, 0x2c

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/IN;->A08(I)V

    .line 57935
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/facebook/ads/redexgen/X/IN;->A06(I)I

    move-result v10

    .line 57936
    .local v1, "maxSubLayersMinus1":I
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IN;->A07()V

    .line 57937
    const/16 v0, 0x58

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/IN;->A08(I)V

    .line 57938
    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Lcom/facebook/ads/redexgen/X/IN;->A08(I)V

    .line 57939
    const/4 v3, 0x0

    .line 57940
    .local v1, "toSkip":I
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v1, v10, :cond_2

    .line 57941
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IN;->A0B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57942
    add-int/lit8 v3, v3, 0x59

    .line 57943
    :cond_0
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IN;->A0B()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57944
    add-int/lit8 v3, v3, 0x8

    .line 57945
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57946
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {v2, v3}, Lcom/facebook/ads/redexgen/X/IN;->A08(I)V

    .line 57947
    const/4 v6, 0x2

    if-lez v10, :cond_3

    .line 57948
    rsub-int/lit8 v0, v10, 0x8

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/IN;->A08(I)V

    .line 57949
    :cond_3
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    sget-object v3, Lcom/facebook/ads/redexgen/X/Uy;->A0F:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v3, v0

    const/4 v0, 0x2

    aget-object v0, v3, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_12

    .line 57950
    sget-object v3, Lcom/facebook/ads/redexgen/X/Uy;->A0F:[Ljava/lang/String;

    const-string v1, "a2dCCZWCw8TDzhsTlEEch3Ejv9pVPul7"

    const/4 v0, 0x3

    aput-object v1, v3, v0

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    move-result v11

    .line 57951
    .local v1, "chromaFormatIdc":I
    if-ne v11, v4, :cond_4

    .line 57952
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IN;->A07()V

    .line 57953
    :cond_4
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    move-result v12

    .line 57954
    .local v4, "picWidthInLumaSamples":I
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    move-result v13

    .line 57955
    .local v5, "picHeightInLumaSamples":I
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IN;->A0B()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 57956
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    move-result v9

    .line 57957
    .local v1, "confWinLeftOffset":I
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    move-result v8

    .line 57958
    .local v0, "confWinRightOffset":I
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    move-result v4

    .line 57959
    .local v3, "confWinTopOffset":I
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    move-result v3

    .line 57960
    .local v2, "confWinBottomOffset":I
    const/4 v1, 0x1

    if-eq v11, v1, :cond_5

    if-ne v11, v6, :cond_9

    :cond_5
    const/4 v0, 0x2

    .line 57961
    .local v0, "subWidthC":I
    :goto_1
    if-ne v11, v1, :cond_6

    const/4 v1, 0x2

    .line 57962
    .local v6, "subHeightC":I
    :cond_6
    add-int/2addr v9, v8

    mul-int/2addr v9, v0

    sub-int/2addr v12, v9

    .line 57963
    add-int/2addr v4, v3

    mul-int/2addr v4, v1

    sub-int/2addr v13, v4

    .line 57964
    .end local v6    # "subHeightC":I
    .end local v1    # "confWinLeftOffset":I
    .end local v0    # "subWidthC":I
    .end local v3    # "confWinTopOffset":I
    .end local v2    # "confWinBottomOffset":I
    .end local v0
    :cond_7
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    .line 57965
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    .line 57966
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    move-result v8

    .line 57967
    .local v6, "log2MaxPicOrderCntLsbMinus4":I
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IN;->A0B()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .local v1, "i":I
    :goto_2
    if-gt v0, v10, :cond_a

    .line 57968
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    .line 57969
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    .line 57970
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    .line 57971
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    move v0, v10

    goto :goto_2

    .line 57972
    :cond_9
    const/4 v0, 0x1

    goto :goto_1

    .line 57973
    .end local v1    # "i":I
    :cond_a
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    .line 57974
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    .line 57975
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    .line 57976
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    .line 57977
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    .line 57978
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    .line 57979
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IN;->A0B()Z

    move-result v0

    .line 57980
    .local v1, "scalingListEnabled":Z
    if-eqz v0, :cond_b

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IN;->A0B()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 57981
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Uy;->A06(Lcom/facebook/ads/redexgen/X/IN;)V

    .line 57982
    :cond_b
    invoke-virtual {v2, v6}, Lcom/facebook/ads/redexgen/X/IN;->A08(I)V

    .line 57983
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IN;->A0B()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 57984
    invoke-virtual {v2, v7}, Lcom/facebook/ads/redexgen/X/IN;->A08(I)V

    .line 57985
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    .line 57986
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    .line 57987
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IN;->A07()V

    .line 57988
    :cond_c
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Uy;->A07(Lcom/facebook/ads/redexgen/X/IN;)V

    .line 57989
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IN;->A0B()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 57990
    const/4 v4, 0x0

    .local v0, "i":I
    :goto_3
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    move-result v0

    if-ge v4, v0, :cond_e

    .line 57991
    add-int/lit8 v7, v8, 0x4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Uy;->A0F:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x17

    if-eq v1, v0, :cond_d

    .line 57992
    .local v3, "ltRefPicPocLsbSpsLength":I
    sget-object v3, Lcom/facebook/ads/redexgen/X/Uy;->A0F:[Ljava/lang/String;

    const-string v1, "zxCvWSzqKZ7ktI4W7Th6NQzHb"

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const-string v1, "qUVnnWXWmFvoxj"

    const/4 v0, 0x2

    aput-object v1, v3, v0

    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/IN;->A08(I)V

    .line 57993
    .end local v3    # "ltRefPicPocLsbSpsLength":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 57994
    .end local v0    # "i":I
    :cond_e
    invoke-virtual {v2, v6}, Lcom/facebook/ads/redexgen/X/IN;->A08(I)V

    .line 57995
    const/high16 v4, 0x3f800000    # 1.0f

    .line 57996
    .local v0, "pixelWidthHeightRatio":F
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IN;->A0B()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 57997
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IN;->A0B()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 57998
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/IN;->A06(I)I

    move-result v6

    .line 57999
    .local v0, "aspectRatioIdc":I
    const/16 v0, 0xff

    if-ne v6, v0, :cond_10

    .line 58000
    const/16 v0, 0x10

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/IN;->A06(I)I

    move-result v1

    .line 58001
    .local v3, "sarWidth":I
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/IN;->A06(I)I

    move-result v0

    .line 58002
    .local v0, "sarHeight":I
    if-eqz v1, :cond_f

    if-eqz v0, :cond_f

    .line 58003
    int-to-float v4, v1

    int-to-float v0, v0

    div-float/2addr v4, v0

    .line 58004
    .end local v0    # "sarHeight":I
    :cond_f
    :goto_4
    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/high16 v14, -0x40800000    # -1.0f

    .line 58005
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v16, -0x1

    const/16 p1, 0x0

    .line 58006
    const/16 v2, 0x2d

    const/16 v1, 0xa

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Uy;->A01(III)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v7, p0

    move/from16 p0, v4

    invoke-static/range {v7 .. v18}, Lcom/facebook/ads/internal/exoplayer2/Format;->A03(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    return-object v0

    .line 58007
    :cond_10
    sget-object v0, Lcom/facebook/ads/redexgen/X/II;->A04:[F

    array-length v0, v0

    if-ge v6, v0, :cond_11

    .line 58008
    sget-object v0, Lcom/facebook/ads/redexgen/X/II;->A04:[F

    aget v4, v0, v6

    .end local v0
    .local v7, "pixelWidthHeightRatio":F
    goto :goto_4

    .line 58009
    .end local v7    # "pixelWidthHeightRatio":F
    .restart local v0    # "sarHeight":I
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xa

    const/16 v1, 0x23

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Uy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Uy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Uy;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x73

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

    const/16 v0, 0x37

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Uy;->A0E:[B

    return-void

    :array_0
    .array-data 1
        -0xdt
        -0x23t
        -0x1ft
        -0x20t
        -0x3t
        0x10t
        0xct
        0xft
        0x10t
        0x1dt
        -0x19t
        0x0t
        -0x9t
        0xat
        0x2t
        -0x9t
        -0xbt
        0x6t
        -0x9t
        -0xat
        -0x4et
        -0xdt
        0x5t
        0x2t
        -0x9t
        -0xbt
        0x6t
        -0xft
        0x4t
        -0xdt
        0x6t
        -0x5t
        0x1t
        -0xft
        -0x5t
        -0xat
        -0xbt
        -0x4et
        0x8t
        -0xdt
        -0x2t
        0x7t
        -0x9t
        -0x34t
        -0x4et
        0x3at
        0x2dt
        0x28t
        0x29t
        0x33t
        -0xdt
        0x2ct
        0x29t
        0x3at
        0x27t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "yLpLRCec1sGrByi"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "lP9xagVVz9rYcUQHra9CoCNpK"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "luCI4CoMim9tLj"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "5emSpmk8MLVQEJ41LQjZTcPa6LPqtjKv"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "dQjXk1u"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "PQ2U1smEdY9O0uXwjYjDbtvdZi2Hav42"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "D6uNcd00N"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "n3JPcrHt"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Uy;->A0F:[Ljava/lang/String;

    return-void
.end method

.method private A04(JIIJ)V
    .locals 7

    .line 58010
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A05:Z

    if-eqz v0, :cond_1

    .line 58011
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A03:Lcom/facebook/ads/redexgen/X/DR;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/DR;->A03(JI)V

    .line 58012
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A07:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/DS;->A05(I)Z

    move-result v3

    const/4 v4, 0x5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Uy;->A0F:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 58013
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A0A:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/DS;->A05(I)Z

    .line 58014
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A08:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/DS;->A05(I)Z

    .line 58015
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A06:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/DS;->A05(I)Z

    .line 58016
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A0A:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DS;->A04()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A08:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DS;->A04()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A06:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DS;->A04()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58017
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Uy;->A02:Lcom/facebook/ads/redexgen/X/CS;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Uy;->A04:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Uy;->A0A:Lcom/facebook/ads/redexgen/X/DS;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Uy;->A08:Lcom/facebook/ads/redexgen/X/DS;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A06:Lcom/facebook/ads/redexgen/X/DS;

    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Uy;->A00(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/DS;Lcom/facebook/ads/redexgen/X/DS;Lcom/facebook/ads/redexgen/X/DS;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/facebook/ads/redexgen/X/CS;->A5P(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 58018
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A05:Z

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Uy;->A0F:[Ljava/lang/String;

    const-string v1, "PUD76EosF2pezTKCgx"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    .line 58019
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A07:Lcom/facebook/ads/redexgen/X/DS;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DS;->A01:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A07:Lcom/facebook/ads/redexgen/X/DS;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/DS;->A00:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/II;->A02([BI)I

    move-result v2

    .line 58020
    .local p0, "unescapedLength":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Uy;->A0C:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A07:Lcom/facebook/ads/redexgen/X/DS;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/DS;->A01:[B

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0c([BI)V

    .line 58021
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A0C:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 58022
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Uy;->A0B:Lcom/facebook/ads/redexgen/X/DV;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A0C:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v1, p5, p6, v0}, Lcom/facebook/ads/redexgen/X/DV;->A03(JLcom/facebook/ads/redexgen/X/IM;)V

    .line 58023
    .end local p0    # "unescapedLength":I
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A09:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/DS;->A05(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 58024
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A09:Lcom/facebook/ads/redexgen/X/DS;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DS;->A01:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A09:Lcom/facebook/ads/redexgen/X/DS;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/DS;->A00:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/II;->A02([BI)I

    move-result v6

    .line 58025
    .restart local p0    # "unescapedLength":I
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Uy;->A0C:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A09:Lcom/facebook/ads/redexgen/X/DS;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/DS;->A01:[B

    sget-object v1, Lcom/facebook/ads/redexgen/X/Uy;->A0F:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x17

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Uy;->A0F:[Ljava/lang/String;

    const-string v1, "rIKmUR4JI956sb0usfofhkFjx"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "H2I5cQQbQtFOiC"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v5, v3, v6}, Lcom/facebook/ads/redexgen/X/IM;->A0c([BI)V

    .line 58026
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A0C:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 58027
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Uy;->A0B:Lcom/facebook/ads/redexgen/X/DV;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A0C:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v1, p5, p6, v0}, Lcom/facebook/ads/redexgen/X/DV;->A03(JLcom/facebook/ads/redexgen/X/IM;)V

    .line 58028
    .end local p0    # "unescapedLength":I
    :cond_4
    return-void

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A05(JIIJ)V
    .locals 7

    .line 58029
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A05:Z

    move v4, p4

    if-eqz v0, :cond_0

    .line 58030
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A03:Lcom/facebook/ads/redexgen/X/DR;

    move-wide v5, p5

    move v3, p3

    move-wide v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/DR;->A04(JIIJ)V

    .line 58031
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A07:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/DS;->A02(I)V

    .line 58032
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A09:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/DS;->A02(I)V

    .line 58033
    return-void

    .line 58034
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A0A:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/DS;->A02(I)V

    .line 58035
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A08:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/DS;->A02(I)V

    .line 58036
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A06:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/DS;->A02(I)V

    goto :goto_0
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/IN;)V
    .locals 7

    .line 58037
    const/4 v5, 0x0

    .local p0, "sizeId":I
    :goto_0
    const/4 v4, 0x4

    if-ge v5, v4, :cond_6

    .line 58038
    const/4 v3, 0x0

    .local v4, "matrixId":I
    :goto_1
    const/4 v0, 0x6

    if-ge v3, v0, :cond_4

    .line 58039
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IN;->A0B()Z

    move-result v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/Uy;->A0F:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x66

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Uy;->A0F:[Ljava/lang/String;

    const-string v1, "GE1nFeRWL"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "HAFeisMJ"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/4 v2, 0x1

    if-nez v6, :cond_2

    .line 58040
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    .line 58041
    .end local v3
    .end local v6
    :cond_0
    const/4 v0, 0x3

    if-ne v5, v0, :cond_1

    :goto_2
    add-int/2addr v3, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    goto :goto_2

    .line 58042
    :cond_2
    const/16 v1, 0x40

    shl-int/lit8 v0, v5, 0x1

    add-int/2addr v0, v4

    shl-int v0, v2, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 58043
    .local v3, "coefNum":I
    if-le v5, v2, :cond_3

    .line 58044
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IN;->A04()I

    .line 58045
    :cond_3
    const/4 v0, 0x0

    .local v6, "i":I
    :goto_3
    if-ge v0, v1, :cond_0

    .line 58046
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IN;->A04()I

    .line 58047
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 58048
    .end local v4    # "matrixId":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 58049
    .end local p0    # "sizeId":I
    :cond_6
    return-void
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/IN;)V
    .locals 7

    .line 58050
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    move-result v6

    .line 58051
    .local p0, "numShortTermRefPicSets":I
    const/4 v5, 0x0

    .line 58052
    .local v6, "interRefPicSetPredictionFlag":Z
    const/4 v4, 0x0

    .line 58053
    .local v5, "previousNumDeltaPocs":I
    const/4 v3, 0x0

    .local v4, "stRpsIdx":I
    :goto_0
    if-ge v3, v6, :cond_5

    .line 58054
    if-eqz v3, :cond_0

    .line 58055
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IN;->A0B()Z

    move-result v5

    .line 58056
    :cond_0
    if-eqz v5, :cond_2

    .line 58057
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IN;->A07()V

    .line 58058
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    .line 58059
    const/4 v1, 0x0

    .local v3, "j":I
    :goto_1
    if-gt v1, v4, :cond_4

    .line 58060
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IN;->A0B()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58061
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IN;->A07()V

    .line 58062
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 58063
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    move-result v2

    .line 58064
    .local v3, "numNegativePics":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    move-result v1

    .line 58065
    .local v1, "numPositivePics":I
    add-int v4, v2, v1

    .line 58066
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v2, :cond_3

    .line 58067
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    .line 58068
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IN;->A07()V

    .line 58069
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 58070
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    if-ge v0, v1, :cond_4

    .line 58071
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    .line 58072
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IN;->A07()V

    .line 58073
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 58074
    .end local v3    # "numNegativePics":I
    .end local v1    # "numPositivePics":I
    .end local v0    # "i":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 58075
    .end local v4    # "stRpsIdx":I
    :cond_5
    return-void
.end method

.method private A08([BII)V
    .locals 1

    .line 58076
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A05:Z

    if-eqz v0, :cond_0

    .line 58077
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A03:Lcom/facebook/ads/redexgen/X/DR;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/DR;->A05([BII)V

    .line 58078
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A07:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/DS;->A03([BII)V

    .line 58079
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A09:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/DS;->A03([BII)V

    .line 58080
    return-void

    .line 58081
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A0A:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/DS;->A03([BII)V

    .line 58082
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A08:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/DS;->A03([BII)V

    .line 58083
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A06:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/DS;->A03([BII)V

    goto :goto_0
.end method


# virtual methods
.method public final A45(Lcom/facebook/ads/redexgen/X/IM;)V
    .locals 18

    move-object/from16 v5, p0

    .line 58084
    :cond_0
    move-object/from16 v2, p1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    if-lez v0, :cond_5

    .line 58085
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v8

    .line 58086
    .local p0, "offset":I
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v4

    .line 58087
    .local v9, "limit":I
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    .line 58088
    .local v0, "dataArray":[B
    iget-wide v6, v5, Lcom/facebook/ads/redexgen/X/Uy;->A01:J

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v6, v0

    iput-wide v6, v5, Lcom/facebook/ads/redexgen/X/Uy;->A01:J

    .line 58089
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/Uy;->A02:Lcom/facebook/ads/redexgen/X/CS;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/CS;->ADS(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 58090
    .end local p0    # "offset":I
    .local v0, "offset":I
    :goto_0
    if-ge v8, v4, :cond_0

    .line 58091
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Uy;->A0D:[Z

    invoke-static {v3, v8, v4, v0}, Lcom/facebook/ads/redexgen/X/II;->A04([BII[Z)I

    move-result v2

    .line 58092
    .local v12, "nalUnitOffset":I
    if-ne v2, v4, :cond_1

    .line 58093
    invoke-direct {v5, v3, v8, v4}, Lcom/facebook/ads/redexgen/X/Uy;->A08([BII)V

    .line 58094
    return-void

    .line 58095
    :cond_1
    invoke-static {v3, v2}, Lcom/facebook/ads/redexgen/X/II;->A00([BI)I

    move-result v15

    .line 58096
    .local v6, "nalUnitType":I
    sub-int v6, v2, v8

    .line 58097
    .local v14, "lengthToNalUnit":I
    if-lez v6, :cond_2

    .line 58098
    invoke-direct {v5, v3, v8, v2}, Lcom/facebook/ads/redexgen/X/Uy;->A08([BII)V

    .line 58099
    :cond_2
    sub-int v10, v4, v2

    .line 58100
    .local v1, "bytesWrittenPastPosition":I
    iget-wide v8, v5, Lcom/facebook/ads/redexgen/X/Uy;->A01:J

    int-to-long v0, v10

    sub-long/2addr v8, v0

    .line 58101
    .local v0, "absolutePosition":J
    if-gez v6, :cond_3

    neg-int v11, v6

    :goto_1
    iget-wide v12, v5, Lcom/facebook/ads/redexgen/X/Uy;->A00:J

    .line 58102
    move-object/from16 v7, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Uy;->A0F:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 58103
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    :cond_4
    sget-object v6, Lcom/facebook/ads/redexgen/X/Uy;->A0F:[Ljava/lang/String;

    const-string v1, "EA59COqGwDlSJKQTpKEUjX3Pdptia4xf"

    const/4 v0, 0x5

    aput-object v1, v6, v0

    invoke-direct/range {v7 .. v13}, Lcom/facebook/ads/redexgen/X/Uy;->A04(JIIJ)V

    .line 58104
    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/Uy;->A00:J

    move-object v11, v7

    move-wide v12, v8

    move v14, v10

    move-wide/from16 v16, v0

    invoke-direct/range {v11 .. v17}, Lcom/facebook/ads/redexgen/X/Uy;->A05(JIIJ)V

    .line 58105
    add-int/lit8 v8, v2, 0x3

    .line 58106
    .end local v12    # "nalUnitOffset":I
    .end local v6    # "nalUnitType":I
    .end local v14    # "lengthToNalUnit":I
    .end local v1    # "bytesWrittenPastPosition":I
    .end local v0    # "absolutePosition":J
    goto :goto_0

    .line 58107
    :cond_5
    return-void
.end method

.method public final A4S(Lcom/facebook/ads/redexgen/X/CI;Lcom/facebook/ads/redexgen/X/Da;)V
    .locals 2

    .line 58108
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A05()V

    .line 58109
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A04()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A04:Ljava/lang/String;

    .line 58110
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A03()I

    move-result v1

    const/4 v0, 0x2

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/CI;->AEO(II)Lcom/facebook/ads/redexgen/X/CS;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A02:Lcom/facebook/ads/redexgen/X/CS;

    .line 58111
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Uy;->A02:Lcom/facebook/ads/redexgen/X/CS;

    new-instance v0, Lcom/facebook/ads/redexgen/X/DR;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/DR;-><init>(Lcom/facebook/ads/redexgen/X/CS;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A03:Lcom/facebook/ads/redexgen/X/DR;

    .line 58112
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A0B:Lcom/facebook/ads/redexgen/X/DV;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/DV;->A04(Lcom/facebook/ads/redexgen/X/CI;Lcom/facebook/ads/redexgen/X/Da;)V

    .line 58113
    return-void
.end method

.method public final ACI()V
    .locals 0

    .line 58114
    return-void
.end method

.method public final ACJ(JZ)V
    .locals 0

    .line 58115
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Uy;->A00:J

    .line 58116
    return-void
.end method

.method public final ADW()V
    .locals 2

    .line 58117
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A0D:[Z

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/II;->A0C([Z)V

    .line 58118
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A0A:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DS;->A01()V

    .line 58119
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A08:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DS;->A01()V

    .line 58120
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A06:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DS;->A01()V

    .line 58121
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A07:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DS;->A01()V

    .line 58122
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A09:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DS;->A01()V

    .line 58123
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A03:Lcom/facebook/ads/redexgen/X/DR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DR;->A02()V

    .line 58124
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A01:J

    .line 58125
    return-void
.end method
