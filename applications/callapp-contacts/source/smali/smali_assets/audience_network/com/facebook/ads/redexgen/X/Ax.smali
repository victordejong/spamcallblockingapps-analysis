.class public final Lcom/facebook/ads/redexgen/X/Ax;
.super Lcom/facebook/ads/redexgen/X/TB;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/BE;
    }
.end annotation


# static fields
.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/redexgen/X/BE;

.field public A04:[I

.field public final A05:Lcom/facebook/ads/redexgen/X/XJ;

.field public final A06:Lcom/facebook/ads/redexgen/X/Om;

.field public final A07:Lcom/facebook/ads/redexgen/X/On;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ax;->A04()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/On;Lcom/facebook/ads/redexgen/X/Om;)V
    .locals 2

    .line 22004
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/TB;-><init>(Landroid/content/Context;)V

    .line 22005
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ax;->A02:I

    .line 22006
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ax;->A00:F

    .line 22007
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ax;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    .line 22008
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ax;->A07:Lcom/facebook/ads/redexgen/X/On;

    .line 22009
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Ax;->A06:Lcom/facebook/ads/redexgen/X/Om;

    .line 22010
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ax;->A01:I

    .line 22011
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ax;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/BE;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/BE;-><init>(Lcom/facebook/ads/redexgen/X/Ax;Lcom/facebook/ads/redexgen/X/XJ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ax;->A03:Lcom/facebook/ads/redexgen/X/BE;

    .line 22012
    return-void
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Ax;)F
    .locals 0

    .line 22013
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Ax;->A00:F

    return p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Ax;)I
    .locals 0

    .line 22014
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Ax;->A02:I

    return p0
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "bHvO3zM"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "7z8VpEP"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "iw2Y0c"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "LME8njBPiXs011hhslbtp"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "9K0lNzbR5X2b0vS5"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Pt0EnZUFnGQLsNks8pQcEgn0FivkNzUh"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "t6anbflpJj2CGicCnIMdWTRCydsD"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "D9TL9YTSSd0lWzGeUvgWfvwaUF0YdAOx"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ax;->A08:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A1K(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;II)V
    .locals 16

    .line 22015
    move-object/from16 v9, p0

    move-object v9, v9

    move/from16 v3, p3

    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 22016
    .local v0, "widthMode":I
    move/from16 v1, p4

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 22017
    .local v2, "heightMode":I
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x1

    move-object/from16 v2, p2

    if-ne v8, v6, :cond_0

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/TB;->A2B()I

    move-result v0

    if-eq v0, v5, :cond_1

    :cond_0
    if-ne v7, v6, :cond_2

    .line 22018
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/TB;->A2B()I

    move-result v0

    if-nez v0, :cond_2

    .line 22019
    :cond_1
    move-object/from16 v0, p1

    invoke-super {v9, v0, v2, v3, v1}, Lcom/facebook/ads/redexgen/X/4K;->A1K(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;II)V

    .line 22020
    return-void

    .line 22021
    :cond_2
    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 22022
    .local v9, "widthSize":I
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 22023
    .local v8, "heightSize":I
    iget-object v1, v9, Lcom/facebook/ads/redexgen/X/Ax;->A06:Lcom/facebook/ads/redexgen/X/Om;

    iget v0, v9, Lcom/facebook/ads/redexgen/X/Ax;->A01:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Om;->A01(I)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    .line 22024
    iget-object v1, v9, Lcom/facebook/ads/redexgen/X/Ax;->A06:Lcom/facebook/ads/redexgen/X/Om;

    iget v0, v9, Lcom/facebook/ads/redexgen/X/Ax;->A01:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Om;->A02(I)[I

    move-result-object v3

    .line 22025
    .local v7, "dimen":[I
    .end local v5
    :cond_3
    :goto_0
    if-ne v8, v6, :cond_4

    .line 22026
    aput v15, v3, v4

    .line 22027
    :cond_4
    if-ne v7, v6, :cond_5

    .line 22028
    aput v14, v3, v5

    .line 22029
    :cond_5
    aget v1, v3, v4

    aget v0, v3, v5

    invoke-virtual {v9, v1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A14(II)V

    .line 22030
    return-void

    .line 22031
    .end local v7    # "dimen":[I
    :cond_6
    const/4 v0, 0x2

    new-array v3, v0, [I

    fill-array-data v3, :array_0

    .line 22032
    .restart local v7    # "dimen":[I
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4Z;->A03()I

    move-result v0

    if-lt v0, v5, :cond_3

    .line 22033
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    if-lez v0, :cond_d

    const/4 v11, 0x1

    .line 22034
    .local v5, "childCount":I
    :goto_1
    const/4 v10, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v10, v11, :cond_8

    .line 22035
    invoke-virtual {v9, v10}, Lcom/facebook/ads/redexgen/X/TB;->A1r(I)Landroid/view/View;

    move-result-object v12

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ax;->A08:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_7

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 22036
    .local v0, "view":Landroid/view/View;
    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ax;->A08:[Ljava/lang/String;

    const-string v1, "FajaHWp"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v12, :cond_9

    .line 22037
    .end local v0    # "view":Landroid/view/View;
    :cond_8
    iget v1, v9, Lcom/facebook/ads/redexgen/X/Ax;->A01:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_3

    .line 22038
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/Ax;->A06:Lcom/facebook/ads/redexgen/X/Om;

    invoke-virtual {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/Om;->A00(I[I)V

    goto :goto_0

    .line 22039
    :cond_9
    iget-object v2, v9, Lcom/facebook/ads/redexgen/X/Ax;->A07:Lcom/facebook/ads/redexgen/X/On;

    .line 22040
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 22041
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 22042
    invoke-virtual {v2, v12, v1, v0}, Lcom/facebook/ads/redexgen/X/On;->A00(Landroid/view/View;II)[I

    move-result-object v0

    iput-object v0, v9, Lcom/facebook/ads/redexgen/X/Ax;->A04:[I

    .line 22043
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/TB;->A2B()I

    move-result v0

    if-nez v0, :cond_b

    .line 22044
    aget v2, v3, v4

    iget-object v1, v9, Lcom/facebook/ads/redexgen/X/Ax;->A04:[I

    aget v0, v1, v4

    add-int/2addr v2, v0

    aput v2, v3, v4

    .line 22045
    if-nez v10, :cond_a

    .line 22046
    aget v12, v1, v5

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/4K;->A0h()I

    move-result v0

    add-int/2addr v12, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ax;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_e

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ax;->A08:[Ljava/lang/String;

    const-string v1, "o1L5u"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/4K;->A0e()I

    move-result v0

    add-int/2addr v12, v0

    aput v12, v3, v5

    .line 22047
    .end local v0
    :cond_a
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 22048
    :cond_b
    aget v13, v3, v5

    iget-object v12, v9, Lcom/facebook/ads/redexgen/X/Ax;->A04:[I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ax;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_c

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ax;->A08:[Ljava/lang/String;

    const-string v1, "6nCDHSOFLCCkeDdRDThHGlolS6KLs45E"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    aget v0, v12, v5

    add-int/2addr v13, v0

    aput v13, v3, v5

    .line 22049
    if-nez v10, :cond_a

    .line 22050
    :goto_4
    aget v1, v12, v4

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/4K;->A0f()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/4K;->A0g()I

    move-result v0

    add-int/2addr v1, v0

    aput v1, v3, v4

    goto :goto_3

    :cond_c
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ax;->A08:[Ljava/lang/String;

    const-string v1, "KFvpvLkhCjqU9hzA1pvFB"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    aget v0, v12, v5

    add-int/2addr v13, v0

    aput v13, v3, v5

    .line 22051
    if-nez v10, :cond_a

    goto :goto_4

    .line 22052
    :cond_d
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v11

    goto/16 :goto_1

    .line 22053
    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public final A1u(I)V
    .locals 1

    .line 22054
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ax;->A02:I

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/TB;->A2G(II)V

    .line 22055
    return-void
.end method

.method public final A22(Lcom/facebook/ads/redexgen/X/Eq;Lcom/facebook/ads/redexgen/X/4Z;I)V
    .locals 1

    .line 22056
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ax;->A03:Lcom/facebook/ads/redexgen/X/BE;

    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/4X;->A0B(I)V

    .line 22057
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ax;->A03:Lcom/facebook/ads/redexgen/X/BE;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4K;->A1M(Lcom/facebook/ads/redexgen/X/4X;)V

    .line 22058
    return-void
.end method

.method public final A2L(D)V
    .locals 3

    .line 22059
    const-wide/16 v1, 0x0

    cmpg-double v0, p1, v1

    if-gtz v0, :cond_0

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    :cond_0
    const-wide/high16 v1, 0x4049000000000000L    # 50.0

    div-double/2addr v1, p1

    double-to-float v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ax;->A00:F

    .line 22060
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ax;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/BE;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/BE;-><init>(Lcom/facebook/ads/redexgen/X/Ax;Lcom/facebook/ads/redexgen/X/XJ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ax;->A03:Lcom/facebook/ads/redexgen/X/BE;

    .line 22061
    return-void
.end method

.method public final A2M(I)V
    .locals 0

    .line 22062
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ax;->A01:I

    .line 22063
    return-void
.end method

.method public final A2N(I)V
    .locals 0

    .line 22064
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ax;->A02:I

    .line 22065
    return-void
.end method
