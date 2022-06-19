.class public final Lcom/facebook/ads/redexgen/X/bs;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/JA;


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final A04:Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/XK;

.field public A01:Lcom/facebook/ads/redexgen/X/Xw;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 71188
    invoke-static {}, Lcom/facebook/ads/redexgen/X/bs;->A06()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/bs;->A05()V

    const-class v0, Lcom/facebook/ads/redexgen/X/bs;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/bs;->A04:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XK;Lcom/facebook/ads/redexgen/X/Xw;)V
    .locals 0

    .line 71189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71190
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bs;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71191
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/bs;->A01:Lcom/facebook/ads/redexgen/X/Xw;

    .line 71192
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/bs;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/bs;->A03:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/bs;->A03:[Ljava/lang/String;

    const-string v1, "6iaNxoAqzoeupDn53l2Cm"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "N7vye13Dqewush4C3JTfsv4"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x68

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 2

    .line 71193
    const/4 v1, 0x0

    .line 71194
    .local p0, "limit":I
    if-eqz p0, :cond_0

    .line 71195
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    add-int/2addr v1, v0

    .line 71196
    :cond_0
    if-eqz p1, :cond_1

    .line 71197
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    add-int/2addr v1, v0

    .line 71198
    :cond_1
    invoke-static {p0, p1, v1}, Lcom/facebook/ads/redexgen/X/bs;->A02(Lorg/json/JSONArray;Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static A02(Lorg/json/JSONArray;Lorg/json/JSONArray;I)Lorg/json/JSONArray;
    .locals 17

    .line 71199
    move-object/from16 v11, p0

    move-object/from16 v10, p1

    if-nez v11, :cond_0

    .line 71200
    return-object v10

    .line 71201
    :cond_0
    if-nez v10, :cond_1

    .line 71202
    return-object v11

    .line 71203
    :cond_1
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v9

    .local v11, "debugLength":I
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 71204
    .local v10, "eventsLength":I
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 71205
    .local v9, "totalEvents":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v11, "debugIdx":I
    const/4 v5, 0x0

    .line 71206
    .local v8, "eventsIdx":I
    const/4 v4, 0x0

    .local v7, "objDebug":Lorg/json/JSONObject;
    const/4 v3, 0x0

    .line 71207
    .local v7, "objEvent":Lorg/json/JSONObject;
    const-wide p0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .local v6, "debugTime":D
    const-wide v15, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 71208
    .end local v11    # "debugIdx":I
    .end local p3
    .local v8, "debugIdx":I
    .local v7, "eventsIdx":I
    .local v7, "limit":I
    .local v6, "objDebug":Lorg/json/JSONObject;
    .local v5, "objEvent":Lorg/json/JSONObject;
    .local v4, "debugTime":D
    .local p0, "eventTime":D
    :cond_2
    :goto_0
    if-lt v6, v9, :cond_3

    if-ge v5, v8, :cond_c

    :cond_3
    if-lez p2, :cond_c

    .line 71209
    const/16 v2, 0x1b3

    const/4 v1, 0x4

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bs;->A00(III)Ljava/lang/String;

    move-result-object v12

    if-ge v6, v9, :cond_5

    if-nez v4, :cond_5

    .line 71210
    :try_start_0
    invoke-virtual {v11, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 71211
    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide p0

    .line 71212
    goto :goto_1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71213
    :catch_0
    move-exception v4

    .line 71214
    .local v11, "jsone":Lorg/json/JSONException;
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v13

    sget-object v2, Lcom/facebook/ads/redexgen/X/bs;->A03:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_b

    sget-object v2, Lcom/facebook/ads/redexgen/X/bs;->A03:[Ljava/lang/String;

    const-string v1, "6K"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "iJ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v13, :cond_4

    .line 71215
    sget-object v2, Lcom/facebook/ads/redexgen/X/bs;->A04:Ljava/lang/String;

    .end local v11    # "jsone":Lorg/json/JSONException;
    .local v16, "debugLength":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .end local v6    # "objDebug":Lorg/json/JSONObject;
    .local p3, "objDebug":Lorg/json/JSONObject;
    const/16 v14, 0x111

    const/16 v1, 0x21

    const/16 v0, 0x6b

    invoke-static {v14, v1, v0}, Lcom/facebook/ads/redexgen/X/bs;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71216
    .end local v11
    .end local v6
    .restart local v16    # "debugLength":I
    .restart local p3
    :cond_4
    const/4 v4, 0x0

    .line 71217
    .end local p3
    .restart local v6    # "objDebug":Lorg/json/JSONObject;
    const-wide p0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 71218
    .end local v11
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 71219
    .end local v11
    .restart local v16    # "debugLength":I
    :cond_5
    if-ge v5, v8, :cond_7

    if-nez v3, :cond_7

    .line 71220
    :try_start_1
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 71221
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v15

    .line 71222
    .end local p0    # "eventTime":D
    .local v11, "eventTime":D
    goto :goto_2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 71223
    .end local v11    # "eventTime":D
    .restart local p0    # "eventTime":D
    :catch_1
    move-exception v12

    .line 71224
    .local v11, "jsone":Lorg/json/JSONException;
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 71225
    sget-object v3, Lcom/facebook/ads/redexgen/X/bs;->A04:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x132

    const/16 v1, 0x19

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bs;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71226
    :cond_6
    const/4 v3, 0x0

    .line 71227
    const-wide v15, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 71228
    .end local v11    # "jsone":Lorg/json/JSONException;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 71229
    :cond_7
    if-nez v4, :cond_8

    if-eqz v3, :cond_2

    .line 71230
    :cond_8
    if-eqz v4, :cond_9

    cmpg-double v0, v15, p0

    if-gez v0, :cond_a

    .line 71231
    .end local v11
    .restart local v6    # "objDebug":Lorg/json/JSONObject;
    :cond_9
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 71232
    const/4 v3, 0x0

    .line 71233
    .end local v5    # "objEvent":Lorg/json/JSONObject;
    .local v11, "objEvent":Lorg/json/JSONObject;
    const-wide v15, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 71234
    .end local v11    # "objEvent":Lorg/json/JSONObject;
    .restart local v5    # "objEvent":Lorg/json/JSONObject;
    :goto_3
    add-int/lit8 p2, p2, -0x1

    goto/16 :goto_0

    .line 71235
    :cond_a
    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 71236
    const/4 v4, 0x0

    .line 71237
    .end local v6    # "objDebug":Lorg/json/JSONObject;
    .local v11, "objDebug":Lorg/json/JSONObject;
    const-wide p0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    goto :goto_3

    .line 71238
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 71239
    .end local v11    # "objDebug":Lorg/json/JSONObject;
    .restart local v16    # "debugLength":I
    :cond_c
    if-lez p2, :cond_d

    .line 71240
    if-eqz v4, :cond_e

    .line 71241
    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 71242
    :cond_d
    :goto_4
    return-object v7

    .line 71243
    :cond_e
    if-eqz v3, :cond_d

    .line 71244
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4
.end method

.method private A03()Lorg/json/JSONObject;
    .locals 6

    .line 71245
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bs;->A01:Lcom/facebook/ads/redexgen/X/Xw;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9J;->A5Z()Lorg/json/JSONObject;

    move-result-object v5

    .line 71246
    .local p0, "tokens":Lorg/json/JSONObject;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bs;->A01:Lcom/facebook/ads/redexgen/X/Xw;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9J;->A5Y()Lorg/json/JSONArray;

    move-result-object v4

    .line 71247
    .local v0, "events":Lorg/json/JSONArray;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bs;->A00:Lcom/facebook/ads/redexgen/X/XK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J6;->A0Q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71248
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bs;->A00:Lcom/facebook/ads/redexgen/X/XK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8g;->A03(Lcom/facebook/ads/redexgen/X/8D;)Lorg/json/JSONArray;

    move-result-object v1

    .line 71249
    .local v5, "debugLogEvents":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 71250
    invoke-static {v1, v4}, Lcom/facebook/ads/redexgen/X/bs;->A01(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v4

    .line 71251
    .end local v5    # "debugLogEvents":Lorg/json/JSONArray;
    :cond_0
    const/4 v3, 0x0

    .line 71252
    .local v5, "payload":Lorg/json/JSONObject;
    if-eqz v4, :cond_2

    .line 71253
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 71254
    if-eqz v5, :cond_1

    .line 71255
    const/16 v2, 0x1b7

    const/4 v1, 0x6

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bs;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71256
    :cond_1
    const/16 v2, 0x183

    const/4 v1, 0x6

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bs;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71257
    .local v0, "jsone":Lorg/json/JSONException;
    :catch_0
    const/4 v0, 0x0

    return-object v0

    .line 71258
    .end local v0    # "jsone":Lorg/json/JSONException;
    :cond_2
    :goto_0
    return-object v3
.end method

.method private A04(I)Lorg/json/JSONObject;
    .locals 6

    .line 71259
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bs;->A01:Lcom/facebook/ads/redexgen/X/Xw;

    .line 71260
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/9J;->A7M(I)Landroid/util/Pair;

    move-result-object v0

    .line 71261
    .local p0, "tokensAndEvents":Landroid/util/Pair;, "Landroid/util/Pair<Lorg/json/JSONObject;Lorg/json/JSONArray;>;"
    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lorg/json/JSONObject;

    .line 71262
    .local p1, "tokens":Lorg/json/JSONObject;
    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lorg/json/JSONArray;

    .line 71263
    .local v0, "events":Lorg/json/JSONArray;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bs;->A00:Lcom/facebook/ads/redexgen/X/XK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J6;->A0Q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71264
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bs;->A00:Lcom/facebook/ads/redexgen/X/XK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J6;->A08(Landroid/content/Context;)I

    move-result v2

    .line 71265
    .local v0, "debugEventLimit":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bs;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71266
    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/8g;->A04(Lcom/facebook/ads/redexgen/X/8D;I)Lorg/json/JSONArray;

    move-result-object v1

    .line 71267
    .local v5, "debugLogEvents":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 71268
    add-int/2addr p1, v2

    invoke-static {v1, v4, p1}, Lcom/facebook/ads/redexgen/X/bs;->A02(Lorg/json/JSONArray;Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v4

    .line 71269
    .end local v0    # "debugEventLimit":I
    .end local v5    # "debugLogEvents":Lorg/json/JSONArray;
    :cond_0
    const/4 v3, 0x0

    .line 71270
    .local v0, "payload":Lorg/json/JSONObject;
    if-eqz v4, :cond_2

    .line 71271
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 71272
    if-eqz v5, :cond_1

    .line 71273
    const/16 v2, 0x1b7

    const/4 v1, 0x6

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bs;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71274
    :cond_1
    const/16 v2, 0x183

    const/4 v1, 0x6

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bs;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71275
    .end local v0    # "payload":Lorg/json/JSONObject;
    .local v0, "jsone":Lorg/json/JSONException;
    :catch_0
    const/4 v0, 0x0

    return-object v0

    .line 71276
    .local v0, "payload":Lorg/json/JSONObject;
    :cond_2
    :goto_0
    return-object v3
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x1bd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/bs;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x15t
        0x53t
        0x5at
        0x47t
        0x15t
        0x50t
        0x43t
        0x50t
        0x5bt
        0x41t
        0x7ct
        0x51t
        0x15t
        0x3ct
        0x6ft
        0x69t
        0x7ft
        0x7ft
        0x79t
        0x6ft
        0x6ft
        0x7at
        0x69t
        0x70t
        0x70t
        0x65t
        0x32t
        0x6et
        0x65t
        0x44t
        0x4dt
        0x44t
        0x55t
        0x44t
        0x45t
        0x1t
        0x44t
        0x57t
        0x44t
        0x4ft
        0x55t
        0x52t
        0x1t
        0x44t
        0x59t
        0x42t
        0x44t
        0x44t
        0x45t
        0x44t
        0x45t
        0x1t
        0x53t
        0x44t
        0x55t
        0x53t
        0x58t
        0x1t
        0x4dt
        0x48t
        0x4ct
        0x48t
        0x55t
        0xft
        0x1t
        0x62t
        0x4et
        0x54t
        0x4ft
        0x55t
        0x1bt
        0x1t
        0x48t
        0x7bt
        0x68t
        0x63t
        0x79t
        0x2dt
        0x79t
        0x74t
        0x7dt
        0x68t
        0x2dt
        0x7dt
        0x7ft
        0x62t
        0x6et
        0x68t
        0x7et
        0x7et
        0x68t
        0x69t
        0x2dt
        0x6ft
        0x74t
        0x2dt
        0x79t
        0x65t
        0x68t
        0x2dt
        0x7et
        0x68t
        0x7ft
        0x7bt
        0x68t
        0x7ft
        0x37t
        0x2dt
        0x54t
        0x73t
        0x7bt
        0x7et
        0x77t
        0x76t
        0x32t
        0x66t
        0x7dt
        0x32t
        0x62t
        0x73t
        0x60t
        0x61t
        0x77t
        0x32t
        0x73t
        0x7ct
        0x32t
        0x77t
        0x64t
        0x77t
        0x7ct
        0x66t
        0x32t
        0x7bt
        0x7ct
        0x32t
        0x77t
        0x64t
        0x77t
        0x7ct
        0x66t
        0x61t
        0x32t
        0x73t
        0x60t
        0x60t
        0x73t
        0x6bt
        0x32t
        0x74t
        0x7dt
        0x60t
        0x32t
        0x76t
        0x7bt
        0x61t
        0x62t
        0x73t
        0x66t
        0x71t
        0x7at
        0x32t
        0x74t
        0x73t
        0x7bt
        0x7et
        0x67t
        0x60t
        0x77t
        0x3ct
        0x41t
        0x77t
        0x60t
        0x64t
        0x77t
        0x60t
        0x32t
        0x62t
        0x60t
        0x7dt
        0x71t
        0x77t
        0x61t
        0x61t
        0x77t
        0x76t
        0x32t
        0x77t
        0x64t
        0x77t
        0x7ct
        0x66t
        0x5bt
        0x76t
        0x32t
        0x32t
        0x4t
        0x13t
        0x17t
        0x4t
        0x13t
        0x41t
        0x13t
        0x4t
        0x15t
        0x14t
        0x13t
        0xft
        0x4t
        0x5t
        0x41t
        0xft
        0xet
        0xft
        0x4ct
        0x13t
        0x4t
        0x15t
        0x13t
        0x18t
        0x0t
        0x3t
        0xdt
        0x4t
        0x41t
        0x4t
        0x13t
        0x13t
        0xet
        0x13t
        0x41t
        0x2t
        0xet
        0x5t
        0x4t
        0x41t
        0x2at
        0x1ct
        0xbt
        0xft
        0x1ct
        0xbt
        0x59t
        0xbt
        0x1ct
        0xdt
        0xct
        0xbt
        0x17t
        0x1ct
        0x1dt
        0x59t
        0xbt
        0x1ct
        0xdt
        0xbt
        0x0t
        0x18t
        0x1bt
        0x15t
        0x1ct
        0x59t
        0x1ct
        0xbt
        0xbt
        0x16t
        0xbt
        0x59t
        0x1at
        0x16t
        0x1dt
        0x1ct
        0x59t
        0x56t
        0x6dt
        0x62t
        0x61t
        0x6ft
        0x66t
        0x23t
        0x77t
        0x6ct
        0x23t
        0x73t
        0x62t
        0x71t
        0x70t
        0x66t
        0x23t
        0x67t
        0x66t
        0x61t
        0x76t
        0x64t
        0x4ft
        0x6ct
        0x64t
        0x46t
        0x75t
        0x66t
        0x6dt
        0x77t
        0x23t
        0x62t
        0x77t
        0x23t
        0x6t
        0x3dt
        0x32t
        0x31t
        0x3ft
        0x36t
        0x73t
        0x27t
        0x3ct
        0x73t
        0x23t
        0x32t
        0x21t
        0x20t
        0x36t
        0x73t
        0x36t
        0x25t
        0x36t
        0x3dt
        0x27t
        0x73t
        0x32t
        0x27t
        0x73t
        0x6ft
        0x54t
        0x5bt
        0x58t
        0x56t
        0x5ft
        0x1at
        0x4et
        0x55t
        0x1at
        0x4at
        0x5bt
        0x48t
        0x49t
        0x5ft
        0x1at
        0x49t
        0x5ft
        0x48t
        0x4ct
        0x5ft
        0x48t
        0x1at
        0x48t
        0x5ft
        0x49t
        0x4at
        0x55t
        0x54t
        0x49t
        0x5ft
        0x1at
        0x5bt
        0x4et
        0x1at
        0x4at
        0x55t
        0x49t
        0x53t
        0x4et
        0x53t
        0x55t
        0x54t
        0x1at
        0x50t
        0x5ct
        0x57t
        0x56t
        0x68t
        0x6dt
        0x78t
        0x6dt
        0x6et
        0x6dt
        0x7ft
        0x69t
        0x11t
        0x2t
        0x11t
        0x1at
        0x0t
        0x7t
        0x6t
        0x5t
        0x1t
        0x14t
        0x15t
        0x12t
        0x5t
        0x4dt
        0x3t
        0xft
        0xet
        0x6t
        0x9t
        0x7t
        0x4dt
        0x5t
        0x16t
        0x5t
        0xet
        0x14t
        0x4dt
        0xdt
        0x1t
        0x7t
        0x9t
        0x3t
        0x21t
        0x22t
        0x26t
        0x33t
        0x32t
        0x35t
        0x22t
        0x18t
        0x24t
        0x28t
        0x29t
        0x21t
        0x2et
        0x20t
        0x2ct
        0x21t
        0x47t
        0x5at
        0x5et
        0x56t
        0x3ct
        0x27t
        0x23t
        0x2dt
        0x26t
        0x3bt
    .end array-data
.end method

.method public static A06()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "4VJF"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "NMiFc9mQHDdEdTYDts8ebbMyjIljV2c0"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "gJxI4lQggzgG7l1t48TOLBAVsZm4smpW"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "RC"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "7emK"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "VnvWTQ3PSRLSSOUq71E5D"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "jZ42e8scbVg896gjqaujwC7"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "gj"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/bs;->A03:[Ljava/lang/String;

    return-void
.end method

.method private A07(Ljava/lang/String;)V
    .locals 1

    .line 71277
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/8g;->A0J(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71278
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/8g;->A0E(Ljava/lang/String;)V

    .line 71279
    :goto_0
    return-void

    .line 71280
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bs;->A01:Lcom/facebook/ads/redexgen/X/Xw;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/9J;->A7o(Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public final A4H()Lorg/json/JSONObject;
    .locals 1

    .line 71281
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bs;->A00:Lcom/facebook/ads/redexgen/X/XK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J6;->A0F(Landroid/content/Context;)I

    move-result v0

    .line 71282
    .local p0, "eventLimit":I
    if-lez v0, :cond_0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/bs;->A04(I)Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bs;->A03()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method public final A87()Z
    .locals 4

    .line 71283
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bs;->A00:Lcom/facebook/ads/redexgen/X/XK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J6;->A0F(Landroid/content/Context;)I

    move-result v3

    .line 71284
    .local p0, "eventLimit":I
    const/4 v2, 0x0

    const/4 v0, 0x1

    if-ge v3, v0, :cond_0

    .line 71285
    return v2

    .line 71286
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bs;->A01:Lcom/facebook/ads/redexgen/X/Xw;

    .line 71287
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9J;->A6R()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bs;->A00:Lcom/facebook/ads/redexgen/X/XK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8g;->A00(Landroid/content/Context;)I

    move-result v0

    add-int/2addr v1, v0

    .line 71288
    .local v2, "eventCount":I
    if-le v1, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public final A9O()V
    .locals 7

    .line 71289
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bs;->A00:Lcom/facebook/ads/redexgen/X/XK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J6;->A0G(Landroid/content/Context;)I

    move-result v1

    .line 71290
    .local p0, "retryLimit":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bs;->A01:Lcom/facebook/ads/redexgen/X/Xw;

    .line 71291
    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/9J;->A40(I)I

    move-result v6

    .line 71292
    .local v0, "attemptsExceededEventsCount":I
    if-lez v6, :cond_0

    .line 71293
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bs;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 71294
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A0o:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1c

    const/16 v1, 0x2c

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bs;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 71295
    const/16 v2, 0x17b

    const/16 v1, 0x8

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bs;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8V(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 71296
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/bs;->A00:Lcom/facebook/ads/redexgen/X/XK;

    sget-object v2, Lcom/facebook/ads/redexgen/X/bs;->A03:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/bs;->A03:[Ljava/lang/String;

    const-string v1, "bzDkK7DGlCk2AgYUikBmx"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "oAHu9PBino36rPxONmBwiLk"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/8g;->A0G(Lcom/facebook/ads/redexgen/X/8D;)Z

    .line 71297
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A9t(Lorg/json/JSONArray;)V
    .locals 10

    .line 71298
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 71299
    .local p0, "length":I
    const/4 v7, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v7, v8, :cond_2

    .line 71300
    :try_start_0
    invoke-virtual {p1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 71301
    .local v8, "eventJson":Lorg/json/JSONObject;
    const/16 v2, 0x1b1

    const/4 v1, 0x2

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bs;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71302
    .local v7, "eventId":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/bs;->A07(Ljava/lang/String;)V

    goto :goto_1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71303
    :catch_0
    move-exception v6

    .line 71304
    .local v8, "jsone":Lorg/json/JSONException;
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71305
    sget-object v5, Lcom/facebook/ads/redexgen/X/bs;->A04:Ljava/lang/String;

    const/16 v9, 0x6c

    const/16 v4, 0x3e

    const/16 v3, 0x7a

    sget-object v2, Lcom/facebook/ads/redexgen/X/bs;->A03:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/bs;->A03:[Ljava/lang/String;

    const-string v1, "UiT9WvgcUGvh4UJIWCcVV8uUv9KhPAuj"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "iCLGRVxWINjUDSHIa5c9b6YKh720uR79"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v9, v4, v3}, Lcom/facebook/ads/redexgen/X/bs;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71306
    .end local v8    # "jsone":Lorg/json/JSONException;
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 71307
    .end local p1    # "i":I
    :cond_2
    return-void
.end method

.method public final A9v(Lorg/json/JSONArray;)Z
    .locals 13

    .line 71308
    const/16 v2, 0x1b

    const/4 v1, 0x1

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bs;->A00(III)Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x1

    .line 71309
    .local p1, "success":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bs;->A00:Lcom/facebook/ads/redexgen/X/XK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J6;->A0Q(Landroid/content/Context;)Z

    move-result v11

    .line 71310
    .local v2, "isDebugGKEnabled":Z
    const/4 v6, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v6, v0, :cond_8

    .line 71311
    :try_start_0
    invoke-virtual {p1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 71312
    .local v0, "event":Lorg/json/JSONObject;
    const/16 v2, 0x1b1

    const/4 v1, 0x2

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bs;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 71313
    .local v7, "eventId":Ljava/lang/String;
    const/16 v2, 0x189

    const/16 v1, 0x1a

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bs;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71314
    const/16 v2, 0x1a3

    const/16 v1, 0xe

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bs;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71315
    .local v12, "featureConfigString":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bs;->A00:Lcom/facebook/ads/redexgen/X/XK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A0N(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/J4;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/J4;->A20(Ljava/lang/String;)V

    .line 71316
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bs;->A00:Lcom/facebook/ads/redexgen/X/XK;

    invoke-static {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->getInitApi()Lcom/facebook/ads/internal/api/InitApi;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bs;->A00:Lcom/facebook/ads/redexgen/X/XK;

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/InitApi;->maybeAttachCrashListener(Landroid/content/Context;)V

    goto/16 :goto_3

    .line 71317
    .end local v12    # "featureConfigString":Ljava/lang/String;
    :cond_0
    const/16 v2, 0x177

    const/4 v1, 0x4

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bs;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 71318
    .local v12, "errorCode":I
    const/4 v0, 0x1

    if-ne v10, v0, :cond_2

    .line 71319
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71320
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xaa

    const/16 v1, 0x19

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bs;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xd

    const/16 v1, 0xe

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bs;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71321
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bs;->A01:Lcom/facebook/ads/redexgen/X/Xw;

    invoke-interface {v0, v8}, Lcom/facebook/ads/redexgen/X/9J;->A6U(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 71322
    .local v0, "eventType":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 71323
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x48

    const/16 v1, 0x24

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bs;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71324
    .end local v0    # "eventType":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bs;->A01:Lcom/facebook/ads/redexgen/X/Xw;

    invoke-interface {v0, v8}, Lcom/facebook/ads/redexgen/X/9J;->A4i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz v11, :cond_6

    goto/16 :goto_1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71325
    :cond_2
    const/16 v3, 0x3e8

    const/4 v2, 0x0

    const/16 v1, 0xd

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bs;->A00(III)Ljava/lang/String;

    move-result-object v9

    const/16 v0, 0x7d0

    if-lt v10, v3, :cond_4

    if-ge v10, v0, :cond_4

    .line 71326
    :try_start_1
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71327
    sget-object v5, Lcom/facebook/ads/redexgen/X/bs;->A04:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xec

    const/16 v1, 0x25

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bs;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71328
    :cond_3
    invoke-direct {p0, v8}, Lcom/facebook/ads/redexgen/X/bs;->A07(Ljava/lang/String;)V

    .line 71329
    const/4 v12, 0x0

    goto :goto_2

    .line 71330
    :cond_4
    if-lt v10, v0, :cond_6

    const/16 v0, 0xbb8

    if-ge v10, v0, :cond_6

    .line 71331
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 71332
    sget-object v5, Lcom/facebook/ads/redexgen/X/bs;->A04:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xc3

    const/16 v1, 0x29

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bs;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71333
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bs;->A01:Lcom/facebook/ads/redexgen/X/Xw;

    invoke-interface {v0, v8}, Lcom/facebook/ads/redexgen/X/9J;->A4i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz v11, :cond_6

    .line 71334
    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/8g;->A0D(Ljava/lang/String;)V

    goto :goto_2

    .line 71335
    :goto_1
    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/8g;->A0D(Ljava/lang/String;)V

    .line 71336
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bs;->A00:Lcom/facebook/ads/redexgen/X/XK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A01()Lcom/facebook/ads/redexgen/X/8E;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bs;->A00:Lcom/facebook/ads/redexgen/X/XK;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8E;->A8P(Lcom/facebook/ads/redexgen/X/XK;Ljava/lang/String;)V

    goto :goto_3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 71337
    :catch_0
    move-exception v5

    .line 71338
    .local v0, "jsone":Lorg/json/JSONException;
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 71339
    sget-object v4, Lcom/facebook/ads/redexgen/X/bs;->A04:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x14b

    const/16 v1, 0x2c

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bs;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71340
    :cond_7
    const/4 v12, 0x0

    .line 71341
    .end local v0    # "jsone":Lorg/json/JSONException;
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 71342
    .end local v1    # "i":I
    :cond_8
    return v12
.end method

.method public final ABL()V
    .locals 1

    .line 71343
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bs;->A01:Lcom/facebook/ads/redexgen/X/Xw;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9K;->A41()V

    .line 71344
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bs;->A00:Lcom/facebook/ads/redexgen/X/XK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8g;->A08(Landroid/content/Context;)V

    .line 71345
    return-void
.end method
