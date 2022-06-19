.class public final Lcom/facebook/ads/redexgen/X/GV;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/GP;,
        Lcom/facebook/ads/redexgen/X/GN;,
        Lcom/facebook/ads/redexgen/X/GT;,
        Lcom/facebook/ads/redexgen/X/GS;,
        Lcom/facebook/ads/redexgen/X/GR;,
        Lcom/facebook/ads/redexgen/X/GQ;,
        Lcom/facebook/ads/redexgen/X/GO;,
        Lcom/facebook/ads/redexgen/X/GU;
    }
.end annotation


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;

.field public static final A09:[B

.field public static final A0A:[B

.field public static final A0B:[B


# instance fields
.field public A00:Landroid/graphics/Bitmap;

.field public final A01:Landroid/graphics/Canvas;

.field public final A02:Landroid/graphics/Paint;

.field public final A03:Landroid/graphics/Paint;

.field public final A04:Lcom/facebook/ads/redexgen/X/GN;

.field public final A05:Lcom/facebook/ads/redexgen/X/GO;

.field public final A06:Lcom/facebook/ads/redexgen/X/GU;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 33932
    invoke-static {}, Lcom/facebook/ads/redexgen/X/GV;->A0B()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/GV;->A0A()V

    const/4 v1, 0x4

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/GV;->A09:[B

    .line 33933
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/ads/redexgen/X/GV;->A0A:[B

    .line 33934
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/facebook/ads/redexgen/X/GV;->A0B:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x7t
        0x8t
        0xft
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x77t
        -0x78t
        -0x1t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x11t
        0x22t
        0x33t
        0x44t
        0x55t
        0x66t
        0x77t
        -0x78t
        -0x67t
        -0x56t
        -0x45t
        -0x34t
        -0x23t
        -0x12t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 8

    .line 33935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33936
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/GV;->A02:Landroid/graphics/Paint;

    .line 33937
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/GV;->A02:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 33938
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/GV;->A02:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 33939
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GV;->A02:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 33940
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/GV;->A03:Landroid/graphics/Paint;

    .line 33941
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/GV;->A03:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 33942
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/GV;->A03:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 33943
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GV;->A03:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 33944
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/GV;->A01:Landroid/graphics/Canvas;

    .line 33945
    new-instance v1, Lcom/facebook/ads/redexgen/X/GO;

    const/16 v2, 0x2cf

    const/16 v3, 0x23f

    const/4 v4, 0x0

    const/16 v5, 0x2cf

    const/4 v6, 0x0

    const/16 v7, 0x23f

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/GO;-><init>(IIIIII)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/GV;->A05:Lcom/facebook/ads/redexgen/X/GO;

    .line 33946
    invoke-static {}, Lcom/facebook/ads/redexgen/X/GV;->A0G()[I

    move-result-object v3

    .line 33947
    invoke-static {}, Lcom/facebook/ads/redexgen/X/GV;->A0H()[I

    move-result-object v2

    .line 33948
    invoke-static {}, Lcom/facebook/ads/redexgen/X/GV;->A0I()[I

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/GN;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/GN;-><init>(I[I[I[I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/GV;->A04:Lcom/facebook/ads/redexgen/X/GN;

    .line 33949
    new-instance v0, Lcom/facebook/ads/redexgen/X/GU;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/GU;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/GV;->A06:Lcom/facebook/ads/redexgen/X/GU;

    .line 33950
    return-void
.end method

.method public static A00(IIII)I
    .locals 1

    .line 33951
    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 v0, p1, 0x10

    or-int/2addr p0, v0

    shl-int/lit8 v0, p2, 0x8

    or-int/2addr p0, v0

    or-int/2addr p0, p3

    return p0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/IL;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I
    .locals 14

    move/from16 v2, p3

    .line 33952
    const/4 v7, 0x0

    .line 33953
    .end local v7
    .local p2, "endOfPixelCodeString":Z
    .local v7, "column":I
    :cond_0
    const/4 v4, 0x0

    .line 33954
    .local v2, "runLength":I
    const/4 v6, 0x0

    .line 33955
    .local v3, "clutIndex":I
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    .line 33956
    .local v2, "peek":I
    if-eqz v0, :cond_3

    .line 33957
    const/4 v4, 0x1

    .line 33958
    .end local p2    # "endOfPixelCodeString":Z
    .end local v2    # "peek":I
    .end local v3    # "clutIndex":I
    .local v4, "runLength":I
    .local v6, "clutIndex":I
    .local v5, "endOfPixelCodeString":Z
    :goto_0
    if-eqz v4, :cond_2

    move-object/from16 v1, p5

    if-eqz v1, :cond_2

    .line 33959
    if-eqz p2, :cond_1

    aget-byte v0, p2, v0

    :cond_1
    aget v0, p1, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 33960
    int-to-float v9, v2

    move/from16 v3, p4

    int-to-float v10, v3

    add-int v0, v2, v4

    int-to-float v11, v0

    add-int/lit8 v0, v3, 0x1

    int-to-float v12, v0

    move-object v13, v1

    move-object/from16 v8, p6

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 33961
    :cond_2
    add-int/2addr v2, v4

    .line 33962
    .end local v2
    .end local v4    # "runLength":I
    .end local v6    # "clutIndex":I
    if-eqz v7, :cond_0

    .line 33963
    return v2

    .line 33964
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    const/4 v3, 0x3

    if-eqz v0, :cond_4

    .line 33965
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    add-int/lit8 v4, v0, 0x3

    .line 33966
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    goto :goto_0

    .line 33967
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 33968
    const/4 v4, 0x1

    move v0, v6

    goto :goto_0

    .line 33969
    :cond_5
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    if-eq v1, v0, :cond_8

    if-eq v1, v5, :cond_7

    if-eq v1, v3, :cond_6

    move v0, v6

    goto :goto_0

    .line 33970
    :cond_6
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    add-int/lit8 v4, v0, 0x1d

    .line 33971
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    goto :goto_0

    .line 33972
    :cond_7
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    add-int/lit8 v4, v0, 0xc

    .line 33973
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    .line 33974
    goto :goto_0

    .line 33975
    :cond_8
    const/4 v4, 0x2

    .line 33976
    move v0, v6

    goto :goto_0

    .line 33977
    :cond_9
    const/4 v7, 0x1

    .line 33978
    move v0, v6

    goto :goto_0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/IL;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I
    .locals 15

    move/from16 v3, p3

    .line 33979
    const/4 v8, 0x0

    .line 33980
    .end local v8
    .local p2, "endOfPixelCodeString":Z
    .local v8, "column":I
    :cond_0
    const/4 v5, 0x0

    .line 33981
    .local v3, "runLength":I
    const/4 v7, 0x0

    .line 33982
    .local v2, "clutIndex":I
    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    .line 33983
    .local v9, "peek":I
    if-eqz v0, :cond_3

    .line 33984
    const/4 v5, 0x1

    .line 33985
    .end local p2    # "endOfPixelCodeString":Z
    .end local v3    # "runLength":I
    .end local v2    # "clutIndex":I
    .end local v9    # "peek":I
    .local v3, "runLength":I
    .local v5, "clutIndex":I
    .local v7, "endOfPixelCodeString":Z
    .local v6, "peek":I
    :goto_0
    if-eqz v5, :cond_2

    move-object/from16 v1, p5

    if-eqz v1, :cond_2

    .line 33986
    if-eqz p2, :cond_1

    aget-byte v0, p2, v0

    :cond_1
    aget v0, p1, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 33987
    int-to-float v10, v3

    move/from16 v2, p4

    int-to-float v11, v2

    add-int v0, v3, v5

    int-to-float v12, v0

    add-int/lit8 v0, v2, 0x1

    int-to-float v13, v0

    move-object v14, v1

    move-object/from16 v9, p6

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 33988
    :cond_2
    add-int/2addr v3, v5

    .line 33989
    .end local v3    # "runLength":I
    .end local v5    # "clutIndex":I
    .end local v6    # "peek":I
    if-eqz v8, :cond_0

    .line 33990
    return v3

    .line 33991
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    const/4 v4, 0x3

    if-nez v0, :cond_5

    .line 33992
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    .line 33993
    if-eqz v0, :cond_4

    .line 33994
    add-int/lit8 v5, v0, 0x2

    .line 33995
    const/4 v0, 0x0

    goto :goto_0

    .line 33996
    :cond_4
    const/4 v8, 0x1

    move v0, v7

    goto :goto_0

    .line 33997
    :cond_5
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_6

    .line 33998
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    add-int/lit8 v5, v0, 0x4

    .line 33999
    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    goto :goto_0

    .line 34000
    :cond_6
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    if-eq v1, v0, :cond_9

    if-eq v1, v2, :cond_8

    if-eq v1, v4, :cond_7

    move v0, v7

    goto :goto_0

    .line 34001
    :cond_7
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    add-int/lit8 v5, v0, 0x19

    .line 34002
    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    goto :goto_0

    .line 34003
    :cond_8
    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    add-int/lit8 v5, v0, 0x9

    .line 34004
    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    .line 34005
    goto :goto_0

    .line 34006
    :cond_9
    const/4 v5, 0x2

    .line 34007
    move v0, v7

    goto :goto_0

    .line 34008
    :cond_a
    const/4 v5, 0x1

    .line 34009
    move v0, v7

    goto :goto_0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/IL;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I
    .locals 14
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move/from16 v3, p3

    .line 34010
    const/4 v7, 0x0

    .line 34011
    .end local v7
    .local p2, "endOfPixelCodeString":Z
    .local v7, "column":I
    :cond_0
    const/4 v6, 0x0

    .line 34012
    .local v3, "runLength":I
    const/4 v5, 0x0

    .line 34013
    .local v2, "clutIndex":I
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    .line 34014
    .local v8, "peek":I
    if-eqz v0, :cond_3

    .line 34015
    const/4 v4, 0x1

    .line 34016
    .end local p2    # "endOfPixelCodeString":Z
    .end local v3    # "runLength":I
    .end local v2    # "clutIndex":I
    .end local v8    # "peek":I
    .local v3, "runLength":I
    .local v6, "clutIndex":I
    .local v5, "endOfPixelCodeString":Z
    .local v2, "peek":I
    :goto_0
    if-eqz v4, :cond_2

    move-object/from16 v1, p5

    if-eqz v1, :cond_2

    .line 34017
    if-eqz p2, :cond_1

    aget-byte v0, p2, v0

    :cond_1
    aget v0, p1, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 34018
    int-to-float v9, v3

    move/from16 v2, p4

    int-to-float v10, v2

    add-int v0, v3, v4

    int-to-float v11, v0

    add-int/lit8 v0, v2, 0x1

    int-to-float v12, v0

    move-object v13, v1

    move-object/from16 v8, p6

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 34019
    :cond_2
    add-int/2addr v3, v4

    .line 34020
    .end local v3    # "runLength":I
    .end local v6    # "clutIndex":I
    .end local v2    # "peek":I
    if-eqz v7, :cond_0

    .line 34021
    return v3

    .line 34022
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v1

    const/4 v0, 0x7

    if-nez v1, :cond_5

    .line 34023
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4d

    if-eq v1, v0, :cond_6

    .line 34024
    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const-string v1, "cZHTHVMlnPMERuEB9g2LoGTZ677WilYR"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v4, :cond_4

    .line 34025
    const/4 v0, 0x0

    goto :goto_0

    .line 34026
    :cond_4
    const/4 v7, 0x1

    move v4, v6

    move v0, v5

    goto :goto_0

    .line 34027
    :cond_5
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v4

    .line 34028
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/IL;I)Lcom/facebook/ads/redexgen/X/GN;
    .locals 17

    .line 34029
    const/16 v3, 0x8

    move-object/from16 v8, p0

    invoke-virtual {v8, v3}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v11

    .line 34030
    .local v8, "clutId":I
    invoke-virtual {v8, v3}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 34031
    add-int/lit8 v16, p1, -0x2

    .line 34032
    .local v3, "remainingLength":I
    invoke-static {}, Lcom/facebook/ads/redexgen/X/GV;->A0G()[I

    move-result-object v10

    .line 34033
    .local v11, "clutEntries2Bit":[I
    invoke-static {}, Lcom/facebook/ads/redexgen/X/GV;->A0H()[I

    move-result-object v7

    .line 34034
    .local v16, "clutEntries4Bit":[I
    invoke-static {}, Lcom/facebook/ads/redexgen/X/GV;->A0I()[I

    move-result-object v6

    .line 34035
    .local v10, "clutEntries8Bit":[I
    :goto_0
    if-lez v16, :cond_6

    .line 34036
    invoke-virtual {v8, v3}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result p1

    .line 34037
    .local v7, "entryId":I
    invoke-virtual {v8, v3}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v4

    .line 34038
    .local v6, "entryFlags":I
    add-int/lit8 v13, v16, -0x2

    .line 34039
    and-int/lit16 v0, v4, 0x80

    if-eqz v0, :cond_3

    .line 34040
    move-object/from16 p0, v10

    .line 34041
    .local p1, "clutEntries":[I
    .restart local p1    # "clutEntries":[I
    :goto_1
    and-int/lit8 v0, v4, 0x1

    if-eqz v0, :cond_1

    .line 34042
    invoke-virtual {v8, v3}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v9

    .line 34043
    .local v4, "y":I
    invoke-virtual {v8, v3}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v15

    .line 34044
    .local v13, "cr":I
    invoke-virtual {v8, v3}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v12

    .line 34045
    .local v0, "cb":I
    invoke-virtual {v8, v3}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    .line 34046
    .local p0, "t":I
    add-int/lit8 v16, v13, -0x4

    .line 34047
    .end local v13    # "cr":I
    .local v4, "y":I
    .restart local v0    # "cb":I
    .local p0, "t":I
    :goto_2
    if-nez v9, :cond_0

    .line 34048
    const/4 v15, 0x0

    .line 34049
    const/4 v12, 0x0

    .line 34050
    const/16 v0, 0xff

    .line 34051
    :cond_0
    and-int/lit16 v0, v0, 0xff

    rsub-int v0, v0, 0xff

    int-to-byte v5, v0

    .line 34052
    .local v13, "a":I
    .end local v8    # "clutId":I
    .local v15, "clutId":I
    int-to-double v0, v9

    const-wide v13, 0x3ff66e978d4fdf3bL    # 1.402

    add-int/lit8 v2, v15, -0x80

    .end local v3    # "remainingLength":I
    .end local v11    # "clutEntries2Bit":[I
    .local v16, "clutEntries2Bit":[I
    .local v15, "remainingLength":I
    int-to-double v2, v2

    mul-double/2addr v2, v13

    add-double/2addr v0, v2

    double-to-int v4, v0

    .line 34053
    .local p1, "r":I
    int-to-double v2, v9

    const-wide v13, 0x3fd60663c74fb54aL    # 0.34414

    add-int/lit8 v0, v12, -0x80

    .end local v16    # "clutEntries2Bit":[I
    .local v9, "clutEntries4Bit":[I
    int-to-double v0, v0

    mul-double/2addr v0, v13

    sub-double/2addr v2, v0

    add-int/lit8 v0, v15, -0x80

    int-to-double v0, v0

    const-wide v13, 0x3fe6da3c21187e7cL    # 0.71414

    mul-double/2addr v0, v13

    sub-double/2addr v2, v0

    double-to-int v13, v2

    .line 34054
    .local v8, "g":I
    int-to-double v2, v9

    const-wide v14, 0x3ffc5a1cac083127L    # 1.772

    add-int/lit8 v0, v12, -0x80

    .end local v0    # "cb":I
    .end local p0    # "t":I
    .local v0, "t":I
    .local v0, "cb":I
    int-to-double v0, v0

    mul-double/2addr v0, v14

    add-double/2addr v2, v0

    double-to-int v9, v2

    .line 34055
    .local v3, "b":I
    const/4 v3, 0x0

    const/16 v0, 0xff

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A06(III)I

    move-result v2

    .line 34056
    invoke-static {v13, v3, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A06(III)I

    move-result v1

    .line 34057
    invoke-static {v9, v3, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A06(III)I

    move-result v0

    .line 34058
    invoke-static {v5, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/GV;->A00(IIII)I

    move-result v0

    aput v0, p0, p1

    .line 34059
    .end local p1    # "r":I
    .end local v8    # "g":I
    .end local v3    # "b":I
    .end local v7    # "entryId":I
    .end local v6    # "entryFlags":I
    .end local p1
    .end local v4    # "y":I
    .end local v13    # "a":I
    .end local v0    # "cb":I
    .end local v0
    .end local v0
    const/16 v3, 0x8

    goto :goto_0

    .line 34060
    .end local v4
    .end local v13
    .end local v0
    .end local p0
    :cond_1
    const/4 v0, 0x6

    invoke-virtual {v8, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v9

    sget-object v1, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const-string v1, "kepnC9"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v1, 0x2

    shl-int/2addr v9, v1

    .line 34061
    .local v13, "y":I
    const/4 v0, 0x4

    invoke-virtual {v8, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v15

    shl-int/2addr v15, v0

    .line 34062
    .local v0, "cr":I
    invoke-virtual {v8, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    shl-int/lit8 v12, v0, 0x4

    .line 34063
    .local p0, "cb":I
    invoke-virtual {v8, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x6

    .line 34064
    .local v4, "t":I
    add-int/lit8 v16, v13, -0x2

    goto/16 :goto_2

    .line 34065
    .end local p1
    :cond_3
    and-int/lit8 v5, v4, 0x40

    sget-object v1, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4d

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const-string v1, "3E78sJeiD4C852NvrY"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v5, :cond_5

    .line 34066
    :goto_3
    move-object/from16 p0, v7

    .restart local p1    # "r":I
    goto/16 :goto_1

    :cond_4
    if-eqz v5, :cond_5

    goto :goto_3

    .line 34067
    .end local p1    # "r":I
    :cond_5
    move-object/from16 p0, v6

    goto/16 :goto_1

    .line 34068
    .end local v9    # "clutEntries4Bit":[I
    .end local v15    # "remainingLength":I
    .end local v16
    .end local v15
    .local v8, "clutId":I
    .local v3, "remainingLength":I
    .restart local v11    # "clutEntries2Bit":[I
    .restart local v16    # "clutEntries2Bit":[I
    :cond_6
    new-instance v0, Lcom/facebook/ads/redexgen/X/GN;

    invoke-direct {v0, v11, v10, v7, v6}, Lcom/facebook/ads/redexgen/X/GN;-><init>(I[I[I[I)V

    return-object v0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/IL;)Lcom/facebook/ads/redexgen/X/GO;
    .locals 7

    .line 34069
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 34070
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v1

    .line 34071
    .local p0, "displayWindowFlag":Z
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 34072
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v2

    .line 34073
    .local v6, "width":I
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v3

    .line 34074
    .local p0, "height":I
    if-eqz v1, :cond_0

    .line 34075
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v4

    .line 34076
    .local v1, "horizontalPositionMinimum":I
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v5

    .line 34077
    .local v0, "horizontalPositionMaximum":I
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v6

    .line 34078
    .local v0, "verticalPositionMinimum":I
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result p0

    .line 34079
    .local v0, "verticalPositionMaximum":I
    .end local v1    # "horizontalPositionMinimum":I
    .end local v0    # "verticalPositionMaximum":I
    .local p0, "horizontalPositionMaximum":I
    .local v4, "verticalPositionMinimum":I
    .local v5, "verticalPositionMaximum":I
    :goto_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/GO;

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/GO;-><init>(IIIIII)V

    return-object v1

    .line 34080
    .end local v0
    .end local v1
    .end local v0
    .end local v0
    :cond_0
    const/4 v4, 0x0

    .line 34081
    .local v0, "horizontalPositionMinimum":I
    .local v1, "horizontalPositionMaximum":I
    const/4 v6, 0x0

    .line 34082
    .local v0, "verticalPositionMinimum":I
    move v5, v2

    move p0, v3

    goto :goto_0
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/IL;)Lcom/facebook/ads/redexgen/X/GP;
    .locals 7

    .line 34083
    const/16 v6, 0x10

    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v5

    .line 34084
    .local v6, "objectId":I
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 34085
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v1

    .line 34086
    .local v5, "objectCodingMethod":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v4

    .line 34087
    .local v0, "nonModifyingColorFlag":Z
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 34088
    const/4 v3, 0x0

    .line 34089
    .local v1, "topFieldData":[B
    const/4 v2, 0x0

    .line 34090
    .local v4, "bottomFieldData":[B
    if-ne v1, v0, :cond_1

    .line 34091
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    .line 34092
    .local p0, "numberOfCodes":I
    mul-int/lit8 v0, v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 34093
    .end local p0    # "numberOfCodes":I
    :cond_0
    :goto_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/GP;

    invoke-direct {v0, v5, v4, v3, v2}, Lcom/facebook/ads/redexgen/X/GP;-><init>(IZ[B[B)V

    return-object v0

    .line 34094
    :cond_1
    if-nez v1, :cond_0

    .line 34095
    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v2

    .line 34096
    .local v0, "topFieldDataLength":I
    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v1

    .line 34097
    .local p0, "bottomFieldDataLength":I
    const/4 v0, 0x0

    if-lez v2, :cond_2

    .line 34098
    new-array v3, v2, [B

    .line 34099
    invoke-virtual {p0, v3, v0, v2}, Lcom/facebook/ads/redexgen/X/IL;->A0F([BII)V

    .line 34100
    :cond_2
    if-lez v1, :cond_3

    .line 34101
    new-array v2, v1, [B

    .line 34102
    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A0F([BII)V

    goto :goto_0

    .line 34103
    :cond_3
    move-object v2, v3

    goto :goto_0
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/IL;I)Lcom/facebook/ads/redexgen/X/GQ;
    .locals 10

    .line 34104
    const/16 v9, 0x8

    invoke-virtual {p0, v9}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v8

    .line 34105
    .local p1, "timeoutSecs":I
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v7

    .line 34106
    .local v9, "version":I
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v6

    .line 34107
    .local v0, "state":I
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 34108
    add-int/lit8 v5, p1, -0x2

    .line 34109
    .local v8, "remainingLength":I
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 34110
    .local v7, "regions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/text/dvb/DvbParser$PageRegion;>;"
    :goto_0
    if-lez v5, :cond_0

    .line 34111
    invoke-virtual {p0, v9}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v3

    .line 34112
    .local v0, "regionId":I
    invoke-virtual {p0, v9}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 34113
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v2

    .line 34114
    .local v5, "regionHorizontalAddress":I
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v1

    .line 34115
    .local v6, "regionVerticalAddress":I
    add-int/lit8 v5, v5, -0x6

    .line 34116
    new-instance v0, Lcom/facebook/ads/redexgen/X/GR;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/GR;-><init>(II)V

    invoke-virtual {v4, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34117
    .end local v0    # "regionId":I
    .end local v6    # "regionVerticalAddress":I
    .end local v5    # "regionHorizontalAddress":I
    goto :goto_0

    .line 34118
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/GQ;

    invoke-direct {v0, v8, v7, v6, v4}, Lcom/facebook/ads/redexgen/X/GQ;-><init>(IIILandroid/util/SparseArray;)V

    return-object v0
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/IL;I)Lcom/facebook/ads/redexgen/X/GS;
    .locals 25

    .line 34119
    const/16 v1, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v10

    .line 34120
    .local v16, "id":I
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 34121
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v11

    .line 34122
    .local v17, "fillFlag":Z
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 34123
    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v12

    .line 34124
    .local v18, "width":I
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v13

    .line 34125
    .local v19, "height":I
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v14

    .line 34126
    .local v9, "levelOfCompatibility":I
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v15

    .line 34127
    .local v8, "depth":I
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 34128
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v16

    .line 34129
    .local v8, "clutId":I
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v17

    .line 34130
    .local v9, "pixelCode8Bit":I
    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v18

    .line 34131
    .local v7, "pixelCode4Bit":I
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v19

    .line 34132
    .local v6, "pixelCode2Bit":I
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 34133
    add-int/lit8 v9, p1, -0xa

    .line 34134
    .local v4, "remainingLength":I
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 34135
    .end local v4    # "remainingLength":I
    .local v2, "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/text/dvb/DvbParser$RegionObject;>;"
    .local v22, "remainingLength":I
    :goto_0
    if-lez v9, :cond_2

    .line 34136
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v7

    .line 34137
    .local v4, "objectId":I
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v6

    .line 34138
    .local v15, "objectType":I
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v22

    .line 34139
    .local v5, "objectProvider":I
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v23

    .line 34140
    .local v23, "objectHorizontalPosition":I
    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 34141
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v24

    .line 34142
    .local v24, "objectVerticalPosition":I
    add-int/lit8 v9, v9, -0x6

    .line 34143
    const/16 p0, 0x0

    .line 34144
    .local v11, "foregroundPixelCode":I
    const/16 p1, 0x0

    .line 34145
    .local v2, "backgroundPixelCode":I
    const/4 v5, 0x1

    if-eq v6, v5, :cond_0

    if-ne v6, v2, :cond_1

    .line 34146
    :cond_0
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result p0

    .line 34147
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result p1

    .line 34148
    add-int/lit8 v9, v9, -0x2

    .line 34149
    .end local v11    # "foregroundPixelCode":I
    .end local v2    # "backgroundPixelCode":I
    .local v22, "foregroundPixelCode":I
    .local v9, "backgroundPixelCode":I
    .local p0, "remainingLength":I
    :cond_1
    new-instance v20, Lcom/facebook/ads/redexgen/X/GT;

    move-object/from16 v1, v20

    .end local v15    # "objectType":I
    .local p1, "objectType":I
    move/from16 v21, v6

    invoke-direct/range {v20 .. v26}, Lcom/facebook/ads/redexgen/X/GT;-><init>(IIIIII)V

    invoke-virtual {v8, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34150
    .end local v4    # "objectId":I
    .end local v22    # "foregroundPixelCode":I
    .end local v5    # "objectProvider":I
    .end local v23    # "objectHorizontalPosition":I
    .end local v24    # "objectVerticalPosition":I
    .end local v9    # "backgroundPixelCode":I
    .end local p1    # "objectType":I
    const/16 v1, 0x8

    goto :goto_0

    .line 34151
    .end local p0    # "remainingLength":I
    .local v22, "remainingLength":I
    :cond_2
    new-instance v9, Lcom/facebook/ads/redexgen/X/GS;

    .end local v2
    .local v5, "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/text/dvb/DvbParser$RegionObject;>;"
    move-object/from16 v20, v8

    invoke-direct/range {v9 .. v20}, Lcom/facebook/ads/redexgen/X/GS;-><init>(IZIIIIIIIILandroid/util/SparseArray;)V

    return-object v9
.end method

.method public static A09(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/GV;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3e

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0A()V
    .locals 1

    const/16 v0, 0x28

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/GV;->A07:[B

    return-void

    :array_0
    .array-data 1
        -0x2ft
        -0x12t
        0x1t
        -0x12t
        -0x53t
        -0xdt
        -0xat
        -0xet
        -0x7t
        -0xft
        -0x53t
        -0x7t
        -0xet
        -0x5t
        -0xct
        0x1t
        -0xbt
        -0x53t
        -0xet
        0x5t
        -0x10t
        -0xet
        -0xet
        -0xft
        0x0t
        -0x53t
        -0x7t
        -0xat
        -0x6t
        -0xat
        0x1t
        -0x13t
        0x1ft
        0xbt
        -0x7t
        0xat
        0x1bt
        0x1ct
        0xet
        0x1bt
    .end array-data
.end method

.method public static A0B()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "TSjH0oFxm9Zmjblf20H7XLH29PYnvNfc"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ifQcEGKeoyTNTO6NcXC1uuTRigVNLPix"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "JxfLOGU"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ppEmUxdAMffzNXALpeqe4nVWGqGuK6Ut"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "NuZ4L9"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "YdOZl8JD24dnVt23O4"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "qvkMCiDgkfzw0QVaX"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "LHqERg89RiNVOXp5CnoYbW8VzqzzVNoA"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    return-void
.end method

.method public static A0C(Lcom/facebook/ads/redexgen/X/GP;Lcom/facebook/ads/redexgen/X/GN;IIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 7

    .line 34152
    const/4 v0, 0x3

    move v2, p2

    if-ne v2, v0, :cond_0

    .line 34153
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/GN;->A03:[I

    .line 34154
    .local p0, "clutEntries":[I
    .restart local p0    # "clutEntries":[I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GP;->A03:[B

    move-object v6, p6

    move-object v5, p5

    move v4, p4

    move v3, p3

    invoke-static/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/GV;->A0E([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 34155
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GP;->A02:[B

    add-int/lit8 v4, v4, 0x1

    invoke-static/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/GV;->A0E([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 34156
    return-void

    .line 34157
    .end local p0    # "clutEntries":[I
    :cond_0
    const/4 v0, 0x2

    if-ne v2, v0, :cond_1

    .line 34158
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/GN;->A02:[I

    .restart local p0    # "clutEntries":[I
    goto :goto_0

    .line 34159
    .end local p0    # "clutEntries":[I
    :cond_1
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/GN;->A01:[I

    goto :goto_0
.end method

.method public static A0D(Lcom/facebook/ads/redexgen/X/IL;Lcom/facebook/ads/redexgen/X/GU;)V
    .locals 6

    .line 34160
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v5

    .line 34161
    .local p0, "segmentType":I
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v4

    .line 34162
    .local v0, "pageId":I
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v2

    .line 34163
    .local p1, "dataFieldLength":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IL;->A03()I

    move-result v3

    add-int/2addr v3, v2

    .line 34164
    .local v5, "dataFieldLimit":I
    mul-int/lit8 v1, v2, 0x8

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IL;->A02()I

    move-result v0

    if-le v1, v0, :cond_0

    .line 34165
    const/16 v2, 0x1f

    const/16 v1, 0x9

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/GV;->A09(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x1f

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/GV;->A09(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34166
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IL;->A02()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 34167
    return-void

    .line 34168
    :cond_0
    packed-switch v5, :pswitch_data_0

    .line 34169
    .end local v0    # "pageId":I
    .end local v4
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IL;->A03()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/IL;->A0A(I)V

    .line 34170
    return-void

    .line 34171
    .end local v0
    :pswitch_0
    iget v0, p1, Lcom/facebook/ads/redexgen/X/GU;->A03:I

    if-ne v4, v0, :cond_1

    .line 34172
    iget-object v5, p1, Lcom/facebook/ads/redexgen/X/GU;->A01:Lcom/facebook/ads/redexgen/X/GQ;

    .line 34173
    .local v0, "current":Lcom/facebook/ads/redexgen/X/GQ;
    invoke-static {p0, v2}, Lcom/facebook/ads/redexgen/X/GV;->A07(Lcom/facebook/ads/redexgen/X/IL;I)Lcom/facebook/ads/redexgen/X/GQ;

    move-result-object v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4d

    if-eq v1, v0, :cond_6

    .line 34174
    .local v4, "pageComposition":Lcom/facebook/ads/redexgen/X/GQ;
    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const-string v1, "BYOwYsR16MJG2zHj4M8CidP9wqX1PBCc"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget v0, v4, Lcom/facebook/ads/redexgen/X/GQ;->A00:I

    if-eqz v0, :cond_2

    .line 34175
    iput-object v4, p1, Lcom/facebook/ads/redexgen/X/GU;->A01:Lcom/facebook/ads/redexgen/X/GQ;

    .line 34176
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/GU;->A08:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 34177
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/GU;->A06:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 34178
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/GU;->A07:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_0

    .line 34179
    :cond_2
    if-eqz v5, :cond_1

    iget v1, v5, Lcom/facebook/ads/redexgen/X/GQ;->A02:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/GQ;->A02:I

    if-eq v1, v0, :cond_1

    .line 34180
    iput-object v4, p1, Lcom/facebook/ads/redexgen/X/GU;->A01:Lcom/facebook/ads/redexgen/X/GQ;

    goto :goto_0

    .line 34181
    :pswitch_1
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/GU;->A01:Lcom/facebook/ads/redexgen/X/GQ;

    .line 34182
    .local v0, "pageComposition":Lcom/facebook/ads/redexgen/X/GQ;
    iget v0, p1, Lcom/facebook/ads/redexgen/X/GU;->A03:I

    if-ne v4, v0, :cond_1

    if-eqz v1, :cond_1

    .line 34183
    invoke-static {p0, v2}, Lcom/facebook/ads/redexgen/X/GV;->A08(Lcom/facebook/ads/redexgen/X/IL;I)Lcom/facebook/ads/redexgen/X/GS;

    move-result-object v2

    .line 34184
    .local v4, "regionComposition":Lcom/facebook/ads/redexgen/X/GS;
    iget v0, v1, Lcom/facebook/ads/redexgen/X/GQ;->A00:I

    if-nez v0, :cond_3

    .line 34185
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/GU;->A08:Landroid/util/SparseArray;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/GS;->A03:I

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/GS;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/GS;->A00(Lcom/facebook/ads/redexgen/X/GS;)V

    .line 34186
    :cond_3
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/GU;->A08:Landroid/util/SparseArray;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/GS;->A03:I

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34187
    .end local v4    # "regionComposition":Lcom/facebook/ads/redexgen/X/GS;
    goto :goto_0

    .line 34188
    :pswitch_2
    iget v0, p1, Lcom/facebook/ads/redexgen/X/GU;->A03:I

    if-ne v4, v0, :cond_4

    .line 34189
    invoke-static {p0, v2}, Lcom/facebook/ads/redexgen/X/GV;->A04(Lcom/facebook/ads/redexgen/X/IL;I)Lcom/facebook/ads/redexgen/X/GN;

    move-result-object v2

    .line 34190
    .local v0, "clutDefinition":Lcom/facebook/ads/redexgen/X/GN;
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/GU;->A06:Landroid/util/SparseArray;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/GN;->A00:I

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .end local v0    # "clutDefinition":Lcom/facebook/ads/redexgen/X/GN;
    goto :goto_0

    .line 34191
    :cond_4
    iget v0, p1, Lcom/facebook/ads/redexgen/X/GU;->A02:I

    if-ne v4, v0, :cond_1

    .line 34192
    invoke-static {p0, v2}, Lcom/facebook/ads/redexgen/X/GV;->A04(Lcom/facebook/ads/redexgen/X/IL;I)Lcom/facebook/ads/redexgen/X/GN;

    move-result-object v2

    .line 34193
    .restart local v0    # "clutDefinition":Lcom/facebook/ads/redexgen/X/GN;
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/GU;->A04:Landroid/util/SparseArray;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/GN;->A00:I

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34194
    .end local v0    # "clutDefinition":Lcom/facebook/ads/redexgen/X/GN;
    goto/16 :goto_0

    .line 34195
    :pswitch_3
    iget v0, p1, Lcom/facebook/ads/redexgen/X/GU;->A03:I

    if-ne v4, v0, :cond_5

    .line 34196
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/GV;->A06(Lcom/facebook/ads/redexgen/X/IL;)Lcom/facebook/ads/redexgen/X/GP;

    move-result-object v2

    .line 34197
    .local v0, "objectData":Lcom/facebook/ads/redexgen/X/GP;
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/GU;->A07:Landroid/util/SparseArray;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/GP;->A00:I

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .end local v0    # "objectData":Lcom/facebook/ads/redexgen/X/GP;
    goto/16 :goto_0

    .line 34198
    :cond_5
    iget v0, p1, Lcom/facebook/ads/redexgen/X/GU;->A02:I

    if-ne v4, v0, :cond_1

    .line 34199
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/GV;->A06(Lcom/facebook/ads/redexgen/X/IL;)Lcom/facebook/ads/redexgen/X/GP;

    move-result-object v2

    .line 34200
    .restart local v0    # "objectData":Lcom/facebook/ads/redexgen/X/GP;
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/GU;->A05:Landroid/util/SparseArray;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/GP;->A00:I

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34201
    .end local v0    # "objectData":Lcom/facebook/ads/redexgen/X/GP;
    goto/16 :goto_0

    .line 34202
    :pswitch_4
    iget v0, p1, Lcom/facebook/ads/redexgen/X/GU;->A03:I

    if-ne v4, v0, :cond_1

    .line 34203
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/GV;->A05(Lcom/facebook/ads/redexgen/X/IL;)Lcom/facebook/ads/redexgen/X/GO;

    move-result-object v0

    iput-object v0, p1, Lcom/facebook/ads/redexgen/X/GU;->A00:Lcom/facebook/ads/redexgen/X/GO;

    goto/16 :goto_0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static A0E([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 13

    move/from16 v11, p4

    .line 34204
    new-instance v7, Lcom/facebook/ads/redexgen/X/IL;

    invoke-direct {v7, p0}, Lcom/facebook/ads/redexgen/X/IL;-><init>([B)V

    .line 34205
    .local v8, "data":Lcom/facebook/ads/redexgen/X/IL;
    .local p3, "column":I
    .local v11, "line":I
    const/4 v6, 0x0

    .line 34206
    .local v12, "clutMapTable2To4":[B
    const/4 v5, 0x0

    .line 34207
    .local p0, "clutMapTable2To8":[B
    const/4 v4, 0x0

    move/from16 v10, p3

    .line 34208
    .end local p3    # "column":I
    .end local v11    # "line":I
    .end local v12    # "clutMapTable2To4":[B
    .end local p0    # "clutMapTable2To8":[B
    .local p3, "clutMapTable4To8":[B
    .local v11, "clutMapTable2To4":[B
    .local v6, "clutMapTable2To8":[B
    .local v5, "column":I
    .local v4, "line":I
    :goto_0
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IL;->A02()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6a

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const-string v1, "eMTnYEjnQ7KEB4Tuh9"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_8

    .line 34209
    const/16 v2, 0x8

    invoke-virtual {v7, v2}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v1

    .line 34210
    .local v10, "dataType":I
    const/16 v0, 0xf0

    if-eq v1, v0, :cond_7

    const/4 v0, 0x3

    move-object/from16 v12, p5

    move v3, p2

    move-object/from16 p0, p6

    move-object v8, p1

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x4

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 34211
    .end local p3    # "clutMapTable4To8":[B
    .restart local v6    # "clutMapTable2To8":[B
    :pswitch_0
    invoke-static {v0, v0, v7}, Lcom/facebook/ads/redexgen/X/GV;->A0F(IILcom/facebook/ads/redexgen/X/IL;)[B

    move-result-object v6

    .line 34212
    .end local v11    # "clutMapTable2To4":[B
    .local p3, "clutMapTable2To4":[B
    goto :goto_0

    .line 34213
    .end local p3    # "clutMapTable2To4":[B
    .restart local v6    # "clutMapTable2To8":[B
    :pswitch_1
    invoke-static {v0, v2, v7}, Lcom/facebook/ads/redexgen/X/GV;->A0F(IILcom/facebook/ads/redexgen/X/IL;)[B

    move-result-object v5

    .line 34214
    .end local v6    # "clutMapTable2To8":[B
    .restart local p3    # "clutMapTable2To4":[B
    goto :goto_0

    .line 34215
    :pswitch_2
    const/16 v0, 0x10

    invoke-static {v0, v2, v7}, Lcom/facebook/ads/redexgen/X/GV;->A0F(IILcom/facebook/ads/redexgen/X/IL;)[B

    move-result-object v5

    .line 34216
    .end local v6
    .local p3, "clutMapTable2To8":[B
    goto :goto_0

    .line 34217
    .end local v11
    :pswitch_3
    if-ne v3, v0, :cond_2

    .line 34218
    if-nez v5, :cond_1

    sget-object v9, Lcom/facebook/ads/redexgen/X/GV;->A0A:[B

    .line 34219
    .local v11, "clutMapTable2ToX":[B
    :goto_1
    invoke-static/range {v7 .. v13}, Lcom/facebook/ads/redexgen/X/GV;->A01(Lcom/facebook/ads/redexgen/X/IL;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I

    move-result v10

    .line 34220
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IL;->A06()V

    .line 34221
    goto :goto_0

    .line 34222
    :cond_1
    move-object v9, v5

    goto :goto_1

    .line 34223
    .end local p3    # "clutMapTable2To8":[B
    :cond_2
    const/4 v0, 0x2

    if-ne v3, v0, :cond_4

    .line 34224
    if-nez v6, :cond_3

    sget-object v9, Lcom/facebook/ads/redexgen/X/GV;->A09:[B

    goto :goto_1

    :cond_3
    move-object v9, v6

    goto :goto_1

    .line 34225
    .end local p3
    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    .line 34226
    :pswitch_4
    if-ne v3, v0, :cond_6

    .line 34227
    if-nez v4, :cond_5

    sget-object v9, Lcom/facebook/ads/redexgen/X/GV;->A0B:[B

    .line 34228
    .local v11, "clutMapTable4ToX":[B
    :goto_2
    invoke-static/range {v7 .. v13}, Lcom/facebook/ads/redexgen/X/GV;->A02(Lcom/facebook/ads/redexgen/X/IL;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I

    move-result v10

    .line 34229
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IL;->A06()V

    .line 34230
    goto :goto_0

    .line 34231
    :cond_5
    move-object v9, v4

    goto :goto_2

    .line 34232
    .end local p3
    :cond_6
    const/4 v9, 0x0

    goto :goto_2

    .line 34233
    .end local p3
    .restart local v11    # "clutMapTable4ToX":[B
    :pswitch_5
    const/4 v9, 0x0

    invoke-static/range {v7 .. v13}, Lcom/facebook/ads/redexgen/X/GV;->A03(Lcom/facebook/ads/redexgen/X/IL;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I

    move-result v10

    .line 34234
    goto :goto_0

    .line 34235
    .end local v11    # "clutMapTable4ToX":[B
    :cond_7
    move/from16 v10, p3

    .line 34236
    add-int/lit8 v11, v11, 0x2

    .line 34237
    goto/16 :goto_0

    .line 34238
    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static A0F(IILcom/facebook/ads/redexgen/X/IL;)[B
    .locals 3

    .line 34239
    new-array v2, p0, [B

    .line 34240
    .local p0, "clutMapTable":[B
    const/4 v1, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 34241
    invoke-virtual {p2, p1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, v2, v1

    .line 34242
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34243
    .end local p1    # "i":I
    :cond_0
    return-object v2
.end method

.method public static A0G()[I
    .locals 3

    .line 34244
    const/4 v0, 0x4

    new-array v2, v0, [I

    .line 34245
    .local v0, "entries":[I
    const/4 v0, 0x0

    aput v0, v2, v0

    .line 34246
    const/4 v1, 0x1

    const/4 v0, -0x1

    aput v0, v2, v1

    .line 34247
    const/4 v1, 0x2

    const/high16 v0, -0x1000000

    aput v0, v2, v1

    .line 34248
    const/4 v1, 0x3

    const v0, -0x808081

    aput v0, v2, v1

    .line 34249
    return-object v2
.end method

.method public static A0H()[I
    .locals 8

    .line 34250
    const/16 v0, 0x10

    new-array v5, v0, [I

    .line 34251
    .local v0, "entries":[I
    const/4 v0, 0x0

    aput v0, v5, v0

    .line 34252
    const/4 v4, 0x1

    .local v0, "i":I
    :goto_0
    array-length v0, v5

    if-ge v4, v0, :cond_8

    .line 34253
    const/16 v0, 0x8

    const/16 v6, 0xff

    if-ge v4, v0, :cond_3

    .line 34254
    and-int/lit8 v0, v4, 0x1

    if-eqz v0, :cond_2

    const/16 v2, 0xff

    .line 34255
    :goto_1
    and-int/lit8 v0, v4, 0x2

    if-eqz v0, :cond_1

    const/16 v1, 0xff

    .line 34256
    :goto_2
    and-int/lit8 v0, v4, 0x4

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    .line 34257
    :goto_3
    invoke-static {v6, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/GV;->A00(IIII)I

    move-result v0

    aput v0, v5, v4

    .line 34258
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 34259
    :cond_0
    const/4 v0, 0x0

    goto :goto_3

    .line 34260
    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 34261
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 34262
    :cond_3
    and-int/lit8 v7, v4, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x30

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const-string v1, "YrTss75n4e1iPfdqhb5QzXElKZ9K1JMb"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/16 v3, 0x7f

    if-eqz v7, :cond_6

    const/16 v2, 0x7f

    .line 34263
    :goto_5
    and-int/lit8 v0, v4, 0x2

    if-eqz v0, :cond_5

    const/16 v1, 0x7f

    .line 34264
    :goto_6
    and-int/lit8 v0, v4, 0x4

    if-eqz v0, :cond_4

    .line 34265
    :goto_7
    invoke-static {v6, v2, v1, v3}, Lcom/facebook/ads/redexgen/X/GV;->A00(IIII)I

    move-result v0

    aput v0, v5, v4

    goto :goto_4

    .line 34266
    :cond_4
    const/4 v3, 0x0

    goto :goto_7

    .line 34267
    :cond_5
    const/4 v1, 0x0

    goto :goto_6

    .line 34268
    :cond_6
    const/4 v2, 0x0

    goto :goto_5

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 34269
    .end local v0    # "i":I
    :cond_8
    return-object v5
.end method

.method public static A0I()[I
    .locals 11

    .line 34270
    const/16 v0, 0x100

    new-array v5, v0, [I

    .line 34271
    .local v0, "entries":[I
    const/4 v0, 0x0

    aput v0, v5, v0

    .line 34272
    const/4 v4, 0x0

    .local v0, "i":I
    :goto_0
    array-length v0, v5

    if-ge v4, v0, :cond_24

    .line 34273
    const/16 v0, 0x8

    const/16 v6, 0xff

    if-ge v4, v0, :cond_3

    .line 34274
    const/16 v3, 0x3f

    .line 34275
    and-int/lit8 v0, v4, 0x1

    if-eqz v0, :cond_2

    const/16 v2, 0xff

    .line 34276
    :goto_1
    and-int/lit8 v0, v4, 0x2

    if-eqz v0, :cond_1

    const/16 v1, 0xff

    .line 34277
    :goto_2
    and-int/lit8 v0, v4, 0x4

    if-eqz v0, :cond_0

    .line 34278
    :goto_3
    invoke-static {v3, v2, v1, v6}, Lcom/facebook/ads/redexgen/X/GV;->A00(IIII)I

    move-result v0

    aput v0, v5, v4

    .line 34279
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 34280
    :cond_0
    const/4 v6, 0x0

    goto :goto_3

    .line 34281
    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 34282
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 34283
    :cond_3
    and-int/lit16 v1, v4, 0x88

    const/16 v10, 0xaa

    const/16 v3, 0x55

    if-eqz v1, :cond_13

    const/16 v7, 0x7f

    if-eq v1, v0, :cond_b

    const/16 v0, 0x80

    const/16 v8, 0x2b

    if-eq v1, v0, :cond_4

    const/16 v0, 0x88

    if-eq v1, v0, :cond_1b

    goto :goto_4

    .line 34284
    :cond_4
    and-int/lit8 v0, v4, 0x1

    if-eqz v0, :cond_a

    const/16 v2, 0x2b

    :goto_5
    add-int/2addr v2, v7

    and-int/lit8 v0, v4, 0x10

    if-eqz v0, :cond_9

    const/16 v0, 0x55

    :goto_6
    add-int/2addr v2, v0

    .line 34285
    and-int/lit8 v0, v4, 0x2

    if-eqz v0, :cond_8

    const/16 v1, 0x2b

    :goto_7
    add-int/2addr v1, v7

    and-int/lit8 v0, v4, 0x20

    if-eqz v0, :cond_7

    const/16 v0, 0x55

    :goto_8
    add-int/2addr v1, v0

    .line 34286
    and-int/lit8 v0, v4, 0x4

    if-eqz v0, :cond_6

    :goto_9
    add-int/2addr v8, v7

    and-int/lit8 v0, v4, 0x40

    if-eqz v0, :cond_5

    :goto_a
    add-int/2addr v8, v3

    .line 34287
    invoke-static {v6, v2, v1, v8}, Lcom/facebook/ads/redexgen/X/GV;->A00(IIII)I

    move-result v0

    aput v0, v5, v4

    .line 34288
    goto :goto_4

    .line 34289
    :cond_5
    const/4 v3, 0x0

    goto :goto_a

    :cond_6
    const/4 v8, 0x0

    goto :goto_9

    .line 34290
    :cond_7
    const/4 v0, 0x0

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    goto :goto_7

    .line 34291
    :cond_9
    const/4 v0, 0x0

    goto :goto_6

    :cond_a
    const/4 v2, 0x0

    goto :goto_5

    .line 34292
    :cond_b
    and-int/lit8 v0, v4, 0x1

    if-eqz v0, :cond_12

    const/16 v6, 0x55

    :goto_b
    and-int/lit8 v8, v4, 0x10

    sget-object v1, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6a

    if-eq v1, v0, :cond_10

    if-eqz v8, :cond_11

    :goto_c
    const/16 v0, 0xaa

    :goto_d
    add-int/2addr v6, v0

    .line 34293
    and-int/lit8 v0, v4, 0x2

    if-eqz v0, :cond_f

    const/16 v1, 0x55

    :goto_e
    and-int/lit8 v0, v4, 0x20

    if-eqz v0, :cond_e

    const/16 v0, 0xaa

    :goto_f
    add-int/2addr v1, v0

    .line 34294
    and-int/lit8 v0, v4, 0x4

    if-eqz v0, :cond_d

    :goto_10
    and-int/lit8 v0, v4, 0x40

    if-eqz v0, :cond_c

    :goto_11
    add-int/2addr v3, v10

    .line 34295
    invoke-static {v7, v6, v1, v3}, Lcom/facebook/ads/redexgen/X/GV;->A00(IIII)I

    move-result v0

    aput v0, v5, v4

    .line 34296
    goto/16 :goto_4

    .line 34297
    :cond_c
    const/4 v10, 0x0

    goto :goto_11

    :cond_d
    const/4 v3, 0x0

    goto :goto_10

    .line 34298
    :cond_e
    const/4 v0, 0x0

    goto :goto_f

    :cond_f
    const/4 v1, 0x0

    goto :goto_e

    :cond_10
    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const-string v1, "3Gc1rcH11AnkN1GUt"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v8, :cond_11

    goto :goto_c

    .line 34299
    :cond_11
    const/4 v0, 0x0

    goto :goto_d

    :cond_12
    const/4 v6, 0x0

    goto :goto_b

    .line 34300
    :cond_13
    and-int/lit8 v0, v4, 0x1

    if-eqz v0, :cond_18

    const/16 v9, 0x55

    :goto_12
    and-int/lit8 v0, v4, 0x10

    if-eqz v0, :cond_17

    const/16 v0, 0xaa

    :goto_13
    add-int/2addr v9, v0

    .line 34301
    and-int/lit8 v0, v4, 0x2

    if-eqz v0, :cond_16

    const/16 v8, 0x55

    :goto_14
    and-int/lit8 v7, v4, 0x20

    sget-object v1, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x30

    if-eq v1, v0, :cond_1c

    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const-string v1, "1lOJJEHbOTM7lGg93TwdUr1m3RIcKDwN"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v7, :cond_15

    const/16 v0, 0xaa

    :goto_15
    add-int/2addr v8, v0

    .line 34302
    and-int/lit8 v0, v4, 0x4

    if-eqz v0, :cond_14

    :goto_16
    and-int/lit8 v7, v4, 0x40

    sget-object v1, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_19

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_14
    const/4 v3, 0x0

    goto :goto_16

    .line 34303
    :cond_15
    const/4 v0, 0x0

    goto :goto_15

    :cond_16
    const/4 v8, 0x0

    goto :goto_14

    .line 34304
    :cond_17
    const/4 v0, 0x0

    goto :goto_13

    :cond_18
    const/4 v9, 0x0

    goto :goto_12

    :cond_19
    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const-string v1, "zbugcJNXZ6OTvut53z6xqMlsXopeKroD"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v7, :cond_1a

    .line 34305
    :goto_17
    add-int/2addr v3, v10

    .line 34306
    invoke-static {v6, v9, v8, v3}, Lcom/facebook/ads/redexgen/X/GV;->A00(IIII)I

    move-result v0

    aput v0, v5, v4

    .line 34307
    goto/16 :goto_4

    .line 34308
    :cond_1a
    const/4 v10, 0x0

    goto :goto_17

    .line 34309
    :cond_1b
    and-int/lit8 v0, v4, 0x1

    if-eqz v0, :cond_22

    const/16 v2, 0x2b

    :goto_18
    and-int/lit8 v0, v4, 0x10

    if-eqz v0, :cond_21

    const/16 v0, 0x55

    :goto_19
    add-int/2addr v2, v0

    .line 34310
    and-int/lit8 v0, v4, 0x2

    if-eqz v0, :cond_20

    const/16 v1, 0x2b

    :goto_1a
    and-int/lit8 v0, v4, 0x20

    if-eqz v0, :cond_1f

    const/16 v0, 0x55

    :goto_1b
    add-int/2addr v1, v0

    .line 34311
    and-int/lit8 v0, v4, 0x4

    if-eqz v0, :cond_1e

    :goto_1c
    and-int/lit8 v0, v4, 0x40

    if-eqz v0, :cond_1d

    :goto_1d
    add-int/2addr v8, v3

    .line 34312
    invoke-static {v6, v2, v1, v8}, Lcom/facebook/ads/redexgen/X/GV;->A00(IIII)I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6a

    if-eq v1, v0, :cond_23

    :cond_1c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 34313
    :cond_1d
    const/4 v3, 0x0

    goto :goto_1d

    :cond_1e
    const/4 v8, 0x0

    goto :goto_1c

    .line 34314
    :cond_1f
    const/4 v0, 0x0

    goto :goto_1b

    :cond_20
    const/4 v1, 0x0

    goto :goto_1a

    .line 34315
    :cond_21
    const/4 v0, 0x0

    goto :goto_19

    :cond_22
    const/4 v2, 0x0

    goto :goto_18

    :cond_23
    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const-string v1, "3PjveybLFvGwkdBIKMGApqn65UsQQogT"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    aput v3, v5, v4

    goto/16 :goto_4

    .line 34316
    .end local v0    # "i":I
    :cond_24
    return-object v5
.end method


# virtual methods
.method public final A0J([BI)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/GB;",
            ">;"
        }
    .end annotation

    .line 34317
    move-object/from16 v0, p0

    new-instance v5, Lcom/facebook/ads/redexgen/X/IL;

    move/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v5, v2, v1}, Lcom/facebook/ads/redexgen/X/IL;-><init>([BI)V

    .line 34318
    .local v2, "dataBitArray":Lcom/facebook/ads/redexgen/X/IL;
    :goto_0
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IL;->A02()I

    move-result v2

    const/16 v1, 0x30

    if-lt v2, v1, :cond_0

    const/16 v1, 0x8

    .line 34319
    invoke-virtual {v5, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v2

    const/16 v1, 0xf

    if-ne v2, v1, :cond_0

    .line 34320
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/GV;->A06:Lcom/facebook/ads/redexgen/X/GU;

    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v2, v2, v1

    const/4 v1, 0x5

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v1, 0x4d

    if-eq v2, v1, :cond_11

    sget-object v3, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const-string v2, "CrDt03efek4nAGHXYe"

    const/4 v1, 0x5

    aput-object v2, v3, v1

    invoke-static {v5, v4}, Lcom/facebook/ads/redexgen/X/GV;->A0D(Lcom/facebook/ads/redexgen/X/IL;Lcom/facebook/ads/redexgen/X/GU;)V

    goto :goto_0

    .line 34321
    :cond_0
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/GV;->A06:Lcom/facebook/ads/redexgen/X/GU;

    iget-object v4, v1, Lcom/facebook/ads/redexgen/X/GU;->A01:Lcom/facebook/ads/redexgen/X/GQ;

    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v2, v2, v1

    const/16 v1, 0x10

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v1, 0x30

    if-eq v2, v1, :cond_11

    sget-object v3, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const-string v2, "1ePZQnBBitpdDYb2MbiSjXfA1MCyY4Rx"

    const/4 v1, 0x7

    aput-object v2, v3, v1

    if-nez v4, :cond_1

    .line 34322
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 34323
    :cond_1
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/GV;->A06:Lcom/facebook/ads/redexgen/X/GU;

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/GU;->A00:Lcom/facebook/ads/redexgen/X/GO;

    if-eqz v1, :cond_f

    .line 34324
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/GV;->A06:Lcom/facebook/ads/redexgen/X/GU;

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/GU;->A00:Lcom/facebook/ads/redexgen/X/GO;

    .line 34325
    .local v2, "displayDefinition":Lcom/facebook/ads/redexgen/X/GO;
    :goto_1
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/GV;->A00:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget v1, v2, Lcom/facebook/ads/redexgen/X/GO;->A05:I

    add-int/lit8 v3, v1, 0x1

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/GV;->A00:Landroid/graphics/Bitmap;

    .line 34326
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v3, v1, :cond_2

    iget v1, v2, Lcom/facebook/ads/redexgen/X/GO;->A00:I

    add-int/lit8 v6, v1, 0x1

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/GV;->A00:Landroid/graphics/Bitmap;

    .line 34327
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v3, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v1, v3, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v1, 0x12

    if-eq v3, v1, :cond_e

    sget-object v4, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const-string v3, "kwVd8bMmzaxgnQ5L0Q1xRmsolN73Qjbe"

    const/4 v1, 0x3

    aput-object v3, v4, v1

    if-eq v6, v5, :cond_3

    .line 34328
    :cond_2
    :goto_2
    iget v1, v2, Lcom/facebook/ads/redexgen/X/GO;->A05:I

    add-int/lit8 v4, v1, 0x1

    iget v1, v2, Lcom/facebook/ads/redexgen/X/GO;->A00:I

    add-int/lit8 v3, v1, 0x1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 34329
    invoke-static {v4, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/GV;->A00:Landroid/graphics/Bitmap;

    .line 34330
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/GV;->A01:Landroid/graphics/Canvas;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/GV;->A00:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 34331
    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 34332
    .local v1, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/text/Cue;>;"
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/GV;->A06:Lcom/facebook/ads/redexgen/X/GU;

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/GU;->A01:Lcom/facebook/ads/redexgen/X/GQ;

    iget-object v6, v1, Lcom/facebook/ads/redexgen/X/GQ;->A03:Landroid/util/SparseArray;

    .line 34333
    .local v5, "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/text/dvb/DvbParser$PageRegion;>;"
    const/4 v5, 0x0

    .local v2, "i":I
    :goto_3
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v5, v1, :cond_10

    .line 34334
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/ads/redexgen/X/GR;

    .line 34335
    .local v1, "pageRegion":Lcom/facebook/ads/redexgen/X/GR;
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 34336
    .local v1, "regionId":I
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/GV;->A06:Lcom/facebook/ads/redexgen/X/GU;

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/GU;->A08:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/GS;

    .line 34337
    .local v2, "regionComposition":Lcom/facebook/ads/redexgen/X/GS;
    iget v3, v8, Lcom/facebook/ads/redexgen/X/GR;->A00:I

    iget v4, v2, Lcom/facebook/ads/redexgen/X/GO;->A02:I

    add-int/2addr v3, v4

    .line 34338
    .local v1, "baseHorizontalAddress":I
    iget v4, v8, Lcom/facebook/ads/redexgen/X/GR;->A01:I

    iget v8, v2, Lcom/facebook/ads/redexgen/X/GO;->A04:I

    add-int/2addr v4, v8

    .line 34339
    .local v4, "baseVerticalAddress":I
    iget v9, v1, Lcom/facebook/ads/redexgen/X/GS;->A08:I

    add-int/2addr v9, v3

    iget v8, v2, Lcom/facebook/ads/redexgen/X/GO;->A01:I

    .line 34340
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 34341
    .local v2, "clipRight":I
    iget v9, v1, Lcom/facebook/ads/redexgen/X/GS;->A02:I

    add-int/2addr v9, v4

    iget v8, v2, Lcom/facebook/ads/redexgen/X/GO;->A03:I

    .line 34342
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 34343
    .local v1, "clipBottom":I
    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/GV;->A01:Landroid/graphics/Canvas;

    .end local v2    # "clipRight":I
    .local v1, "dataBitArray":Lcom/facebook/ads/redexgen/X/IL;
    int-to-float v12, v3

    int-to-float v13, v4

    int-to-float v14, v10

    .end local v5    # "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/text/dvb/DvbParser$PageRegion;>;"
    .local v1, "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/text/dvb/DvbParser$PageRegion;>;"
    int-to-float v15, v8

    sget-object v16, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 34344
    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/GV;->A06:Lcom/facebook/ads/redexgen/X/GU;

    iget-object v9, v8, Lcom/facebook/ads/redexgen/X/GU;->A06:Landroid/util/SparseArray;

    iget v8, v1, Lcom/facebook/ads/redexgen/X/GS;->A00:I

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/facebook/ads/redexgen/X/GN;

    .line 34345
    .local v2, "clutDefinition":Lcom/facebook/ads/redexgen/X/GN;
    if-nez v12, :cond_4

    .line 34346
    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/GV;->A06:Lcom/facebook/ads/redexgen/X/GU;

    iget-object v9, v8, Lcom/facebook/ads/redexgen/X/GU;->A04:Landroid/util/SparseArray;

    iget v8, v1, Lcom/facebook/ads/redexgen/X/GS;->A00:I

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/facebook/ads/redexgen/X/GN;

    .line 34347
    if-nez v12, :cond_4

    .line 34348
    iget-object v12, v0, Lcom/facebook/ads/redexgen/X/GV;->A04:Lcom/facebook/ads/redexgen/X/GN;

    .line 34349
    :cond_4
    iget-object v11, v1, Lcom/facebook/ads/redexgen/X/GS;->A09:Landroid/util/SparseArray;

    .line 34350
    .local v1, "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/text/dvb/DvbParser$RegionObject;>;"
    const/4 v10, 0x0

    .local v0, "j":I
    :goto_4
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v10, v8, :cond_9

    .line 34351
    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    .line 34352
    .local v5, "objectId":I
    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/ads/redexgen/X/GT;

    .line 34353
    .local v2, "regionObject":Lcom/facebook/ads/redexgen/X/GT;
    .end local v1    # "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/text/dvb/DvbParser$RegionObject;>;"
    .local v1, "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/text/dvb/DvbParser$RegionObject;>;"
    iget-object v15, v0, Lcom/facebook/ads/redexgen/X/GV;->A06:Lcom/facebook/ads/redexgen/X/GU;

    sget-object v14, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const/4 v9, 0x6

    aget-object v9, v14, v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v9, 0x11

    if-eq v14, v9, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    sget-object v16, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const-string v14, "7DRj0fabNVS2ujMEdJw6x7q4oRQtuvoz"

    const/4 v9, 0x3

    aput-object v14, v16, v9

    iget-object v9, v15, Lcom/facebook/ads/redexgen/X/GU;->A07:Landroid/util/SparseArray;

    invoke-virtual {v9, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/facebook/ads/redexgen/X/GP;

    .line 34354
    .local v1, "objectData":Lcom/facebook/ads/redexgen/X/GP;
    if-nez v15, :cond_6

    .line 34355
    .end local v1    # "objectData":Lcom/facebook/ads/redexgen/X/GP;
    .local v2, "objectData":Lcom/facebook/ads/redexgen/X/GP;
    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/GV;->A06:Lcom/facebook/ads/redexgen/X/GU;

    iget-object v9, v9, Lcom/facebook/ads/redexgen/X/GU;->A05:Landroid/util/SparseArray;

    invoke-virtual {v9, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/facebook/ads/redexgen/X/GP;

    .line 34356
    .end local v2    # "objectData":Lcom/facebook/ads/redexgen/X/GP;
    .restart local v1    # "objectData":Lcom/facebook/ads/redexgen/X/GP;
    :cond_6
    if-eqz v15, :cond_7

    .line 34357
    .end local v5    # "objectId":I
    .local v2, "objectId":I
    iget-boolean v9, v15, Lcom/facebook/ads/redexgen/X/GP;->A01:Z

    if-eqz v9, :cond_8

    const/4 v9, 0x0

    .line 34358
    .local v2, "paint":Landroid/graphics/Paint;
    :goto_5
    iget v13, v1, Lcom/facebook/ads/redexgen/X/GS;->A01:I

    .end local v1    # "objectData":Lcom/facebook/ads/redexgen/X/GP;
    .local v1, "pageRegion":Lcom/facebook/ads/redexgen/X/GR;
    iget v14, v8, Lcom/facebook/ads/redexgen/X/GT;->A02:I

    add-int v18, v3, v14

    iget v8, v8, Lcom/facebook/ads/redexgen/X/GT;->A05:I

    add-int v19, v4, v8

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/GV;->A01:Landroid/graphics/Canvas;

    move-object/from16 v16, v12

    move/from16 v17, v13

    move-object/from16 v20, v9

    move-object/from16 v21, v8

    invoke-static/range {v15 .. v21}, Lcom/facebook/ads/redexgen/X/GV;->A0C(Lcom/facebook/ads/redexgen/X/GP;Lcom/facebook/ads/redexgen/X/GN;IIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 34359
    .end local v1    # "pageRegion":Lcom/facebook/ads/redexgen/X/GR;
    .end local v5
    .end local v1
    .end local v2    # "paint":Landroid/graphics/Paint;
    .restart local v1    # "pageRegion":Lcom/facebook/ads/redexgen/X/GR;
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 34360
    :cond_8
    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/GV;->A02:Landroid/graphics/Paint;

    goto :goto_5

    .line 34361
    .end local v1    # "pageRegion":Lcom/facebook/ads/redexgen/X/GR;
    .end local v1
    .local v1, "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/text/dvb/DvbParser$RegionObject;>;"
    .restart local v1    # "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/text/dvb/DvbParser$RegionObject;>;"
    .end local v1    # "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/text/dvb/DvbParser$RegionObject;>;"
    .end local v0    # "j":I
    .end local v1
    .restart local v1    # "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/text/dvb/DvbParser$RegionObject;>;"
    .restart local v1    # "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/text/dvb/DvbParser$RegionObject;>;"
    :cond_9
    iget-boolean v8, v1, Lcom/facebook/ads/redexgen/X/GS;->A0A:Z

    if-eqz v8, :cond_a

    .line 34362
    iget v13, v1, Lcom/facebook/ads/redexgen/X/GS;->A01:I

    const/4 v11, 0x3

    sget-object v9, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const/4 v8, 0x2

    aget-object v8, v9, v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v8, 0x3

    if-eq v9, v8, :cond_b

    sget-object v10, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const-string v9, "mmXdDYB0stpIeqNPiJ"

    const/4 v8, 0x5

    aput-object v9, v10, v8

    if-ne v13, v11, :cond_c

    .line 34363
    :goto_6
    iget-object v9, v12, Lcom/facebook/ads/redexgen/X/GN;->A03:[I

    iget v8, v1, Lcom/facebook/ads/redexgen/X/GS;->A07:I

    aget v9, v9, v8

    .line 34364
    .local v1, "color":I
    .restart local v1    # "color":I
    :goto_7
    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/GV;->A03:Landroid/graphics/Paint;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 34365
    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/GV;->A01:Landroid/graphics/Canvas;

    int-to-float v10, v3

    int-to-float v11, v4

    iget v8, v1, Lcom/facebook/ads/redexgen/X/GS;->A08:I

    add-int/2addr v8, v3

    int-to-float v12, v8

    .end local v2
    .local v2, "clutDefinition":Lcom/facebook/ads/redexgen/X/GN;
    iget v8, v1, Lcom/facebook/ads/redexgen/X/GS;->A02:I

    add-int/2addr v8, v4

    int-to-float v13, v8

    .end local v1    # "color":I
    .local v3, "color":I
    iget-object v14, v0, Lcom/facebook/ads/redexgen/X/GV;->A03:Landroid/graphics/Paint;

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 34366
    .end local v2    # "clutDefinition":Lcom/facebook/ads/redexgen/X/GN;
    .restart local v2    # "clutDefinition":Lcom/facebook/ads/redexgen/X/GN;
    :cond_a
    iget-object v10, v0, Lcom/facebook/ads/redexgen/X/GV;->A00:Landroid/graphics/Bitmap;

    iget v9, v1, Lcom/facebook/ads/redexgen/X/GS;->A08:I

    iget v8, v1, Lcom/facebook/ads/redexgen/X/GS;->A02:I

    .line 34367
    invoke-static {v10, v3, v4, v9, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 34368
    .local v2, "cueBitmap":Landroid/graphics/Bitmap;
    new-instance v8, Lcom/facebook/ads/redexgen/X/GB;

    int-to-float v10, v3

    iget v3, v2, Lcom/facebook/ads/redexgen/X/GO;->A05:I

    int-to-float v3, v3

    div-float/2addr v10, v3

    const/4 v11, 0x0

    int-to-float v12, v4

    iget v3, v2, Lcom/facebook/ads/redexgen/X/GO;->A00:I

    int-to-float v3, v3

    div-float/2addr v12, v3

    const/4 v13, 0x0

    iget v3, v1, Lcom/facebook/ads/redexgen/X/GS;->A08:I

    int-to-float v4, v3

    iget v3, v2, Lcom/facebook/ads/redexgen/X/GO;->A05:I

    int-to-float v3, v3

    div-float/2addr v4, v3

    iget v1, v1, Lcom/facebook/ads/redexgen/X/GS;->A02:I

    int-to-float v3, v1

    iget v1, v2, Lcom/facebook/ads/redexgen/X/GO;->A00:I

    int-to-float v1, v1

    div-float/2addr v3, v1

    move v14, v4

    move v15, v3

    invoke-direct/range {v8 .. v15}, Lcom/facebook/ads/redexgen/X/GB;-><init>(Landroid/graphics/Bitmap;FIFIFF)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34369
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/GV;->A01:Landroid/graphics/Canvas;

    const/4 v3, 0x0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v3, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 34370
    .end local v2    # "cueBitmap":Landroid/graphics/Bitmap;
    .end local v1
    .end local v2
    .end local v1
    .end local v4    # "baseVerticalAddress":I
    .end local v2
    .end local v1
    .end local v1
    .end local v2
    .end local v1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    :cond_b
    sget-object v10, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const-string v9, "3hsu6UzoGEI1jUHGtx8F0DO397HPZDYY"

    const/4 v8, 0x7

    aput-object v9, v10, v8

    if-ne v13, v11, :cond_c

    goto :goto_6

    .line 34371
    .end local v1
    :cond_c
    iget v9, v1, Lcom/facebook/ads/redexgen/X/GS;->A01:I

    const/4 v8, 0x2

    if-ne v9, v8, :cond_d

    .line 34372
    iget-object v9, v12, Lcom/facebook/ads/redexgen/X/GN;->A02:[I

    iget v8, v1, Lcom/facebook/ads/redexgen/X/GS;->A06:I

    aget v9, v9, v8

    .restart local v1    # "color":I
    goto :goto_7

    .line 34373
    .end local v1    # "color":I
    :cond_d
    iget-object v9, v12, Lcom/facebook/ads/redexgen/X/GN;->A01:[I

    iget v8, v1, Lcom/facebook/ads/redexgen/X/GS;->A05:I

    aget v9, v9, v8

    goto :goto_7

    :cond_e
    sget-object v4, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const-string v3, "eiDdkTzkMaHkeFIP7"

    const/4 v1, 0x6

    aput-object v3, v4, v1

    if-eq v6, v5, :cond_3

    goto/16 :goto_2

    .line 34374
    :cond_f
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/GV;->A05:Lcom/facebook/ads/redexgen/X/GO;

    goto/16 :goto_1

    .line 34375
    .end local v2
    .end local v1
    .end local v1
    .local v2, "dataBitArray":Lcom/facebook/ads/redexgen/X/IL;
    .local v5, "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/text/dvb/DvbParser$PageRegion;>;"
    :cond_10
    return-object v7

    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0K()V
    .locals 1

    .line 34376
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GV;->A06:Lcom/facebook/ads/redexgen/X/GU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/GU;->A00()V

    .line 34377
    return-void
.end method
