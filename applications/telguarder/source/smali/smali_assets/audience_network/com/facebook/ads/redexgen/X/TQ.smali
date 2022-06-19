.class public final Lcom/facebook/ads/redexgen/X/TQ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/JA;


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final A04:Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Wl;

.field public A01:Lcom/facebook/ads/redexgen/X/WJ;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 54019
    invoke-static {}, Lcom/facebook/ads/redexgen/X/TQ;->A06()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/TQ;->A05()V

    const-class v0, Lcom/facebook/ads/redexgen/X/TQ;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/TQ;->A04:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wl;Lcom/facebook/ads/redexgen/X/WJ;)V
    .locals 0

    .line 54020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54021
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TQ;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54022
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/TQ;->A01:Lcom/facebook/ads/redexgen/X/WJ;

    .line 54023
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/TQ;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 2

    .line 54024
    const/4 v1, 0x0

    .line 54025
    .local p0, "limit":I
    if-eqz p0, :cond_0

    .line 54026
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    add-int/2addr v1, v0

    .line 54027
    :cond_0
    if-eqz p1, :cond_1

    .line 54028
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    add-int/2addr v1, v0

    .line 54029
    :cond_1
    invoke-static {p0, p1, v1}, Lcom/facebook/ads/redexgen/X/TQ;->A02(Lorg/json/JSONArray;Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static A02(Lorg/json/JSONArray;Lorg/json/JSONArray;I)Lorg/json/JSONArray;
    .locals 17

    .line 54030
    move-object/from16 v10, p1

    move-object/from16 v11, p0

    if-nez v11, :cond_0

    .line 54031
    return-object v10

    .line 54032
    :cond_0
    if-nez v10, :cond_1

    .line 54033
    return-object v11

    .line 54034
    :cond_1
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v9

    .local v11, "debugLength":I
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 54035
    .local v10, "eventsLength":I
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 54036
    .local v9, "totalEvents":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v11, "debugIdx":I
    const/4 v5, 0x0

    .line 54037
    .local v8, "eventsIdx":I
    const/4 v4, 0x0

    .local v7, "objDebug":Lorg/json/JSONObject;
    const/4 v3, 0x0

    .line 54038
    .local v7, "objEvent":Lorg/json/JSONObject;
    const-wide p0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .local v6, "debugTime":D
    const-wide v15, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 54039
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

    .line 54040
    const/16 v2, 0x1b3

    const/4 v1, 0x4

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TQ;->A00(III)Ljava/lang/String;

    move-result-object v12

    if-ge v6, v9, :cond_6

    if-nez v4, :cond_6

    .line 54041
    :try_start_0
    invoke-virtual {v11, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 54042
    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide p0

    .line 54043
    goto :goto_1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54044
    :catch_0
    move-exception v4

    .line 54045
    .local v11, "jsone":Lorg/json/JSONException;
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v13

    sget-object v1, Lcom/facebook/ads/redexgen/X/TQ;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/TQ;->A03:[Ljava/lang/String;

    const-string v1, "DKrsfMw1QM94f3LkaWEFWyAaPh22HvxR"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "229wjctPmiYSi0NSEDcsgyESRhBaYU3n"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v13, :cond_5

    .line 54046
    sget-object v2, Lcom/facebook/ads/redexgen/X/TQ;->A04:Ljava/lang/String;

    .end local v11    # "jsone":Lorg/json/JSONException;
    .local v16, "debugLength":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .end local v6    # "objDebug":Lorg/json/JSONObject;
    .local p3, "objDebug":Lorg/json/JSONObject;
    const/16 v14, 0x111

    const/16 v1, 0x21

    const/16 v0, 0x6b

    invoke-static {v14, v1, v0}, Lcom/facebook/ads/redexgen/X/TQ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54047
    .end local v11
    .end local v6
    .restart local v16    # "debugLength":I
    .restart local p3
    :cond_5
    const/4 v4, 0x0

    .line 54048
    .end local p3
    .restart local v6    # "objDebug":Lorg/json/JSONObject;
    const-wide p0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 54049
    .end local v11
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 54050
    .end local v11
    .restart local v16    # "debugLength":I
    :cond_6
    if-ge v5, v8, :cond_8

    if-nez v3, :cond_8

    .line 54051
    :try_start_1
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 54052
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v15

    .line 54053
    .end local p0    # "eventTime":D
    .local v11, "eventTime":D
    goto :goto_2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 54054
    .end local v11    # "eventTime":D
    .restart local p0    # "eventTime":D
    :catch_1
    move-exception v12

    .line 54055
    .local v11, "jsone":Lorg/json/JSONException;
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 54056
    sget-object v3, Lcom/facebook/ads/redexgen/X/TQ;->A04:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x132

    const/16 v1, 0x19

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TQ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54057
    :cond_7
    const/4 v3, 0x0

    .line 54058
    const-wide v15, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 54059
    .end local v11    # "jsone":Lorg/json/JSONException;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 54060
    :cond_8
    if-nez v4, :cond_9

    if-eqz v3, :cond_2

    .line 54061
    :cond_9
    if-eqz v4, :cond_a

    cmpg-double v0, v15, p0

    if-gez v0, :cond_b

    .line 54062
    .end local v11
    .restart local v6    # "objDebug":Lorg/json/JSONObject;
    :cond_a
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 54063
    const/4 v3, 0x0

    .line 54064
    .end local v5    # "objEvent":Lorg/json/JSONObject;
    .local v11, "objEvent":Lorg/json/JSONObject;
    const-wide v15, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 54065
    .end local v11    # "objEvent":Lorg/json/JSONObject;
    .restart local v5    # "objEvent":Lorg/json/JSONObject;
    :goto_3
    add-int/lit8 p2, p2, -0x1

    goto/16 :goto_0

    .line 54066
    :cond_b
    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 54067
    const/4 v4, 0x0

    .line 54068
    .end local v6    # "objDebug":Lorg/json/JSONObject;
    .local v11, "objDebug":Lorg/json/JSONObject;
    const-wide p0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    goto :goto_3

    .line 54069
    .end local v11    # "objDebug":Lorg/json/JSONObject;
    .restart local v16    # "debugLength":I
    :cond_c
    if-lez p2, :cond_d

    .line 54070
    if-eqz v4, :cond_e

    .line 54071
    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 54072
    :cond_d
    :goto_4
    return-object v7

    .line 54073
    :cond_e
    if-eqz v3, :cond_d

    .line 54074
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4
.end method

.method private A03()Lorg/json/JSONObject;
    .locals 6

    .line 54075
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TQ;->A01:Lcom/facebook/ads/redexgen/X/WJ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9J;->A5Z()Lorg/json/JSONObject;

    move-result-object v5

    .line 54076
    .local p0, "tokens":Lorg/json/JSONObject;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TQ;->A01:Lcom/facebook/ads/redexgen/X/WJ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9J;->A5Y()Lorg/json/JSONArray;

    move-result-object v4

    .line 54077
    .local v0, "events":Lorg/json/JSONArray;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TQ;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J6;->A0Q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54078
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TQ;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8g;->A03(Lcom/facebook/ads/redexgen/X/8D;)Lorg/json/JSONArray;

    move-result-object v1

    .line 54079
    .local v5, "debugLogEvents":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 54080
    invoke-static {v1, v4}, Lcom/facebook/ads/redexgen/X/TQ;->A01(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v4

    .line 54081
    .end local v5    # "debugLogEvents":Lorg/json/JSONArray;
    :cond_0
    const/4 v3, 0x0

    .line 54082
    .local v5, "payload":Lorg/json/JSONObject;
    if-eqz v4, :cond_2

    .line 54083
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 54084
    if-eqz v5, :cond_1

    .line 54085
    const/16 v2, 0x1b7

    const/4 v1, 0x6

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TQ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54086
    :cond_1
    const/16 v2, 0x183

    const/4 v1, 0x6

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TQ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54087
    .local v0, "jsone":Lorg/json/JSONException;
    :catch_0
    const/4 v0, 0x0

    return-object v0

    .line 54088
    .end local v0    # "jsone":Lorg/json/JSONException;
    :cond_2
    :goto_0
    return-object v3
.end method

.method private A04(I)Lorg/json/JSONObject;
    .locals 6

    .line 54089
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TQ;->A01:Lcom/facebook/ads/redexgen/X/WJ;

    .line 54090
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/9J;->A7O(I)Landroid/util/Pair;

    move-result-object v0

    .line 54091
    .local p0, "tokensAndEvents":Landroid/util/Pair;, "Landroid/util/Pair<Lorg/json/JSONObject;Lorg/json/JSONArray;>;"
    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lorg/json/JSONObject;

    .line 54092
    .local p1, "tokens":Lorg/json/JSONObject;
    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lorg/json/JSONArray;

    .line 54093
    .local v0, "events":Lorg/json/JSONArray;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TQ;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J6;->A0Q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54094
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TQ;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J6;->A08(Landroid/content/Context;)I

    move-result v2

    .line 54095
    .local v0, "debugEventLimit":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TQ;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54096
    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/8g;->A04(Lcom/facebook/ads/redexgen/X/8D;I)Lorg/json/JSONArray;

    move-result-object v1

    .line 54097
    .local v5, "debugLogEvents":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 54098
    add-int/2addr p1, v2

    invoke-static {v1, v4, p1}, Lcom/facebook/ads/redexgen/X/TQ;->A02(Lorg/json/JSONArray;Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v4

    .line 54099
    .end local v0    # "debugEventLimit":I
    .end local v5    # "debugLogEvents":Lorg/json/JSONArray;
    :cond_0
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/TQ;->A03:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    .line 54100
    .local v0, "payload":Lorg/json/JSONObject;
    sget-object v2, Lcom/facebook/ads/redexgen/X/TQ;->A03:[Ljava/lang/String;

    const-string v1, "feKb1r4kRW7gDKlD5BEzQjo0jh9TPYxK"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "s9YNb4XbEbjpB7B5leG71QtixhMBVNOA"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v4, :cond_2

    .line 54101
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 54102
    if-eqz v5, :cond_1

    .line 54103
    const/16 v2, 0x1b7

    const/4 v1, 0x6

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TQ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54104
    :cond_1
    const/16 v2, 0x183

    const/4 v1, 0x6

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TQ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54105
    .end local v0    # "payload":Lorg/json/JSONObject;
    .local v0, "jsone":Lorg/json/JSONException;
    :catch_0
    const/4 v0, 0x0

    return-object v0

    .line 54106
    .local v0, "payload":Lorg/json/JSONObject;
    :cond_2
    :goto_0
    return-object v3

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x1bd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/TQ;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x55t
        -0x65t
        -0x5ct
        -0x59t
        0x55t
        -0x66t
        -0x55t
        -0x66t
        -0x5dt
        -0x57t
        0x7et
        -0x67t
        0x55t
        -0x7ft
        -0x2ct
        -0x2at
        -0x3ct
        -0x3ct
        -0x3at
        -0x2ct
        -0x2ct
        -0x39t
        -0x2at
        -0x33t
        -0x33t
        -0x26t
        -0x71t
        0x61t
        -0x7bt
        -0x5at
        -0x53t
        -0x5at
        -0x4bt
        -0x5at
        -0x5bt
        0x61t
        -0x5at
        -0x49t
        -0x5at
        -0x51t
        -0x4bt
        -0x4ct
        0x61t
        -0x5at
        -0x47t
        -0x5ct
        -0x5at
        -0x5at
        -0x5bt
        -0x5at
        -0x5bt
        0x61t
        -0x4dt
        -0x5at
        -0x4bt
        -0x4dt
        -0x46t
        0x61t
        -0x53t
        -0x56t
        -0x52t
        -0x56t
        -0x4bt
        0x6ft
        0x61t
        -0x7ct
        -0x50t
        -0x4at
        -0x51t
        -0x4bt
        0x7bt
        0x61t
        -0x50t
        -0x1ft
        -0x30t
        -0x27t
        -0x21t
        -0x75t
        -0x21t
        -0x1ct
        -0x25t
        -0x30t
        -0x75t
        -0x25t
        -0x23t
        -0x26t
        -0x32t
        -0x30t
        -0x22t
        -0x22t
        -0x30t
        -0x31t
        -0x75t
        -0x33t
        -0x1ct
        -0x75t
        -0x21t
        -0x2dt
        -0x30t
        -0x75t
        -0x22t
        -0x30t
        -0x23t
        -0x1ft
        -0x30t
        -0x23t
        -0x5bt
        -0x75t
        -0x51t
        -0x36t
        -0x2et
        -0x2bt
        -0x32t
        -0x33t
        -0x77t
        -0x23t
        -0x28t
        -0x77t
        -0x27t
        -0x36t
        -0x25t
        -0x24t
        -0x32t
        -0x77t
        -0x36t
        -0x29t
        -0x77t
        -0x32t
        -0x21t
        -0x32t
        -0x29t
        -0x23t
        -0x77t
        -0x2et
        -0x29t
        -0x77t
        -0x32t
        -0x21t
        -0x32t
        -0x29t
        -0x23t
        -0x24t
        -0x77t
        -0x36t
        -0x25t
        -0x25t
        -0x36t
        -0x1et
        -0x77t
        -0x31t
        -0x28t
        -0x25t
        -0x77t
        -0x33t
        -0x2et
        -0x24t
        -0x27t
        -0x36t
        -0x23t
        -0x34t
        -0x2ft
        -0x77t
        -0x31t
        -0x36t
        -0x2et
        -0x2bt
        -0x22t
        -0x25t
        -0x32t
        -0x69t
        -0x66t
        -0x54t
        -0x47t
        -0x43t
        -0x54t
        -0x47t
        0x67t
        -0x49t
        -0x47t
        -0x4at
        -0x56t
        -0x54t
        -0x46t
        -0x46t
        -0x54t
        -0x55t
        0x67t
        -0x54t
        -0x43t
        -0x54t
        -0x4bt
        -0x45t
        -0x70t
        -0x55t
        0x67t
        -0x43t
        -0x31t
        -0x24t
        -0x20t
        -0x31t
        -0x24t
        -0x76t
        -0x24t
        -0x31t
        -0x22t
        -0x21t
        -0x24t
        -0x28t
        -0x31t
        -0x32t
        -0x76t
        -0x28t
        -0x27t
        -0x28t
        -0x69t
        -0x24t
        -0x31t
        -0x22t
        -0x24t
        -0x1dt
        -0x35t
        -0x34t
        -0x2at
        -0x31t
        -0x76t
        -0x31t
        -0x24t
        -0x24t
        -0x27t
        -0x24t
        -0x76t
        -0x33t
        -0x27t
        -0x32t
        -0x31t
        -0x76t
        -0x65t
        -0x53t
        -0x46t
        -0x42t
        -0x53t
        -0x46t
        0x68t
        -0x46t
        -0x53t
        -0x44t
        -0x43t
        -0x46t
        -0x4at
        -0x53t
        -0x54t
        0x68t
        -0x46t
        -0x53t
        -0x44t
        -0x46t
        -0x3ft
        -0x57t
        -0x56t
        -0x4ct
        -0x53t
        0x68t
        -0x53t
        -0x46t
        -0x46t
        -0x49t
        -0x46t
        0x68t
        -0x55t
        -0x49t
        -0x54t
        -0x53t
        0x68t
        -0x3dt
        -0x24t
        -0x31t
        -0x30t
        -0x26t
        -0x2dt
        -0x72t
        -0x1et
        -0x23t
        -0x72t
        -0x22t
        -0x31t
        -0x20t
        -0x1ft
        -0x2dt
        -0x72t
        -0x2et
        -0x2dt
        -0x30t
        -0x1dt
        -0x2bt
        -0x46t
        -0x23t
        -0x2bt
        -0x4dt
        -0x1ct
        -0x2dt
        -0x24t
        -0x1et
        -0x72t
        -0x31t
        -0x1et
        -0x72t
        -0x52t
        -0x39t
        -0x46t
        -0x45t
        -0x3bt
        -0x42t
        0x79t
        -0x33t
        -0x38t
        0x79t
        -0x37t
        -0x46t
        -0x35t
        -0x34t
        -0x42t
        0x79t
        -0x42t
        -0x31t
        -0x42t
        -0x39t
        -0x33t
        0x79t
        -0x46t
        -0x33t
        0x79t
        0x66t
        0x7ft
        0x72t
        0x73t
        0x7dt
        0x76t
        0x31t
        -0x7bt
        -0x80t
        0x31t
        -0x7ft
        0x72t
        -0x7dt
        -0x7ct
        0x76t
        0x31t
        -0x7ct
        0x76t
        -0x7dt
        -0x79t
        0x76t
        -0x7dt
        0x31t
        -0x7dt
        0x76t
        -0x7ct
        -0x7ft
        -0x80t
        0x7ft
        -0x7ct
        0x76t
        0x31t
        0x72t
        -0x7bt
        0x31t
        -0x7ft
        -0x80t
        -0x7ct
        0x7at
        -0x7bt
        0x7at
        -0x80t
        0x7ft
        0x31t
        -0x22t
        -0x16t
        -0x21t
        -0x20t
        -0x74t
        -0x77t
        -0x64t
        -0x77t
        -0x76t
        -0x77t
        -0x65t
        -0x73t
        -0x69t
        -0x58t
        -0x69t
        -0x60t
        -0x5at
        -0x5bt
        -0x70t
        -0x71t
        -0x75t
        -0x62t
        -0x61t
        -0x64t
        -0x71t
        0x57t
        -0x73t
        -0x67t
        -0x68t
        -0x70t
        -0x6dt
        -0x6ft
        0x57t
        -0x71t
        -0x60t
        -0x71t
        -0x68t
        -0x62t
        0x57t
        -0x69t
        -0x75t
        -0x6ft
        -0x6dt
        -0x73t
        0x79t
        0x78t
        0x74t
        -0x79t
        -0x78t
        -0x7bt
        0x78t
        0x72t
        0x76t
        -0x7et
        -0x7ft
        0x79t
        0x7ct
        0x7at
        0x7bt
        0x76t
        -0x52t
        -0x5dt
        -0x59t
        -0x61t
        0x79t
        0x74t
        0x70t
        0x6at
        0x73t
        0x78t
    .end array-data
.end method

.method public static A06()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "PqRb8CfCWHA5EhrxcZ9mRPllTh3oOSUW"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Zl9oGp2Iez0jLvuEYbnxsntptMxGBM4l"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "l9LBk"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "jZa6p3ci91eTCo5R2EOP7xEtghieA3uB"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "FSDG0GiI6cZANIzlwvsJdjGaYqMqroq5"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "1sDItVUeKrx9RbYz"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "1qorAXgeX39shBtffGMCszMJDt6RFPN7"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "u6hSYDgbJvcFisLakSyhfwTjAFON3iEs"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/TQ;->A03:[Ljava/lang/String;

    return-void
.end method

.method private A07(Ljava/lang/String;)V
    .locals 1

    .line 54107
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/8g;->A0J(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54108
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/8g;->A0E(Ljava/lang/String;)V

    .line 54109
    :goto_0
    return-void

    .line 54110
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TQ;->A01:Lcom/facebook/ads/redexgen/X/WJ;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/9J;->A7q(Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public final A4E()Lorg/json/JSONObject;
    .locals 1

    .line 54111
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TQ;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J6;->A0F(Landroid/content/Context;)I

    move-result v0

    .line 54112
    .local p0, "eventLimit":I
    if-lez v0, :cond_0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/TQ;->A04(I)Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TQ;->A03()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method public final A89()Z
    .locals 4

    .line 54113
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TQ;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J6;->A0F(Landroid/content/Context;)I

    move-result v3

    .line 54114
    .local p0, "eventLimit":I
    const/4 v2, 0x0

    const/4 v0, 0x1

    if-ge v3, v0, :cond_0

    .line 54115
    return v2

    .line 54116
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TQ;->A01:Lcom/facebook/ads/redexgen/X/WJ;

    .line 54117
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9J;->A6R()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TQ;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8g;->A00(Landroid/content/Context;)I

    move-result v0

    add-int/2addr v1, v0

    .line 54118
    .local v2, "eventCount":I
    if-le v1, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public final A9O()V
    .locals 7

    .line 54119
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TQ;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J6;->A0G(Landroid/content/Context;)I

    move-result v1

    .line 54120
    .local p0, "retryLimit":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TQ;->A01:Lcom/facebook/ads/redexgen/X/WJ;

    .line 54121
    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/9J;->A3w(I)I

    move-result v6

    .line 54122
    .local v0, "attemptsExceededEventsCount":I
    if-lez v6, :cond_0

    .line 54123
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TQ;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54124
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A0o:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1c

    const/16 v1, 0x2c

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TQ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 54125
    const/16 v2, 0x17b

    const/16 v1, 0x8

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TQ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 54126
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TQ;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8g;->A0G(Lcom/facebook/ads/redexgen/X/8D;)Z

    .line 54127
    return-void
.end method

.method public final A9s(Lorg/json/JSONArray;)V
    .locals 7

    .line 54128
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 54129
    .local p0, "length":I
    const/4 v5, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v5, v6, :cond_1

    .line 54130
    :try_start_0
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 54131
    .local v6, "eventJson":Lorg/json/JSONObject;
    const/16 v2, 0x1b1

    const/4 v1, 0x2

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TQ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54132
    .local v5, "eventId":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/TQ;->A07(Ljava/lang/String;)V

    goto :goto_1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54133
    :catch_0
    move-exception v4

    .line 54134
    .local v6, "jsone":Lorg/json/JSONException;
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54135
    sget-object v3, Lcom/facebook/ads/redexgen/X/TQ;->A04:Ljava/lang/String;

    const/16 v2, 0x6c

    const/16 v1, 0x3e

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TQ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54136
    .end local v6    # "jsone":Lorg/json/JSONException;
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 54137
    .end local p1    # "i":I
    :cond_1
    return-void
.end method

.method public final A9u(Lorg/json/JSONArray;)Z
    .locals 13

    .line 54138
    const/16 v2, 0x1b

    const/4 v1, 0x1

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TQ;->A00(III)Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x1

    .line 54139
    .local p1, "success":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TQ;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J6;->A0Q(Landroid/content/Context;)Z

    move-result v11

    .line 54140
    .local v2, "isDebugGKEnabled":Z
    const/4 v6, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v6, v0, :cond_9

    .line 54141
    :try_start_0
    invoke-virtual {p1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 54142
    .local v0, "event":Lorg/json/JSONObject;
    const/16 v2, 0x1b1

    const/4 v1, 0x2

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TQ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 54143
    .local v7, "eventId":Ljava/lang/String;
    const/16 v2, 0x189

    const/16 v1, 0x1a

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TQ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54144
    const/16 v2, 0x1a3

    const/16 v1, 0xe

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TQ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54145
    .local v12, "featureConfigString":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TQ;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A0O(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/J4;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/J4;->A1y(Ljava/lang/String;)V

    .line 54146
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TQ;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-static {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->getInitApi()Lcom/facebook/ads/internal/api/InitApi;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TQ;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/InitApi;->maybeAttachCrashListener(Landroid/content/Context;)V

    goto/16 :goto_3

    .line 54147
    .end local v12    # "featureConfigString":Ljava/lang/String;
    :cond_0
    const/16 v2, 0x177

    const/4 v1, 0x4

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TQ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 54148
    .local v12, "errorCode":I
    const/4 v0, 0x1

    if-ne v10, v0, :cond_2

    .line 54149
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xaa

    const/16 v1, 0x19

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TQ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xd

    const/16 v1, 0xe

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TQ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54151
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TQ;->A01:Lcom/facebook/ads/redexgen/X/WJ;

    invoke-interface {v0, v8}, Lcom/facebook/ads/redexgen/X/9J;->A6U(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 54152
    .local v0, "eventType":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 54153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x48

    const/16 v1, 0x24

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TQ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54154
    .end local v0    # "eventType":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TQ;->A01:Lcom/facebook/ads/redexgen/X/WJ;

    invoke-interface {v0, v8}, Lcom/facebook/ads/redexgen/X/9J;->A4g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz v11, :cond_6

    goto/16 :goto_1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54155
    :cond_2
    const/16 v2, 0x3e8

    const/4 v5, 0x0

    sget-object v3, Lcom/facebook/ads/redexgen/X/TQ;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v3, v0

    const/4 v0, 0x1

    aget-object v3, v3, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_8

    sget-object v3, Lcom/facebook/ads/redexgen/X/TQ;->A03:[Ljava/lang/String;

    const-string v1, "1LE9O0SwhMhMXUh2JQEpQ81OBnaONLaF"

    const/4 v0, 0x6

    aput-object v1, v3, v0

    const-string v1, "qI9w2PtHmRHMr9aKEOtTY0DScCfNQmEA"

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/16 v1, 0xd

    const/16 v0, 0x32

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/TQ;->A00(III)Ljava/lang/String;

    move-result-object v9

    const/16 v0, 0x7d0

    if-lt v10, v2, :cond_4

    if-ge v10, v0, :cond_4

    .line 54156
    :try_start_1
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 54157
    sget-object v5, Lcom/facebook/ads/redexgen/X/TQ;->A04:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xec

    const/16 v1, 0x25

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TQ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54158
    :cond_3
    invoke-direct {p0, v8}, Lcom/facebook/ads/redexgen/X/TQ;->A07(Ljava/lang/String;)V

    .line 54159
    const/4 v12, 0x0

    goto :goto_2

    .line 54160
    :cond_4
    if-lt v10, v0, :cond_6

    const/16 v0, 0xbb8

    if-ge v10, v0, :cond_6

    .line 54161
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 54162
    sget-object v5, Lcom/facebook/ads/redexgen/X/TQ;->A04:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xc3

    const/16 v1, 0x29

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TQ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54163
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TQ;->A01:Lcom/facebook/ads/redexgen/X/WJ;

    invoke-interface {v0, v8}, Lcom/facebook/ads/redexgen/X/9J;->A4g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz v11, :cond_6

    .line 54164
    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/8g;->A0D(Ljava/lang/String;)V

    goto :goto_2

    .line 54165
    :goto_1
    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/8g;->A0D(Ljava/lang/String;)V

    .line 54166
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TQ;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A01()Lcom/facebook/ads/redexgen/X/8E;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TQ;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8E;->A8R(Lcom/facebook/ads/redexgen/X/Wl;Ljava/lang/String;)V

    goto :goto_3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 54167
    :catch_0
    move-exception v5

    .line 54168
    .local v0, "jsone":Lorg/json/JSONException;
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 54169
    sget-object v4, Lcom/facebook/ads/redexgen/X/TQ;->A04:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x14b

    const/16 v1, 0x2c

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TQ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54170
    :cond_7
    const/4 v12, 0x0

    .line 54171
    .end local v0    # "jsone":Lorg/json/JSONException;
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 54172
    .end local v1    # "i":I
    :cond_9
    return v12
.end method

.method public final ABL()V
    .locals 1

    .line 54173
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TQ;->A01:Lcom/facebook/ads/redexgen/X/WJ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9K;->A3x()V

    .line 54174
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TQ;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8g;->A08(Landroid/content/Context;)V

    .line 54175
    return-void
.end method
