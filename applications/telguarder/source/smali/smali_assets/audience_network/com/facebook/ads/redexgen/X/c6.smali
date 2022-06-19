.class public final Lcom/facebook/ads/redexgen/X/c6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/0i;


# static fields
.field public static A08:[B

.field public static A09:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/0h;

.field public final A01:Ljava/lang/String;

.field public final A02:Ljava/lang/String;

.field public final A03:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A04:Ljava/lang/String;

.field public final A05:Ljava/lang/String;

.field public final A06:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/c6;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/c6;->A02()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/0h;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/0h;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 70657
    .local p4, "detectionStrings":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p5, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70658
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/c6;->A04:Ljava/lang/String;

    .line 70659
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/c6;->A01:Ljava/lang/String;

    .line 70660
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/c6;->A00:Lcom/facebook/ads/redexgen/X/0h;

    .line 70661
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/c6;->A06:Ljava/util/Collection;

    .line 70662
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/c6;->A07:Ljava/util/Map;

    .line 70663
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/c6;->A05:Ljava/lang/String;

    .line 70664
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/c6;->A02:Ljava/lang/String;

    .line 70665
    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/c6;->A03:Ljava/lang/String;

    .line 70666
    return-void
.end method

.method public static A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/c6;
    .locals 12

    .line 70667
    if-nez p0, :cond_0

    .line 70668
    const/4 v0, 0x0

    return-object v0

    .line 70669
    :cond_0
    const/16 v2, 0x47

    const/4 v1, 0x6

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c6;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 70670
    .local v0, "markup":Ljava/lang/String;
    const/4 v2, 0x0

    const/16 v1, 0x12

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c6;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 70671
    .local v6, "activationCommand":Ljava/lang/String;
    const/16 v2, 0x55

    const/16 v1, 0xa

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c6;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 70672
    .local v2, "requestId":Ljava/lang/String;
    const/16 v2, 0x12

    const/4 v1, 0x2

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c6;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/LI;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 70673
    .local v1, "clientToken":Ljava/lang/String;
    const/16 v2, 0x32

    const/16 v1, 0x15

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c6;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/0h;->A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/0h;

    move-result-object v7

    .line 70674
    .local v0, "invalidationBehavior":Lcom/facebook/ads/redexgen/X/0h;
    const/4 v4, 0x0

    .line 70675
    :try_start_0
    const/16 v2, 0x14

    const/16 v1, 0x11

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c6;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    goto :goto_0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70676
    :catch_0
    move-exception v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/c6;->A09:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x57

    if-eq v1, v0, :cond_2

    .line 70677
    .local p0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/facebook/ads/redexgen/X/c6;->A09:[Ljava/lang/String;

    const-string v1, "NnTdh1f7s17QSpWRfedLId52SOGDRvmS"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v4

    .line 70678
    .end local v0    # "invalidationBehavior":Lcom/facebook/ads/redexgen/X/0h;
    .local p0, "detectionStringsArray":Lorg/json/JSONArray;
    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/0j;->A01(Lorg/json/JSONArray;)Ljava/util/Collection;

    move-result-object v8

    .line 70679
    .local v0, "mDetectionStrings":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/16 v2, 0x4d

    const/16 v1, 0x8

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c6;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 70680
    .local v0, "metadataObject":Lorg/json/JSONObject;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 70681
    .local v1, "mMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    .line 70682
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 70683
    .local v0, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70684
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 70685
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70686
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_1

    .line 70687
    .end local v0    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    const/16 v2, 0x25

    const/16 v1, 0xd

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c6;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/LI;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 70688
    .local v10, "encryptedCPM":Ljava/lang/String;
    new-instance v4, Lcom/facebook/ads/redexgen/X/c6;

    .end local v1    # "mMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v1, "mMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v0
    .local v0, "metadataObject":Lorg/json/JSONObject;
    invoke-direct/range {v4 .. v12}, Lcom/facebook/ads/redexgen/X/c6;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/0h;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/c6;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x77

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

    const/16 v0, 0x5f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/c6;->A08:[B

    return-void

    :array_0
    .array-data 1
        0x4et
        0x50t
        0x61t
        0x56t
        0x63t
        0x4et
        0x61t
        0x56t
        0x5ct
        0x5bt
        0x4ct
        0x50t
        0x5ct
        0x5at
        0x5at
        0x4et
        0x5bt
        0x51t
        0x2dt
        0x3et
        0x34t
        0x35t
        0x44t
        0x35t
        0x33t
        0x44t
        0x39t
        0x3ft
        0x3et
        0x2ft
        0x43t
        0x44t
        0x42t
        0x39t
        0x3et
        0x37t
        0x43t
        0x54t
        0x5dt
        0x52t
        0x61t
        0x68t
        0x5ft
        0x63t
        0x54t
        0x53t
        0x4et
        0x52t
        0x5ft
        0x5ct
        0x22t
        0x27t
        0x2ft
        0x1at
        0x25t
        0x22t
        0x1dt
        0x1at
        0x2dt
        0x22t
        0x28t
        0x27t
        0x18t
        0x1bt
        0x1et
        0x21t
        0x1at
        0x2ft
        0x22t
        0x28t
        0x2bt
        0x18t
        0xct
        0x1dt
        0x16t
        0x20t
        0x1bt
        0xet
        0x6t
        0x15t
        0x2t
        0x5t
        0x2t
        0x15t
        0x2t
        0x53t
        0x46t
        0x52t
        0x56t
        0x46t
        0x54t
        0x55t
        0x40t
        0x4at
        0x45t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Au9Tx2MLGxPawmyGp4VMLGjpQA39FslW"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "GnnKhjlbtMIkXUPekRwb9Dm0Q508zVS5"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "RmSkJZMDnnhFea0a7sYUxlGKprnl1rfB"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Bbklx"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "KGT"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "eoJcQoMOecK4OKXVMZAkEff9EgYdIE2a"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "QvfnqxUGDLahUCD15g6FJXpoY"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "y1BQiuCN7SXyhOoR9Md64bP5xHU"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/c6;->A09:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A04()Ljava/lang/String;
    .locals 1

    .line 70689
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c6;->A01:Ljava/lang/String;

    return-object v0
.end method

.method public final A05()Ljava/lang/String;
    .locals 1

    .line 70690
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c6;->A04:Ljava/lang/String;

    return-object v0
.end method

.method public final A06()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 70691
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c6;->A03:Ljava/lang/String;

    return-object v0
.end method

.method public final A5x()Ljava/lang/String;
    .locals 1

    .line 70692
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c6;->A02:Ljava/lang/String;

    return-object v0
.end method

.method public final A6F()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 70693
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c6;->A06:Ljava/util/Collection;

    return-object v0
.end method

.method public final A6e()Lcom/facebook/ads/redexgen/X/0h;
    .locals 1

    .line 70694
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c6;->A00:Lcom/facebook/ads/redexgen/X/0h;

    return-object v0
.end method
