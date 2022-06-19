.class public final Lcom/facebook/ads/redexgen/X/JN;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static final A01:Ljava/lang/String;

.field public static final A02:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 40062
    invoke-static {}, Lcom/facebook/ads/redexgen/X/JN;->A02()V

    const-class v0, Lcom/facebook/ads/redexgen/X/JN;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/JN;->A01:Ljava/lang/String;

    .line 40063
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/JN;->A02:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40064
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic A00()Ljava/lang/String;
    .locals 1

    .line 40065
    sget-object v0, Lcom/facebook/ads/redexgen/X/JN;->A01:Ljava/lang/String;

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/JN;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x39

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0xdf

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/JN;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x52t
        -0x60t
        -0x32t
        -0x1bt
        -0x9t
        -0x60t
        -0xat
        -0x1ft
        -0x14t
        -0xbt
        -0x1bt
        -0x46t
        -0x60t
        -0x6ft
        -0x58t
        -0x7ct
        -0x57t
        -0x4dt
        -0x50t
        -0x5ft
        -0x4ct
        -0x5dt
        -0x58t
        -0x57t
        -0x52t
        -0x59t
        0x60t
        -0x54t
        -0x51t
        -0x5dt
        -0x5ft
        -0x54t
        0x60t
        -0x5dt
        -0x51t
        -0x4bt
        -0x52t
        -0x4ct
        -0x5bt
        -0x4et
        -0x4dt
        0x7at
        0x60t
        -0x4t
        0x21t
        0x16t
        0x25t
        0x18t
        0x20t
        0x18t
        0x21t
        0x27t
        0x1ct
        0x21t
        0x1at
        -0x2dt
        0x16t
        0x22t
        0x28t
        0x21t
        0x27t
        0x18t
        0x25t
        -0x13t
        -0x2dt
        -0x7t
        0x1ct
        0x10t
        0xet
        0x19t
        -0x10t
        0x1ct
        0x22t
        0x1bt
        0x21t
        0x12t
        0x1ft
        0x20t
        -0x76t
        -0x55t
        -0x50t
        0x5ct
        -0x5bt
        -0x56t
        -0x5bt
        -0x50t
        -0x5bt
        -0x63t
        -0x58t
        -0x5bt
        -0x4at
        -0x5ft
        -0x60t
        0x5dt
        -0x23t
        -0x20t
        -0x20t
        -0x1bt
        -0x10t
        -0x1bt
        -0x15t
        -0x16t
        -0x23t
        -0x18t
        -0x25t
        -0x1bt
        -0x16t
        -0x1et
        -0x15t
        -0x56t
        -0x43t
        -0x43t
        -0x52t
        -0x4at
        -0x47t
        -0x43t
        -0x11t
        -0x13t
        0x1t
        -0xdt
        -0xct
        0x0t
        -0x15t
        -0xft
        0x4t
        -0x11t
        -0xft
        -0x4t
        0x0t
        -0xbt
        -0x5t
        -0x6t
        -0x58t
        -0x4ct
        -0x4et
        0x73t
        -0x55t
        -0x5at
        -0x58t
        -0x56t
        -0x59t
        -0x4ct
        -0x4ct
        -0x50t
        0x73t
        -0x5at
        -0x57t
        -0x48t
        0x73t
        -0x6ft
        -0x6ct
        -0x78t
        -0x7at
        -0x6ft
        -0x5ct
        -0x78t
        -0x6ct
        -0x66t
        -0x6dt
        -0x67t
        -0x76t
        -0x69t
        -0x68t
        -0x60t
        -0x63t
        -0x50t
        -0x63t
        0x11t
        0x22t
        0x11t
        0x1at
        0x20t
        0x1ft
        -0x33t
        -0x30t
        -0x3ct
        -0x3et
        -0x33t
        -0x40t
        -0x3ct
        -0x30t
        -0x2at
        -0x31t
        -0x2bt
        -0x3at
        -0x2dt
        -0x2ct
        -0xdt
        -0x1ct
        -0x4t
        -0x11t
        -0xet
        -0x1ct
        -0x19t
        -0x30t
        -0x2ft
        -0x42t
        -0x40t
        -0x38t
        -0x2ft
        -0x31t
        -0x42t
        -0x40t
        -0x3et
        -0x2ft
        -0x2dt
        -0x40t
        -0x2et
        -0x29t
        -0x32t
        -0x3dt
        -0x53t
        -0x51t
        -0x64t
        -0x52t
        -0x4dt
        -0x56t
        -0x61t
        -0x67t
        -0x63t
        -0x57t
        -0x62t
        -0x61t
    .end array-data
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/8D;)V
    .locals 2

    .line 40066
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/JN;->A09(Lcom/facebook/ads/redexgen/X/8D;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40067
    return-void

    .line 40068
    :cond_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/JN;->A02:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40069
    return-void

    .line 40070
    :cond_1
    sget-object v1, Lcom/facebook/ads/redexgen/X/Lo;->A06:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/TP;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/TP;-><init>(Lcom/facebook/ads/redexgen/X/8D;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 40071
    return-void
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/QF;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/8D;",
            "Lcom/facebook/ads/redexgen/X/QF;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 40072
    .local v1, "allValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 40073
    .local p0, "eventsData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0x6d

    const/4 v1, 0x7

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JN;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xd

    const/4 v1, 0x1

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JN;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40074
    invoke-static {p0, v6}, Lcom/facebook/ads/redexgen/X/JN;->A07(Lcom/facebook/ads/redexgen/X/8D;Ljava/util/Map;)V

    .line 40075
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 40076
    .local p1, "eventData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0xcc

    const/4 v1, 0x7

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JN;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xad

    const/16 v1, 0xe

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JN;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40077
    const/16 v0, 0xdad

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 40078
    const/16 v2, 0xd3

    const/16 v1, 0xc

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JN;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40079
    const/16 v2, 0x74

    const/16 v1, 0x10

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JN;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xe

    const/4 v1, 0x1

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JN;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40080
    const/16 v2, 0xc2

    const/16 v1, 0xa

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JN;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x41

    const/16 v1, 0xd

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JN;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40081
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 40082
    .local p2, "additionalInfo":Lorg/json/JSONObject;
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 40083
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40084
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    goto :goto_0

    .line 40085
    :cond_0
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40086
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xf

    const/16 v1, 0x1c

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JN;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40087
    :cond_1
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x5e

    const/16 v1, 0xf

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JN;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40088
    invoke-static {p0, v4}, Lcom/facebook/ads/redexgen/X/JN;->A07(Lcom/facebook/ads/redexgen/X/8D;Ljava/util/Map;)V

    .line 40089
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    .line 40090
    .local v6, "sessionData":Lcom/facebook/ads/redexgen/X/93;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A01()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A02()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/8i;

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/facebook/ads/redexgen/X/8i;-><init>(DLjava/lang/String;Ljava/util/Map;)V

    .line 40091
    .local v2, "debugLogEvent":Lcom/facebook/ads/redexgen/X/8i;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8g;->A05(Lcom/facebook/ads/redexgen/X/8i;)Lorg/json/JSONObject;

    move-result-object v0

    .line 40092
    .local v1, "event":Lorg/json/JSONObject;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 40093
    .local v0, "eventsArray":Lorg/json/JSONArray;
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 40094
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 40095
    .local v3, "eventsJSON":Lorg/json/JSONObject;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const/16 v2, 0xa3

    const/4 v1, 0x4

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JN;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40096
    const/16 v2, 0xa7

    const/4 v1, 0x6

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JN;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40097
    new-instance v4, Lcom/facebook/ads/redexgen/X/QT;

    invoke-direct {v4}, Lcom/facebook/ads/redexgen/X/QT;-><init>()V

    .line 40098
    .local v2, "parameters":Lcom/facebook/ads/redexgen/X/QT;
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xbb

    const/4 v1, 0x7

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JN;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/QT;->A08(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40099
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A03()Lcom/facebook/ads/redexgen/X/8H;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8H;->A6V()Ljava/lang/String;

    move-result-object v2

    .line 40100
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/QT;->A09()[B

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/TO;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/TO;-><init>()V

    .line 40101
    invoke-interface {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QF;->ACR(Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/QG;)V

    .line 40102
    return-void
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/QF;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 40103
    invoke-static {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/JN;->A04(Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/QF;Ljava/util/Map;)V

    return-void
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;)V
    .locals 6

    .line 40104
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/JN;->A09(Lcom/facebook/ads/redexgen/X/8D;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40105
    return-void

    .line 40106
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/JN;->A02:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 40107
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    const/16 v4, 0xdae

    const/16 v2, 0x4e

    const/16 v1, 0x10

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JN;->A01(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 40108
    const/16 v2, 0xad

    const/16 v1, 0xe

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JN;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8n(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 40109
    return-void

    .line 40110
    :cond_1
    const-class v5, Lcom/facebook/ads/redexgen/X/JN;

    monitor-enter v5

    .line 40111
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/16 v2, 0x84

    const/16 v1, 0x1f

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JN;->A01(III)Ljava/lang/String;

    move-result-object v0

    .line 40112
    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 40113
    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 40114
    .local p1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 40115
    .local v0, "value":I
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v0, p1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 40116
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2b

    const/16 v1, 0x16

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JN;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0xd

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JN;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40118
    .end local p1    # "sp":Landroid/content/SharedPreferences;
    .end local v0    # "value":I
    :cond_2
    monitor-exit v5

    .line 40119
    return-void

    .line 40120
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/8D;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/8D;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 40121
    .local p0, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A02()Lcom/facebook/ads/redexgen/X/8G;

    move-result-object p0

    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/8G;->A4Q()Ljava/util/Map;

    move-result-object p0

    .line 40122
    .local p0, "shortEvnData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 40123
    return-void
.end method

.method public static A08(DI)Z
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 40124
    const/4 v4, 0x1

    if-lez p2, :cond_1

    .line 40125
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    int-to-double v0, p2

    div-double/2addr v2, v0

    cmpl-double v0, p0, v2

    if-ltz v0, :cond_0

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 40126
    :cond_1
    return v4
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/8D;)Z
    .locals 3

    .line 40127
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40128
    const/4 v0, 0x0

    return v0

    .line 40129
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J6;->A0V(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 40130
    const/4 v0, 0x1

    return v0

    .line 40131
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A00()D

    move-result-wide v1

    .line 40132
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J6;->A0C(Landroid/content/Context;)I

    move-result v0

    .line 40133
    invoke-static {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/JN;->A08(DI)Z

    move-result v0

    return v0
.end method
