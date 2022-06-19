.class public final Lcom/facebook/ads/redexgen/X/CF;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/CF;->A03()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Ljava/util/Map;Ljava/lang/String;)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .line 24135
    .local p0, "keyStatus":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 24136
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 24137
    .local p0, "value":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 24138
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24139
    :catch_0
    :cond_0
    const-wide p0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/Bz;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Bz<",
            "*>;)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 24140
    .local v0, "drmSession":Lcom/facebook/ads/redexgen/X/Bz;, "Lcom/facebook/ads/internal/exoplayer2/drm/DrmSession<*>;"
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/Bz;->ACg()Ljava/util/Map;

    move-result-object p0

    .line 24141
    .local p0, "keyStatus":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 24142
    const/4 v0, 0x0

    return-object v0

    .line 24143
    :cond_0
    const/4 v2, 0x0

    const/16 v1, 0x18

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CF;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/CF;->A00(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 24144
    const/16 v2, 0x18

    const/16 v1, 0x19

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CF;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/CF;->A00(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24145
    return-object v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/CF;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x6f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x31

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/CF;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x2ft
        -0x12t
        -0x18t
        -0x16t
        -0xdt
        -0x8t
        -0x16t
        -0x37t
        -0x6t
        -0x9t
        -0x1at
        -0x7t
        -0x12t
        -0xct
        -0xdt
        -0x29t
        -0x16t
        -0xet
        -0x1at
        -0x12t
        -0xdt
        -0x12t
        -0xdt
        -0x14t
        0x8t
        0x24t
        0x19t
        0x31t
        0x1at
        0x19t
        0x1bt
        0x23t
        -0x4t
        0x2dt
        0x2at
        0x19t
        0x2ct
        0x21t
        0x27t
        0x26t
        0xat
        0x1dt
        0x25t
        0x19t
        0x21t
        0x26t
        0x21t
        0x26t
        0x1ft
    .end array-data
.end method
