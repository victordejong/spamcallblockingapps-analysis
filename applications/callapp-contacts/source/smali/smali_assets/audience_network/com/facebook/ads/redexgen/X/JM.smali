.class public final Lcom/facebook/ads/redexgen/X/JM;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static final A01:Ljava/lang/String;

.field public static final A02:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 39923
    invoke-static {}, Lcom/facebook/ads/redexgen/X/JM;->A02()V

    const-class v0, Lcom/facebook/ads/redexgen/X/JM;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/JM;->A01:Ljava/lang/String;

    .line 39924
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/JM;->A02:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39925
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic A00()Ljava/lang/String;
    .locals 1

    .line 39926
    sget-object v0, Lcom/facebook/ads/redexgen/X/JM;->A01:Ljava/lang/String;

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/JM;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x7

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

    const/16 v0, 0xc3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/JM;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x39t
        0x2bt
        0x59t
        0x70t
        -0x7et
        0x2bt
        -0x7ft
        0x6ct
        0x77t
        -0x80t
        0x70t
        0x45t
        0x2bt
        0x60t
        0x6ft
        0x5ct
        -0x7ft
        0x76t
        -0x7bt
        0x78t
        -0x80t
        0x78t
        -0x7ft
        -0x79t
        0x7ct
        -0x7ft
        0x7at
        0x33t
        0x76t
        -0x7et
        -0x78t
        -0x7ft
        -0x79t
        0x78t
        -0x7bt
        0x4dt
        0x33t
        0x7dt
        -0x60t
        -0x6ct
        -0x6et
        -0x63t
        0x74t
        -0x60t
        -0x5at
        -0x61t
        -0x5bt
        -0x6at
        -0x5dt
        -0x5ct
        -0x36t
        -0x15t
        -0x10t
        -0x64t
        -0x1bt
        -0x16t
        -0x1bt
        -0x10t
        -0x1bt
        -0x23t
        -0x18t
        -0x1bt
        -0xat
        -0x1ft
        -0x20t
        -0x63t
        0x74t
        0x77t
        0x77t
        0x7ct
        -0x79t
        0x7ct
        -0x7et
        -0x7ft
        0x74t
        0x7ft
        0x72t
        0x7ct
        -0x7ft
        0x79t
        -0x7et
        -0x2bt
        -0x18t
        -0x18t
        -0x27t
        -0x1ft
        -0x1ct
        -0x18t
        -0x6ft
        -0x71t
        -0x5dt
        -0x6bt
        -0x6at
        -0x5et
        -0x73t
        -0x6dt
        -0x5at
        -0x6ft
        -0x6dt
        -0x62t
        -0x5et
        -0x69t
        -0x63t
        -0x64t
        -0x2et
        -0x22t
        -0x24t
        -0x63t
        -0x2bt
        -0x30t
        -0x2et
        -0x2ct
        -0x2ft
        -0x22t
        -0x22t
        -0x26t
        -0x63t
        -0x30t
        -0x2dt
        -0x1et
        -0x63t
        -0x45t
        -0x42t
        -0x4et
        -0x50t
        -0x45t
        -0x32t
        -0x4et
        -0x42t
        -0x3ct
        -0x43t
        -0x3dt
        -0x4ct
        -0x3ft
        -0x3et
        -0x67t
        -0x6at
        -0x57t
        -0x6at
        -0x2at
        -0x19t
        -0x2at
        -0x21t
        -0x1bt
        -0x1ct
        -0x31t
        -0x2et
        -0x3at
        -0x3ct
        -0x31t
        -0x3et
        -0x3at
        -0x2et
        -0x28t
        -0x2ft
        -0x29t
        -0x38t
        -0x2bt
        -0x2at
        -0x79t
        0x78t
        -0x70t
        -0x7dt
        -0x7at
        0x78t
        0x7bt
        -0x5ft
        -0x5et
        -0x71t
        -0x6ft
        -0x67t
        -0x5et
        -0x60t
        -0x71t
        -0x6ft
        -0x6dt
        -0x7ct
        -0x7at
        0x73t
        -0x7bt
        -0x76t
        -0x7ft
        0x76t
        -0x25t
        -0x23t
        -0x36t
        -0x24t
        -0x1ft
        -0x28t
        -0x33t
        -0x39t
        -0x35t
        -0x29t
        -0x34t
        -0x33t
    .end array-data
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/8D;)V
    .locals 2

    .line 39927
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/JM;->A09(Lcom/facebook/ads/redexgen/X/8D;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39928
    return-void

    .line 39929
    :cond_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/JM;->A02:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39930
    return-void

    .line 39931
    :cond_1
    sget-object v1, Lcom/facebook/ads/redexgen/X/Lm;->A06:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/bt;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/bt;-><init>(Lcom/facebook/ads/redexgen/X/8D;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 39932
    return-void
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/QK;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/8D;",
            "Lcom/facebook/ads/redexgen/X/QK;",
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

    .line 39933
    .local v1, "allValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 39934
    .local p0, "eventsData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0x51

    const/4 v1, 0x7

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JM;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xd

    const/4 v1, 0x1

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JM;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39935
    invoke-static {p0, v6}, Lcom/facebook/ads/redexgen/X/JM;->A07(Lcom/facebook/ads/redexgen/X/8D;Ljava/util/Map;)V

    .line 39936
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 39937
    .local p1, "eventData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0xb0

    const/4 v1, 0x7

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JM;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x91

    const/16 v1, 0xe

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JM;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39938
    const/16 v0, 0xdad

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 39939
    const/16 v2, 0xb7

    const/16 v1, 0xc

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JM;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39940
    const/16 v2, 0x58

    const/16 v1, 0x10

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JM;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xe

    const/4 v1, 0x1

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JM;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39941
    const/16 v2, 0xa6

    const/16 v1, 0xa

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JM;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x25

    const/16 v1, 0xd

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JM;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39942
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 39943
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

    .line 39944
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39945
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    goto :goto_0

    .line 39946
    :cond_0
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x42

    const/16 v1, 0xf

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JM;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39947
    invoke-static {p0, v4}, Lcom/facebook/ads/redexgen/X/JM;->A07(Lcom/facebook/ads/redexgen/X/8D;Ljava/util/Map;)V

    .line 39948
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    .line 39949
    .local v6, "sessionData":Lcom/facebook/ads/redexgen/X/93;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A01()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A02()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/8i;

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/facebook/ads/redexgen/X/8i;-><init>(DLjava/lang/String;Ljava/util/Map;)V

    .line 39950
    .local v2, "debugLogEvent":Lcom/facebook/ads/redexgen/X/8i;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8g;->A05(Lcom/facebook/ads/redexgen/X/8i;)Lorg/json/JSONObject;

    move-result-object v0

    .line 39951
    .local v1, "event":Lorg/json/JSONObject;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 39952
    .local v0, "eventsArray":Lorg/json/JSONArray;
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 39953
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 39954
    .local v3, "eventsJSON":Lorg/json/JSONObject;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const/16 v2, 0x87

    const/4 v1, 0x4

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JM;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39955
    const/16 v2, 0x8b

    const/4 v1, 0x6

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JM;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39956
    new-instance v4, Lcom/facebook/ads/redexgen/X/QY;

    invoke-direct {v4}, Lcom/facebook/ads/redexgen/X/QY;-><init>()V

    .line 39957
    .local v2, "parameters":Lcom/facebook/ads/redexgen/X/QY;
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x9f

    const/4 v1, 0x7

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JM;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/QY;->A08(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39958
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A03()Lcom/facebook/ads/redexgen/X/8H;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8H;->A6V()Ljava/lang/String;

    move-result-object v2

    .line 39959
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/QY;->A09()[B

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/bu;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/bu;-><init>()V

    .line 39960
    invoke-interface {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QK;->ACR(Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/QL;)V

    .line 39961
    return-void
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/QK;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 39962
    invoke-static {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/JM;->A04(Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/QK;Ljava/util/Map;)V

    return-void
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;)V
    .locals 6

    .line 39963
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/JM;->A09(Lcom/facebook/ads/redexgen/X/8D;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39964
    return-void

    .line 39965
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/JM;->A02:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 39966
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    const/16 v4, 0xdae

    const/16 v2, 0x32

    const/16 v1, 0x10

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JM;->A01(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 39967
    const/16 v2, 0x91

    const/16 v1, 0xe

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JM;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8l(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 39968
    return-void

    .line 39969
    :cond_1
    const-class v5, Lcom/facebook/ads/redexgen/X/JM;

    monitor-enter v5

    .line 39970
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/16 v2, 0x68

    const/16 v1, 0x1f

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JM;->A01(III)Ljava/lang/String;

    move-result-object v0

    .line 39971
    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 39972
    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 39973
    .local p1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 39974
    .local v0, "value":I
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v0, p1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 39975
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39976
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xf

    const/16 v1, 0x16

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JM;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0xd

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JM;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39977
    .end local p1    # "sp":Landroid/content/SharedPreferences;
    .end local v0    # "value":I
    :cond_2
    monitor-exit v5

    .line 39978
    return-void

    .line 39979
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

    .line 39980
    .local p0, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A02()Lcom/facebook/ads/redexgen/X/8G;

    move-result-object p0

    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/8G;->A4T()Ljava/util/Map;

    move-result-object p0

    .line 39981
    .local p0, "shortEvnData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 39982
    return-void
.end method

.method public static A08(DI)Z
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 39983
    const/4 v4, 0x1

    if-lez p2, :cond_1

    .line 39984
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

    .line 39985
    :cond_1
    return v4
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/8D;)Z
    .locals 3

    .line 39986
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39987
    const/4 v0, 0x0

    return v0

    .line 39988
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J6;->A0V(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 39989
    const/4 v0, 0x1

    return v0

    .line 39990
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A00()D

    move-result-wide v1

    .line 39991
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J6;->A0C(Landroid/content/Context;)I

    move-result v0

    .line 39992
    invoke-static {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/JM;->A08(DI)Z

    move-result v0

    return v0
.end method
