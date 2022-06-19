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

    .line 33844
    invoke-static {}, Lcom/facebook/ads/redexgen/X/GV;->A0B()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/GV;->A0A()V

    const/4 v1, 0x4

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/GV;->A09:[B

    .line 33845
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/ads/redexgen/X/GV;->A0A:[B

    .line 33846
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

    .line 33847
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33848
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/GV;->A02:Landroid/graphics/Paint;

    .line 33849
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/GV;->A02:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 33850
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/GV;->A02:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 33851
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GV;->A02:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 33852
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/GV;->A03:Landroid/graphics/Paint;

    .line 33853
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/GV;->A03:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 33854
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/GV;->A03:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 33855
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GV;->A03:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 33856
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/GV;->A01:Landroid/graphics/Canvas;

    .line 33857
    new-instance v1, Lcom/facebook/ads/redexgen/X/GO;

    const/16 v2, 0x2cf

    const/16 v3, 0x23f

    const/4 v4, 0x0

    const/16 v5, 0x2cf

    const/4 v6, 0x0

    const/16 v7, 0x23f

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/GO;-><init>(IIIIII)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/GV;->A05:Lcom/facebook/ads/redexgen/X/GO;

    .line 33858
    invoke-static {}, Lcom/facebook/ads/redexgen/X/GV;->A0G()[I

    move-result-object v3

    .line 33859
    invoke-static {}, Lcom/facebook/ads/redexgen/X/GV;->A0H()[I

    move-result-object v2

    .line 33860
    invoke-static {}, Lcom/facebook/ads/redexgen/X/GV;->A0I()[I

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/GN;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/GN;-><init>(I[I[I[I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/GV;->A04:Lcom/facebook/ads/redexgen/X/GN;

    .line 33861
    new-instance v0, Lcom/facebook/ads/redexgen/X/GU;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/GU;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/GV;->A06:Lcom/facebook/ads/redexgen/X/GU;

    .line 33862
    return-void
.end method

.method public static A00(IIII)I
    .locals 1

    .line 33863
    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 v0, p1, 0x10

    or-int/2addr p0, v0

    shl-int/lit8 v0, p2, 0x8

    or-int/2addr p0, v0

    or-int/2addr p0, p3

    return p0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/IL;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I
    .locals 15

    move/from16 v3, p3

    .line 33864
    const/4 v8, 0x0

    .line 33865
    .end local v8
    .local p2, "endOfPixelCodeString":Z
    .local v8, "column":I
    :cond_0
    const/4 v6, 0x0

    .line 33866
    .local v3, "runLength":I
    const/4 v7, 0x0

    .line 33867
    .local v2, "clutIndex":I
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    .line 33868
    .local v3, "peek":I
    if-eqz v0, :cond_3

    .line 33869
    const/4 v6, 0x1

    .line 33870
    .end local p2    # "endOfPixelCodeString":Z
    .end local v3    # "peek":I
    .end local v2    # "clutIndex":I
    .local v6, "runLength":I
    .local v7, "clutIndex":I
    .local v4, "endOfPixelCodeString":Z
    :goto_0
    if-eqz v6, :cond_2

    move-object/from16 v1, p5

    if-eqz v1, :cond_2

    .line 33871
    if-eqz p2, :cond_1

    aget-byte v0, p2, v0

    :cond_1
    aget v0, p1, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 33872
    int-to-float v10, v3

    move/from16 v2, p4

    int-to-float v11, v2

    add-int v0, v3, v6

    int-to-float v12, v0

    add-int/lit8 v0, v2, 0x1

    int-to-float v13, v0

    move-object v14, v1

    move-object/from16 v9, p6

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 33873
    :cond_2
    add-int/2addr v3, v6

    .line 33874
    .end local v3
    .end local v6    # "runLength":I
    .end local v7    # "clutIndex":I
    if-eqz v8, :cond_0

    .line 33875
    return v3

    .line 33876
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_b

    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const-string v1, "NWJ2j8DR8"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "tuFwEgjWv5QsbV2rgY7O01mW2P3xd0b"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v2, 0x3

    if-eqz v5, :cond_4

    .line 33877
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    add-int/lit8 v6, v0, 0x3

    .line 33878
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    goto :goto_0

    .line 33879
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 33880
    const/4 v6, 0x1

    move v0, v7

    goto :goto_0

    .line 33881
    :cond_5
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    if-eq v1, v0, :cond_9

    if-eq v1, v4, :cond_8

    if-eq v1, v2, :cond_6

    move v0, v7

    goto :goto_0

    .line 33882
    :cond_6
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const-string v1, "aK1SAaExMssx18Id1roywrSfe1Et1yGa"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    add-int/lit8 v6, v5, 0x1d

    .line 33883
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    goto/16 :goto_0

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const-string v1, "EWrEb5ztJ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "osfW1bR5YMm4TxT0YESgxQn9EHcmZGy"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    add-int/lit8 v6, v5, 0xc

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    goto/16 :goto_0

    .line 33884
    :cond_8
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    add-int/lit8 v6, v0, 0xc

    .line 33885
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    .line 33886
    goto/16 :goto_0

    .line 33887
    :cond_9
    const/4 v6, 0x2

    .line 33888
    move v0, v7

    goto/16 :goto_0

    .line 33889
    :cond_a
    const/4 v8, 0x1

    .line 33890
    move v0, v7

    goto/16 :goto_0

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/IL;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I
    .locals 15

    move/from16 v3, p3

    .line 33891
    const/4 v8, 0x0

    .line 33892
    .end local v8
    .local p2, "endOfPixelCodeString":Z
    .local v8, "column":I
    :cond_0
    const/4 v5, 0x0

    .line 33893
    .local v3, "runLength":I
    const/4 v7, 0x0

    .line 33894
    .local v2, "clutIndex":I
    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    .line 33895
    .local v9, "peek":I
    if-eqz v0, :cond_3

    .line 33896
    const/4 v5, 0x1

    .line 33897
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

    .line 33898
    if-eqz p2, :cond_1

    aget-byte v0, p2, v0

    :cond_1
    aget v0, p1, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 33899
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

    .line 33900
    :cond_2
    add-int/2addr v3, v5

    .line 33901
    .end local v3    # "runLength":I
    .end local v5    # "clutIndex":I
    .end local v6    # "peek":I
    if-eqz v8, :cond_0

    .line 33902
    return v3

    .line 33903
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    const/4 v4, 0x3

    if-nez v0, :cond_5

    .line 33904
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    .line 33905
    if-eqz v0, :cond_4

    .line 33906
    add-int/lit8 v5, v0, 0x2

    .line 33907
    const/4 v0, 0x0

    goto :goto_0

    .line 33908
    :cond_4
    const/4 v8, 0x1

    move v0, v7

    goto :goto_0

    .line 33909
    :cond_5
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_6

    .line 33910
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    add-int/lit8 v5, v0, 0x4

    .line 33911
    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    goto :goto_0

    .line 33912
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

    .line 33913
    :cond_7
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    add-int/lit8 v5, v0, 0x19

    .line 33914
    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    goto :goto_0

    .line 33915
    :cond_8
    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    add-int/lit8 v5, v0, 0x9

    .line 33916
    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    .line 33917
    goto :goto_0

    .line 33918
    :cond_9
    const/4 v5, 0x2

    .line 33919
    move v0, v7

    goto :goto_0

    .line 33920
    :cond_a
    const/4 v5, 0x1

    .line 33921
    move v0, v7

    goto :goto_0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/IL;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I
    .locals 15

    move/from16 v3, p3

    .line 33922
    const/4 v8, 0x0

    .line 33923
    .end local v8
    .local p2, "endOfPixelCodeString":Z
    .local v8, "column":I
    :cond_0
    const/4 v7, 0x0

    .line 33924
    .local v3, "runLength":I
    const/4 v6, 0x0

    .line 33925
    .local v2, "clutIndex":I
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v5

    .line 33926
    .local v9, "peek":I
    if-eqz v5, :cond_3

    .line 33927
    const/4 v4, 0x1

    .line 33928
    .end local p2    # "endOfPixelCodeString":Z
    .end local v3    # "runLength":I
    .end local v2    # "clutIndex":I
    .end local v9    # "peek":I
    .local v3, "runLength":I
    .local v7, "clutIndex":I
    .local v6, "endOfPixelCodeString":Z
    .local v2, "peek":I
    :goto_0
    if-eqz v4, :cond_2

    move-object/from16 v1, p5

    if-eqz v1, :cond_2

    .line 33929
    if-eqz p2, :cond_1

    aget-byte v5, p2, v5

    :cond_1
    aget v0, p1, v5

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 33930
    int-to-float v10, v3

    move/from16 v2, p4

    int-to-float v11, v2

    add-int v0, v3, v4

    int-to-float v12, v0

    add-int/lit8 v0, v2, 0x1

    int-to-float v13, v0

    move-object v14, v1

    move-object/from16 v9, p6

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 33931
    :cond_2
    add-int/2addr v3, v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    .line 33932
    .end local v3    # "runLength":I
    .end local v7    # "clutIndex":I
    .end local v2    # "peek":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const-string v1, "jmdilAXdKLha38CDbN17xGIpmuplWnFc"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "1PNl1axnrexK2c7Nxi5CJrHaXY90XFpd"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v8, :cond_0

    .line 33933
    return v3

    .line 33934
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v1

    const/4 v0, 0x7

    if-nez v1, :cond_5

    .line 33935
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v4

    .line 33936
    if-eqz v4, :cond_4

    .line 33937
    const/4 v5, 0x0

    goto :goto_0

    .line 33938
    :cond_4
    const/4 v8, 0x1

    move v4, v7

    move v5, v6

    goto :goto_0

    .line 33939
    :cond_5
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v4

    .line 33940
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_7

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const-string v1, "oE62i0kU0YacGkvCLxgFzKdMfiudOn3o"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    goto :goto_0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/IL;I)Lcom/facebook/ads/redexgen/X/GN;
    .locals 17

    .line 33941
    const/16 v1, 0x8

    move-object/from16 v8, p0

    invoke-virtual {v8, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v11

    .line 33942
    .local v8, "clutId":I
    invoke-virtual {v8, v1}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 33943
    add-int/lit8 v16, p1, -0x2

    .line 33944
    .local v1, "remainingLength":I
    invoke-static {}, Lcom/facebook/ads/redexgen/X/GV;->A0G()[I

    move-result-object v10

    .line 33945
    .local v11, "clutEntries2Bit":[I
    invoke-static {}, Lcom/facebook/ads/redexgen/X/GV;->A0H()[I

    move-result-object v7

    .line 33946
    .local v16, "clutEntries4Bit":[I
    invoke-static {}, Lcom/facebook/ads/redexgen/X/GV;->A0I()[I

    move-result-object v6

    .line 33947
    .local v10, "clutEntries8Bit":[I
    :goto_0
    if-lez v16, :cond_4

    .line 33948
    invoke-virtual {v8, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result p1

    .line 33949
    .local v7, "entryId":I
    invoke-virtual {v8, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v3

    .line 33950
    .local v6, "entryFlags":I
    add-int/lit8 v2, v16, -0x2

    .line 33951
    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_2

    .line 33952
    move-object/from16 p0, v10

    .line 33953
    .local p1, "clutEntries":[I
    .restart local p1    # "clutEntries":[I
    :goto_1
    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_1

    .line 33954
    invoke-virtual {v8, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v9

    .line 33955
    .local v3, "y":I
    invoke-virtual {v8, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v15

    .line 33956
    .local v2, "cr":I
    invoke-virtual {v8, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v12

    .line 33957
    .local v0, "cb":I
    invoke-virtual {v8, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    .line 33958
    .local p0, "t":I
    add-int/lit8 v16, v2, -0x4

    .line 33959
    .end local v2    # "cr":I
    .local v3, "y":I
    .restart local v0    # "cb":I
    .local p0, "t":I
    :goto_2
    if-nez v9, :cond_0

    .line 33960
    const/4 v15, 0x0

    .line 33961
    const/4 v12, 0x0

    .line 33962
    const/16 v0, 0xff

    .line 33963
    :cond_0
    and-int/lit16 v0, v0, 0xff

    rsub-int v0, v0, 0xff

    int-to-byte v5, v0

    .line 33964
    .local v2, "a":I
    .end local v8    # "clutId":I
    .local v15, "clutId":I
    int-to-double v0, v9

    const-wide v13, 0x3ff66e978d4fdf3bL    # 1.402

    add-int/lit8 v2, v15, -0x80

    .end local v1    # "remainingLength":I
    .end local v11    # "clutEntries2Bit":[I
    .local v16, "clutEntries2Bit":[I
    .local v15, "remainingLength":I
    int-to-double v2, v2

    mul-double/2addr v2, v13

    add-double/2addr v0, v2

    double-to-int v4, v0

    .line 33965
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

    .line 33966
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

    .line 33967
    .local v1, "b":I
    const/4 v3, 0x0

    const/16 v0, 0xff

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A06(III)I

    move-result v2

    .line 33968
    invoke-static {v13, v3, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A06(III)I

    move-result v1

    .line 33969
    invoke-static {v9, v3, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A06(III)I

    move-result v0

    .line 33970
    invoke-static {v5, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/GV;->A00(IIII)I

    move-result v0

    aput v0, p0, p1

    .line 33971
    .end local p1    # "r":I
    .end local v8    # "g":I
    .end local v1    # "b":I
    .end local v7    # "entryId":I
    .end local v6    # "entryFlags":I
    .end local p1
    .end local v3    # "y":I
    .end local v2    # "a":I
    .end local v0    # "cb":I
    .end local v0
    .end local v0
    const/16 v1, 0x8

    goto :goto_0

    .line 33972
    .end local v3
    .end local v2
    .end local v0
    .end local p0
    :cond_1
    const/4 v0, 0x6

    invoke-virtual {v8, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v9

    const/4 v1, 0x2

    shl-int/2addr v9, v1

    .line 33973
    .local v2, "y":I
    const/4 v0, 0x4

    invoke-virtual {v8, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v15

    shl-int/2addr v15, v0

    .line 33974
    .local v0, "cr":I
    invoke-virtual {v8, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    shl-int/lit8 v12, v0, 0x4

    .line 33975
    .local p0, "cb":I
    invoke-virtual {v8, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x6

    .line 33976
    .local v3, "t":I
    add-int/lit8 v16, v2, -0x2

    goto :goto_2

    .line 33977
    .end local p1
    :cond_2
    and-int/lit8 v0, v3, 0x40

    if-eqz v0, :cond_3

    .line 33978
    move-object/from16 p0, v7

    .restart local p1    # "r":I
    goto/16 :goto_1

    .line 33979
    .end local p1    # "r":I
    :cond_3
    move-object/from16 p0, v6

    goto/16 :goto_1

    .line 33980
    .end local v9    # "clutEntries4Bit":[I
    .end local v15    # "remainingLength":I
    .end local v16
    .end local v15
    .local v8, "clutId":I
    .local v1, "remainingLength":I
    .restart local v11    # "clutEntries2Bit":[I
    .restart local v16    # "clutEntries2Bit":[I
    :cond_4
    new-instance v0, Lcom/facebook/ads/redexgen/X/GN;

    invoke-direct {v0, v11, v10, v7, v6}, Lcom/facebook/ads/redexgen/X/GN;-><init>(I[I[I[I)V

    return-object v0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/IL;)Lcom/facebook/ads/redexgen/X/GO;
    .locals 7

    .line 33981
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 33982
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v1

    .line 33983
    .local p0, "displayWindowFlag":Z
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 33984
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v2

    .line 33985
    .local v6, "width":I
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v3

    .line 33986
    .local p0, "height":I
    if-eqz v1, :cond_0

    .line 33987
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v4

    .line 33988
    .local v1, "horizontalPositionMinimum":I
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v5

    .line 33989
    .local v0, "horizontalPositionMaximum":I
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v6

    .line 33990
    .local v0, "verticalPositionMinimum":I
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result p0

    .line 33991
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

    .line 33992
    .end local v0
    .end local v1
    .end local v0
    .end local v0
    :cond_0
    const/4 v4, 0x0

    .line 33993
    .local v0, "horizontalPositionMinimum":I
    .local v1, "horizontalPositionMaximum":I
    const/4 v6, 0x0

    .line 33994
    .local v0, "verticalPositionMinimum":I
    move v5, v2

    move p0, v3

    goto :goto_0
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/IL;)Lcom/facebook/ads/redexgen/X/GP;
    .locals 8

    .line 33995
    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v7

    .line 33996
    .local v3, "objectId":I
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 33997
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v2

    .line 33998
    .local v7, "objectCodingMethod":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v6

    .line 33999
    .local v0, "nonModifyingColorFlag":Z
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 34000
    const/4 v5, 0x0

    .line 34001
    .local v2, "topFieldData":[B
    const/4 v1, 0x0

    .line 34002
    .local v6, "bottomFieldData":[B
    if-ne v2, v0, :cond_1

    .line 34003
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    .line 34004
    .local p0, "numberOfCodes":I
    mul-int/lit8 v0, v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 34005
    .end local p0    # "numberOfCodes":I
    :cond_0
    :goto_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/GP;

    invoke-direct {v0, v7, v6, v5, v1}, Lcom/facebook/ads/redexgen/X/GP;-><init>(IZ[B[B)V

    return-object v0

    .line 34006
    :cond_1
    if-nez v2, :cond_0

    .line 34007
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v4

    .line 34008
    .local v0, "topFieldDataLength":I
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 34009
    .local p0, "bottomFieldDataLength":I
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const-string v1, "pcqe5F2CDJi5oBWvBkq2zbdYSROcg8Hm"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v0, 0x0

    if-lez v4, :cond_3

    .line 34010
    new-array v5, v4, [B

    .line 34011
    invoke-virtual {p0, v5, v0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A0F([BII)V

    .line 34012
    :cond_3
    if-lez v3, :cond_4

    .line 34013
    new-array v1, v3, [B

    .line 34014
    invoke-virtual {p0, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/IL;->A0F([BII)V

    goto :goto_0

    .line 34015
    :cond_4
    move-object v1, v5

    goto :goto_0
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/IL;I)Lcom/facebook/ads/redexgen/X/GQ;
    .locals 10

    .line 34016
    const/16 v9, 0x8

    invoke-virtual {p0, v9}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v8

    .line 34017
    .local p1, "timeoutSecs":I
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v7

    .line 34018
    .local v9, "version":I
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v6

    .line 34019
    .local v0, "state":I
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 34020
    add-int/lit8 v5, p1, -0x2

    .line 34021
    .local v8, "remainingLength":I
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 34022
    .local v7, "regions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/text/dvb/DvbParser$PageRegion;>;"
    :goto_0
    if-lez v5, :cond_0

    .line 34023
    invoke-virtual {p0, v9}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v3

    .line 34024
    .local v0, "regionId":I
    invoke-virtual {p0, v9}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 34025
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v2

    .line 34026
    .local v5, "regionHorizontalAddress":I
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v1

    .line 34027
    .local v6, "regionVerticalAddress":I
    add-int/lit8 v5, v5, -0x6

    .line 34028
    new-instance v0, Lcom/facebook/ads/redexgen/X/GR;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/GR;-><init>(II)V

    invoke-virtual {v4, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34029
    .end local v0    # "regionId":I
    .end local v6    # "regionVerticalAddress":I
    .end local v5    # "regionHorizontalAddress":I
    goto :goto_0

    .line 34030
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/GQ;

    invoke-direct {v0, v8, v7, v6, v4}, Lcom/facebook/ads/redexgen/X/GQ;-><init>(IIILandroid/util/SparseArray;)V

    return-object v0
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/IL;I)Lcom/facebook/ads/redexgen/X/GS;
    .locals 26

    .line 34031
    const/16 v1, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v11

    .line 34032
    .local v17, "id":I
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 34033
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v12

    .line 34034
    .local v18, "fillFlag":Z
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 34035
    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v13

    .line 34036
    .local v19, "width":I
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v14

    .line 34037
    .local v20, "height":I
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v15

    .line 34038
    .local v10, "levelOfCompatibility":I
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v16

    .line 34039
    .local v8, "depth":I
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 34040
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v17

    .line 34041
    .local v8, "clutId":I
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v18

    .line 34042
    .local v10, "pixelCode8Bit":I
    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v19

    .line 34043
    .local v7, "pixelCode4Bit":I
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v20

    .line 34044
    .local v6, "pixelCode2Bit":I
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 34045
    add-int/lit8 v10, p1, -0xa

    .line 34046
    .local v4, "remainingLength":I
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 34047
    .end local v4    # "remainingLength":I
    .local v2, "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/text/dvb/DvbParser$RegionObject;>;"
    .local v23, "remainingLength":I
    :goto_0
    if-lez v10, :cond_3

    .line 34048
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v7

    .line 34049
    .local v4, "objectId":I
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v6

    .line 34050
    .local v16, "objectType":I
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v23

    .line 34051
    .local v5, "objectProvider":I
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v24

    .line 34052
    .local v24, "objectHorizontalPosition":I
    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 34053
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v25

    .line 34054
    .local v25, "objectVerticalPosition":I
    add-int/lit8 v10, v10, -0x6

    .line 34055
    const/16 p0, 0x0

    .line 34056
    .local v12, "foregroundPixelCode":I
    const/16 p1, 0x0

    .line 34057
    .local v2, "backgroundPixelCode":I
    const/4 v5, 0x1

    if-eq v6, v5, :cond_0

    if-ne v6, v2, :cond_1

    .line 34058
    :cond_0
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result p0

    .line 34059
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result p1

    .line 34060
    add-int/lit8 v10, v10, -0x2

    sget-object v5, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v5, v5, v1

    const/16 v1, 0x17

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v1, 0x6f

    if-eq v5, v1, :cond_2

    sget-object v9, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const-string v5, "2juIiSC4ZxHJWLrTtxN2ANki5argYjtZ"

    const/4 v1, 0x4

    aput-object v5, v9, v1

    const-string v5, "MWq7TNsVs7aXK0A5Gh22llfb9AkLnJo6"

    const/4 v1, 0x0

    aput-object v5, v9, v1

    .line 34061
    .end local v12    # "foregroundPixelCode":I
    .end local v2    # "backgroundPixelCode":I
    .local v23, "foregroundPixelCode":I
    .local v10, "backgroundPixelCode":I
    .local p0, "remainingLength":I
    :cond_1
    new-instance v21, Lcom/facebook/ads/redexgen/X/GT;

    move-object/from16 v1, v21

    .end local v16    # "objectType":I
    .local p1, "objectType":I
    move/from16 v22, v6

    invoke-direct/range {v21 .. v27}, Lcom/facebook/ads/redexgen/X/GT;-><init>(IIIIII)V

    invoke-virtual {v8, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34062
    .end local v4    # "objectId":I
    .end local v23    # "foregroundPixelCode":I
    .end local v5    # "objectProvider":I
    .end local v24    # "objectHorizontalPosition":I
    .end local v25    # "objectVerticalPosition":I
    .end local v10    # "backgroundPixelCode":I
    .end local p1    # "objectType":I
    const/16 v1, 0x8

    goto :goto_0

    .line 34063
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 34064
    .end local p0    # "remainingLength":I
    .local v23, "remainingLength":I
    :cond_3
    new-instance v10, Lcom/facebook/ads/redexgen/X/GS;

    .end local v2
    .local v5, "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/text/dvb/DvbParser$RegionObject;>;"
    move-object/from16 v21, v8

    invoke-direct/range {v10 .. v21}, Lcom/facebook/ads/redexgen/X/GS;-><init>(IZIIIIIIIILandroid/util/SparseArray;)V

    return-object v10
.end method

.method public static A09(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/GV;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4a

    int-to-byte v3, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const-string v1, "o838eL9fL"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "J6qCpr7RcsAqb79Ub3PrHCSZxMucifP"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    aput-byte v3, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
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
        -0x6dt
        -0x50t
        -0x3dt
        -0x50t
        0x6ft
        -0x4bt
        -0x48t
        -0x4ct
        -0x45t
        -0x4dt
        0x6ft
        -0x45t
        -0x4ct
        -0x43t
        -0x4at
        -0x3dt
        -0x49t
        0x6ft
        -0x4ct
        -0x39t
        -0x4et
        -0x4ct
        -0x4ct
        -0x4dt
        -0x3et
        0x6ft
        -0x45t
        -0x48t
        -0x44t
        -0x48t
        -0x3dt
        -0x10t
        0x22t
        0xet
        -0x4t
        0xdt
        0x1et
        0x1ft
        0x11t
        0x1et
    .end array-data
.end method

.method public static A0B()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "0rGqU9QbqgRhw9xCYiy2ikjdJF0tZxW0"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "O5zJjRmwn"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Zuwvbdj2tlT5lxRkpa9deVxz18dZQdtj"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "3cu9YvSu9oYTgNu7SXt0BZa9RO8c3dJe"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "fSpgVoQESo9i788g3Yt2BRpnP7rxN0lE"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "PNJ5rPmEA0nUP9bGeJM8wQu7KuAYrDy"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "AGqKR696jXLUBqkrCQSQW886irj6NtRI"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "IRr9cxFu4Mtz1eOchhtcqFpk7Zjv6sDY"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    return-void
.end method

.method public static A0C(Lcom/facebook/ads/redexgen/X/GP;Lcom/facebook/ads/redexgen/X/GN;IIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 7

    .line 34065
    const/4 v0, 0x3

    move v2, p2

    if-ne v2, v0, :cond_0

    .line 34066
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/GN;->A03:[I

    .line 34067
    .local p0, "clutEntries":[I
    .restart local p0    # "clutEntries":[I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GP;->A03:[B

    move v3, p3

    move v4, p4

    move-object v6, p6

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/GV;->A0E([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 34068
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GP;->A02:[B

    add-int/lit8 v4, v4, 0x1

    invoke-static/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/GV;->A0E([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 34069
    return-void

    .line 34070
    .end local p0    # "clutEntries":[I
    :cond_0
    const/4 v0, 0x2

    if-ne v2, v0, :cond_1

    .line 34071
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/GN;->A02:[I

    .restart local p0    # "clutEntries":[I
    goto :goto_0

    .line 34072
    .end local p0    # "clutEntries":[I
    :cond_1
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/GN;->A01:[I

    goto :goto_0
.end method

.method public static A0D(Lcom/facebook/ads/redexgen/X/IL;Lcom/facebook/ads/redexgen/X/GU;)V
    .locals 6

    .line 34073
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v5

    .line 34074
    .local p0, "segmentType":I
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v4

    .line 34075
    .local v0, "pageId":I
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v2

    .line 34076
    .local p1, "dataFieldLength":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IL;->A03()I

    move-result v3

    add-int/2addr v3, v2

    .line 34077
    .local v5, "dataFieldLimit":I
    mul-int/lit8 v1, v2, 0x8

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IL;->A02()I

    move-result v0

    if-le v1, v0, :cond_0

    .line 34078
    const/16 v2, 0x1f

    const/16 v1, 0x9

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/GV;->A09(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x1f

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/GV;->A09(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34079
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IL;->A02()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 34080
    return-void

    .line 34081
    :cond_0
    packed-switch v5, :pswitch_data_0

    .line 34082
    .end local v0    # "pageId":I
    .end local v4
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IL;->A03()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/IL;->A0A(I)V

    .line 34083
    return-void

    .line 34084
    .end local v0
    :pswitch_0
    iget v0, p1, Lcom/facebook/ads/redexgen/X/GU;->A03:I

    if-ne v4, v0, :cond_1

    .line 34085
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/GU;->A01:Lcom/facebook/ads/redexgen/X/GQ;

    .line 34086
    .local v0, "current":Lcom/facebook/ads/redexgen/X/GQ;
    invoke-static {p0, v2}, Lcom/facebook/ads/redexgen/X/GV;->A07(Lcom/facebook/ads/redexgen/X/IL;I)Lcom/facebook/ads/redexgen/X/GQ;

    move-result-object v2

    .line 34087
    .local v4, "pageComposition":Lcom/facebook/ads/redexgen/X/GQ;
    iget v0, v2, Lcom/facebook/ads/redexgen/X/GQ;->A00:I

    if-eqz v0, :cond_2

    .line 34088
    iput-object v2, p1, Lcom/facebook/ads/redexgen/X/GU;->A01:Lcom/facebook/ads/redexgen/X/GQ;

    .line 34089
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/GU;->A08:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 34090
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/GU;->A06:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 34091
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/GU;->A07:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_0

    .line 34092
    :cond_2
    if-eqz v1, :cond_1

    iget v1, v1, Lcom/facebook/ads/redexgen/X/GQ;->A02:I

    iget v0, v2, Lcom/facebook/ads/redexgen/X/GQ;->A02:I

    if-eq v1, v0, :cond_1

    .line 34093
    iput-object v2, p1, Lcom/facebook/ads/redexgen/X/GU;->A01:Lcom/facebook/ads/redexgen/X/GQ;

    goto :goto_0

    .line 34094
    :pswitch_1
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/GU;->A01:Lcom/facebook/ads/redexgen/X/GQ;

    .line 34095
    .local v0, "pageComposition":Lcom/facebook/ads/redexgen/X/GQ;
    iget v0, p1, Lcom/facebook/ads/redexgen/X/GU;->A03:I

    if-ne v4, v0, :cond_1

    if-eqz v1, :cond_1

    .line 34096
    invoke-static {p0, v2}, Lcom/facebook/ads/redexgen/X/GV;->A08(Lcom/facebook/ads/redexgen/X/IL;I)Lcom/facebook/ads/redexgen/X/GS;

    move-result-object v2

    .line 34097
    .local v4, "regionComposition":Lcom/facebook/ads/redexgen/X/GS;
    iget v0, v1, Lcom/facebook/ads/redexgen/X/GQ;->A00:I

    if-nez v0, :cond_3

    .line 34098
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/GU;->A08:Landroid/util/SparseArray;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/GS;->A03:I

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/GS;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/GS;->A00(Lcom/facebook/ads/redexgen/X/GS;)V

    .line 34099
    :cond_3
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/GU;->A08:Landroid/util/SparseArray;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/GS;->A03:I

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34100
    .end local v4    # "regionComposition":Lcom/facebook/ads/redexgen/X/GS;
    goto :goto_0

    .line 34101
    :pswitch_2
    iget v0, p1, Lcom/facebook/ads/redexgen/X/GU;->A03:I

    if-ne v4, v0, :cond_4

    .line 34102
    invoke-static {p0, v2}, Lcom/facebook/ads/redexgen/X/GV;->A04(Lcom/facebook/ads/redexgen/X/IL;I)Lcom/facebook/ads/redexgen/X/GN;

    move-result-object v2

    .line 34103
    .local v0, "clutDefinition":Lcom/facebook/ads/redexgen/X/GN;
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/GU;->A06:Landroid/util/SparseArray;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/GN;->A00:I

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .end local v0    # "clutDefinition":Lcom/facebook/ads/redexgen/X/GN;
    goto :goto_0

    .line 34104
    :cond_4
    iget v0, p1, Lcom/facebook/ads/redexgen/X/GU;->A02:I

    if-ne v4, v0, :cond_1

    .line 34105
    invoke-static {p0, v2}, Lcom/facebook/ads/redexgen/X/GV;->A04(Lcom/facebook/ads/redexgen/X/IL;I)Lcom/facebook/ads/redexgen/X/GN;

    move-result-object v2

    .line 34106
    .restart local v0    # "clutDefinition":Lcom/facebook/ads/redexgen/X/GN;
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/GU;->A04:Landroid/util/SparseArray;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/GN;->A00:I

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34107
    .end local v0    # "clutDefinition":Lcom/facebook/ads/redexgen/X/GN;
    goto :goto_0

    .line 34108
    :pswitch_3
    iget v0, p1, Lcom/facebook/ads/redexgen/X/GU;->A03:I

    if-ne v4, v0, :cond_5

    .line 34109
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/GV;->A06(Lcom/facebook/ads/redexgen/X/IL;)Lcom/facebook/ads/redexgen/X/GP;

    move-result-object v2

    .line 34110
    .local v0, "objectData":Lcom/facebook/ads/redexgen/X/GP;
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/GU;->A07:Landroid/util/SparseArray;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/GP;->A00:I

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .end local v0    # "objectData":Lcom/facebook/ads/redexgen/X/GP;
    goto/16 :goto_0

    .line 34111
    :cond_5
    iget v0, p1, Lcom/facebook/ads/redexgen/X/GU;->A02:I

    if-ne v4, v0, :cond_1

    .line 34112
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/GV;->A06(Lcom/facebook/ads/redexgen/X/IL;)Lcom/facebook/ads/redexgen/X/GP;

    move-result-object v2

    .line 34113
    .restart local v0    # "objectData":Lcom/facebook/ads/redexgen/X/GP;
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/GU;->A05:Landroid/util/SparseArray;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/GP;->A00:I

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34114
    .end local v0    # "objectData":Lcom/facebook/ads/redexgen/X/GP;
    goto/16 :goto_0

    .line 34115
    :pswitch_4
    iget v0, p1, Lcom/facebook/ads/redexgen/X/GU;->A03:I

    if-ne v4, v0, :cond_1

    .line 34116
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/GV;->A05(Lcom/facebook/ads/redexgen/X/IL;)Lcom/facebook/ads/redexgen/X/GO;

    move-result-object v0

    iput-object v0, p1, Lcom/facebook/ads/redexgen/X/GU;->A00:Lcom/facebook/ads/redexgen/X/GO;

    goto/16 :goto_0

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
    .locals 15

    move/from16 v13, p4

    .line 34117
    new-instance v9, Lcom/facebook/ads/redexgen/X/IL;

    move-object v0, p0

    invoke-direct {v9, v0}, Lcom/facebook/ads/redexgen/X/IL;-><init>([B)V

    .line 34118
    .local v10, "data":Lcom/facebook/ads/redexgen/X/IL;
    .local p3, "column":I
    .local v13, "line":I
    const/4 v8, 0x0

    .line 34119
    .local v14, "clutMapTable2To4":[B
    const/4 v7, 0x0

    .line 34120
    .local p0, "clutMapTable2To8":[B
    const/4 v6, 0x0

    move/from16 v12, p3

    .line 34121
    .end local p3    # "column":I
    .end local v13    # "line":I
    .end local v14    # "clutMapTable2To4":[B
    .end local p0    # "clutMapTable2To8":[B
    .local p3, "clutMapTable4To8":[B
    .local v13, "clutMapTable2To4":[B
    .local v8, "clutMapTable2To8":[B
    .local v7, "column":I
    .local v6, "line":I
    :goto_0
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/IL;->A02()I

    move-result v0

    if-eqz v0, :cond_a

    .line 34122
    const/16 v4, 0x8

    invoke-virtual {v9, v4}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v5

    .line 34123
    .local v12, "dataType":I
    const/16 v0, 0xf0

    if-eq v5, v0, :cond_8

    const/4 v0, 0x3

    move-object/from16 v10, p1

    move/from16 v1, p2

    move-object/from16 v14, p5

    move-object/from16 p0, p6

    packed-switch v5, :pswitch_data_0

    const/4 v3, 0x4

    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const-string v1, "nnJuFIsGV5CjoI7UJHQ2Bk6wbONoIcvD"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "B7N9QxouVzPbBX96zhiMkNdTz6ghfWa9"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    packed-switch v5, :pswitch_data_1

    goto :goto_0

    .line 34124
    .end local p3    # "clutMapTable4To8":[B
    .restart local v8    # "clutMapTable2To8":[B
    :pswitch_0
    invoke-static {v3, v3, v9}, Lcom/facebook/ads/redexgen/X/GV;->A0F(IILcom/facebook/ads/redexgen/X/IL;)[B

    move-result-object v8

    .line 34125
    .end local v13    # "clutMapTable2To4":[B
    .local p3, "clutMapTable2To4":[B
    goto :goto_0

    .line 34126
    .end local p3    # "clutMapTable2To4":[B
    .restart local v8    # "clutMapTable2To8":[B
    :pswitch_1
    invoke-static {v3, v4, v9}, Lcom/facebook/ads/redexgen/X/GV;->A0F(IILcom/facebook/ads/redexgen/X/IL;)[B

    move-result-object v7

    .line 34127
    .end local v8    # "clutMapTable2To8":[B
    .restart local p3    # "clutMapTable2To4":[B
    goto :goto_0

    .line 34128
    :pswitch_2
    const/16 v0, 0x10

    invoke-static {v0, v4, v9}, Lcom/facebook/ads/redexgen/X/GV;->A0F(IILcom/facebook/ads/redexgen/X/IL;)[B

    move-result-object v7

    .line 34129
    .end local v8
    .local p3, "clutMapTable2To8":[B
    goto :goto_0

    .line 34130
    .end local v13
    :pswitch_3
    if-ne v1, v0, :cond_1

    .line 34131
    if-nez v7, :cond_0

    sget-object v11, Lcom/facebook/ads/redexgen/X/GV;->A0A:[B

    .line 34132
    .local v13, "clutMapTable2ToX":[B
    :goto_1
    invoke-static/range {v9 .. v15}, Lcom/facebook/ads/redexgen/X/GV;->A01(Lcom/facebook/ads/redexgen/X/IL;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I

    move-result v12

    .line 34133
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/IL;->A06()V

    .line 34134
    goto :goto_0

    .line 34135
    :cond_0
    move-object v11, v7

    goto :goto_1

    .line 34136
    .end local p3    # "clutMapTable2To8":[B
    :cond_1
    const/4 v0, 0x2

    if-ne v1, v0, :cond_3

    .line 34137
    if-nez v8, :cond_2

    sget-object v11, Lcom/facebook/ads/redexgen/X/GV;->A09:[B

    goto :goto_1

    :cond_2
    move-object v11, v8

    goto :goto_1

    .line 34138
    .end local p3
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 34139
    :pswitch_4
    if-ne v1, v0, :cond_5

    .line 34140
    if-nez v6, :cond_4

    sget-object v11, Lcom/facebook/ads/redexgen/X/GV;->A0B:[B

    .line 34141
    .local v13, "clutMapTable4ToX":[B
    :goto_2
    invoke-static/range {v9 .. v15}, Lcom/facebook/ads/redexgen/X/GV;->A02(Lcom/facebook/ads/redexgen/X/IL;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I

    move-result v12

    .line 34142
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/IL;->A06()V

    .line 34143
    goto :goto_0

    .line 34144
    :cond_4
    move-object v11, v6

    goto :goto_2

    .line 34145
    .end local p3
    :cond_5
    const/4 v11, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_7

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const-string v1, "ywEr7H1ZkU3fUIk8F5vLu65dTGZjfu1h"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    goto :goto_2

    .line 34146
    .end local p3
    .restart local v13    # "clutMapTable4ToX":[B
    :pswitch_5
    const/4 v11, 0x0

    invoke-static/range {v9 .. v15}, Lcom/facebook/ads/redexgen/X/GV;->A03(Lcom/facebook/ads/redexgen/X/IL;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I

    move-result v12

    .line 34147
    goto/16 :goto_0

    .line 34148
    .end local v13    # "clutMapTable4ToX":[B
    :cond_8
    move/from16 v12, p3

    sget-object v1, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_9

    .line 34149
    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const-string v1, "9tyozG4lbSXUGnB14yX0PwlmOZMu8mKn"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "zB65tdLGIFDHc3IIcHjCnZN0WwQ6SUlQ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    add-int/lit8 v13, v13, 0x2

    .line 34150
    goto/16 :goto_0

    .line 34151
    :cond_9
    add-int/lit8 v13, v13, 0x2

    .line 34152
    goto/16 :goto_0

    .line 34153
    :cond_a
    return-void

    nop

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

    .line 34154
    new-array v2, p0, [B

    .line 34155
    .local p0, "clutMapTable":[B
    const/4 v1, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 34156
    invoke-virtual {p2, p1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, v2, v1

    .line 34157
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34158
    .end local p1    # "i":I
    :cond_0
    return-object v2
.end method

.method public static A0G()[I
    .locals 3

    .line 34159
    const/4 v0, 0x4

    new-array v2, v0, [I

    .line 34160
    .local v0, "entries":[I
    const/4 v0, 0x0

    aput v0, v2, v0

    .line 34161
    const/4 v1, 0x1

    const/4 v0, -0x1

    aput v0, v2, v1

    .line 34162
    const/4 v1, 0x2

    const/high16 v0, -0x1000000

    aput v0, v2, v1

    .line 34163
    const/4 v1, 0x3

    const v0, -0x808081

    aput v0, v2, v1

    .line 34164
    return-object v2
.end method

.method public static A0H()[I
    .locals 7

    .line 34165
    const/16 v0, 0x10

    new-array v5, v0, [I

    .line 34166
    .local v0, "entries":[I
    const/4 v0, 0x0

    aput v0, v5, v0

    .line 34167
    const/4 v4, 0x1

    .local v0, "i":I
    :goto_0
    array-length v0, v5

    if-ge v4, v0, :cond_7

    .line 34168
    const/16 v0, 0x8

    const/16 v6, 0xff

    if-ge v4, v0, :cond_3

    .line 34169
    and-int/lit8 v0, v4, 0x1

    if-eqz v0, :cond_2

    const/16 v2, 0xff

    .line 34170
    :goto_1
    and-int/lit8 v0, v4, 0x2

    if-eqz v0, :cond_1

    const/16 v1, 0xff

    .line 34171
    :goto_2
    and-int/lit8 v0, v4, 0x4

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    .line 34172
    :goto_3
    invoke-static {v6, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/GV;->A00(IIII)I

    move-result v0

    aput v0, v5, v4

    .line 34173
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 34174
    :cond_0
    const/4 v0, 0x0

    goto :goto_3

    .line 34175
    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 34176
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 34177
    :cond_3
    and-int/lit8 v0, v4, 0x1

    const/16 v3, 0x7f

    if-eqz v0, :cond_6

    const/16 v2, 0x7f

    .line 34178
    :goto_5
    and-int/lit8 v0, v4, 0x2

    if-eqz v0, :cond_5

    const/16 v1, 0x7f

    .line 34179
    :goto_6
    and-int/lit8 v0, v4, 0x4

    if-eqz v0, :cond_4

    .line 34180
    :goto_7
    invoke-static {v6, v2, v1, v3}, Lcom/facebook/ads/redexgen/X/GV;->A00(IIII)I

    move-result v0

    aput v0, v5, v4

    goto :goto_4

    .line 34181
    :cond_4
    const/4 v3, 0x0

    goto :goto_7

    .line 34182
    :cond_5
    const/4 v1, 0x0

    goto :goto_6

    .line 34183
    :cond_6
    const/4 v2, 0x0

    goto :goto_5

    .line 34184
    .end local v0    # "i":I
    :cond_7
    return-object v5
.end method

.method public static A0I()[I
    .locals 11

    .line 34185
    const/16 v0, 0x100

    new-array v5, v0, [I

    .line 34186
    .local v0, "entries":[I
    const/4 v0, 0x0

    aput v0, v5, v0

    .line 34187
    const/4 v4, 0x0

    .local v0, "i":I
    :goto_0
    array-length v0, v5

    if-ge v4, v0, :cond_26

    .line 34188
    const/16 v8, 0x8

    sget-object v1, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_1d

    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const-string v1, "7y54aHaRl5REI13HJ3s1imsDPHbTblVp"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/16 v7, 0xff

    if-ge v4, v8, :cond_3

    .line 34189
    const/16 v3, 0x3f

    .line 34190
    and-int/lit8 v0, v4, 0x1

    if-eqz v0, :cond_2

    const/16 v2, 0xff

    .line 34191
    :goto_1
    and-int/lit8 v0, v4, 0x2

    if-eqz v0, :cond_1

    const/16 v1, 0xff

    .line 34192
    :goto_2
    and-int/lit8 v0, v4, 0x4

    if-eqz v0, :cond_0

    .line 34193
    :goto_3
    invoke-static {v3, v2, v1, v7}, Lcom/facebook/ads/redexgen/X/GV;->A00(IIII)I

    move-result v0

    aput v0, v5, v4

    .line 34194
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 34195
    :cond_0
    const/4 v7, 0x0

    goto :goto_3

    .line 34196
    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 34197
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 34198
    :cond_3
    and-int/lit16 v1, v4, 0x88

    const/16 v10, 0xaa

    const/16 v6, 0x55

    if-eqz v1, :cond_14

    const/16 v3, 0x7f

    if-eq v1, v8, :cond_1c

    const/16 v0, 0x80

    const/16 v8, 0x2b

    if-eq v1, v0, :cond_c

    const/16 v0, 0x88

    if-eq v1, v0, :cond_4

    goto :goto_4

    .line 34199
    :cond_4
    and-int/lit8 v0, v4, 0x1

    if-eqz v0, :cond_b

    const/16 v9, 0x2b

    :goto_5
    and-int/lit8 v0, v4, 0x10

    if-eqz v0, :cond_a

    const/16 v0, 0x55

    :goto_6
    add-int/2addr v9, v0

    .line 34200
    and-int/lit8 v0, v4, 0x2

    if-eqz v0, :cond_9

    const/16 v3, 0x2b

    :goto_7
    and-int/lit8 v0, v4, 0x20

    if-eqz v0, :cond_8

    const/16 v0, 0x55

    :goto_8
    add-int/2addr v3, v0

    .line 34201
    and-int/lit8 v0, v4, 0x4

    if-eqz v0, :cond_7

    :goto_9
    and-int/lit8 v10, v4, 0x40

    sget-object v1, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const-string v1, "rqpSBs3vuZ0ERZdVV6yaRn8vqIGdmkwB"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v10, :cond_6

    :goto_a
    add-int/2addr v8, v6

    .line 34202
    invoke-static {v7, v9, v3, v8}, Lcom/facebook/ads/redexgen/X/GV;->A00(IIII)I

    move-result v0

    aput v0, v5, v4

    goto :goto_4

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const-string v1, "2QJGhvhuyca3nv8SEdFx1xy9G3klEgNt"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "r0SxrSAMbEoy1xhAukRyPN5ngWlJAOxP"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v10, :cond_6

    goto :goto_a

    .line 34203
    :cond_6
    const/4 v6, 0x0

    goto :goto_a

    :cond_7
    const/4 v8, 0x0

    goto :goto_9

    .line 34204
    :cond_8
    const/4 v0, 0x0

    goto :goto_8

    :cond_9
    const/4 v3, 0x0

    goto :goto_7

    .line 34205
    :cond_a
    const/4 v0, 0x0

    goto :goto_6

    :cond_b
    const/4 v9, 0x0

    goto :goto_5

    .line 34206
    :cond_c
    and-int/lit8 v0, v4, 0x1

    if-eqz v0, :cond_13

    const/16 v2, 0x2b

    :goto_b
    add-int/2addr v2, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_11

    sget-object v9, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const-string v1, "8rwGXlyeTkBDctGAAe0ybw2U4QS8yLu8"

    const/4 v0, 0x6

    aput-object v1, v9, v0

    const-string v1, "b3XBP5juEUhRB0eBqHayBxF2ov8DVqZh"

    const/4 v0, 0x3

    aput-object v1, v9, v0

    and-int/lit8 v0, v4, 0x10

    if-eqz v0, :cond_12

    :goto_c
    const/16 v0, 0x55

    :goto_d
    add-int/2addr v2, v0

    .line 34207
    and-int/lit8 v0, v4, 0x2

    if-eqz v0, :cond_10

    const/16 v1, 0x2b

    :goto_e
    add-int/2addr v1, v3

    and-int/lit8 v0, v4, 0x20

    if-eqz v0, :cond_f

    const/16 v0, 0x55

    :goto_f
    add-int/2addr v1, v0

    .line 34208
    and-int/lit8 v0, v4, 0x4

    if-eqz v0, :cond_e

    :goto_10
    add-int/2addr v8, v3

    and-int/lit8 v0, v4, 0x40

    if-eqz v0, :cond_d

    :goto_11
    add-int/2addr v8, v6

    .line 34209
    invoke-static {v7, v2, v1, v8}, Lcom/facebook/ads/redexgen/X/GV;->A00(IIII)I

    move-result v0

    aput v0, v5, v4

    .line 34210
    goto/16 :goto_4

    .line 34211
    :cond_d
    const/4 v6, 0x0

    goto :goto_11

    :cond_e
    const/4 v8, 0x0

    goto :goto_10

    .line 34212
    :cond_f
    const/4 v0, 0x0

    goto :goto_f

    :cond_10
    const/4 v1, 0x0

    goto :goto_e

    :cond_11
    and-int/lit8 v0, v4, 0x10

    if-eqz v0, :cond_12

    goto :goto_c

    .line 34213
    :cond_12
    const/4 v0, 0x0

    goto :goto_d

    :cond_13
    const/4 v2, 0x0

    goto :goto_b

    .line 34214
    :cond_14
    and-int/lit8 v0, v4, 0x1

    if-eqz v0, :cond_1b

    const/16 v8, 0x55

    :goto_12
    and-int/lit8 v0, v4, 0x10

    if-eqz v0, :cond_1a

    const/16 v0, 0xaa

    :goto_13
    add-int/2addr v8, v0

    .line 34215
    and-int/lit8 v0, v4, 0x2

    if-eqz v0, :cond_19

    const/16 v3, 0x55

    :goto_14
    and-int/lit8 v9, v4, 0x20

    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_17

    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const-string v1, "wHDyMipoRF4Sy41BpQnebh5fQe1LXtvR"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v9, :cond_18

    :goto_15
    const/16 v0, 0xaa

    :goto_16
    add-int/2addr v3, v0

    .line 34216
    and-int/lit8 v0, v4, 0x4

    if-eqz v0, :cond_16

    :goto_17
    and-int/lit8 v0, v4, 0x40

    if-eqz v0, :cond_15

    :goto_18
    add-int/2addr v6, v10

    .line 34217
    invoke-static {v7, v8, v3, v6}, Lcom/facebook/ads/redexgen/X/GV;->A00(IIII)I

    move-result v0

    aput v0, v5, v4

    .line 34218
    goto/16 :goto_4

    .line 34219
    :cond_15
    const/4 v10, 0x0

    goto :goto_18

    :cond_16
    const/4 v6, 0x0

    goto :goto_17

    :cond_17
    if-eqz v9, :cond_18

    goto :goto_15

    .line 34220
    :cond_18
    const/4 v0, 0x0

    goto :goto_16

    :cond_19
    const/4 v3, 0x0

    goto :goto_14

    .line 34221
    :cond_1a
    const/4 v0, 0x0

    goto :goto_13

    :cond_1b
    const/4 v8, 0x0

    goto :goto_12

    .line 34222
    :cond_1c
    and-int/lit8 v7, v4, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_23

    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const-string v1, "zD6Csp8ux"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "ABdM1nmFS67IaChkXEo7C65oL6pHbci"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v7, :cond_24

    :goto_19
    const/16 v2, 0x55

    :goto_1a
    and-int/lit8 v0, v4, 0x10

    if-eqz v0, :cond_22

    const/16 v0, 0xaa

    :goto_1b
    add-int/2addr v2, v0

    .line 34223
    and-int/lit8 v0, v4, 0x2

    if-eqz v0, :cond_21

    const/16 v1, 0x55

    :goto_1c
    and-int/lit8 v0, v4, 0x20

    if-eqz v0, :cond_20

    const/16 v0, 0xaa

    :goto_1d
    add-int/2addr v1, v0

    .line 34224
    and-int/lit8 v0, v4, 0x4

    if-eqz v0, :cond_1f

    :goto_1e
    and-int/lit8 v0, v4, 0x40

    if-eqz v0, :cond_1e

    :goto_1f
    add-int/2addr v6, v10

    .line 34225
    invoke-static {v3, v2, v1, v6}, Lcom/facebook/ads/redexgen/X/GV;->A00(IIII)I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_25

    :cond_1d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 34226
    :cond_1e
    const/4 v10, 0x0

    goto :goto_1f

    :cond_1f
    const/4 v6, 0x0

    goto :goto_1e

    .line 34227
    :cond_20
    const/4 v0, 0x0

    goto :goto_1d

    :cond_21
    const/4 v1, 0x0

    goto :goto_1c

    .line 34228
    :cond_22
    const/4 v0, 0x0

    goto :goto_1b

    :cond_23
    if-eqz v7, :cond_24

    goto :goto_19

    :cond_24
    const/4 v2, 0x0

    goto :goto_1a

    :cond_25
    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const-string v1, "bDBxdZVxANiceBpFScFowteWsfRZjeai"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    aput v3, v5, v4

    .line 34229
    goto/16 :goto_4

    .line 34230
    .end local v0    # "i":I
    :cond_26
    return-object v5
.end method


# virtual methods
.method public final A0J([BI)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/GB;",
            ">;"
        }
    .end annotation

    .line 34231
    move-object/from16 v0, p0

    new-instance v3, Lcom/facebook/ads/redexgen/X/IL;

    move-object/from16 v2, p1

    move/from16 v1, p2

    invoke-direct {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/IL;-><init>([BI)V

    .line 34232
    .local v2, "dataBitArray":Lcom/facebook/ads/redexgen/X/IL;
    :goto_0
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IL;->A02()I

    move-result v2

    const/16 v1, 0x30

    if-lt v2, v1, :cond_0

    const/16 v1, 0x8

    .line 34233
    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v2

    const/16 v1, 0xf

    if-ne v2, v1, :cond_0

    .line 34234
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/GV;->A06:Lcom/facebook/ads/redexgen/X/GU;

    invoke-static {v3, v1}, Lcom/facebook/ads/redexgen/X/GV;->A0D(Lcom/facebook/ads/redexgen/X/IL;Lcom/facebook/ads/redexgen/X/GU;)V

    goto :goto_0

    .line 34235
    :cond_0
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/GV;->A06:Lcom/facebook/ads/redexgen/X/GU;

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/GU;->A01:Lcom/facebook/ads/redexgen/X/GQ;

    if-nez v1, :cond_1

    .line 34236
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 34237
    :cond_1
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/GV;->A06:Lcom/facebook/ads/redexgen/X/GU;

    iget-object v4, v1, Lcom/facebook/ads/redexgen/X/GU;->A00:Lcom/facebook/ads/redexgen/X/GO;

    sget-object v3, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v2, v3, v1

    const/4 v1, 0x5

    aget-object v1, v3, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v2, v1, :cond_12

    sget-object v3, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const-string v2, "z8hrEfHRE"

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const-string v2, "tEcTk7NjBKTGmUTfvqHNNfUFGTzpRsq"

    const/4 v1, 0x5

    aput-object v2, v3, v1

    if-eqz v4, :cond_10

    .line 34238
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/GV;->A06:Lcom/facebook/ads/redexgen/X/GU;

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/GU;->A00:Lcom/facebook/ads/redexgen/X/GO;

    .line 34239
    .local v2, "displayDefinition":Lcom/facebook/ads/redexgen/X/GO;
    :goto_1
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/GV;->A00:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget v1, v2, Lcom/facebook/ads/redexgen/X/GO;->A05:I

    add-int/lit8 v3, v1, 0x1

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/GV;->A00:Landroid/graphics/Bitmap;

    .line 34240
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v3, v1, :cond_2

    iget v1, v2, Lcom/facebook/ads/redexgen/X/GO;->A00:I

    add-int/lit8 v3, v1, 0x1

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/GV;->A00:Landroid/graphics/Bitmap;

    .line 34241
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v3, v1, :cond_3

    .line 34242
    :cond_2
    iget v1, v2, Lcom/facebook/ads/redexgen/X/GO;->A05:I

    add-int/lit8 v4, v1, 0x1

    iget v1, v2, Lcom/facebook/ads/redexgen/X/GO;->A00:I

    add-int/lit8 v3, v1, 0x1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 34243
    invoke-static {v4, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/GV;->A00:Landroid/graphics/Bitmap;

    .line 34244
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/GV;->A01:Landroid/graphics/Canvas;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/GV;->A00:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 34245
    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 34246
    .local v1, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/text/Cue;>;"
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/GV;->A06:Lcom/facebook/ads/redexgen/X/GU;

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/GU;->A01:Lcom/facebook/ads/redexgen/X/GQ;

    iget-object v6, v1, Lcom/facebook/ads/redexgen/X/GQ;->A03:Landroid/util/SparseArray;

    .line 34247
    .local v3, "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/text/dvb/DvbParser$PageRegion;>;"
    const/4 v5, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v8

    sget-object v4, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v3, v4, v1

    const/4 v1, 0x3

    aget-object v4, v4, v1

    const/4 v1, 0x3

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v3, v1, :cond_f

    sget-object v4, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const-string v3, "TprGMNp3AYOmeYIcCj9alnxqC4oFWUd6"

    const/4 v1, 0x6

    aput-object v3, v4, v1

    const-string v3, "Eq3XgCegRXd5fB5msr1SXwFGWzY9w5wa"

    const/4 v1, 0x3

    aput-object v3, v4, v1

    if-ge v5, v8, :cond_11

    .line 34248
    :goto_3
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/facebook/ads/redexgen/X/GR;

    .line 34249
    .local v1, "pageRegion":Lcom/facebook/ads/redexgen/X/GR;
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 34250
    .local v1, "regionId":I
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/GV;->A06:Lcom/facebook/ads/redexgen/X/GU;

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/GU;->A08:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/GS;

    .line 34251
    .local v2, "regionComposition":Lcom/facebook/ads/redexgen/X/GS;
    iget v4, v10, Lcom/facebook/ads/redexgen/X/GR;->A00:I

    iget v3, v2, Lcom/facebook/ads/redexgen/X/GO;->A02:I

    add-int/2addr v4, v3

    sget-object v9, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v8, v9, v3

    const/4 v3, 0x0

    aget-object v9, v9, v3

    const/16 v3, 0x13

    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v8, v3, :cond_e

    .line 34252
    .local v1, "baseHorizontalAddress":I
    sget-object v9, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const-string v8, "TY5GWswnGZgqU5TBTRN2XTUe2O3rblrN"

    const/4 v3, 0x4

    aput-object v8, v9, v3

    const-string v8, "yCdfjvFRPQZrw6b6gB422Kgbwhe9KBG1"

    const/4 v3, 0x0

    aput-object v8, v9, v3

    iget v3, v10, Lcom/facebook/ads/redexgen/X/GR;->A01:I

    iget v8, v2, Lcom/facebook/ads/redexgen/X/GO;->A04:I

    add-int/2addr v3, v8

    .line 34253
    .local v1, "baseVerticalAddress":I
    iget v9, v1, Lcom/facebook/ads/redexgen/X/GS;->A08:I

    add-int/2addr v9, v4

    iget v8, v2, Lcom/facebook/ads/redexgen/X/GO;->A01:I

    .line 34254
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 34255
    .local v1, "clipRight":I
    iget v9, v1, Lcom/facebook/ads/redexgen/X/GS;->A02:I

    add-int/2addr v9, v3

    iget v8, v2, Lcom/facebook/ads/redexgen/X/GO;->A03:I

    .line 34256
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 34257
    .local v1, "clipBottom":I
    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/GV;->A01:Landroid/graphics/Canvas;

    .end local v2    # "regionComposition":Lcom/facebook/ads/redexgen/X/GS;
    .local v1, "dataBitArray":Lcom/facebook/ads/redexgen/X/IL;
    int-to-float v12, v4

    int-to-float v13, v3

    int-to-float v14, v10

    .end local v3    # "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/text/dvb/DvbParser$PageRegion;>;"
    .local v1, "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/text/dvb/DvbParser$PageRegion;>;"
    int-to-float v15, v8

    sget-object v16, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 34258
    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/GV;->A06:Lcom/facebook/ads/redexgen/X/GU;

    iget-object v9, v8, Lcom/facebook/ads/redexgen/X/GU;->A06:Landroid/util/SparseArray;

    iget v8, v1, Lcom/facebook/ads/redexgen/X/GS;->A00:I

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/facebook/ads/redexgen/X/GN;

    .line 34259
    .local v2, "clutDefinition":Lcom/facebook/ads/redexgen/X/GN;
    if-nez v14, :cond_4

    .line 34260
    :goto_4
    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/GV;->A06:Lcom/facebook/ads/redexgen/X/GU;

    sget-object v10, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const/4 v8, 0x6

    aget-object v9, v10, v8

    const/4 v8, 0x3

    aget-object v10, v10, v8

    const/4 v8, 0x3

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v10, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v9, v8, :cond_d

    sget-object v10, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const-string v9, "FqzyOIY2SO0zI5B62Gz2koPoL8lG6Y83"

    const/4 v8, 0x4

    aput-object v9, v10, v8

    const-string v9, "OO5P85uWBDMqMzJuElY2BFz2z3H1SOXI"

    const/4 v8, 0x0

    aput-object v9, v10, v8

    iget-object v9, v11, Lcom/facebook/ads/redexgen/X/GU;->A04:Landroid/util/SparseArray;

    iget v8, v1, Lcom/facebook/ads/redexgen/X/GS;->A00:I

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/facebook/ads/redexgen/X/GN;

    .line 34261
    if-nez v14, :cond_4

    .line 34262
    :goto_5
    iget-object v14, v0, Lcom/facebook/ads/redexgen/X/GV;->A04:Lcom/facebook/ads/redexgen/X/GN;

    .line 34263
    :cond_4
    iget-object v10, v1, Lcom/facebook/ads/redexgen/X/GS;->A09:Landroid/util/SparseArray;

    .line 34264
    .local v1, "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/text/dvb/DvbParser$RegionObject;>;"
    const/4 v9, 0x0

    .local v0, "j":I
    :goto_6
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v13

    sget-object v11, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const/4 v8, 0x2

    aget-object v11, v11, v8

    const/16 v8, 0x17

    invoke-virtual {v11, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v8, 0x6f

    if-eq v11, v8, :cond_12

    sget-object v12, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const-string v11, "8CBvTLi9MCYkuIvOm7pX0icqjNgV3H5L"

    const/4 v8, 0x2

    aput-object v11, v12, v8

    if-ge v9, v13, :cond_8

    .line 34265
    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 34266
    .local v3, "objectId":I
    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/ads/redexgen/X/GT;

    .line 34267
    .local v0, "regionObject":Lcom/facebook/ads/redexgen/X/GT;
    .end local v1    # "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/text/dvb/DvbParser$RegionObject;>;"
    .local v1, "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/text/dvb/DvbParser$RegionObject;>;"
    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/GV;->A06:Lcom/facebook/ads/redexgen/X/GU;

    iget-object v8, v8, Lcom/facebook/ads/redexgen/X/GU;->A07:Landroid/util/SparseArray;

    invoke-virtual {v8, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/facebook/ads/redexgen/X/GP;

    .line 34268
    .local v1, "objectData":Lcom/facebook/ads/redexgen/X/GP;
    if-nez v13, :cond_5

    .line 34269
    .end local v1    # "objectData":Lcom/facebook/ads/redexgen/X/GP;
    .local v4, "objectData":Lcom/facebook/ads/redexgen/X/GP;
    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/GV;->A06:Lcom/facebook/ads/redexgen/X/GU;

    iget-object v8, v8, Lcom/facebook/ads/redexgen/X/GU;->A05:Landroid/util/SparseArray;

    invoke-virtual {v8, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/facebook/ads/redexgen/X/GP;

    .line 34270
    .end local v4    # "objectData":Lcom/facebook/ads/redexgen/X/GP;
    .restart local v1    # "objectData":Lcom/facebook/ads/redexgen/X/GP;
    :cond_5
    if-eqz v13, :cond_6

    .line 34271
    .end local v3    # "objectId":I
    .local v4, "objectId":I
    iget-boolean v8, v13, Lcom/facebook/ads/redexgen/X/GP;->A01:Z

    if-eqz v8, :cond_7

    const/4 v8, 0x0

    .line 34272
    .local v2, "paint":Landroid/graphics/Paint;
    :goto_7
    iget v15, v1, Lcom/facebook/ads/redexgen/X/GS;->A01:I

    .end local v1    # "objectData":Lcom/facebook/ads/redexgen/X/GP;
    .local v3, "pageRegion":Lcom/facebook/ads/redexgen/X/GR;
    iget v12, v11, Lcom/facebook/ads/redexgen/X/GT;->A02:I

    add-int v16, v4, v12

    iget v11, v11, Lcom/facebook/ads/redexgen/X/GT;->A05:I

    add-int v17, v3, v11

    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/GV;->A01:Landroid/graphics/Canvas;

    move-object/from16 v18, v8

    move-object/from16 v19, v11

    invoke-static/range {v13 .. v19}, Lcom/facebook/ads/redexgen/X/GV;->A0C(Lcom/facebook/ads/redexgen/X/GP;Lcom/facebook/ads/redexgen/X/GN;IIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 34273
    .end local v1
    .end local v3    # "pageRegion":Lcom/facebook/ads/redexgen/X/GR;
    .end local v1
    .end local v0    # "regionObject":Lcom/facebook/ads/redexgen/X/GT;
    .restart local v3    # "pageRegion":Lcom/facebook/ads/redexgen/X/GR;
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 34274
    :cond_7
    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/GV;->A02:Landroid/graphics/Paint;

    goto :goto_7

    .line 34275
    .end local v1
    .end local v3    # "pageRegion":Lcom/facebook/ads/redexgen/X/GR;
    .local v1, "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/text/dvb/DvbParser$RegionObject;>;"
    .restart local v1    # "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/text/dvb/DvbParser$RegionObject;>;"
    .end local v1    # "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/text/dvb/DvbParser$RegionObject;>;"
    .end local v0
    .end local v1
    .restart local v1    # "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/text/dvb/DvbParser$RegionObject;>;"
    .restart local v3    # "pageRegion":Lcom/facebook/ads/redexgen/X/GR;
    :cond_8
    iget-boolean v8, v1, Lcom/facebook/ads/redexgen/X/GS;->A0A:Z

    if-eqz v8, :cond_9

    .line 34276
    iget v9, v1, Lcom/facebook/ads/redexgen/X/GS;->A01:I

    const/4 v8, 0x3

    if-ne v9, v8, :cond_a

    .line 34277
    iget-object v9, v14, Lcom/facebook/ads/redexgen/X/GN;->A03:[I

    iget v8, v1, Lcom/facebook/ads/redexgen/X/GS;->A07:I

    aget v9, v9, v8

    .line 34278
    .local v1, "color":I
    .restart local v1    # "color":I
    :goto_8
    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/GV;->A03:Landroid/graphics/Paint;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 34279
    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/GV;->A01:Landroid/graphics/Canvas;

    int-to-float v10, v4

    int-to-float v11, v3

    iget v8, v1, Lcom/facebook/ads/redexgen/X/GS;->A08:I

    add-int/2addr v8, v4

    int-to-float v12, v8

    .end local v2    # "paint":Landroid/graphics/Paint;
    .local v4, "clutDefinition":Lcom/facebook/ads/redexgen/X/GN;
    iget v8, v1, Lcom/facebook/ads/redexgen/X/GS;->A02:I

    add-int/2addr v8, v3

    int-to-float v13, v8

    .end local v1    # "color":I
    .local v1, "color":I
    iget-object v14, v0, Lcom/facebook/ads/redexgen/X/GV;->A03:Landroid/graphics/Paint;

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 34280
    .end local v2
    .restart local v4    # "clutDefinition":Lcom/facebook/ads/redexgen/X/GN;
    :cond_9
    iget-object v10, v0, Lcom/facebook/ads/redexgen/X/GV;->A00:Landroid/graphics/Bitmap;

    iget v9, v1, Lcom/facebook/ads/redexgen/X/GS;->A08:I

    iget v8, v1, Lcom/facebook/ads/redexgen/X/GS;->A02:I

    .line 34281
    invoke-static {v10, v4, v3, v9, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 34282
    .local v2, "cueBitmap":Landroid/graphics/Bitmap;
    new-instance v8, Lcom/facebook/ads/redexgen/X/GB;

    int-to-float v10, v4

    iget v4, v2, Lcom/facebook/ads/redexgen/X/GO;->A05:I

    int-to-float v4, v4

    div-float/2addr v10, v4

    const/4 v11, 0x0

    int-to-float v12, v3

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

    .line 34283
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/GV;->A01:Landroid/graphics/Canvas;

    const/4 v3, 0x0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v3, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 34284
    .end local v2    # "cueBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "color":I
    .end local v2
    .end local v1
    .end local v1
    .end local v1
    .end local v1
    .end local v1
    .end local v4    # "clutDefinition":Lcom/facebook/ads/redexgen/X/GN;
    .end local v3    # "pageRegion":Lcom/facebook/ads/redexgen/X/GR;
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 34285
    .end local v1
    :cond_a
    iget v9, v1, Lcom/facebook/ads/redexgen/X/GS;->A01:I

    const/4 v8, 0x2

    if-ne v9, v8, :cond_b

    .line 34286
    iget-object v9, v14, Lcom/facebook/ads/redexgen/X/GN;->A02:[I

    iget v8, v1, Lcom/facebook/ads/redexgen/X/GS;->A06:I

    aget v9, v9, v8

    .restart local v1    # "color":I
    goto :goto_8

    .line 34287
    .end local v1    # "color":I
    :cond_b
    iget-object v11, v14, Lcom/facebook/ads/redexgen/X/GN;->A01:[I

    sget-object v10, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const/4 v8, 0x4

    aget-object v9, v10, v8

    const/4 v8, 0x0

    aget-object v10, v10, v8

    const/16 v8, 0x13

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v10, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v9, v8, :cond_c

    iget v8, v1, Lcom/facebook/ads/redexgen/X/GS;->A05:I

    aget v9, v11, v8

    goto :goto_8

    :cond_c
    sget-object v10, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const-string v9, "SK7qwpqeD"

    const/4 v8, 0x1

    aput-object v9, v10, v8

    const-string v9, "H8yQ2FZGH97VM0iLZGupvWVfM60nEcr"

    const/4 v8, 0x5

    aput-object v9, v10, v8

    iget v8, v1, Lcom/facebook/ads/redexgen/X/GS;->A05:I

    aget v9, v11, v8

    goto/16 :goto_8

    :cond_d
    iget-object v9, v11, Lcom/facebook/ads/redexgen/X/GU;->A04:Landroid/util/SparseArray;

    iget v8, v1, Lcom/facebook/ads/redexgen/X/GS;->A00:I

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/facebook/ads/redexgen/X/GN;

    .line 34288
    if-nez v14, :cond_4

    goto/16 :goto_5

    .line 34289
    .local v1, "baseHorizontalAddress":I
    :cond_e
    sget-object v9, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const-string v8, "9LKzldxuFJaIme257qc067WNURDIagQu"

    const/4 v3, 0x2

    aput-object v8, v9, v3

    iget v3, v10, Lcom/facebook/ads/redexgen/X/GR;->A01:I

    iget v8, v2, Lcom/facebook/ads/redexgen/X/GO;->A04:I

    add-int/2addr v3, v8

    .line 34290
    .local v1, "baseVerticalAddress":I
    iget v9, v1, Lcom/facebook/ads/redexgen/X/GS;->A08:I

    add-int/2addr v9, v4

    iget v8, v2, Lcom/facebook/ads/redexgen/X/GO;->A01:I

    .line 34291
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 34292
    .local v1, "clipRight":I
    iget v9, v1, Lcom/facebook/ads/redexgen/X/GS;->A02:I

    add-int/2addr v9, v3

    iget v8, v2, Lcom/facebook/ads/redexgen/X/GO;->A03:I

    .line 34293
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 34294
    .local v1, "clipBottom":I
    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/GV;->A01:Landroid/graphics/Canvas;

    .end local v2
    .local v1, "dataBitArray":Lcom/facebook/ads/redexgen/X/IL;
    int-to-float v12, v4

    int-to-float v13, v3

    int-to-float v14, v10

    .end local v3
    .local v1, "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/text/dvb/DvbParser$PageRegion;>;"
    int-to-float v15, v8

    sget-object v16, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 34295
    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/GV;->A06:Lcom/facebook/ads/redexgen/X/GU;

    iget-object v9, v8, Lcom/facebook/ads/redexgen/X/GU;->A06:Landroid/util/SparseArray;

    iget v8, v1, Lcom/facebook/ads/redexgen/X/GS;->A00:I

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/facebook/ads/redexgen/X/GN;

    .line 34296
    .local v2, "clutDefinition":Lcom/facebook/ads/redexgen/X/GN;
    if-nez v14, :cond_4

    goto/16 :goto_4

    :cond_f
    if-ge v5, v8, :cond_11

    goto/16 :goto_3

    .line 34297
    :cond_10
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/GV;->A05:Lcom/facebook/ads/redexgen/X/GO;

    goto/16 :goto_1

    .line 34298
    .end local v2    # "clutDefinition":Lcom/facebook/ads/redexgen/X/GN;
    .end local v1    # "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/text/dvb/DvbParser$PageRegion;>;"
    .end local v1
    .local v2, "dataBitArray":Lcom/facebook/ads/redexgen/X/IL;
    .local v3, "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/text/dvb/DvbParser$PageRegion;>;"
    :cond_11
    return-object v7

    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0K()V
    .locals 1

    .line 34299
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GV;->A06:Lcom/facebook/ads/redexgen/X/GU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/GU;->A00()V

    .line 34300
    return-void
.end method
