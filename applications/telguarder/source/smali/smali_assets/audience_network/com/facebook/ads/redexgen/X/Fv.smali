.class public final Lcom/facebook/ads/redexgen/X/Fv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Qu;
.implements Lcom/facebook/ads/redexgen/X/Qj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/4C;,
        Lcom/facebook/ads/redexgen/X/4M;,
        Lcom/facebook/ads/redexgen/X/Fx;,
        Lcom/facebook/ads/redexgen/X/4D;,
        Lcom/facebook/ads/redexgen/X/4J;,
        Lcom/facebook/ads/redexgen/X/Fw;,
        Lcom/facebook/ads/redexgen/X/Qx;
    }
.end annotation


# static fields
.field public static A0A:[B

.field public static A0B:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/8D;

.field public final A01:Lcom/facebook/ads/redexgen/X/8Q;

.field public final A02:Lcom/facebook/ads/redexgen/X/QF;

.field public final A03:Lcom/facebook/ads/redexgen/X/Qk;

.field public final A04:Lcom/facebook/ads/redexgen/X/Qs;

.field public final A05:Lcom/facebook/ads/redexgen/X/Qt;

.field public final A06:Ljava/lang/String;

.field public final A07:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Qy;",
            ">;"
        }
    .end annotation
.end field

.field public final A08:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/ads/redexgen/X/Qf;",
            "Lcom/facebook/ads/redexgen/X/4Y;",
            ">;"
        }
    .end annotation
.end field

.field public final A09:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/ads/redexgen/X/Qf;",
            "Lcom/facebook/ads/redexgen/X/G4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Fv;->A06()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Fv;->A05()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/8Q;Lcom/facebook/ads/redexgen/X/QF;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Qt;Lcom/facebook/ads/redexgen/X/Qs;Lcom/facebook/ads/redexgen/X/Qi;)V
    .locals 1

    .line 33121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33122
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Fv;->A00:Lcom/facebook/ads/redexgen/X/8D;

    .line 33123
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Fv;->A01:Lcom/facebook/ads/redexgen/X/8Q;

    .line 33124
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Fv;->A02:Lcom/facebook/ads/redexgen/X/QF;

    .line 33125
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Fv;->A06:Ljava/lang/String;

    .line 33126
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Fv;->A05:Lcom/facebook/ads/redexgen/X/Qt;

    .line 33127
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/Fv;->A04:Lcom/facebook/ads/redexgen/X/Qs;

    .line 33128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fv;->A09:Ljava/util/Map;

    .line 33129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fv;->A08:Ljava/util/Map;

    .line 33130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fv;->A07:Ljava/util/List;

    .line 33131
    invoke-interface {p7, p0}, Lcom/facebook/ads/redexgen/X/Qi;->A49(Lcom/facebook/ads/redexgen/X/Qj;)Lcom/facebook/ads/redexgen/X/Qk;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fv;->A03:Lcom/facebook/ads/redexgen/X/Qk;

    .line 33132
    return-void
.end method

.method public static A00(Lorg/json/JSONObject;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 33133
    const/16 v2, 0x14f

    const/4 v1, 0x7

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const/16 v2, 0x165

    const/16 v1, 0x10

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 33134
    .local p0, "time":I
    if-lez v2, :cond_0

    .line 33135
    return v2

    .line 33136
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

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lorg/json/JSONException;

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fv;->A0A:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x15

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
            "Lcom/facebook/ads/redexgen/X/Qx;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 33137
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 33138
    .local p0, "responses":Ljava/util/Set;, "Ljava/util/Set<Lcom/facebook/ads/sync/SyncModuleImpl$BundleResponse;>;"
    const/16 v2, 0x15d

    const/16 v1, 0x8

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 33139
    .local p1, "responseObject":Lorg/json/JSONObject;
    const/16 v2, 0x12a

    const/4 v1, 0x7

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 33140
    .local v5, "bundlesObject":Lorg/json/JSONObject;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fv;->A09:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v6, 0x2

    const/4 v3, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fv;->A0B:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fv;->A0B:[Ljava/lang/String;

    const-string v1, "GiFNWD8Qhge"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "8JT"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v7, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/ads/redexgen/X/G4;

    .line 33141
    .local v1, "serverBundle":Lcom/facebook/ads/redexgen/X/G4;
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/G4;->A6a()Lcom/facebook/ads/redexgen/X/Qf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qf;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33142
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/R2;->A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/R2;

    move-result-object v0

    .line 33143
    .local v4, "responseForBundle":Lcom/facebook/ads/redexgen/X/R2;
    sget-object v1, Lcom/facebook/ads/redexgen/X/Qw;->A01:[I

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/R2;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v3, :cond_0

    if-ne v0, v6, :cond_1

    .line 33144
    new-instance v0, Lcom/facebook/ads/redexgen/X/4D;

    invoke-direct {v0, v7}, Lcom/facebook/ads/redexgen/X/4D;-><init>(Lcom/facebook/ads/redexgen/X/G4;)V

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33145
    goto :goto_0

    .line 33146
    :cond_0
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/G4;->A6a()Lcom/facebook/ads/redexgen/X/Qf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qf;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 33147
    const/16 v2, 0x138

    const/4 v1, 0x4

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 33148
    .local v0, "data":Lorg/json/JSONObject;
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/G4;->A6a()Lcom/facebook/ads/redexgen/X/Qf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qf;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 33149
    const/16 v2, 0x13c

    const/16 v1, 0xb

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 33150
    .local v0, "fingerprint":Lorg/json/JSONObject;
    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0, v7, v6, v1}, Lcom/facebook/ads/redexgen/X/4J;-><init>(Lcom/facebook/ads/redexgen/X/G4;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33151
    goto/16 :goto_0

    .line 33152
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 33153
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fv;->A08:Ljava/util/Map;

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

    .line 33154
    .local v1, "clientBundle":Lcom/facebook/ads/redexgen/X/4Y;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/G4;->A6a()Lcom/facebook/ads/redexgen/X/Qf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qf;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33155
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qo;->A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Qo;

    move-result-object v0

    .line 33156
    .local v4, "responseForBundle":Lcom/facebook/ads/redexgen/X/Qo;
    sget-object v1, Lcom/facebook/ads/redexgen/X/Qw;->A00:[I

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qo;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v3, :cond_3

    if-ne v0, v6, :cond_4

    .line 33157
    new-instance v0, Lcom/facebook/ads/redexgen/X/4C;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/4C;-><init>(Lcom/facebook/ads/redexgen/X/4Y;)V

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33158
    goto :goto_1

    .line 33159
    :cond_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/4M;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/4M;-><init>(Lcom/facebook/ads/redexgen/X/4Y;)V

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33160
    goto :goto_1

    .line 33161
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 33162
    :cond_5
    return-object v5

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A03(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/facebook/ads/redexgen/X/Qe;",
            "Lcom/facebook/ads/redexgen/X/R1;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/facebook/ads/redexgen/X/G1;",
            "Lcom/facebook/ads/redexgen/X/Qn;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/facebook/ads/redexgen/X/G1;",
            "Lorg/json/JSONObject;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/facebook/ads/redexgen/X/G1;",
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

    .line 33163
    .local v2, "serverBundleRequests":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncBundle;Lcom/facebook/ads/sync/SyncServerBundleRequestType;>;"
    .local v0, "clientBundleRequests":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncModifiableBundle;Lcom/facebook/ads/sync/SyncClientBundleRequestType;>;"
    .local v0, "clientBundleData":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncModifiableBundle;Lorg/json/JSONObject;>;"
    .local v0, "clientBundleFingerprint":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncModifiableBundle;Lorg/json/JSONObject;>;"
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 33164
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

    .line 33165
    .local p2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/facebook/ads/sync/SyncBundle;Lcom/facebook/ads/sync/SyncServerBundleRequestType;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Qe;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Qe;->A6a()Lcom/facebook/ads/redexgen/X/Qf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qf;->A04()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/R1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/R1;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33166
    .end local p2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/facebook/ads/sync/SyncBundle;Lcom/facebook/ads/sync/SyncServerBundleRequestType;>;"
    goto :goto_0

    .line 33167
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 33168
    .local p2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/facebook/ads/sync/SyncModifiableBundle;Lcom/facebook/ads/sync/SyncClientBundleRequestType;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/G1;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Qe;->A6a()Lcom/facebook/ads/redexgen/X/Qf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qf;->A04()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Qn;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qn;->A03()Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fv;->A0B:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fv;->A0B:[Ljava/lang/String;

    const-string v1, "GjL9vB6wh"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v6, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33169
    .end local p2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/facebook/ads/sync/SyncModifiableBundle;Lcom/facebook/ads/sync/SyncClientBundleRequestType;>;"
    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 33170
    :cond_2
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 33171
    .local p1, "bundles":Lorg/json/JSONObject;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v2, 0x13c

    const/16 v1, 0xb

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fv;->A01(III)Ljava/lang/String;

    move-result-object v7

    if-eqz v3, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 33172
    .local p3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/facebook/ads/sync/SyncBundle;Lcom/facebook/ads/sync/SyncServerBundleRequestType;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/R1;->A05:Lcom/facebook/ads/redexgen/X/R1;

    if-ne v1, v0, :cond_3

    .line 33173
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 33174
    .local v6, "updateData":Lorg/json/JSONObject;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Qe;

    .line 33175
    .local v0, "bundle":Lcom/facebook/ads/redexgen/X/Qe;
    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/Qe;->A6a()Lcom/facebook/ads/redexgen/X/Qf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qf;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33176
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Qe;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Qe;->A6a()Lcom/facebook/ads/redexgen/X/Qf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qf;->A05()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 33177
    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/Qe;->A6W()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33178
    :goto_3
    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/Qe;->A6a()Lcom/facebook/ads/redexgen/X/Qf;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fv;->A0B:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fv;->A0B:[Ljava/lang/String;

    const-string v1, "cfjTgROdu8b"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "qIs"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Qf;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Fv;->A0B:[Ljava/lang/String;

    const-string v1, "vaTQWmMwm"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Qf;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2

    .line 33179
    :cond_5
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v3, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 33180
    :cond_6
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 33181
    .local p3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/facebook/ads/sync/SyncModifiableBundle;Lcom/facebook/ads/sync/SyncClientBundleRequestType;>;"
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 33182
    .local v6, "bundleData":Lorg/json/JSONObject;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/ads/redexgen/X/Qe;

    .line 33183
    .restart local v0    # "bundle":Lcom/facebook/ads/redexgen/X/Qe;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33184
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Qn;->A05:Lcom/facebook/ads/redexgen/X/Qn;

    if-ne v1, v0, :cond_7

    .line 33185
    invoke-interface {p3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v2, 0x138

    const/4 v1, 0x4

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33186
    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/Qe;->A6a()Lcom/facebook/ads/redexgen/X/Qf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qf;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 33187
    :cond_7
    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/Qe;->A6a()Lcom/facebook/ads/redexgen/X/Qf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qf;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 33188
    :cond_8
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 33189
    .local p2, "context":Lorg/json/JSONObject;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fv;->A05:Lcom/facebook/ads/redexgen/X/Qt;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Qt;->A6O()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 33190
    .local p4, "env":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 33191
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    .line 33192
    :cond_a
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 33193
    .local p3, "syncRequest":Lorg/json/JSONObject;
    const/16 v2, 0x156

    const/4 v1, 0x7

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33194
    const/16 v2, 0x12a

    const/4 v1, 0x7

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33195
    const/16 v2, 0x131

    const/4 v1, 0x7

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33196
    return-object v3
.end method

.method private A04()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 33197
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 33198
    .local p0, "serverBundleRequests":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncBundle;Lcom/facebook/ads/sync/SyncServerBundleRequestType;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 33199
    .local v9, "clientBundleRequests":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncModifiableBundle;Lcom/facebook/ads/sync/SyncClientBundleRequestType;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 33200
    .local v4, "clientBundleData":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncModifiableBundle;Lorg/json/JSONObject;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 33201
    .local v3, "clientBundleFingerprint":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncModifiableBundle;Lorg/json/JSONObject;>;"
    monitor-enter p0

    .line 33202
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fv;->A09:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/G4;

    .line 33203
    .local v0, "serverBundle":Lcom/facebook/ads/redexgen/X/G4;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/G4;->A8B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33204
    sget-object v0, Lcom/facebook/ads/redexgen/X/R1;->A05:Lcom/facebook/ads/redexgen/X/R1;

    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 33205
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/R1;->A04:Lcom/facebook/ads/redexgen/X/R1;

    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 33206
    :cond_1
    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 33207
    .local v2, "data":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lorg/json/JSONObject;>;"
    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 33208
    .local v0, "fingerprint":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lorg/json/JSONObject;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fv;->A08:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4Y;

    .line 33209
    .local v5, "clientBundle":Lcom/facebook/ads/redexgen/X/4Y;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/G4;->A8B()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33210
    invoke-virtual {v1, v7, v6}, Lcom/facebook/ads/redexgen/X/4Y;->A09(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 33211
    sget-object v0, Lcom/facebook/ads/redexgen/X/Qn;->A05:Lcom/facebook/ads/redexgen/X/Qn;

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33212
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33213
    :goto_2
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 33214
    :cond_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/Qn;->A04:Lcom/facebook/ads/redexgen/X/Qn;

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 33215
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fv;->A07:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33216
    .local v5, "listener":Lcom/facebook/ads/redexgen/X/Qy;
    const/4 v0, 0x0

    throw v0

    .line 33217
    .end local v2    # "data":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lorg/json/JSONObject;>;"
    .end local v0    # "fingerprint":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lorg/json/JSONObject;>;"
    :cond_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33218
    const/4 v8, 0x1

    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v7, v8}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 33219
    .local v2, "waitForResponse":Ljava/util/concurrent/CountDownLatch;
    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 33220
    .local v0, "responseContainer":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lorg/json/JSONObject;>;"
    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 33221
    .local v5, "failureContainer":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    invoke-direct {p0, v9, v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Fv;->A03(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v9

    .line 33222
    .local v0, "syncRequest":Lorg/json/JSONObject;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fv;->A06:Ljava/lang/String;

    aput-object v0, v3, v1

    .line 33223
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    .line 33224
    const/16 v2, 0xbc

    const/16 v1, 0x21

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33225
    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/Fv;->A02:Lcom/facebook/ads/redexgen/X/QF;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Fv;->A06:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x147

    const/16 v1, 0x8

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33226
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Fy;

    invoke-direct {v0, p0, v5, v6, v7}, Lcom/facebook/ads/redexgen/X/Fy;-><init>(Lcom/facebook/ads/redexgen/X/Fv;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    .line 33227
    invoke-interface {v8, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/QF;->ACR(Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/QG;)V

    .line 33228
    :catch_0
    :goto_3
    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v3

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_6

    .line 33229
    :try_start_1
    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->await()V

    goto :goto_3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 33230
    :cond_6
    monitor-enter p0

    .line 33231
    :try_start_2
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    .line 33232
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Fv;->A02(Lorg/json/JSONObject;)Ljava/util/Set;

    move-result-object v0

    .line 33233
    .local v0, "responses":Ljava/util/Set;, "Ljava/util/Set<Lcom/facebook/ads/sync/SyncModuleImpl$BundleResponse;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 33234
    .local v1, "notifyServerBundleResponses":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncBundle;Lcom/facebook/ads/sync/SyncServerBundleResponseType;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 33235
    .local v1, "notifyClientBundleResponses":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncModifiableBundle;Lcom/facebook/ads/sync/SyncClientBundleResponseType;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Qx;

    .line 33236
    .local v0, "response":Lcom/facebook/ads/redexgen/X/Qx;
    invoke-interface {v0, v3, v2}, Lcom/facebook/ads/redexgen/X/Qx;->A3M(Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_4

    .line 33237
    :cond_7
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Fv;->A00(Lorg/json/JSONObject;)I

    move-result v1

    .line 33238
    .local v0, "refreshTimeSecs":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fv;->A03:Lcom/facebook/ads/redexgen/X/Qk;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Qk;->A5M(I)V

    .line 33239
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fv;->A07:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33240
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/Qy;
    const/4 v0, 0x0

    throw v0

    .line 33241
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/Qy;
    .end local v1    # "notifyClientBundleResponses":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncModifiableBundle;Lcom/facebook/ads/sync/SyncClientBundleResponseType;>;"
    .end local v1
    .end local v0
    :cond_8
    monitor-exit p0

    .line 33242
    return-void

    .line 33243
    :cond_9
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .end local p0    # "serverBundleRequests":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncBundle;Lcom/facebook/ads/sync/SyncServerBundleRequestType;>;"
    .end local v9    # "clientBundleRequests":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncModifiableBundle;Lcom/facebook/ads/sync/SyncClientBundleRequestType;>;"
    .end local v4    # "clientBundleData":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncModifiableBundle;Lorg/json/JSONObject;>;"
    .end local v3    # "clientBundleFingerprint":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncModifiableBundle;Lorg/json/JSONObject;>;"
    .end local v2    # "waitForResponse":Ljava/util/concurrent/CountDownLatch;
    .end local v0
    .end local v5    # "failureContainer":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    .end local v0
    throw v0

    .line 33244
    .restart local p0    # "serverBundleRequests":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncBundle;Lcom/facebook/ads/sync/SyncServerBundleRequestType;>;"
    .restart local v9    # "clientBundleRequests":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncModifiableBundle;Lcom/facebook/ads/sync/SyncClientBundleRequestType;>;"
    .restart local v4    # "clientBundleData":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncModifiableBundle;Lorg/json/JSONObject;>;"
    .restart local v3    # "clientBundleFingerprint":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncModifiableBundle;Lorg/json/JSONObject;>;"
    .restart local v2    # "waitForResponse":Ljava/util/concurrent/CountDownLatch;
    .restart local v0    # "listener":Lcom/facebook/ads/redexgen/X/Qy;
    .restart local v5    # "failureContainer":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    .restart local v0    # "listener":Lcom/facebook/ads/redexgen/X/Qy;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 33245
    .end local v2    # "waitForResponse":Ljava/util/concurrent/CountDownLatch;
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/Qy;
    .end local v5    # "failureContainer":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
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

    sput-object v0, Lcom/facebook/ads/redexgen/X/Fv;->A0A:[B

    return-void

    :array_0
    .array-data 1
        0x66t
        -0x51t
        -0x47t
        0x66t
        -0x48t
        -0x55t
        -0x47t
        -0x46t
        -0x48t
        -0x51t
        -0x57t
        -0x46t
        -0x55t
        -0x56t
        0x74t
        0x66t
        -0x67t
        -0x4ft
        -0x51t
        -0x4at
        -0x4at
        -0x51t
        -0x4ct
        -0x53t
        0x66t
        -0x47t
        -0x41t
        -0x4ct
        -0x57t
        -0x2bt
        0x4t
        0x4t
        -0x4ct
        -0x3t
        0x2t
        -0x4ct
        -0xat
        -0xbt
        -0x9t
        -0x1t
        -0x5t
        0x6t
        0x3t
        0x9t
        0x2t
        -0x8t
        -0x3et
        -0x43t
        -0x25t
        -0x18t
        -0x18t
        -0x17t
        -0x12t
        -0x66t
        -0x23t
        -0x14t
        -0x21t
        -0x25t
        -0x12t
        -0x21t
        -0x66t
        -0x13t
        -0x21t
        -0x14t
        -0x10t
        -0x21t
        -0x14t
        -0x66t
        -0x24t
        -0x11t
        -0x18t
        -0x22t
        -0x1at
        -0x21t
        -0x66t
        -0xft
        -0x1dt
        -0x12t
        -0x1et
        -0x66t
        -0x18t
        -0x17t
        -0x18t
        -0x59t
        -0x13t
        -0x21t
        -0x14t
        -0x10t
        -0x21t
        -0x14t
        -0x66t
        -0x17t
        -0xft
        -0x18t
        -0x21t
        -0x22t
        -0x66t
        -0x24t
        -0x11t
        -0x18t
        -0x22t
        -0x1at
        -0x21t
        -0x66t
        -0x3dt
        -0x42t
        0x7bt
        -0x68t
        -0x55t
        -0x68t
        0x57t
        -0x59t
        -0x57t
        -0x5at
        -0x66t
        -0x64t
        -0x56t
        -0x56t
        -0x60t
        -0x5bt
        -0x62t
        0x57t
        -0x5at
        -0x59t
        -0x55t
        -0x60t
        -0x5at
        -0x5bt
        0x57t
        -0x76t
        -0x51t
        -0x49t
        -0x5et
        -0x53t
        -0x56t
        -0x5bt
        0x61t
        -0x4dt
        -0x5at
        -0x59t
        -0x4dt
        -0x5at
        -0x4ct
        -0x57t
        0x61t
        -0x4bt
        -0x56t
        -0x52t
        -0x5at
        0x7bt
        0x61t
        0x66t
        -0x5bt
        -0x22t
        -0xbt
        0x7t
        -0x50t
        0x3t
        -0xbt
        0x2t
        0x6t
        -0xbt
        0x2t
        -0x43t
        -0x1t
        0x7t
        -0x2t
        -0xbt
        -0xct
        -0x50t
        -0xet
        0x5t
        -0x2t
        -0xct
        -0x4t
        -0xbt
        -0x50t
        -0xdt
        0x2t
        -0xbt
        -0xft
        0x4t
        -0xbt
        -0xct
        -0x36t
        -0x50t
        -0x4bt
        0x3t
        -0x5ft
        -0x39t
        -0x44t
        -0x4ft
        -0x4at
        -0x40t
        -0x43t
        -0x44t
        -0x49t
        -0x38t
        -0x51t
        -0x3et
        -0x49t
        -0x43t
        -0x44t
        0x6et
        -0x40t
        -0x4dt
        -0x41t
        -0x3dt
        -0x4dt
        -0x3ft
        -0x3et
        0x6et
        -0x3et
        -0x43t
        0x6et
        0x73t
        -0x3ft
        -0x78t
        0x58t
        0x73t
        -0x3ft
        -0x22t
        0x4t
        -0x7t
        -0x12t
        -0xdt
        -0x3t
        -0x6t
        -0x7t
        -0xct
        0x5t
        -0x14t
        -0x1t
        -0xct
        -0x6t
        -0x7t
        -0x55t
        -0x3t
        -0x10t
        -0x2t
        -0x5t
        -0x6t
        -0x7t
        -0x2t
        -0x10t
        -0x3bt
        -0x6bt
        -0x50t
        -0x2t
        -0x2bt
        -0x5t
        -0x10t
        -0x1bt
        -0x16t
        -0xct
        -0xft
        -0x10t
        -0x15t
        -0x4t
        -0x1dt
        -0xat
        -0x15t
        -0xft
        -0x10t
        -0x5et
        -0xct
        -0x9t
        -0x10t
        -0x5et
        -0x18t
        -0x1dt
        -0x15t
        -0x12t
        -0x19t
        -0x1at
        -0x43t
        -0x5et
        -0x18t
        -0xft
        -0xct
        -0x1bt
        -0x15t
        -0x10t
        -0x17t
        -0x5et
        -0x15t
        -0x10t
        -0x5et
        -0x59t
        -0x1at
        -0x5et
        -0xbt
        -0x19t
        -0x1bt
        -0xft
        -0x10t
        -0x1at
        -0xbt
        -0x1ct
        -0x9t
        -0x10t
        -0x1at
        -0x12t
        -0x19t
        -0xbt
        -0x3dt
        -0x31t
        -0x32t
        -0x2ct
        -0x3bt
        -0x28t
        -0x2ct
        0x7ct
        0x79t
        -0x74t
        0x79t
        -0x5at
        -0x57t
        -0x52t
        -0x59t
        -0x5bt
        -0x4et
        -0x50t
        -0x4et
        -0x57t
        -0x52t
        -0x4ct
        -0x2t
        -0x11t
        0x7t
        -0x6t
        -0x3t
        -0x11t
        -0xet
        -0x35t
        -0x74t
        0x7ft
        -0x80t
        -0x74t
        0x7ft
        -0x73t
        -0x7et
        -0xat
        -0x17t
        -0xbt
        -0x7t
        -0x17t
        -0x9t
        -0x8t
        -0x46t
        -0x53t
        -0x45t
        -0x48t
        -0x49t
        -0x4at
        -0x45t
        -0x53t
        -0x43t
        -0x56t
        -0x45t
        -0x50t
        -0x52t
        -0x43t
        -0x58t
        -0x45t
        -0x52t
        -0x51t
        -0x45t
        -0x52t
        -0x44t
        -0x4ft
        -0x58t
        -0x44t
    .end array-data
.end method

.method public static A06()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "IFN7jxPm5iUVHezzrmxS"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "S0eu2eNSRgR"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "zAFRaPaLH2briFok"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "kmV"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "0tQTfhSJ7"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "pW9DdJxYDevwUXMYU"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "23M9j"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "tE9Nw4uJT9AR2sagm"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Fv;->A0B:[Ljava/lang/String;

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

    .line 33246
    .local v3, "responseContainer":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lorg/json/JSONObject;>;"
    .local v0, "failureContainer":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, v3, v0

    const/16 v2, 0xdd

    const/16 v1, 0x1c

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33247
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

    .line 33248
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 33249
    .local p0, "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 33250
    .end local p0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public static synthetic A08(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 33251
    invoke-static {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Fv;->A07(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method private declared-synchronized A09(Ljava/lang/Throwable;)V
    .locals 2

    monitor-enter p0

    .line 33252
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fv;->A07:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33253
    .local p1, "listener":Lcom/facebook/ads/redexgen/X/Qy;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33254
    .end local v0
    :cond_0
    monitor-exit p0

    return-void

    .line 33255
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized A4L(Lcom/facebook/ads/redexgen/X/Qf;)Lcom/facebook/ads/redexgen/X/Qe;
    .locals 5

    monitor-enter p0

    .line 33256
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qf;->A03()Lcom/facebook/ads/redexgen/X/Qh;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Qh;->A04:Lcom/facebook/ads/redexgen/X/Qh;

    if-ne v1, v0, :cond_2

    .line 33257
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fv;->A09:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33258
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fv;->A09:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Qe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 33259
    .end local v0
    :cond_0
    :try_start_1
    new-instance v4, Lcom/facebook/ads/redexgen/X/G4;

    invoke-direct {v4, p1}, Lcom/facebook/ads/redexgen/X/G4;-><init>(Lcom/facebook/ads/redexgen/X/Qf;)V

    .line 33260
    .local p0, "newBundle":Lcom/facebook/ads/redexgen/X/G4;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fv;->A09:Ljava/util/Map;

    invoke-interface {v0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33261
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fv;->A07:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33262
    .local v1, "listener":Lcom/facebook/ads/redexgen/X/Qy;
    const/4 v0, 0x0

    throw v0

    .line 33263
    :cond_1
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v2, 0x99

    const/16 v1, 0x23

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fv;->A01(III)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v1, v0

    invoke-static {v3, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33264
    monitor-exit p0

    return-object v4

    .line 33265
    :cond_2
    :try_start_2
    const/16 v2, 0x2f

    const/16 v1, 0x3b

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fv;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33266
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A5O()V
    .locals 1

    .line 33267
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fv;->A03:Lcom/facebook/ads/redexgen/X/Qk;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Qk;->A5N()V

    .line 33268
    return-void
.end method

.method public final ADQ()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 33269
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fv;->A01:Lcom/facebook/ads/redexgen/X/8Q;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8Q;->A8C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x6a

    const/16 v1, 0x17

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fv;->A01:Lcom/facebook/ads/redexgen/X/8Q;

    .line 33271
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8Q;->A6C()Lcom/facebook/ads/redexgen/X/8P;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8P;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0x1d

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33272
    new-instance v0, Lcom/facebook/ads/redexgen/X/R0;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/R0;-><init>()V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Fv;->A09(Ljava/lang/Throwable;)V

    .line 33273
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Fv;
    :goto_0
    return-void

    .line 33274
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fv;->A00:Lcom/facebook/ads/redexgen/X/8D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fv;->A00:Lcom/facebook/ads/redexgen/X/8D;

    .line 33275
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A02()Lcom/facebook/ads/redexgen/X/8G;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8G;->A85()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33276
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Fv;->A04()V

    goto :goto_0

    .line 33277
    :cond_2
    const/16 v2, 0x1d

    const/16 v1, 0x12

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fv;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33278
    :catchall_0
    move-exception v5

    .line 33279
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fv;->A04:Lcom/facebook/ads/redexgen/X/Qs;

    .line 33280
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qs;->A01()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    .line 33281
    const/16 v2, 0xf9

    const/16 v1, 0x31

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33282
    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/Fv;->A09(Ljava/lang/Throwable;)V

    .line 33283
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fv;->A03:Lcom/facebook/ads/redexgen/X/Qk;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fv;->A04:Lcom/facebook/ads/redexgen/X/Qs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qs;->A01()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Qk;->A5M(I)V

    goto :goto_0
.end method
