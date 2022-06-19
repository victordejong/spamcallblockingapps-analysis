.class public final Lcom/facebook/ads/redexgen/X/Jt;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[Ljava/lang/String;

.field public static final A01:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/ads/redexgen/X/Jq;",
            "Lcom/facebook/ads/redexgen/X/Jr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 40469
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Jt;->A03()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Jt;->A01:Ljava/util/Map;

    .line 40470
    sget-object v2, Lcom/facebook/ads/redexgen/X/Jt;->A01:Ljava/util/Map;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jq;->A09:Lcom/facebook/ads/redexgen/X/Jq;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jr;->A08:Lcom/facebook/ads/redexgen/X/Jr;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40471
    sget-object v2, Lcom/facebook/ads/redexgen/X/Jt;->A01:Ljava/util/Map;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jq;->A07:Lcom/facebook/ads/redexgen/X/Jq;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jr;->A0A:Lcom/facebook/ads/redexgen/X/Jr;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40472
    sget-object v2, Lcom/facebook/ads/redexgen/X/Jt;->A01:Ljava/util/Map;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jq;->A06:Lcom/facebook/ads/redexgen/X/Jq;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jr;->A09:Lcom/facebook/ads/redexgen/X/Jr;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40473
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Jr;)Lcom/facebook/ads/AdSize;
    .locals 3

    .line 40475
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jt;->A01:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 40476
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/facebook/ads/internal/protocol/AdSizeInternal;Lcom/facebook/ads/internal/protocol/AdTemplate;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 40477
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/ads/redexgen/X/Jq;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jt;->A00:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1b

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jt;->A00:[Ljava/lang/String;

    const-string v1, "sySRfG1wiaC9q3S7uTxa3ZVw3iXf1vjk"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jq;->A06()Lcom/facebook/ads/AdSize;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 40478
    :cond_2
    sget-object v0, Lcom/facebook/ads/AdSize;->BANNER_320_50:Lcom/facebook/ads/AdSize;

    return-object v0
.end method

.method public static A01(Landroid/util/DisplayMetrics;)Lcom/facebook/ads/redexgen/X/Jr;
    .locals 3

    .line 40479
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v0

    iget v0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v0

    float-to-int v2, v1

    .line 40480
    .local p0, "screenWidth":I
    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v0

    iget v0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v0

    float-to-int v1, v1

    .line 40481
    .local v0, "screenHeight":I
    invoke-static {v2, v1}, Lcom/facebook/ads/redexgen/X/LC;->A04(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40482
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jr;->A0D:Lcom/facebook/ads/redexgen/X/Jr;

    return-object v0

    .line 40483
    :cond_0
    if-le v1, v2, :cond_1

    .line 40484
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jr;->A0F:Lcom/facebook/ads/redexgen/X/Jr;

    return-object v0

    .line 40485
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jr;->A0C:Lcom/facebook/ads/redexgen/X/Jr;

    return-object v0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/Jq;)Lcom/facebook/ads/redexgen/X/Jr;
    .locals 1

    .line 40486
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jt;->A01:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Jr;

    .line 40487
    .local p0, "adTemplate":Lcom/facebook/ads/redexgen/X/Jr;
    if-nez v0, :cond_0

    .line 40488
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jr;->A0B:Lcom/facebook/ads/redexgen/X/Jr;

    return-object v0

    .line 40489
    :cond_0
    return-object v0
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "aUzGFJWT9JUej7dfFIRBXB2Am5SKhp0L"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Lg"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "z6uS01sVSQZKuOHXwfbCrotAFRq98Mhk"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "s6upF4yW2rVlVN4uyEeLi2N0Ec6ZN78T"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "eH22UAfKgSlQJvnKnPkmgNwQr7bKVvHo"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ohZIQy"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "XInXF4zeGGrmw79hhTd"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "dMAEap8Em2lp2DdLAyvSKUklRkWZ0JXT"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Jt;->A00:[Ljava/lang/String;

    return-void
.end method

.method public static A04(Landroid/util/DisplayMetrics;Landroid/view/View;Lcom/facebook/ads/redexgen/X/Jq;)V
    .locals 4

    .line 40490
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v0

    iget v0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v0

    float-to-int v1, v1

    .line 40491
    .local p0, "screenWidth":I
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Jq;->getWidth()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 40492
    iget v3, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 40493
    :goto_0
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Jq;->getHeight()I

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

    .line 40494
    .local p1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xe

    const/4 v0, -0x1

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 40495
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40496
    return-void

    .line 40497
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Jq;->getWidth()I

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
