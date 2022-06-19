.class public final Lcom/facebook/ads/redexgen/X/8j;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/8j;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18868
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/8j;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x70

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/8D;JJJJILjava/lang/Exception;)Lorg/json/JSONObject;
    .locals 6
    .param p10    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 18869
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 18870
    .local p1, "additionalData":Lorg/json/JSONObject;
    :try_start_0
    const/16 v2, 0x45

    const/16 v1, 0xa

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8j;->A00(III)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    invoke-virtual {v3, v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 18871
    const/16 v2, 0x15

    const/16 v1, 0x8

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8j;->A00(III)Ljava/lang/String;

    move-result-object v2

    long-to-double v4, p3

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    invoke-virtual {v3, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 18872
    const/16 v2, 0x39

    const/16 v1, 0xc

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8j;->A00(III)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-virtual {v3, v0, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 18873
    const/16 v2, 0x4f

    const/16 v1, 0xb

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8j;->A00(III)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-virtual {v3, v0, p7, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 18874
    const/16 v2, 0x22

    const/16 v1, 0x10

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8j;->A00(III)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    invoke-virtual {v3, v0, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 18875
    if-eqz p10, :cond_0

    .line 18876
    const/16 v2, 0x1d

    const/4 v1, 0x5

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8j;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    .line 18877
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_0

    :catch_5
    move-exception v1

    .line 18878
    .local p0, "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/8d;->A3P(Ljava/lang/Throwable;)V

    .line 18879
    .end local p0    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_1
    return-object v3
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x5a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8j;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x17t
        0x34t
        0x3ct
        0x3ct
        0x32t
        0x35t
        0x3ct
        0x7bt
        0x15t
        0x3et
        0x2ft
        0x2ct
        0x34t
        0x29t
        0x30t
        0x7bt
        0x1et
        0x2dt
        0x3et
        0x35t
        0x2ft
        0x22t
        0x33t
        0x34t
        0x27t
        0x32t
        0x2ft
        0x29t
        0x28t
        0x60t
        0x77t
        0x77t
        0x6at
        0x77t
        0x20t
        0x3ct
        0x3ct
        0x38t
        0x17t
        0x3bt
        0x3ct
        0x29t
        0x3ct
        0x3dt
        0x3bt
        0x17t
        0x2bt
        0x27t
        0x2ct
        0x2dt
        0x62t
        0x69t
        0x78t
        0x7bt
        0x63t
        0x7et
        0x67t
        0x29t
        0x38t
        0x20t
        0x35t
        0x36t
        0x38t
        0x3dt
        0x6t
        0x2at
        0x30t
        0x23t
        0x3ct
        0x37t
        0x30t
        0x25t
        0x36t
        0x30t
        0x1bt
        0x30t
        0x2dt
        0x29t
        0x21t
        0x28t
        0x2dt
        0x31t
        0x32t
        0x3ct
        0x39t
        0x2t
        0x2et
        0x34t
        0x27t
        0x38t
    .end array-data
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/8D;JJJJILjava/lang/Exception;)V
    .locals 6
    .param p10    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 18880
    const/4 v2, 0x0

    const/16 v1, 0x15

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8j;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 18881
    .local p0, "deLogData":Lcom/facebook/ads/redexgen/X/8f;
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/8f;->A03(I)V

    .line 18882
    invoke-static/range {p0 .. p10}, Lcom/facebook/ads/redexgen/X/8j;->A01(Lcom/facebook/ads/redexgen/X/8D;JJJJILjava/lang/Exception;)Lorg/json/JSONObject;

    move-result-object v0

    .line 18883
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/8f;->A05(Lorg/json/JSONObject;)V

    .line 18884
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v4

    sget v3, Lcom/facebook/ads/redexgen/X/8e;->A1j:I

    .line 18885
    const/16 v2, 0x32

    const/4 v1, 0x7

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8j;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3, v5}, Lcom/facebook/ads/redexgen/X/8d;->A8v(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 18886
    return-void
.end method
