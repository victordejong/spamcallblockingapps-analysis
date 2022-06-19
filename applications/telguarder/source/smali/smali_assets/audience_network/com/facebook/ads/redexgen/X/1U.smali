.class public final Lcom/facebook/ads/redexgen/X/1U;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static A0D:[B = null

.field public static final A0E:Lcom/facebook/ads/redexgen/X/1V;

.field public static final A0F:Lcom/facebook/ads/redexgen/X/NY;

.field public static final serialVersionUID:J = -0x4a480ae214649e53L


# instance fields
.field public A00:Ljava/lang/String;

.field public final A01:I

.field public final A02:I

.field public final A03:Lcom/facebook/ads/redexgen/X/1V;

.field public final A04:Lcom/facebook/ads/redexgen/X/NY;

.field public final A05:Ljava/lang/String;

.field public final A06:Ljava/lang/String;

.field public final A07:Ljava/lang/String;

.field public final A08:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A09:Ljava/lang/String;

.field public final A0A:Z

.field public final A0B:Z

.field public final A0C:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 3294
    invoke-static {}, Lcom/facebook/ads/redexgen/X/1U;->A06()V

    sget-object v0, Lcom/facebook/ads/redexgen/X/NY;->A04:Lcom/facebook/ads/redexgen/X/NY;

    sput-object v0, Lcom/facebook/ads/redexgen/X/1U;->A0F:Lcom/facebook/ads/redexgen/X/NY;

    .line 3295
    sget-object v0, Lcom/facebook/ads/redexgen/X/1V;->A03:Lcom/facebook/ads/redexgen/X/1V;

    sput-object v0, Lcom/facebook/ads/redexgen/X/1U;->A0E:Lcom/facebook/ads/redexgen/X/1V;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/NY;IZZLcom/facebook/ads/redexgen/X/1V;ZLjava/lang/String;)V
    .locals 6

    .line 3296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3297
    move/from16 v1, p11

    if-eqz v1, :cond_0

    .line 3298
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1U;->A08:Ljava/lang/String;

    .line 3299
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3300
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/1U;->A08:Ljava/lang/String;

    .line 3301
    const/16 v3, 0x84

    const/16 v2, 0xb

    const/16 v0, 0x68

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/1U;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 3302
    const/16 v3, 0x3a

    const/16 v2, 0xc

    const/16 v0, 0x3c

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/1U;->A03(III)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, p12

    invoke-virtual {v4, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 3303
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 3304
    .local p0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1U;->A07:Ljava/lang/String;

    .line 3305
    .end local p0    # "uri":Landroid/net/Uri;
    :goto_0
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/1U;->A06:Ljava/lang/String;

    .line 3306
    iput p3, p0, Lcom/facebook/ads/redexgen/X/1U;->A01:I

    .line 3307
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/1U;->A09:Ljava/lang/String;

    .line 3308
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/1U;->A05:Ljava/lang/String;

    .line 3309
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/1U;->A04:Lcom/facebook/ads/redexgen/X/NY;

    .line 3310
    iput p7, p0, Lcom/facebook/ads/redexgen/X/1U;->A02:I

    .line 3311
    iput-boolean p8, p0, Lcom/facebook/ads/redexgen/X/1U;->A0B:Z

    .line 3312
    iput-boolean p9, p0, Lcom/facebook/ads/redexgen/X/1U;->A0A:Z

    .line 3313
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1U;->A03:Lcom/facebook/ads/redexgen/X/1V;

    .line 3314
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/1U;->A0C:Z

    .line 3315
    return-void

    .line 3316
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1U;->A07:Ljava/lang/String;

    .line 3317
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1U;->A08:Ljava/lang/String;

    goto :goto_0
.end method

.method public static A00(Lorg/json/JSONObject;)I
    .locals 4

    .line 3318
    const/16 v2, 0xf6

    const/16 v1, 0x11

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1U;->A03(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3319
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 3320
    :goto_0
    return v0

    .line 3321
    :cond_0
    const/4 v3, 0x0

    const/16 v2, 0x107

    const/16 v1, 0x13

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1U;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static A01(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/1U;
    .locals 18
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3322
    const/16 v2, 0xc6

    const/16 v1, 0xd

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1U;->A03(III)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, p0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 3323
    .local v2, "playableAdDataJson":Lorg/json/JSONObject;
    if-nez v3, :cond_0

    .line 3324
    const/4 v0, 0x0

    return-object v0

    .line 3325
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/1U;->A0E:Lcom/facebook/ads/redexgen/X/1V;

    .line 3326
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1V;->name()Ljava/lang/String;

    move-result-object v5

    const/16 v4, 0xd3

    const/16 v1, 0x11

    const/16 v0, 0x24

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/1U;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3327
    .local v2, "precachingMethodStr":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/1V;->A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/1V;

    move-result-object v16

    .line 3328
    .local v6, "precachingMethod":Lcom/facebook/ads/redexgen/X/1V;
    new-instance v6, Lcom/facebook/ads/redexgen/X/1U;

    .line 3329
    const/16 v4, 0x11a

    const/4 v1, 0x3

    const/16 v0, 0x1b

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/1U;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3330
    const/16 v4, 0x8f

    const/16 v1, 0x13

    const/16 v0, 0x5a

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/1U;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3331
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/1U;->A00(Lorg/json/JSONObject;)I

    move-result v9

    .line 3332
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/1U;->A05(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v10

    .line 3333
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/1U;->A04(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v11

    .line 3334
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/1U;->A02(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/NY;

    move-result-object v12

    const/16 v5, 0x1388

    .line 3335
    const/16 v4, 0x11d

    const/16 v1, 0x20

    const/16 v0, 0x14

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/1U;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    const/4 v5, 0x1

    .line 3336
    const/16 v4, 0x67

    const/16 v1, 0x11

    const/16 v0, 0x2e

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/1U;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 3337
    const/16 v4, 0x58

    const/16 v1, 0xf

    const/16 v0, 0x9

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/1U;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 3338
    const/16 v4, 0xa2

    const/16 v1, 0x19

    const/16 v0, 0x49

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/1U;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v17

    .line 3339
    const/16 v3, 0x46

    const/4 v1, 0x2

    const/16 v0, 0x65

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/1U;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct/range {v6 .. v18}, Lcom/facebook/ads/redexgen/X/1U;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/NY;IZZLcom/facebook/ads/redexgen/X/1V;ZLjava/lang/String;)V

    .line 3340
    return-object v6
.end method

.method public static A02(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/NY;
    .locals 4

    .line 3341
    sget-object v0, Lcom/facebook/ads/redexgen/X/1U;->A0F:Lcom/facebook/ads/redexgen/X/NY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NY;->A03()I

    move-result v3

    const/16 v2, 0xbb

    const/16 v1, 0xb

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1U;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 3342
    .local p0, "orientation":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NY;->A00(I)Lcom/facebook/ads/redexgen/X/NY;

    move-result-object v0

    return-object v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/1U;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x37

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .line 3343
    const/16 v2, 0x78

    const/16 v1, 0xc

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1U;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 3344
    .local p0, "genericTextObject":Lorg/json/JSONObject;
    const/4 v2, 0x0

    const/16 v1, 0x2d

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1U;->A03(III)Ljava/lang/String;

    move-result-object v3

    if-nez p0, :cond_0

    :goto_0
    return-object v3

    .line 3345
    :cond_0
    const/16 v2, 0x48

    const/16 v1, 0x10

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1U;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static A05(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .line 3346
    const/16 v2, 0x78

    const/16 v1, 0xc

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1U;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 3347
    .local p0, "genericTextObject":Lorg/json/JSONObject;
    const/16 v2, 0x2d

    const/16 v1, 0xd

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1U;->A03(III)Ljava/lang/String;

    move-result-object v3

    if-nez p0, :cond_0

    :goto_0
    return-object v3

    .line 3348
    :cond_0
    const/16 v2, 0xe4

    const/16 v1, 0x12

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1U;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0x13d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/1U;->A0D:[B

    return-void

    :array_0
    .array-data 1
        0x5ft
        0x63t
        0x6et
        0x76t
        0x2ft
        0x5ct
        0x7bt
        0x60t
        0x7dt
        0x6at
        0x2ft
        0x78t
        0x66t
        0x63t
        0x63t
        0x2ft
        0x6et
        0x7at
        0x7bt
        0x60t
        0x62t
        0x6et
        0x7bt
        0x66t
        0x6ct
        0x6et
        0x63t
        0x63t
        0x76t
        0x2ft
        0x60t
        0x7ft
        0x6at
        0x61t
        0x2ft
        0x66t
        0x61t
        0x2ft
        0x54t
        0x7ct
        0x6at
        0x6ct
        0x7ct
        0x52t
        0x7ct
        0x20t
        0x17t
        0x5t
        0x13t
        0x0t
        0x16t
        0x17t
        0x16t
        0x52t
        0x22t
        0x1et
        0x13t
        0xbt
        0x68t
        0x67t
        0x62t
        0x6et
        0x65t
        0x7ft
        0x54t
        0x7ft
        0x64t
        0x60t
        0x6et
        0x65t
        0x31t
        0x26t
        0x1bt
        0x1at
        0x13t
        0x1et
        0x6t
        0x20t
        0x1ct
        0x13t
        0x16t
        0x1ct
        0x14t
        0x20t
        0xbt
        0x1at
        0x7t
        0xbt
        0x5bt
        0x50t
        0x5ft
        0x5ct
        0x52t
        0x5bt
        0x61t
        0x5bt
        0x50t
        0x5at
        0x61t
        0x5dt
        0x5ft
        0x4ct
        0x5at
        0x7ct
        0x77t
        0x78t
        0x7bt
        0x75t
        0x7ct
        0x46t
        0x70t
        0x77t
        0x6dt
        0x6bt
        0x76t
        0x46t
        0x7at
        0x78t
        0x6bt
        0x7dt
        0x16t
        0x14t
        0x1ft
        0x14t
        0x3t
        0x18t
        0x12t
        0x2et
        0x5t
        0x14t
        0x9t
        0x5t
        0x36t
        0x31t
        0x2ct
        0x2bt
        0x3et
        0x31t
        0x3ct
        0x3at
        0x0t
        0x36t
        0x3bt
        0x4t
        0x3t
        0x19t
        0x1ft
        0x2t
        0x32t
        0xet
        0xct
        0x1ft
        0x9t
        0x32t
        0x4t
        0xet
        0x2t
        0x3t
        0x32t
        0x18t
        0x1ft
        0x1t
        0x17t
        0xdt
        0x21t
        0xet
        0x12t
        0x1ft
        0x7t
        0x1ft
        0x1ct
        0x12t
        0x1bt
        0x21t
        0xct
        0x1bt
        0x13t
        0x11t
        0xat
        0x1bt
        0x21t
        0x18t
        0x11t
        0xct
        0x13t
        0x1ft
        0xat
        0x44t
        0x59t
        0x42t
        0x4et
        0x45t
        0x5ft
        0x4at
        0x5ft
        0x42t
        0x44t
        0x45t
        0x72t
        0x6et
        0x63t
        0x7bt
        0x63t
        0x60t
        0x6et
        0x67t
        0x5dt
        0x66t
        0x63t
        0x76t
        0x63t
        0x63t
        0x61t
        0x76t
        0x70t
        0x72t
        0x70t
        0x7bt
        0x7at
        0x7dt
        0x74t
        0x4ct
        0x7et
        0x76t
        0x67t
        0x7bt
        0x7ct
        0x77t
        0xct
        0x1bt
        0x9t
        0x1ft
        0xct
        0x1at
        0x1bt
        0x1at
        0x21t
        0xet
        0x12t
        0x1ft
        0x7t
        0x21t
        0xat
        0x1bt
        0x6t
        0xat
        0x5et
        0x46t
        0x44t
        0x5dt
        0x5dt
        0x4ct
        0x4ft
        0x41t
        0x48t
        0x72t
        0x5et
        0x48t
        0x4et
        0x42t
        0x43t
        0x49t
        0x5et
        0x6ct
        0x77t
        0x6at
        0x72t
        0x70t
        0x69t
        0x69t
        0x78t
        0x7bt
        0x75t
        0x7ct
        0x46t
        0x6at
        0x7ct
        0x7at
        0x76t
        0x77t
        0x7dt
        0x6at
        0x59t
        0x5et
        0x45t
        0x54t
        0x46t
        0x41t
        0x7ct
        0x55t
        0x4at
        0x46t
        0x54t
        0x7ct
        0x57t
        0x4at
        0x4et
        0x46t
        0x4ct
        0x56t
        0x57t
        0x7ct
        0x4at
        0x4dt
        0x7ct
        0x4et
        0x4at
        0x4ft
        0x4ft
        0x4at
        0x50t
        0x46t
        0x40t
        0x4ct
        0x4dt
        0x47t
        0x50t
    .end array-data
.end method


# virtual methods
.method public final A07()I
    .locals 1

    .line 3349
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1U;->A01:I

    return v0
.end method

.method public final A08()I
    .locals 1

    .line 3350
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1U;->A02:I

    return v0
.end method

.method public final A09()Lcom/facebook/ads/redexgen/X/1V;
    .locals 1

    .line 3351
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1U;->A03:Lcom/facebook/ads/redexgen/X/1V;

    return-object v0
.end method

.method public final A0A()Lcom/facebook/ads/redexgen/X/NY;
    .locals 1

    .line 3352
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1U;->A04:Lcom/facebook/ads/redexgen/X/NY;

    return-object v0
.end method

.method public final A0B()Ljava/lang/String;
    .locals 1

    .line 3353
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1U;->A00:Ljava/lang/String;

    return-object v0
.end method

.method public final A0C()Ljava/lang/String;
    .locals 1

    .line 3354
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1U;->A05:Ljava/lang/String;

    return-object v0
.end method

.method public final A0D()Ljava/lang/String;
    .locals 1

    .line 3355
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1U;->A06:Ljava/lang/String;

    return-object v0
.end method

.method public final A0E()Ljava/lang/String;
    .locals 1

    .line 3356
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1U;->A07:Ljava/lang/String;

    return-object v0
.end method

.method public final A0F()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3357
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1U;->A08:Ljava/lang/String;

    return-object v0
.end method

.method public final A0G()Ljava/lang/String;
    .locals 1

    .line 3358
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1U;->A09:Ljava/lang/String;

    return-object v0
.end method

.method public final A0H(Ljava/lang/String;)V
    .locals 0

    .line 3359
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1U;->A00:Ljava/lang/String;

    .line 3360
    return-void
.end method

.method public final A0I()Z
    .locals 1

    .line 3361
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1U;->A0B:Z

    return v0
.end method

.method public final A0J()Z
    .locals 1

    .line 3362
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1U;->A0C:Z

    return v0
.end method
