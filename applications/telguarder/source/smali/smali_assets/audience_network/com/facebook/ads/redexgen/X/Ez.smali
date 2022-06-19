.class public final Lcom/facebook/ads/redexgen/X/Ez;
.super Lcom/facebook/ads/redexgen/X/bh;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ez;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ez;->A03()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/1m;)V
    .locals 0

    .line 32162
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/bh;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/1m;)V

    .line 32163
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ez;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01(J)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 32164
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 32165
    .local p0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x24

    const/4 v1, 0x5

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ez;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32166
    return-object v4
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Ez;J)Ljava/util/Map;
    .locals 0

    .line 32167
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ez;->A01(J)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x29

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ez;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x2at
        0x2ft
        0x6bt
        0x22t
        0x38t
        0x6bt
        0x25t
        0x24t
        0x3ft
        0x6bt
        0x39t
        0x2et
        0x2at
        0x2ft
        0x32t
        0x6bt
        0x24t
        0x39t
        0x6bt
        0x2at
        0x27t
        0x39t
        0x2et
        0x2at
        0x2ft
        0x32t
        0x6bt
        0x2ft
        0x22t
        0x38t
        0x3bt
        0x27t
        0x2at
        0x32t
        0x2et
        0x2ft
        0x14t
        0x15t
        0x1ct
        0x11t
        0x9t
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "5V5lzA70kRKZvNcqBnXwT00Z041t6ONl"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "kRuh8LYE7MIIox"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "vbi5lrus1TtIcXopJBSqGum5Kl452Sg0"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "JcNQ6WafPgnmx1aBDePIhrwzaceROyrU"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "60x4BO5hhvvMWgz"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "65jgyaanPJJ2TdYJaJc79ygQBnrUrWFq"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "zOX7nuTxFizV3LeqTcyyEc2wd"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "PvIxiwPRiyIOar7lINjn4bFuW"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ez;->A01:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Ez;Ljava/util/List;Ljava/util/Map;)V
    .locals 0

    .line 32168
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ez;->A06(Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method private A06(Ljava/util/List;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 32169
    .local v1, "trackingUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ez;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x63

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ez;->A01:[Ljava/lang/String;

    const-string v1, "86KHDrV9NKgfIZAVdUdv4tP2w"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "hnWt117Y9rLxZfnYOmFuZ36IL"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 32170
    :cond_1
    return-void

    .line 32171
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 32172
    .local p1, "url":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v2, Lcom/facebook/ads/redexgen/X/QZ;

    invoke-direct {v2, v0, p2}, Lcom/facebook/ads/redexgen/X/QZ;-><init>(Lcom/facebook/ads/redexgen/X/8D;Ljava/util/Map;)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v3, v1, v0

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/QZ;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 32173
    .end local p1    # "url":Ljava/lang/String;
    goto :goto_0

    .line 32174
    :cond_3
    return-void
.end method


# virtual methods
.method public final A0L()V
    .locals 5

    .line 32175
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/bh;->A01:Lcom/facebook/ads/redexgen/X/0n;

    check-cast v4, Lcom/facebook/ads/redexgen/X/c9;

    .line 32176
    .local p0, "nativeAdapter":Lcom/facebook/ads/redexgen/X/c9;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/c9;->A0i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32177
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/bh;->A06:Lcom/facebook/ads/redexgen/X/0o;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ez;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ez;->A01:[Ljava/lang/String;

    const-string v1, "SmlVqZXT1bBjz5gnQxBIxSO3NcSLyKK1"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/0o;->A0B(Lcom/facebook/ads/redexgen/X/c9;)V

    .line 32178
    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 32179
    :cond_1
    const/4 v2, 0x0

    const/16 v1, 0x24

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ez;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0N(Lcom/facebook/ads/redexgen/X/0n;Lcom/facebook/ads/redexgen/X/8w;Lcom/facebook/ads/redexgen/X/8u;Lcom/facebook/ads/redexgen/X/1n;)V
    .locals 16

    move-object/from16 v7, p1

    .line 32180
    move-object/from16 v3, p0

    check-cast v7, Lcom/facebook/ads/redexgen/X/c9;

    .line 32181
    .local v8, "adapter":Lcom/facebook/ads/redexgen/X/c9;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 32182
    .local v9, "requestTime":J
    new-instance v4, Lcom/facebook/ads/redexgen/X/be;

    move-object/from16 v5, p0

    move-object/from16 v6, p4

    move-object/from16 v10, p3

    invoke-direct/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/be;-><init>(Lcom/facebook/ads/redexgen/X/Ez;Lcom/facebook/ads/redexgen/X/1n;Lcom/facebook/ads/redexgen/X/c9;JLcom/facebook/ads/redexgen/X/8u;)V

    .line 32183
    .local v7, "nativeTimeout":Ljava/lang/Runnable;
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/bh;->A0E()Landroid/os/Handler;

    move-result-object v2

    .line 32184
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/ads/redexgen/X/8w;->A06()Lcom/facebook/ads/redexgen/X/8x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8x;->A05()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32185
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/bh;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v2, Lcom/facebook/ads/redexgen/X/bd;

    move-object/from16 v11, p0

    move-object v12, v4

    move-wide v13, v8

    move-object v15, v10

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lcom/facebook/ads/redexgen/X/bd;-><init>(Lcom/facebook/ads/redexgen/X/Ez;Ljava/lang/Runnable;JLcom/facebook/ads/redexgen/X/8u;)V

    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/bh;->A08:Lcom/facebook/ads/redexgen/X/JC;

    .line 32186
    invoke-static {}, Lcom/facebook/ads/redexgen/X/T6;->A0I()Lcom/facebook/ads/redexgen/X/JZ;

    move-result-object v5

    .line 32187
    move-object v0, v7

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/c9;->A0a(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/11;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/1n;Lcom/facebook/ads/redexgen/X/JZ;)V

    .line 32188
    return-void
.end method
