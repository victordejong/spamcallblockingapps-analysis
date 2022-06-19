.class public final Lcom/facebook/ads/redexgen/X/1T;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/1T;->A0A()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/1P;
    .locals 2

    .line 3261
    new-instance v1, Lcom/facebook/ads/redexgen/X/1O;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/1O;-><init>()V

    .line 3262
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/1T;->A06(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/1O;->A06(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/1O;

    move-result-object v1

    .line 3263
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/1T;->A05(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/1O;->A07(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/1O;

    move-result-object v1

    .line 3264
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/1T;->A07(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/1O;->A05(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/1O;

    move-result-object v1

    .line 3265
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/1T;->A04(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/1O;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/1O;

    move-result-object v0

    .line 3266
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1O;->A08()Lcom/facebook/ads/redexgen/X/1P;

    move-result-object v0

    .line 3267
    return-object v0
.end method

.method public static A01(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/1Z;
    .locals 2

    .line 3268
    new-instance v1, Lcom/facebook/ads/redexgen/X/1Y;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/1Y;-><init>()V

    .line 3269
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/1T;->A08(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/1Y;->A02(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/1Y;

    move-result-object v1

    .line 3270
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/1T;->A09(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/1Y;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/1Y;

    move-result-object v0

    .line 3271
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1Y;->A04()Lcom/facebook/ads/redexgen/X/1Z;

    move-result-object v0

    .line 3272
    return-object v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/1T;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x79

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .line 3273
    const/16 v2, 0xd9

    const/16 v1, 0xc

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1T;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 3274
    .local p0, "genericTextObject":Lorg/json/JSONObject;
    const/16 v2, 0x8d

    const/16 v1, 0x9

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1T;->A02(III)Ljava/lang/String;

    move-result-object v3

    if-nez p0, :cond_0

    :goto_0
    return-object v3

    .line 3275
    :cond_0
    const/16 v2, 0xf4

    const/16 v1, 0x9

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1T;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static A04(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .line 3276
    const/16 v2, 0xd9

    const/16 v1, 0xc

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1T;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 3277
    .local p0, "genericTextObject":Lorg/json/JSONObject;
    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1T;->A02(III)Ljava/lang/String;

    move-result-object v3

    if-nez p0, :cond_0

    :goto_0
    return-object v3

    .line 3278
    :cond_0
    const/16 v2, 0x96

    const/16 v1, 0x8

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1T;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static A05(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .line 3279
    const/16 v2, 0xd9

    const/16 v1, 0xc

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1T;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 3280
    .local p0, "genericTextObject":Lorg/json/JSONObject;
    const/16 v2, 0x47

    const/16 v1, 0x31

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1T;->A02(III)Ljava/lang/String;

    move-result-object v3

    if-nez p0, :cond_0

    :goto_0
    return-object v3

    .line 3281
    :cond_0
    const/16 v2, 0xaf

    const/16 v1, 0x1c

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1T;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static A06(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .line 3282
    const/16 v2, 0xd9

    const/16 v1, 0xc

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1T;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 3283
    .local p0, "genericTextObject":Lorg/json/JSONObject;
    const/16 v2, 0x19

    const/16 v1, 0x2e

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1T;->A02(III)Ljava/lang/String;

    move-result-object v3

    if-nez p0, :cond_0

    :goto_0
    return-object v3

    .line 3284
    :cond_0
    const/16 v2, 0xcb

    const/16 v1, 0xe

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1T;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static A07(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .line 3285
    const/16 v2, 0xd9

    const/16 v1, 0xc

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1T;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 3286
    .local p0, "genericTextObject":Lorg/json/JSONObject;
    const/16 v2, 0x8

    const/16 v1, 0x11

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1T;->A02(III)Ljava/lang/String;

    move-result-object v3

    if-nez p0, :cond_0

    :goto_0
    return-object v3

    .line 3287
    :cond_0
    const/16 v2, 0x9e

    const/16 v1, 0x11

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1T;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static A08(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .line 3288
    const/16 v2, 0xd9

    const/16 v1, 0xc

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1T;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 3289
    .local p0, "genericTextObject":Lorg/json/JSONObject;
    const/16 v2, 0x78

    const/16 v1, 0x11

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1T;->A02(III)Ljava/lang/String;

    move-result-object v3

    if-nez p0, :cond_0

    :goto_0
    return-object v3

    .line 3290
    :cond_0
    const/16 v2, 0xe5

    const/16 v1, 0xb

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1T;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static A09(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .line 3291
    const/16 v2, 0xd9

    const/16 v1, 0xc

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1T;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 3292
    .local p0, "genericTextObject":Lorg/json/JSONObject;
    const/16 v2, 0x89

    const/4 v1, 0x4

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1T;->A02(III)Ljava/lang/String;

    move-result-object v3

    if-nez p0, :cond_0

    :goto_0
    return-object v3

    .line 3293
    :cond_0
    const/16 v2, 0xf0

    const/4 v1, 0x4

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1T;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static A0A()V
    .locals 1

    const/16 v0, 0xfd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/1T;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x8t
        0x21t
        0x24t
        0x28t
        0x1at
        -0x2bt
        -0xat
        0x19t
        0xft
        0x3bt
        0x3at
        0x40t
        0x35t
        0x3at
        0x41t
        0x31t
        -0x14t
        0x23t
        0x2dt
        0x40t
        0x2ft
        0x34t
        0x35t
        0x3at
        0x33t
        0x39t
        0x65t
        0x64t
        0x6at
        0x5ft
        0x64t
        0x6bt
        0x5bt
        0x16t
        0x6dt
        0x57t
        0x6at
        0x59t
        0x5et
        0x5ft
        0x64t
        0x5dt
        0x16t
        0x6at
        0x65t
        0x16t
        0x68t
        0x5bt
        0x59t
        0x5bt
        0x5ft
        0x6ct
        0x5bt
        0x16t
        0x57t
        0x64t
        0x16t
        0x5ft
        0x64t
        0x23t
        0x5dt
        0x57t
        0x63t
        0x5bt
        0x16t
        0x68t
        0x5bt
        0x6dt
        0x57t
        0x68t
        0x5at
        0x1t
        0x2dt
        0x2ct
        0x32t
        0x27t
        0x2ct
        0x33t
        0x23t
        -0x22t
        0x35t
        0x1ft
        0x32t
        0x21t
        0x26t
        0x27t
        0x2ct
        0x25t
        -0x22t
        0x32t
        0x2dt
        -0x22t
        0x30t
        0x23t
        0x21t
        0x23t
        0x27t
        0x34t
        0x23t
        -0x22t
        0x39t
        0x2ft
        0x33t
        0x1ft
        0x2ct
        0x32t
        0x27t
        0x32t
        0x37t
        0x3bt
        0x39t
        0x21t
        0x33t
        0x30t
        0x30t
        0x23t
        0x2ct
        0x21t
        0x37t
        0x3bt
        0xft
        0x22t
        0x34t
        0x1et
        0x2ft
        0x21t
        -0x23t
        0x26t
        0x2bt
        -0x23t
        0x18t
        0x30t
        0x22t
        0x20t
        0x30t
        0x1at
        0x30t
        -0x18t
        0x0t
        -0x2t
        0x5t
        -0x31t
        -0x14t
        -0x15t
        -0x16t
        -0x11t
        -0x15t
        -0x12t
        -0x1ft
        -0x20t
        -0x16t
        -0xdt
        -0xat
        -0x6t
        -0x14t
        -0x1at
        -0x18t
        -0x15t
        0x3ct
        0x48t
        0x47t
        0x4dt
        0x42t
        0x47t
        0x4et
        0x3et
        0x38t
        0x50t
        0x3at
        0x4dt
        0x3ct
        0x41t
        0x42t
        0x47t
        0x40t
        -0x7t
        0x5t
        0x4t
        0xat
        -0x1t
        0x4t
        0xbt
        -0x5t
        -0xbt
        0xdt
        -0x9t
        0xat
        -0x7t
        -0x2t
        -0x1t
        0x4t
        -0x3t
        -0xbt
        -0x4t
        0x5t
        0x8t
        -0xbt
        0x8t
        -0x5t
        0xdt
        -0x9t
        0x8t
        -0x6t
        0x2et
        0x2ct
        0x35t
        0x2ct
        0x39t
        0x30t
        0x2at
        0x26t
        0x39t
        0x2ct
        0x3et
        0x28t
        0x39t
        0x2bt
        0x58t
        0x56t
        0x5ft
        0x56t
        0x63t
        0x5at
        0x54t
        0x50t
        0x65t
        0x56t
        0x69t
        0x65t
        0x2et
        0x21t
        0x33t
        0x1dt
        0x2et
        0x20t
        0x1bt
        0x25t
        0x2at
        0x1bt
        0x34t
        0x49t
        0x41t
        0x3ft
        0x46t
        0x3ft
        0x3ct
        0x3bt
        0x3at
        0x3ft
        0x3bt
        0x3et
        0x31t
        0x30t
    .end array-data
.end method
