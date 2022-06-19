.class public final Lcom/facebook/ads/redexgen/X/G1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Qv;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/4C;,
        Lcom/facebook/ads/redexgen/X/4M;,
        Lcom/facebook/ads/redexgen/X/G3;,
        Lcom/facebook/ads/redexgen/X/4D;,
        Lcom/facebook/ads/redexgen/X/4J;,
        Lcom/facebook/ads/redexgen/X/G2;,
        Lcom/facebook/ads/redexgen/X/Qy;
    }
.end annotation


# static fields
.field public static A0B:[B

.field public static A0C:[Ljava/lang/String;


# instance fields
.field public final A00:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public final A01:Lcom/facebook/ads/redexgen/X/8D;

.field public final A02:Lcom/facebook/ads/redexgen/X/8Q;

.field public final A03:Lcom/facebook/ads/redexgen/X/QK;

.field public final A04:Lcom/facebook/ads/redexgen/X/Qo;

.field public final A05:Lcom/facebook/ads/redexgen/X/Qt;

.field public final A06:Lcom/facebook/ads/redexgen/X/Qu;

.field public final A07:Ljava/lang/String;

.field public final A08:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Qz;",
            ">;"
        }
    .end annotation
.end field

.field public final A09:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/ads/redexgen/X/Qk;",
            "Lcom/facebook/ads/redexgen/X/4Y;",
            ">;"
        }
    .end annotation
.end field

.field public final A0A:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/ads/redexgen/X/Qk;",
            "Lcom/facebook/ads/redexgen/X/G7;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/G1;->A06()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/G1;->A05()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/8Q;Lcom/facebook/ads/redexgen/X/QK;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Qu;Lcom/facebook/ads/redexgen/X/Qt;)V
    .locals 1

    .line 33097
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33098
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/G1;->A01:Lcom/facebook/ads/redexgen/X/8D;

    .line 33099
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/G1;->A02:Lcom/facebook/ads/redexgen/X/8Q;

    .line 33100
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/G1;->A03:Lcom/facebook/ads/redexgen/X/QK;

    .line 33101
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/G1;->A07:Ljava/lang/String;

    .line 33102
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/G1;->A06:Lcom/facebook/ads/redexgen/X/Qu;

    .line 33103
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/G1;->A05:Lcom/facebook/ads/redexgen/X/Qt;

    .line 33104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/G1;->A0A:Ljava/util/Map;

    .line 33105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/G1;->A09:Ljava/util/Map;

    .line 33106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/G1;->A08:Ljava/util/List;

    .line 33107
    new-instance v0, Lcom/facebook/ads/redexgen/X/Qo;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Qo;-><init>(Lcom/facebook/ads/redexgen/X/G1;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/G1;->A04:Lcom/facebook/ads/redexgen/X/Qo;

    .line 33108
    return-void
.end method

.method public static A00(Lorg/json/JSONObject;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 33109
    const/16 v2, 0x14f

    const/4 v1, 0x7

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G1;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const/16 v2, 0x165

    const/16 v1, 0x10

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G1;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 33110
    .local p0, "time":I
    if-lez v2, :cond_0

    .line 33111
    return v2

    .line 33112
    :cond_0
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    const/16 v2, 0x81

    const/16 v1, 0x18

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G1;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lorg/json/JSONException;

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/G1;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x11

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02(Lorg/json/JSONObject;)Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Set<",
            "Lcom/facebook/ads/redexgen/X/Qy;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 33113
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 33114
    .local p0, "responses":Ljava/util/Set;, "Ljava/util/Set<Lcom/facebook/ads/sync/SyncModuleImpl$BundleResponse;>;"
    const/16 v2, 0x15d

    const/16 v1, 0x8

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G1;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 33115
    .local p1, "responseObject":Lorg/json/JSONObject;
    const/16 v2, 0x12a

    const/4 v1, 0x7

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G1;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 33116
    .local v5, "bundlesObject":Lorg/json/JSONObject;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G1;->A0A:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v6, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/ads/redexgen/X/G7;

    .line 33117
    .local v1, "serverBundle":Lcom/facebook/ads/redexgen/X/G7;
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/G7;->A6a()Lcom/facebook/ads/redexgen/X/Qk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qk;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33118
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/R3;->A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/R3;

    move-result-object v0

    .line 33119
    .local v4, "responseForBundle":Lcom/facebook/ads/redexgen/X/R3;
    sget-object v1, Lcom/facebook/ads/redexgen/X/Qx;->A01:[I

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/R3;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v3, :cond_0

    if-ne v0, v6, :cond_1

    .line 33120
    new-instance v0, Lcom/facebook/ads/redexgen/X/4D;

    invoke-direct {v0, v7}, Lcom/facebook/ads/redexgen/X/4D;-><init>(Lcom/facebook/ads/redexgen/X/G7;)V

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33121
    goto :goto_0

    .line 33122
    :cond_0
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/G7;->A6a()Lcom/facebook/ads/redexgen/X/Qk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qk;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 33123
    const/16 v2, 0x138

    const/4 v1, 0x4

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G1;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 33124
    .local v0, "data":Lorg/json/JSONObject;
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/G7;->A6a()Lcom/facebook/ads/redexgen/X/Qk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qk;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 33125
    const/16 v2, 0x13c

    const/16 v1, 0xb

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G1;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 33126
    .local v0, "fingerprint":Lorg/json/JSONObject;
    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0, v7, v6, v1}, Lcom/facebook/ads/redexgen/X/4J;-><init>(Lcom/facebook/ads/redexgen/X/G7;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33127
    goto :goto_0

    .line 33128
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 33129
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G1;->A09:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/4Y;

    .line 33130
    .local v1, "clientBundle":Lcom/facebook/ads/redexgen/X/4Y;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/G7;->A6a()Lcom/facebook/ads/redexgen/X/Qk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qk;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33131
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qq;->A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Qq;

    move-result-object v0

    .line 33132
    .local v4, "responseForBundle":Lcom/facebook/ads/redexgen/X/Qq;
    sget-object v1, Lcom/facebook/ads/redexgen/X/Qx;->A00:[I

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qq;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v3, :cond_3

    if-ne v0, v6, :cond_4

    .line 33133
    new-instance v0, Lcom/facebook/ads/redexgen/X/4C;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/4C;-><init>(Lcom/facebook/ads/redexgen/X/4Y;)V

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33134
    goto :goto_1

    .line 33135
    :cond_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/4M;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/4M;-><init>(Lcom/facebook/ads/redexgen/X/4Y;)V

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33136
    goto :goto_1

    .line 33137
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 33138
    :cond_5
    return-object v5
.end method

.method private A03(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/facebook/ads/redexgen/X/Qj;",
            "Lcom/facebook/ads/redexgen/X/R2;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/facebook/ads/redexgen/X/G6;",
            "Lcom/facebook/ads/redexgen/X/Qp;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/facebook/ads/redexgen/X/G6;",
            "Lorg/json/JSONObject;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/facebook/ads/redexgen/X/G6;",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 33139
    .local v2, "serverBundleRequests":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncBundle;Lcom/facebook/ads/sync/SyncServerBundleRequestType;>;"
    .local v0, "clientBundleRequests":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncModifiableBundle;Lcom/facebook/ads/sync/SyncClientBundleRequestType;>;"
    .local v0, "clientBundleData":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncModifiableBundle;Lorg/json/JSONObject;>;"
    .local v0, "clientBundleFingerprint":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncModifiableBundle;Lorg/json/JSONObject;>;"
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 33140
    .local p0, "request":Lorg/json/JSONObject;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 33141
    .local p2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/facebook/ads/sync/SyncBundle;Lcom/facebook/ads/sync/SyncServerBundleRequestType;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Qj;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Qj;->A6a()Lcom/facebook/ads/redexgen/X/Qk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qk;->A04()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/R2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/R2;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33142
    .end local p2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/facebook/ads/sync/SyncBundle;Lcom/facebook/ads/sync/SyncServerBundleRequestType;>;"
    goto :goto_0

    .line 33143
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 33144
    .local p2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/facebook/ads/sync/SyncModifiableBundle;Lcom/facebook/ads/sync/SyncClientBundleRequestType;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/G6;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Qj;->A6a()Lcom/facebook/ads/redexgen/X/Qk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qk;->A04()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Qp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qp;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33145
    .end local p2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/facebook/ads/sync/SyncModifiableBundle;Lcom/facebook/ads/sync/SyncClientBundleRequestType;>;"
    goto :goto_1

    .line 33146
    :cond_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 33147
    .local p1, "bundles":Lorg/json/JSONObject;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v2, 0x13c

    const/16 v1, 0xb

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G1;->A01(III)Ljava/lang/String;

    move-result-object v7

    if-eqz v3, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 33148
    .local p3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/facebook/ads/sync/SyncBundle;Lcom/facebook/ads/sync/SyncServerBundleRequestType;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/R2;->A04:Lcom/facebook/ads/redexgen/X/R2;

    if-ne v1, v0, :cond_2

    .line 33149
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 33150
    .local v6, "updateData":Lorg/json/JSONObject;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Qj;

    .line 33151
    .local v0, "bundle":Lcom/facebook/ads/redexgen/X/Qj;
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/Qj;->A6a()Lcom/facebook/ads/redexgen/X/Qk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qk;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33152
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Qj;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Qj;->A6a()Lcom/facebook/ads/redexgen/X/Qk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qk;->A05()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 33153
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/Qj;->A6W()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33154
    :goto_3
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/Qj;->A6a()Lcom/facebook/ads/redexgen/X/Qk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qk;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 33155
    :cond_3
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 33156
    :cond_4
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 33157
    .local p3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/facebook/ads/sync/SyncModifiableBundle;Lcom/facebook/ads/sync/SyncClientBundleRequestType;>;"
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 33158
    .local v6, "bundleData":Lorg/json/JSONObject;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/ads/redexgen/X/Qj;

    .line 33159
    .restart local v0    # "bundle":Lcom/facebook/ads/redexgen/X/Qj;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33160
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Qp;->A05:Lcom/facebook/ads/redexgen/X/Qp;

    if-ne v1, v0, :cond_5

    .line 33161
    invoke-interface {p3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v2, 0x138

    const/4 v1, 0x4

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G1;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33162
    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/Qj;->A6a()Lcom/facebook/ads/redexgen/X/Qk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qk;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 33163
    :cond_5
    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/Qj;->A6a()Lcom/facebook/ads/redexgen/X/Qk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qk;->A04()Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/G1;->A0C:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/G1;->A0C:[Ljava/lang/String;

    const-string v1, "j6hI8A69HBwx3QyEu85lNgwu8aXeWQ7U"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 33164
    :cond_7
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 33165
    .local p2, "context":Lorg/json/JSONObject;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G1;->A06:Lcom/facebook/ads/redexgen/X/Qu;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Qu;->A6O()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 33166
    .local p4, "env":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 33167
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    .line 33168
    :cond_9
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 33169
    .local p3, "syncRequest":Lorg/json/JSONObject;
    const/16 v2, 0x156

    const/4 v1, 0x7

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G1;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33170
    const/16 v2, 0x12a

    const/4 v1, 0x7

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G1;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33171
    const/16 v2, 0x131

    const/4 v1, 0x7

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G1;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33172
    return-object v3
.end method

.method private A04()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 33173
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 33174
    .local p0, "serverBundleRequests":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncBundle;Lcom/facebook/ads/sync/SyncServerBundleRequestType;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 33175
    .local v9, "clientBundleRequests":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncModifiableBundle;Lcom/facebook/ads/sync/SyncClientBundleRequestType;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 33176
    .local v7, "clientBundleData":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncModifiableBundle;Lorg/json/JSONObject;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 33177
    .local v6, "clientBundleFingerprint":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncModifiableBundle;Lorg/json/JSONObject;>;"
    monitor-enter p0

    .line 33178
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G1;->A0A:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/G7;

    .line 33179
    .local v0, "serverBundle":Lcom/facebook/ads/redexgen/X/G7;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/G7;->A89()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33180
    sget-object v0, Lcom/facebook/ads/redexgen/X/R2;->A04:Lcom/facebook/ads/redexgen/X/R2;

    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 33181
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/R2;

    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 33182
    :cond_1
    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 33183
    .local v2, "data":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lorg/json/JSONObject;>;"
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 33184
    .local v0, "fingerprint":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lorg/json/JSONObject;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G1;->A09:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4Y;

    .line 33185
    .local v3, "clientBundle":Lcom/facebook/ads/redexgen/X/4Y;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/G7;->A89()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33186
    invoke-virtual {v1, v5, v4}, Lcom/facebook/ads/redexgen/X/4Y;->A08(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 33187
    sget-object v0, Lcom/facebook/ads/redexgen/X/Qp;->A05:Lcom/facebook/ads/redexgen/X/Qp;

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33188
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33189
    :goto_2
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 33190
    :cond_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/Qp;->A04:Lcom/facebook/ads/redexgen/X/Qp;

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 33191
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G1;->A08:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33192
    .local v3, "listener":Lcom/facebook/ads/redexgen/X/Qz;
    const/4 v0, 0x0

    throw v0

    .line 33193
    .end local v2    # "data":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lorg/json/JSONObject;>;"
    .end local v0    # "fingerprint":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lorg/json/JSONObject;>;"
    :cond_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33194
    const/4 v8, 0x1

    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v5, v8}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 33195
    .local v2, "waitForResponse":Ljava/util/concurrent/CountDownLatch;
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 33196
    .local v0, "responseContainer":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lorg/json/JSONObject;>;"
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 33197
    .local v3, "failureContainer":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    invoke-direct {p0, v9, v7, v6, v2}, Lcom/facebook/ads/redexgen/X/G1;->A03(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v9

    .line 33198
    .local v0, "syncRequest":Lorg/json/JSONObject;
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G1;->A07:Ljava/lang/String;

    aput-object v0, v6, v1

    .line 33199
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v8

    .line 33200
    const/16 v2, 0xbc

    const/16 v1, 0x21

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G1;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33201
    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/G1;->A03:Lcom/facebook/ads/redexgen/X/QK;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/G1;->A07:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x147

    const/16 v1, 0x8

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G1;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33202
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/G4;

    invoke-direct {v0, p0, v4, v3, v5}, Lcom/facebook/ads/redexgen/X/G4;-><init>(Lcom/facebook/ads/redexgen/X/G1;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    .line 33203
    invoke-interface {v8, v7, v1, v0}, Lcom/facebook/ads/redexgen/X/QK;->ACR(Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/QL;)V

    .line 33204
    :catch_0
    :goto_3
    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/G1;->A0C:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x49

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/G1;->A0C:[Ljava/lang/String;

    const-string v1, "9Vx4r4uQ95Y8"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-wide/16 v1, 0x0

    cmp-long v0, v6, v1

    if-lez v0, :cond_7

    .line 33205
    :try_start_1
    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->await()V

    goto :goto_3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 33206
    :cond_7
    monitor-enter p0

    .line 33207
    :try_start_2
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    .line 33208
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/G1;->A02(Lorg/json/JSONObject;)Ljava/util/Set;

    move-result-object v0

    .line 33209
    .local v0, "responses":Ljava/util/Set;, "Ljava/util/Set<Lcom/facebook/ads/sync/SyncModuleImpl$BundleResponse;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 33210
    .local v1, "notifyServerBundleResponses":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncBundle;Lcom/facebook/ads/sync/SyncServerBundleResponseType;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 33211
    .local v1, "notifyClientBundleResponses":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncModifiableBundle;Lcom/facebook/ads/sync/SyncClientBundleResponseType;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Qy;

    .line 33212
    .local v0, "response":Lcom/facebook/ads/redexgen/X/Qy;
    invoke-interface {v0, v3, v2}, Lcom/facebook/ads/redexgen/X/Qy;->A3Q(Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_4

    .line 33213
    :cond_8
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/G1;->A00(Lorg/json/JSONObject;)I

    move-result v1

    .line 33214
    .local v0, "refreshTimeSecs":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G1;->A04:Lcom/facebook/ads/redexgen/X/Qo;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Qo;->A04(I)V

    .line 33215
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G1;->A08:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33216
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/Qz;
    const/4 v0, 0x0

    throw v0

    .line 33217
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/Qz;
    .end local v1    # "notifyClientBundleResponses":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncModifiableBundle;Lcom/facebook/ads/sync/SyncClientBundleResponseType;>;"
    .end local v1
    .end local v0
    :cond_9
    monitor-exit p0

    .line 33218
    return-void

    .line 33219
    :cond_a
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .end local p0    # "serverBundleRequests":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncBundle;Lcom/facebook/ads/sync/SyncServerBundleRequestType;>;"
    .end local v9    # "clientBundleRequests":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncModifiableBundle;Lcom/facebook/ads/sync/SyncClientBundleRequestType;>;"
    .end local v7    # "clientBundleData":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncModifiableBundle;Lorg/json/JSONObject;>;"
    .end local v6    # "clientBundleFingerprint":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncModifiableBundle;Lorg/json/JSONObject;>;"
    .end local v2    # "waitForResponse":Ljava/util/concurrent/CountDownLatch;
    .end local v0
    .end local v3    # "failureContainer":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    .end local v0
    throw v0

    .line 33220
    .restart local p0    # "serverBundleRequests":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncBundle;Lcom/facebook/ads/sync/SyncServerBundleRequestType;>;"
    .restart local v9    # "clientBundleRequests":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncModifiableBundle;Lcom/facebook/ads/sync/SyncClientBundleRequestType;>;"
    .restart local v7    # "clientBundleData":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncModifiableBundle;Lorg/json/JSONObject;>;"
    .restart local v6    # "clientBundleFingerprint":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncModifiableBundle;Lorg/json/JSONObject;>;"
    .restart local v2    # "waitForResponse":Ljava/util/concurrent/CountDownLatch;
    .restart local v0    # "listener":Lcom/facebook/ads/redexgen/X/Qz;
    .restart local v3    # "failureContainer":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    .restart local v0    # "listener":Lcom/facebook/ads/redexgen/X/Qz;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 33221
    .end local v2    # "waitForResponse":Ljava/util/concurrent/CountDownLatch;
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/Qz;
    .end local v3    # "failureContainer":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    .end local v0
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x175

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/G1;->A0B:[B

    return-void

    :array_0
    .array-data 1
        0x65t
        -0x52t
        -0x48t
        0x65t
        -0x49t
        -0x56t
        -0x48t
        -0x47t
        -0x49t
        -0x52t
        -0x58t
        -0x47t
        -0x56t
        -0x57t
        0x73t
        0x65t
        -0x68t
        -0x50t
        -0x52t
        -0x4bt
        -0x4bt
        -0x52t
        -0x4dt
        -0x54t
        0x65t
        -0x48t
        -0x42t
        -0x4dt
        -0x58t
        -0x30t
        -0x1t
        -0x1t
        -0x51t
        -0x8t
        -0x3t
        -0x51t
        -0xft
        -0x10t
        -0xet
        -0x6t
        -0xat
        0x1t
        -0x2t
        0x4t
        -0x3t
        -0xdt
        -0x43t
        -0x36t
        -0x18t
        -0xbt
        -0xbt
        -0xat
        -0x5t
        -0x59t
        -0x16t
        -0x7t
        -0x14t
        -0x18t
        -0x5t
        -0x14t
        -0x59t
        -0x6t
        -0x14t
        -0x7t
        -0x3t
        -0x14t
        -0x7t
        -0x59t
        -0x17t
        -0x4t
        -0xbt
        -0x15t
        -0xdt
        -0x14t
        -0x59t
        -0x2t
        -0x10t
        -0x5t
        -0x11t
        -0x59t
        -0xbt
        -0xat
        -0xbt
        -0x4ct
        -0x6t
        -0x14t
        -0x7t
        -0x3t
        -0x14t
        -0x7t
        -0x59t
        -0xat
        -0x2t
        -0xbt
        -0x14t
        -0x15t
        -0x59t
        -0x17t
        -0x4t
        -0xbt
        -0x15t
        -0xdt
        -0x14t
        -0x59t
        -0x30t
        -0x35t
        -0x55t
        -0x38t
        -0x25t
        -0x38t
        -0x79t
        -0x29t
        -0x27t
        -0x2at
        -0x36t
        -0x34t
        -0x26t
        -0x26t
        -0x30t
        -0x2bt
        -0x32t
        -0x79t
        -0x2at
        -0x29t
        -0x25t
        -0x30t
        -0x2at
        -0x2bt
        -0x79t
        -0x31t
        -0xct
        -0x4t
        -0x19t
        -0xet
        -0x11t
        -0x16t
        -0x5at
        -0x8t
        -0x15t
        -0x14t
        -0x8t
        -0x15t
        -0x7t
        -0x12t
        -0x5at
        -0x6t
        -0x11t
        -0xdt
        -0x15t
        -0x40t
        -0x5at
        -0x55t
        -0x16t
        -0x4ft
        -0x38t
        -0x26t
        -0x7dt
        -0x2at
        -0x38t
        -0x2bt
        -0x27t
        -0x38t
        -0x2bt
        -0x70t
        -0x2et
        -0x26t
        -0x2ft
        -0x38t
        -0x39t
        -0x7dt
        -0x3bt
        -0x28t
        -0x2ft
        -0x39t
        -0x31t
        -0x38t
        -0x7dt
        -0x3at
        -0x2bt
        -0x38t
        -0x3ct
        -0x29t
        -0x38t
        -0x39t
        -0x63t
        -0x7dt
        -0x78t
        -0x2at
        -0x65t
        -0x3ft
        -0x4at
        -0x55t
        -0x50t
        -0x46t
        -0x49t
        -0x4at
        -0x4ft
        -0x3et
        -0x57t
        -0x44t
        -0x4ft
        -0x49t
        -0x4at
        0x68t
        -0x46t
        -0x53t
        -0x47t
        -0x43t
        -0x53t
        -0x45t
        -0x44t
        0x68t
        -0x44t
        -0x49t
        0x68t
        0x6dt
        -0x45t
        -0x7et
        0x52t
        0x6dt
        -0x45t
        -0x58t
        -0x32t
        -0x3dt
        -0x48t
        -0x43t
        -0x39t
        -0x3ct
        -0x3dt
        -0x42t
        -0x31t
        -0x4at
        -0x37t
        -0x42t
        -0x3ct
        -0x3dt
        0x75t
        -0x39t
        -0x46t
        -0x38t
        -0x3bt
        -0x3ct
        -0x3dt
        -0x38t
        -0x46t
        -0x71t
        0x5ft
        0x7at
        -0x38t
        0x72t
        -0x68t
        -0x73t
        -0x7et
        -0x79t
        -0x6ft
        -0x72t
        -0x73t
        -0x78t
        -0x67t
        -0x80t
        -0x6dt
        -0x78t
        -0x72t
        -0x73t
        0x3ft
        -0x6ft
        -0x6ct
        -0x73t
        0x3ft
        -0x7bt
        -0x80t
        -0x78t
        -0x75t
        -0x7ct
        -0x7dt
        0x5at
        0x3ft
        -0x7bt
        -0x72t
        -0x6ft
        -0x7et
        -0x78t
        -0x73t
        -0x7at
        0x3ft
        -0x78t
        -0x73t
        0x3ft
        0x44t
        -0x7dt
        0x3ft
        -0x6et
        -0x7ct
        -0x7et
        -0x72t
        -0x73t
        -0x7dt
        -0x6et
        -0x67t
        -0x54t
        -0x5bt
        -0x65t
        -0x5dt
        -0x64t
        -0x56t
        -0x6bt
        -0x5ft
        -0x60t
        -0x5at
        -0x69t
        -0x56t
        -0x5at
        -0x7at
        -0x7dt
        -0x6at
        -0x7dt
        -0x59t
        -0x56t
        -0x51t
        -0x58t
        -0x5at
        -0x4dt
        -0x4ft
        -0x4dt
        -0x56t
        -0x51t
        -0x4bt
        -0x27t
        -0x36t
        -0x1et
        -0x2bt
        -0x28t
        -0x36t
        -0x33t
        -0x5at
        -0x2dt
        -0x3at
        -0x39t
        -0x2dt
        -0x3at
        -0x2ct
        -0x37t
        -0x28t
        -0x35t
        -0x29t
        -0x25t
        -0x35t
        -0x27t
        -0x26t
        -0x22t
        -0x2ft
        -0x21t
        -0x24t
        -0x25t
        -0x26t
        -0x21t
        -0x2ft
        -0x3at
        -0x4dt
        -0x3ct
        -0x47t
        -0x49t
        -0x3at
        -0x4ft
        -0x3ct
        -0x49t
        -0x48t
        -0x3ct
        -0x49t
        -0x3bt
        -0x46t
        -0x4ft
        -0x3bt
    .end array-data
.end method

.method public static A06()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "5Oiv1GLvIq7zEHzIHOTPzi3kaYzi9CKu"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "OYJ8Vha7o3AKqeq5fQgjy4YAYzCEKBrH"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "4fHxCa0vWIAizdOtLSYViH6HX8wZM136"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "7SeobKfCaIBp1RCtBr0PVzHsRPnznuT1"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "fOxTiSwrZex6"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "3vZIMeafrjOpHP1eiyT8MHuy7IIJRNdQ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "XI5vdZH0G6FndxBvW8fNBqRq2FpLqBJ1"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "pJZH6qXQIaEu24ksEJ9XliOUqsc1pAkZ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/G1;->A0C:[Ljava/lang/String;

    return-void
.end method

.method public static A07(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/json/JSONObject;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 33222
    .local v3, "responseContainer":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lorg/json/JSONObject;>;"
    .local v0, "failureContainer":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, v3, v0

    const/16 v2, 0xdd

    const/16 v1, 0x1c

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G1;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33223
    :try_start_0
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    .line 33224
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 33225
    .local p0, "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 33226
    .end local p0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public static synthetic A08(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 33227
    invoke-static {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/G1;->A07(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method private declared-synchronized A09(Ljava/lang/Throwable;)V
    .locals 3

    monitor-enter p0

    .line 33228
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G1;->A08:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33229
    .local p1, "listener":Lcom/facebook/ads/redexgen/X/Qz;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33230
    .end local v0
    :cond_0
    monitor-exit p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/G1;->A0C:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/G1;->A0C:[Ljava/lang/String;

    const-string v1, "jOM2sC9axZtdiRuTC4uiooC1eDwAnM4L"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "oYYGFZG36lntZdV46ZffLgIrsbHURGKH"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-void

    .line 33231
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final A0A()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 33232
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G1;->A02:Lcom/facebook/ads/redexgen/X/8Q;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8Q;->A8A()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33233
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x6a

    const/16 v1, 0x17

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G1;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G1;->A02:Lcom/facebook/ads/redexgen/X/8Q;

    .line 33234
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8Q;->A6C()Lcom/facebook/ads/redexgen/X/8P;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8P;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0x1d

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G1;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33235
    new-instance v0, Lcom/facebook/ads/redexgen/X/R1;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/R1;-><init>()V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/G1;->A09(Ljava/lang/Throwable;)V

    .line 33236
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/G1;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G1;->A00:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 33237
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 33238
    :cond_0
    return-void

    .line 33239
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G1;->A01:Lcom/facebook/ads/redexgen/X/8D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1F(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G1;->A01:Lcom/facebook/ads/redexgen/X/8D;

    .line 33240
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A02()Lcom/facebook/ads/redexgen/X/8G;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8G;->A83()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 33241
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/G1;->A04()V

    goto :goto_0

    .line 33242
    :cond_3
    const/16 v2, 0x1d

    const/16 v1, 0x12

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G1;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33243
    :catchall_0
    move-exception v5

    .line 33244
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G1;->A05:Lcom/facebook/ads/redexgen/X/Qt;

    .line 33245
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qt;->A01()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    .line 33246
    const/16 v2, 0xf9

    const/16 v1, 0x31

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G1;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33247
    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/G1;->A09(Ljava/lang/Throwable;)V

    .line 33248
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/G1;->A04:Lcom/facebook/ads/redexgen/X/Qo;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G1;->A05:Lcom/facebook/ads/redexgen/X/Qt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qt;->A01()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Qo;->A04(I)V

    goto :goto_0
.end method

.method public final declared-synchronized A4O(Lcom/facebook/ads/redexgen/X/Qk;)Lcom/facebook/ads/redexgen/X/Qj;
    .locals 5

    monitor-enter p0

    .line 33249
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qk;->A03()Lcom/facebook/ads/redexgen/X/Qm;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Qm;->A03:Lcom/facebook/ads/redexgen/X/Qm;

    if-ne v1, v0, :cond_2

    .line 33250
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G1;->A0A:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33251
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G1;->A0A:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Qj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 33252
    .end local v0
    :cond_0
    :try_start_1
    new-instance v4, Lcom/facebook/ads/redexgen/X/G7;

    invoke-direct {v4, p1}, Lcom/facebook/ads/redexgen/X/G7;-><init>(Lcom/facebook/ads/redexgen/X/Qk;)V

    .line 33253
    .local p0, "newBundle":Lcom/facebook/ads/redexgen/X/G7;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G1;->A0A:Ljava/util/Map;

    invoke-interface {v0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33254
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G1;->A08:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33255
    .local v1, "listener":Lcom/facebook/ads/redexgen/X/Qz;
    const/4 v0, 0x0

    throw v0

    .line 33256
    :cond_1
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v2, 0x99

    const/16 v1, 0x23

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G1;->A01(III)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v1, v0

    invoke-static {v3, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33257
    monitor-exit p0

    return-object v4

    .line 33258
    :cond_2
    :try_start_2
    const/16 v2, 0x2f

    const/16 v1, 0x3b

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G1;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33259
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A5O()V
    .locals 1

    .line 33260
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G1;->A04:Lcom/facebook/ads/redexgen/X/Qo;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qo;->A03()V

    .line 33261
    return-void
.end method
