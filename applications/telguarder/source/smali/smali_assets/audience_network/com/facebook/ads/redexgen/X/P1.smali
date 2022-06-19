.class public final Lcom/facebook/ads/redexgen/X/P1;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/P1;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/P1;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x47

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/8D;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 47773
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 47774
    .local p0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Lcom/facebook/ads/redexgen/X/8o;

    invoke-direct {v5, p0}, Lcom/facebook/ads/redexgen/X/8o;-><init>(Lcom/facebook/ads/redexgen/X/8D;)V

    .line 47775
    .local p1, "deviceTrackingParams":Lcom/facebook/ads/redexgen/X/8o;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 47776
    .local p2, "screenWidth":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 47777
    .local v4, "screenHeight":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A02()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x6f

    const/16 v1, 0xa

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P1;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47778
    const/16 v2, 0x3e

    const/16 v1, 0xd

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P1;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47779
    const/16 v2, 0x2e

    const/16 v1, 0x10

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P1;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47780
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/8o;->A09()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x14

    const/16 v1, 0xc

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P1;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47781
    int-to-float v1, v7

    sget v0, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    div-float/2addr v1, v0

    float-to-int v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x58

    const/16 v1, 0xc

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P1;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47782
    int-to-float v1, v6

    sget v0, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    div-float/2addr v1, v0

    float-to-int v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x4b

    const/16 v1, 0xd

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P1;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47783
    const/16 v2, 0x26

    const/4 v1, 0x2

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P1;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x5

    const/4 v1, 0x7

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P1;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47784
    sget-object v3, Lcom/facebook/ads/redexgen/X/8o;->A03:Ljava/lang/String;

    const/16 v2, 0x28

    const/4 v1, 0x6

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P1;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47785
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x20

    const/4 v1, 0x6

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P1;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47786
    const/16 v2, 0x64

    const/16 v1, 0xb

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P1;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P1;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47787
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/8o;->A05()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xc

    const/16 v1, 0x8

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P1;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47788
    return-object v4
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x79

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/P1;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x66t
        -0x6et
        -0x69t
        -0x6et
        -0x6ct
        -0x4dt
        -0x20t
        -0x2at
        -0x1ct
        -0x1ft
        -0x25t
        -0x2at
        -0xdt
        0x2t
        0x2t
        -0xft
        0x0t
        -0xdt
        -0x1t
        -0x9t
        -0x2ft
        -0x2et
        -0x1dt
        -0x2at
        -0x30t
        -0x2et
        -0x34t
        -0x26t
        -0x24t
        -0x2ft
        -0x2et
        -0x27t
        -0x44t
        -0x41t
        -0x4dt
        -0x4ft
        -0x44t
        -0x4bt
        0x26t
        0x2at
        -0xbt
        -0x7t
        -0x1bt
        -0x4t
        -0x15t
        -0x8t
        -0x1ft
        -0x2et
        -0x1dt
        -0x1bt
        -0x21t
        -0x2at
        -0x1dt
        -0x30t
        -0x2at
        -0x21t
        -0x2bt
        -0x1ft
        -0x20t
        -0x26t
        -0x21t
        -0x1bt
        -0x3bt
        -0x3ft
        -0x4at
        -0x32t
        -0x4at
        -0x49t
        -0x3ft
        -0x46t
        -0x4ct
        -0x3dt
        -0x4at
        -0x3et
        -0x46t
        0x16t
        0x6t
        0x15t
        0x8t
        0x8t
        0x11t
        0x2t
        0xbt
        0x8t
        0xct
        0xat
        0xbt
        0x17t
        -0x13t
        -0x23t
        -0x14t
        -0x21t
        -0x21t
        -0x18t
        -0x27t
        -0xft
        -0x1dt
        -0x22t
        -0x12t
        -0x1et
        -0x1t
        -0x10t
        -0x9t
        -0x15t
        0x2t
        -0xft
        -0x2t
        -0x1t
        -0xbt
        -0x5t
        -0x6t
        0x36t
        0x28t
        0x36t
        0x36t
        0x2ct
        0x32t
        0x31t
        0x22t
        0x2ct
        0x27t
    .end array-data
.end method
