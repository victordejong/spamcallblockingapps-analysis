.class public final Lcom/facebook/ads/redexgen/X/0j;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/0i;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/0j;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/0j;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/0j;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x47

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01(Lorg/json/JSONArray;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2232
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 2233
    .end local p0    # null:Lorg/json/JSONArray;
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 2234
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 2235
    .local p0, "results":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 2236
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2237
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2238
    .end local v0    # "i":I
    :cond_2
    return-object v2
.end method

.method public static A02()V
    .locals 4

    const/16 v0, 0x23

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    sget-object v1, Lcom/facebook/ads/redexgen/X/0j;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xe

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/0j;->A01:[Ljava/lang/String;

    const-string v1, "4DtSv1ItoT1AnjNkW"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "xsdhzuZMhKe1kPAxh"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/0j;->A00:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        0x56t
        0x73t
        0x37t
        0x7et
        0x64t
        0x37t
        0x7et
        0x79t
        0x61t
        0x76t
        0x7bt
        0x7et
        0x73t
        0x76t
        0x63t
        0x72t
        0x73t
        0x37t
        0x60t
        0x7et
        0x63t
        0x7ft
        0x78t
        0x62t
        0x63t
        0x37t
        0x63t
        0x78t
        0x7ct
        0x72t
        0x79t
        0x39t
        0x1bt
        0xat
        0x13t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "jSoy8XspXCFqO9NWG0uega5zyBcMMpnv"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "8I941vkvBihlhZSR3"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "E0n4xhy7f55RdYtJKKgnHTy6BEjDvFXE"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Oow628hlFtykEPzM3xMW0Wh"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "gjSfO6YGNNbsKn6TLZq3stDSfq2Vbbu6"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "XJoMwGgC8l1BSQaiX90ZQnicuTGj509z"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "JK4GcCSwzapE3gOVlVNykyUw2lU6lT6d"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "8BqJ2MeWpSgEuyxwl"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/0j;->A01:[Ljava/lang/String;

    return-void
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/0i;Lcom/facebook/ads/redexgen/X/JC;)Z
    .locals 7

    .line 2239
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/0i;->A6e()Lcom/facebook/ads/redexgen/X/0h;

    move-result-object v4

    .line 2240
    .local p0, "invalidationBehavior":Lcom/facebook/ads/redexgen/X/0h;
    const/4 v3, 0x0

    if-eqz v4, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/0h;->A03:Lcom/facebook/ads/redexgen/X/0h;

    if-ne v4, v0, :cond_1

    .line 2241
    .end local p2    # null:Lcom/facebook/ads/redexgen/X/JC;
    .end local v4
    :cond_0
    return v3

    .line 2242
    :cond_1
    const/4 v2, 0x0

    .line 2243
    .local p2, "packageInstalled":Z
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/0i;->A6F()Ljava/util/Collection;

    move-result-object v1

    .line 2244
    .local v4, "detectionStrings":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2245
    :cond_2
    return v3

    .line 2246
    :cond_3
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2247
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/0j;->A05(Lcom/facebook/ads/redexgen/X/Wm;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2248
    const/4 v2, 0x1

    .line 2249
    :cond_5
    sget-object v0, Lcom/facebook/ads/redexgen/X/0h;->A02:Lcom/facebook/ads/redexgen/X/0h;

    const/4 v6, 0x1

    if-ne v4, v0, :cond_6

    const/4 v0, 0x1

    :goto_0
    if-ne v2, v0, :cond_8

    .line 2250
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/0i;->A5x()Ljava/lang/String;

    move-result-object v1

    .line 2251
    .local p1, "clientToken":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2252
    const/4 v0, 0x0

    invoke-interface {p2, v1, v0}, Lcom/facebook/ads/redexgen/X/JC;->A8d(Ljava/lang/String;Ljava/util/Map;)V

    .line 2253
    return v6

    .line 2254
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 2255
    :cond_7
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A0O:I

    const/4 v2, 0x0

    const/16 v1, 0x20

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0j;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 2256
    const/16 v2, 0x20

    const/4 v1, 0x3

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0j;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 2257
    return v6

    .line 2258
    .end local p1    # "clientToken":Ljava/lang/String;
    :cond_8
    return v3
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/Wm;Ljava/lang/String;)Z
    .locals 3

    .line 2259
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2260
    return v2

    .line 2261
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Wm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2262
    .local p0, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 2263
    return v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2264
    .local v0, "e":Ljava/lang/RuntimeException;
    :catch_0
    return v2

    .line 2265
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    return v2
.end method
