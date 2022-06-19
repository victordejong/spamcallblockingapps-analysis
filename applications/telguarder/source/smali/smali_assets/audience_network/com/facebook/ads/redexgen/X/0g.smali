.class public final Lcom/facebook/ads/redexgen/X/0g;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 2187
    invoke-static {}, Lcom/facebook/ads/redexgen/X/0g;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/0g;->A03()V

    const-class v0, Lcom/facebook/ads/redexgen/X/0g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/0g;->A02:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/0f;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Wm;",
            "Lcom/facebook/ads/redexgen/X/JC;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/0f;"
        }
    .end annotation

    .line 2189
    .local v4, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v4, p4

    move-object v3, p3

    move-object v2, p2

    move-object v1, p1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/0g;->A01(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;ZZ)Lcom/facebook/ads/redexgen/X/0f;

    move-result-object v0

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;ZZ)Lcom/facebook/ads/redexgen/X/0f;
    .locals 16
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Wm;",
            "Lcom/facebook/ads/redexgen/X/JC;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Lcom/facebook/ads/redexgen/X/0f;"
        }
    .end annotation

    .line 2190
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v10, 0x0

    move-object/from16 v14, p3

    if-eqz v14, :cond_0

    invoke-virtual {v14}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2191
    :cond_0
    return-object v10

    .line 2192
    :cond_1
    invoke-virtual {v14}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .line 2193
    .local v6, "action":Ljava/lang/String;
    const/16 v2, 0x51

    const/16 v1, 0x9

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0g;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2194
    .local v2, "videoURL":Ljava/lang/String;
    const/16 v2, 0x2d

    const/4 v1, 0x4

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0g;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2195
    .local v1, "dataJson":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    move-object/from16 v15, p4

    move-object/from16 v11, p0

    if-nez v0, :cond_2

    .line 2196
    :try_start_0
    invoke-virtual {v14, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2197
    .local v11, "data":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 2198
    .local v13, "dataIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2199
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2200
    .local v14, "key":Ljava/lang/String;
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v15, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2201
    :catch_0
    move-exception v4

    goto :goto_1

    .end local v11    # "data":Lorg/json/JSONObject;
    .end local v13    # "dataIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_1
    move-exception v4

    .line 2202
    .local v11, "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v7

    sget v5, Lcom/facebook/ads/redexgen/X/8e;->A1m:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v4}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 2203
    const/16 v2, 0x3a

    const/4 v1, 0x7

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0g;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0, v5, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 2204
    sget-object v3, Lcom/facebook/ads/redexgen/X/0g;->A02:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0x2d

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0g;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2205
    :cond_2
    invoke-static {}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A00()Landroid/app/Activity;

    move-result-object v0

    move-object/from16 v12, p1

    invoke-static {v12, v0}, Lcom/facebook/ads/redexgen/X/0m;->A00(Lcom/facebook/ads/redexgen/X/JC;Landroid/app/Activity;)Lcom/facebook/ads/redexgen/X/0m;

    move-result-object p0

    .line 2206
    .local v11, "userReturnTracker":Lcom/facebook/ads/redexgen/X/0m;
    const/4 v5, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x56f35e6c

    const/4 v4, 0x2

    sget-object v1, Lcom/facebook/ads/redexgen/X/0g;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x53

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/0g;->A01:[Ljava/lang/String;

    const-string v1, "s0RelS4S8u5I26fhDBCh6UjxhA5GtOe8"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/4 v3, 0x1

    if-eq v7, v8, :cond_7

    const v0, 0x68af8e1

    if-eq v7, v0, :cond_6

    const v0, 0x5c27a0cf

    if-eq v7, v0, :cond_5

    :cond_4
    :goto_2
    move/from16 p1, p5

    move-object/from16 v13, p2

    if-eqz v5, :cond_b

    if-eq v5, v3, :cond_9

    if-eq v5, v4, :cond_8

    .line 2207
    new-instance v0, Lcom/facebook/ads/redexgen/X/cI;

    invoke-direct {v0, v11, v12, v13, v14}, Lcom/facebook/ads/redexgen/X/cI;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0

    .line 2208
    :cond_5
    const/16 v2, 0x31

    const/16 v1, 0x9

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0g;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_6
    const/16 v2, 0x4c

    const/4 v1, 0x5

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0g;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v5, 0x0

    goto :goto_2

    :cond_7
    const/16 v2, 0x41

    const/16 v1, 0xb

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0g;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v5, 0x2

    goto :goto_2

    .line 2209
    :cond_8
    new-instance v10, Lcom/facebook/ads/redexgen/X/cJ;

    invoke-direct/range {v10 .. v15}, Lcom/facebook/ads/redexgen/X/cJ;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)V

    return-object v10

    .line 2210
    :cond_9
    if-eqz p6, :cond_a

    .line 2211
    new-instance v10, Lcom/facebook/ads/redexgen/X/FU;

    invoke-direct/range {v10 .. v15}, Lcom/facebook/ads/redexgen/X/FU;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)V

    return-object v10

    .line 2212
    :cond_a
    new-instance v10, Lcom/facebook/ads/redexgen/X/FT;

    invoke-direct/range {v10 .. v17}, Lcom/facebook/ads/redexgen/X/FT;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/0m;Z)V

    return-object v10

    .line 2213
    :cond_b
    if-eqz v9, :cond_c

    .line 2214
    return-object v10

    .line 2215
    :cond_c
    new-instance v10, Lcom/facebook/ads/redexgen/X/Fc;

    invoke-direct/range {v10 .. v17}, Lcom/facebook/ads/redexgen/X/Fc;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/0m;Z)V

    return-object v10
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/0g;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x9

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

    const/16 v0, 0x5a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/0g;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x2ct
        0x17t
        0x18t
        0x1bt
        0x15t
        0x1ct
        0x59t
        0xdt
        0x16t
        0x59t
        0x9t
        0x18t
        0xbt
        0xat
        0x1ct
        0x59t
        0x13t
        0xat
        0x16t
        0x17t
        0x59t
        0x1dt
        0x18t
        0xdt
        0x18t
        0x59t
        0x10t
        0x17t
        0x59t
        0x38t
        0x1dt
        0x38t
        0x1at
        0xdt
        0x10t
        0x16t
        0x17t
        0x3ft
        0x18t
        0x1at
        0xdt
        0x16t
        0xbt
        0x0t
        0x57t
        0x72t
        0x77t
        0x62t
        0x77t
        0x33t
        0x2ct
        0x39t
        0x32t
        0x3t
        0x30t
        0x35t
        0x32t
        0x37t
        0x61t
        0x70t
        0x63t
        0x62t
        0x78t
        0x7ft
        0x76t
        0x31t
        0x20t
        0x32t
        0x32t
        0x35t
        0x29t
        0x33t
        0x2et
        0x34t
        0x26t
        0x29t
        0x3dt
        0x3at
        0x21t
        0x3ct
        0x2bt
        0x2ft
        0x30t
        0x3dt
        0x3ct
        0x36t
        0x6t
        0x2ct
        0x2bt
        0x35t
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "8jZhGSPxqdjMHkvaNzlybiaDjCid2NfL"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "zsjEPtgrGw8eI2Cht1c5NwgpfPSmPuOP"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Dm3lguHOTOQgWl3bEENzffKNGpRTVnVO"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "UiibCS6elvNYnQpTBoASwa3TlsDAPaDK"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ySRcfSQpF6EZpdUn4mrB0YFTiTVlozPn"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "2sYUeev1L84nJKbGgPlFEvMo"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "PPA8uBIYRuBzJvDk9W06b2sybQmwltaT"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "RBEbVW9NsJt4reqxMfA2StzTs7of9ddp"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/0g;->A01:[Ljava/lang/String;

    return-void
.end method

.method public static A05(Ljava/lang/String;)Z
    .locals 3

    .line 2216
    const/16 v2, 0x4c

    const/4 v1, 0x5

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0g;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2217
    const/16 v2, 0x31

    const/16 v1, 0x9

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0g;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2218
    :goto_0
    return v0

    .line 2219
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
