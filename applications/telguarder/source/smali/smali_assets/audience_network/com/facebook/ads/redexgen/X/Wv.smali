.class public final Lcom/facebook/ads/redexgen/X/Wv;
.super Lcom/facebook/ads/redexgen/X/6t;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/ads/redexgen/X/6t<",
        "Ljava/util/HashMap<",
        "TK;",
        "Lcom/facebook/ads/redexgen/X/6l;",
        ">;>;"
    }
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/6s;

.field public final A01:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TK;",
            "Lcom/facebook/ads/redexgen/X/6l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Wv;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Wv;->A02()V

    return-void
.end method

.method public constructor <init>(JLcom/facebook/ads/redexgen/X/6r;Ljava/util/HashMap;Lcom/facebook/ads/redexgen/X/6s;)V
    .locals 6
    .param p3    # Lcom/facebook/ads/redexgen/X/6r;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/facebook/ads/redexgen/X/6r;",
            "Ljava/util/HashMap<",
            "TK;",
            "Lcom/facebook/ads/redexgen/X/6l;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/6s;",
            ")V"
        }
    .end annotation

    .line 64726
    .local v5, "this":Lcom/facebook/ads/redexgen/X/Wv;, "Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/MapSignalValueType<TK;TV;>;"
    .local v3, "signalValue":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/IMapSignalValueDef;>;"
    sget-object v5, Lcom/facebook/ads/redexgen/X/6s;->A0B:Lcom/facebook/ads/redexgen/X/6s;

    move-object v0, p0

    move-object v4, p4

    move-object v3, p3

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/6t;-><init>(JLcom/facebook/ads/redexgen/X/6r;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/6s;)V

    .line 64727
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/Wv;->A01:Ljava/util/HashMap;

    .line 64728
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Wv;->A00:Lcom/facebook/ads/redexgen/X/6s;

    .line 64729
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wv;->A05()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64730
    return-void

    .line 64731
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private A00(Ljava/lang/Object;)I
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-java.lang.String.length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 64732
    .local v1, "this":Lcom/facebook/ads/redexgen/X/Wv;, "Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/MapSignalValueType<TK;TV;>;"
    .local v0, "element":Ljava/lang/Object;, "TK;"
    sget-object v1, Lcom/facebook/ads/redexgen/X/6n;->A00:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wv;->A00:Lcom/facebook/ads/redexgen/X/6s;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6s;->ordinal()I

    move-result v0

    aget v4, v1, v0

    const/4 v0, 0x1

    if-eq v4, v0, :cond_2

    const/4 v3, 0x2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wv;->A03:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wv;->A03:[Ljava/lang/String;

    const-string v1, "H"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_1

    .line 64733
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    return v0

    .line 64734
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 64735
    :cond_2
    const/4 v0, 0x4

    return v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wv;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x76

    int-to-byte v3, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wv;->A03:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wv;->A03:[Ljava/lang/String;

    const-string v1, "3AeWhrtE9YcBr7S8NzfdTjDomnNFuBQt"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "4kw997PDboRkAuSoaNgnZo5FNe4QvYvR"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    aput-byte v3, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Wv;->A02:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x74t
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "tplol77rLcWkWuSt9IqlssO6cW13e9Hn"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "EQkjml3lmiLjN4ZbEQdNsI"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "S"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "wqUI0u18MRiLRgDS4WNz"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "xI3Hj1tnyNkWj4Sjx5LAkMxbtbic192H"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "eb0C6Kgz4DMOpLU8CD1N8vYnkomHvv5b"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "oea7xagoaB0ZRIU3Z66Sa4NY"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Wv;->A03:[Ljava/lang/String;

    return-void
.end method

.method private A05()Z
    .locals 3

    .line 64736
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Wv;, "Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/MapSignalValueType<TK;TV;>;"
    sget-object v1, Lcom/facebook/ads/redexgen/X/6n;->A00:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wv;->A00:Lcom/facebook/ads/redexgen/X/6s;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6s;->ordinal()I

    move-result v0

    aget v2, v1, v0

    const/4 v1, 0x1

    if-eq v2, v1, :cond_0

    const/4 v0, 0x2

    if-eq v2, v0, :cond_0

    .line 64737
    const/4 v0, 0x0

    return v0

    .line 64738
    :cond_0
    return v1
.end method


# virtual methods
.method public final A09()I
    .locals 4

    .line 64739
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Wv;, "Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/MapSignalValueType<TK;TV;>;"
    const/4 v3, 0x0

    .line 64740
    .local p0, "size":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6t;->A06()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6t;->A06()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64741
    .end local v3
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/Wv;, "Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/MapSignalValueType<TK;TV;>;"
    :cond_0
    return v3

    .line 64742
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6t;->A06()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 64743
    .local v3, "signalValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/IMapSignalValueDef;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 64744
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/IMapSignalValueDef;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64745
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 64746
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/IMapSignalValueDef;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Wv;->A00(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v3, v0

    .line 64747
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/6l;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/6l;->AE0()I

    move-result v0

    add-int/2addr v3, v0

    .line 64748
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/IMapSignalValueDef;>;"
    goto :goto_0

    .line 64749
    :cond_2
    return v3
.end method

.method public final A0A(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 64750
    .local v6, "this":Lcom/facebook/ads/redexgen/X/Wv;, "Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/MapSignalValueType<TK;TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wv;->A01:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 64751
    .local p0, "keys":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 64752
    .local p1, "mapJsonObject":Lorg/json/JSONObject;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 64753
    .local v0, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wv;->A01:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wv;->A03:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xe

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wv;->A03:[Ljava/lang/String;

    const-string v1, "D4TdcBqyKbceNTSdxCX9c8Xls5top0TX"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/6l;

    .line 64754
    .local v4, "mapSignalValueDef":Lcom/facebook/ads/redexgen/X/6l;
    if-eqz v3, :cond_0

    .line 64755
    invoke-interface {v3, v5, v4}, Lcom/facebook/ads/redexgen/X/6l;->AEM(Ljava/lang/Object;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 64756
    :cond_2
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64757
    return-object p1
.end method

.method public final A0B(Lcom/facebook/ads/redexgen/X/6t;)Z
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Nullable Dereference"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/6t<",
            "Ljava/util/HashMap<",
            "TK;",
            "Lcom/facebook/ads/redexgen/X/6l;",
            ">;>;)Z"
        }
    .end annotation

    .line 64758
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Wv;, "Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/MapSignalValueType<TK;TV;>;"
    .local v0, "newSignalValueTypeDef":Lcom/facebook/ads/redexgen/X/6t;, "Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/SignalValueTypeDef<Ljava/util/HashMap<TK;Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/IMapSignalValueDef;>;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6t;->A06()Ljava/lang/Object;

    move-result-object v0

    const/4 v11, 0x1

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/6t;->A06()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 64759
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Wv;
    .end local v11
    .end local v10
    .end local v0    # "newSignalValueTypeDef":Lcom/facebook/ads/redexgen/X/6t;, "Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/SignalValueTypeDef<Ljava/util/HashMap<TK;Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/IMapSignalValueDef;>;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6t;->A06()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/6t;->A06()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return v11

    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 64760
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/6t;->A06()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6t;->A06()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eq v1, v0, :cond_3

    .line 64761
    return v10

    .line 64762
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/6t;->A06()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 64763
    .local p0, "newSignalValue":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/IMapSignalValueDef;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6t;->A06()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 64764
    .local v11, "prevSignalValue":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/IMapSignalValueDef;>;"
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 64765
    .local v10, "newSignalValueKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 64766
    .local v0, "prevSignalValueKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 64767
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 64768
    .local v0, "newSignalValueKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 64769
    .local v0, "prevSignalValueKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wv;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wv;->A03:[Ljava/lang/String;

    const-string v1, "KSFCE8GRUClIWsLMiS7M1xmR"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_6

    .line 64770
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 64771
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 64772
    .end local v0    # "prevSignalValueKey":Ljava/lang/Object;, "TK;"
    .end local v0
    :cond_6
    return v10

    .line 64773
    :cond_7
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/6l;

    .line 64774
    .local v0, "newSignal":Lcom/facebook/ads/redexgen/X/6l;
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/6l;

    .line 64775
    .local v0, "prevSignal":Lcom/facebook/ads/redexgen/X/6l;
    if-eqz v1, :cond_8

    if-nez v0, :cond_a

    .line 64776
    .restart local v0    # "prevSignal":Lcom/facebook/ads/redexgen/X/6l;
    .restart local v0    # "prevSignal":Lcom/facebook/ads/redexgen/X/6l;
    .restart local v0    # "prevSignal":Lcom/facebook/ads/redexgen/X/6l;
    .restart local v0    # "prevSignal":Lcom/facebook/ads/redexgen/X/6l;
    :cond_8
    if-nez v1, :cond_9

    if-nez v0, :cond_9

    :goto_1
    return v11

    :cond_9
    const/4 v11, 0x0

    goto :goto_1

    .line 64777
    :cond_a
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/6l;->A82(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 64778
    return v10

    .line 64779
    .end local v0    # "prevSignal":Lcom/facebook/ads/redexgen/X/6l;
    .end local v0
    :cond_b
    return v11
.end method
