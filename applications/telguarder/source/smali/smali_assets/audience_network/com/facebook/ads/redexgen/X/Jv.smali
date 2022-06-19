.class public final Lcom/facebook/ads/redexgen/X/Jv;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[Ljava/lang/String;

.field public static final A01:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/ads/redexgen/X/Js;",
            "Lcom/facebook/ads/redexgen/X/Jt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 40548
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Jv;->A03()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Jv;->A01:Ljava/util/Map;

    .line 40549
    sget-object v2, Lcom/facebook/ads/redexgen/X/Jv;->A01:Ljava/util/Map;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Js;->A09:Lcom/facebook/ads/redexgen/X/Js;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jt;->A08:Lcom/facebook/ads/redexgen/X/Jt;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40550
    sget-object v2, Lcom/facebook/ads/redexgen/X/Jv;->A01:Ljava/util/Map;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Js;->A07:Lcom/facebook/ads/redexgen/X/Js;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jt;->A0A:Lcom/facebook/ads/redexgen/X/Jt;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40551
    sget-object v2, Lcom/facebook/ads/redexgen/X/Jv;->A01:Ljava/util/Map;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Js;->A06:Lcom/facebook/ads/redexgen/X/Js;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jt;->A09:Lcom/facebook/ads/redexgen/X/Jt;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40552
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Jt;)Lcom/facebook/ads/AdSize;
    .locals 5

    .line 40554
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jv;->A01:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jv;->A00:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jv;->A00:[Ljava/lang/String;

    const-string v1, "V2CWxFnFCOyLm7ASdmdaCX8ba17DqaqS"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "wzDplV18JOvo21DdnSAHj8ZlS6SO2Vti"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    check-cast v3, Ljava/util/Map$Entry;

    .line 40555
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/facebook/ads/internal/protocol/AdSizeInternal;Lcom/facebook/ads/internal/protocol/AdTemplate;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 40556
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Js;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Js;->A06()Lcom/facebook/ads/AdSize;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 40557
    :cond_2
    sget-object v3, Lcom/facebook/ads/AdSize;->BANNER_320_50:Lcom/facebook/ads/AdSize;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jv;->A00:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jv;->A00:[Ljava/lang/String;

    const-string v1, "Y38PjpZrDRMRzoixkBxMTClNKEdQryok"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-object v3

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Jv;->A00:[Ljava/lang/String;

    const-string v1, "Z1bD4V0r6OKNlHxnMrfKjRCEyIYJkgn4"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "SL2HlYHMRObDFmFp078QX4sk0XH4GrgT"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-object v3
.end method

.method public static A01(Landroid/util/DisplayMetrics;)Lcom/facebook/ads/redexgen/X/Jt;
    .locals 3

    .line 40558
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v0

    iget v0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v0

    float-to-int v2, v1

    .line 40559
    .local p0, "screenWidth":I
    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v0

    iget v0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v0

    float-to-int v1, v1

    .line 40560
    .local v0, "screenHeight":I
    invoke-static {v2, v1}, Lcom/facebook/ads/redexgen/X/LE;->A05(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40561
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jt;->A0D:Lcom/facebook/ads/redexgen/X/Jt;

    return-object v0

    .line 40562
    :cond_0
    if-le v1, v2, :cond_2

    .line 40563
    sget-object p0, Lcom/facebook/ads/redexgen/X/Jt;->A0F:Lcom/facebook/ads/redexgen/X/Jt;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jv;->A00:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jv;->A00:[Ljava/lang/String;

    const-string v1, "zEjIxhk858iOsdYr9SgRsiKXnD8rO3VU"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 40564
    :cond_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jt;->A0C:Lcom/facebook/ads/redexgen/X/Jt;

    return-object v0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/Js;)Lcom/facebook/ads/redexgen/X/Jt;
    .locals 1

    .line 40565
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jv;->A01:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Jt;

    .line 40566
    .local p0, "adTemplate":Lcom/facebook/ads/redexgen/X/Jt;
    if-nez v0, :cond_0

    .line 40567
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jt;->A0B:Lcom/facebook/ads/redexgen/X/Jt;

    return-object v0

    .line 40568
    :cond_0
    return-object v0
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "TYvyTugW0LIK7CMS2wYs9G2uUGgA7Dke"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "WsEiqL7ZS4BTI966aPHoJ2dPx2Ea0F4I"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "bsmL1TSWcO8d5RdSDpnXrtDP3Rd3pXtR"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "xkYelsmw9O3RFB2zMTQOqufEggZJfpsf"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Ou1dyJktpNGGcf9tDpPKvHuJxEoqg2O4"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "MwtSqX2RTtZq4kMpP"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Xg7OrQNETkr2DWt43s"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "zI20iJtpElrzvKbVLZsd1iWpdjTxU8BC"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Jv;->A00:[Ljava/lang/String;

    return-void
.end method

.method public static A04(Landroid/util/DisplayMetrics;Landroid/view/View;Lcom/facebook/ads/redexgen/X/Js;)V
    .locals 4

    .line 40569
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v0

    iget v0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v0

    float-to-int v1, v1

    .line 40570
    .local p0, "screenWidth":I
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Js;->getWidth()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 40571
    iget v3, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 40572
    :goto_0
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Js;->getHeight()I

    move-result v0

    int-to-float v1, v0

    iget v0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 40573
    .local p1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xe

    const/4 v0, -0x1

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 40574
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40575
    return-void

    .line 40576
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Js;->getWidth()I

    move-result v0

    int-to-float v1, v0

    iget v0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v3, v0

    goto :goto_0
.end method
