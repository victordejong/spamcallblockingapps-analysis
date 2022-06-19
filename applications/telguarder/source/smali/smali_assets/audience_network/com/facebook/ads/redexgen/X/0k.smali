.class public final Lcom/facebook/ads/redexgen/X/0k;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A06:[B

.field public static A07:[Ljava/lang/String;


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Ljava/lang/String;

.field public final A02:Ljava/lang/String;

.field public final A03:Ljava/lang/String;

.field public final A04:Ljava/lang/String;

.field public final A05:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/0k;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/0k;->A02()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2266
    .local p4, "mKeyHashes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2267
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/0k;->A04:Ljava/lang/String;

    .line 2268
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/0k;->A01:Ljava/lang/String;

    .line 2269
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/0k;->A00:Ljava/lang/String;

    .line 2270
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/0k;->A05:Ljava/util/List;

    .line 2271
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/0k;->A03:Ljava/lang/String;

    .line 2272
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/0k;->A02:Ljava/lang/String;

    .line 2273
    return-void
.end method

.method public static A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/0k;
    .locals 11

    .line 2274
    if-nez p0, :cond_0

    .line 2275
    const/4 v0, 0x0

    return-object v0

    .line 2276
    :cond_0
    const/16 v2, 0x32

    const/4 v1, 0x7

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0k;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2277
    .local p0, "mPackageName":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v1, 0x7

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0k;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2278
    .local v1, "appsite":Ljava/lang/String;
    const/4 v2, 0x7

    const/16 v1, 0xb

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0k;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2279
    .local v0, "appsiteUri":Ljava/lang/String;
    const/16 v2, 0x1e

    const/16 v1, 0xa

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0k;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 2280
    .local v0, "keyHashesArray":Lorg/json/JSONArray;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2281
    .local v7, "mKeyHashes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    .line 2282
    const/4 v3, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/0k;->A07:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/0k;->A07:[Ljava/lang/String;

    const-string v1, "6bZ3PT4hZpte9eL2tY79J7XfrRT1VGoj"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "LsdIpdVpvhsRMPSbdpH1TYtbnc9xgebb"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ge v3, v5, :cond_2

    .line 2283
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2284
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 2285
    .end local v0    # "i":I
    :cond_2
    const/16 v2, 0x28

    const/16 v1, 0xa

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0k;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2286
    .local v2, "mMarketUri":Ljava/lang/String;
    const/16 v2, 0x12

    const/16 v1, 0xc

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0k;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2287
    .local v1, "mFallbackUrl":Ljava/lang/String;
    new-instance v5, Lcom/facebook/ads/redexgen/X/0k;

    invoke-direct/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/0k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/0k;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x24

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
    .locals 4

    const/16 v0, 0x39

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    sget-object v1, Lcom/facebook/ads/redexgen/X/0k;->A07:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/0k;->A07:[Ljava/lang/String;

    const-string v1, "XQt1KGXtiLW9MsB6ZzaZR9RXZ3iXxMSI"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/0k;->A06:[B

    return-void

    :array_0
    .array-data 1
        -0x76t
        -0x67t
        -0x67t
        -0x64t
        -0x6et
        -0x63t
        -0x72t
        -0x18t
        -0x9t
        -0x9t
        -0x6t
        -0x10t
        -0x5t
        -0x14t
        -0x1at
        -0x4t
        -0x7t
        -0xdt
        -0x71t
        -0x76t
        -0x6bt
        -0x6bt
        -0x75t
        -0x76t
        -0x74t
        -0x6ct
        -0x78t
        -0x62t
        -0x65t
        -0x6bt
        -0x59t
        -0x5ft
        -0x4bt
        -0x65t
        -0x5ct
        -0x63t
        -0x51t
        -0x5ct
        -0x5ft
        -0x51t
        0x10t
        0x4t
        0x15t
        0xet
        0x8t
        0x17t
        0x2t
        0x18t
        0x15t
        0xct
        0x6t
        -0x9t
        -0x7t
        0x1t
        -0x9t
        -0x3t
        -0x5t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "mJqTstYmruZhgAwaIEL2b4JvWf0CXQMB"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "HnU4x"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "PGMUzhdVy0Xmj4ysKeXKBv0ydkVK"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "GINYaTk0"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "V6CaE"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "fikkh2q6ZMH0m3YxzoB0Qf3bpiihQ1Gk"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "lQcCmoZBYA5tZudR22aEG8J8TvwruM4P"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "bCUE2z1YAZE0LvG9WsX4zUjeUwMdrUpo"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/0k;->A07:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A04()Ljava/lang/String;
    .locals 1

    .line 2288
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0k;->A00:Ljava/lang/String;

    return-object v0
.end method

.method public final A05()Ljava/lang/String;
    .locals 1

    .line 2289
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0k;->A01:Ljava/lang/String;

    return-object v0
.end method

.method public final A06()Ljava/lang/String;
    .locals 1

    .line 2290
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0k;->A04:Ljava/lang/String;

    return-object v0
.end method
