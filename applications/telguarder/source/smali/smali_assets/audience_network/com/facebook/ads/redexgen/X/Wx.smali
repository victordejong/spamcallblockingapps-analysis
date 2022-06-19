.class public final Lcom/facebook/ads/redexgen/X/Wx;
.super Lcom/facebook/ads/redexgen/X/6t;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/ads/redexgen/X/6t<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/6s;

.field public final A01:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Wx;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Wx;->A02()V

    return-void
.end method

.method public constructor <init>(JLcom/facebook/ads/redexgen/X/6r;Ljava/util/List;Lcom/facebook/ads/redexgen/X/6s;)V
    .locals 6
    .param p3    # Lcom/facebook/ads/redexgen/X/6r;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/facebook/ads/redexgen/X/6r;",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/facebook/ads/redexgen/X/6s;",
            ")V"
        }
    .end annotation

    .line 64786
    .local v5, "this":Lcom/facebook/ads/redexgen/X/Wx;, "Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/ListSignalValueType<TT;>;"
    .local v3, "signalValue":Ljava/util/List;, "Ljava/util/List<TT;>;"
    sget-object v5, Lcom/facebook/ads/redexgen/X/6s;->A09:Lcom/facebook/ads/redexgen/X/6s;

    move-object v0, p0

    move-object v4, p4

    move-object v3, p3

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/6t;-><init>(JLcom/facebook/ads/redexgen/X/6r;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/6s;)V

    .line 64787
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/Wx;->A01:Ljava/util/List;

    .line 64788
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Wx;->A00:Lcom/facebook/ads/redexgen/X/6s;

    .line 64789
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wx;->A05()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64790
    return-void

    .line 64791
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private A00(Ljava/lang/Object;)I
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-java.lang.String.length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 64792
    .local v1, "this":Lcom/facebook/ads/redexgen/X/Wx;, "Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/ListSignalValueType<TT;>;"
    .local v0, "element":Ljava/lang/Object;, "TT;"
    sget-object v1, Lcom/facebook/ads/redexgen/X/6m;->A00:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wx;->A00:Lcom/facebook/ads/redexgen/X/6s;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6s;->ordinal()I

    move-result v0

    aget v1, v1, v0

    const/4 v0, 0x1

    if-eq v1, v0, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x3

    if-ne v1, v0, :cond_0

    .line 64793
    check-cast p1, Lcom/facebook/ads/redexgen/X/6k;

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/6k;->AE0()I

    move-result v0

    return v0

    .line 64794
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 64795
    :cond_1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    return v0

    .line 64796
    :cond_2
    const/4 v0, 0x4

    return v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wx;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3c

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
    .locals 4

    const/4 v3, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wx;->A03:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wx;->A03:[Ljava/lang/String;

    const-string v1, "417EOggvUwWhpdSa3djbq7RCdQ70NMIf"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "Iuuhx5nK63ubQHCHPUwPwGD63kCREHwH"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Wx;->A02:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        -0x34t
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "SPLTs8z43XdaLaNlqHBPqH1rkEHKG0Tw"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "LxTCAZWAYBYMr6Zh1X5MQjFbdwZIALtC"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "cfdccXrscY58eTeNMyUARdY8SZtDu1It"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "vzf3GAsRAG7EMAsW9W195WXdn6SRIDav"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "wYKDor7jHtVM66TsAQTRrQAM48uI"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "yTzNO5jheK4Hf4ebbdJlviE7j7x"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "kssgwtB4p4XbKaKWBHAmlvB619HuU8nV"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, ""

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Wx;->A03:[Ljava/lang/String;

    return-void
.end method

.method private A05()Z
    .locals 3

    .line 64797
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Wx;, "Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/ListSignalValueType<TT;>;"
    sget-object v1, Lcom/facebook/ads/redexgen/X/6m;->A00:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wx;->A00:Lcom/facebook/ads/redexgen/X/6s;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6s;->ordinal()I

    move-result v0

    aget v2, v1, v0

    const/4 v1, 0x1

    if-eq v2, v1, :cond_0

    const/4 v0, 0x2

    if-eq v2, v0, :cond_0

    const/4 v0, 0x3

    if-eq v2, v0, :cond_0

    .line 64798
    const/4 v0, 0x0

    return v0

    .line 64799
    :cond_0
    return v1
.end method


# virtual methods
.method public final A09()I
    .locals 6

    .line 64800
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Wx;, "Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/ListSignalValueType<TT;>;"
    const/4 v5, 0x0

    .line 64801
    .local p0, "size":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6t;->A06()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6t;->A06()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64802
    :cond_0
    return v5

    .line 64803
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6t;->A06()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 64804
    .local v0, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Wx;->A00(Ljava/lang/Object;)I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wx;->A03:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x76

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wx;->A03:[Ljava/lang/String;

    const-string v1, "gjJgkziYxe2by0CpuocpH3Uxc9p4K8Lm"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "KCnTzUBSHs2Zgr2P5NJhopFxHLMREfiU"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    add-int/2addr v5, v3

    .line 64805
    .end local v0    # "value":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 64806
    :cond_3
    return v5
.end method

.method public final A0A(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 64807
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Wx;, "Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/ListSignalValueType<TT;>;"
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 64808
    .local p0, "jsonArray":Lorg/json/JSONArray;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wx;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 64809
    .local v3, "item":Ljava/lang/Object;, "TT;"
    sget-object v1, Lcom/facebook/ads/redexgen/X/6m;->A00:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wx;->A00:Lcom/facebook/ads/redexgen/X/6s;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6s;->ordinal()I

    move-result v0

    aget v6, v1, v0

    const/4 v0, 0x1

    if-eq v6, v0, :cond_3

    const/4 v0, 0x2

    if-eq v6, v0, :cond_3

    const/4 v5, 0x3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wx;->A03:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x76

    if-eq v1, v0, :cond_0

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wx;->A03:[Ljava/lang/String;

    const-string v1, "gAdRkp4v6D1rEZdgOj28gj36QvpJDmrv"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eq v6, v5, :cond_1

    goto :goto_0

    .line 64810
    :cond_1
    check-cast v4, Lcom/facebook/ads/redexgen/X/6k;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wx;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x53

    if-eq v1, v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wx;->A03:[Ljava/lang/String;

    const-string v1, "rB62M80bU6nwx9wddi61g0GpSLRigfx2"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-interface {v4}, Lcom/facebook/ads/redexgen/X/6k;->AEL()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 64811
    goto :goto_0

    .line 64812
    :cond_3
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 64813
    :cond_4
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wx;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64814
    return-object p1
.end method

.method public final A0B(Lcom/facebook/ads/redexgen/X/6t;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/6t<",
            "Ljava/util/List<",
            "TT;>;>;)Z"
        }
    .end annotation

    .line 64815
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Wx;, "Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/ListSignalValueType<TT;>;"
    .local v1, "newSignalValueTypeDef":Lcom/facebook/ads/redexgen/X/6t;, "Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/SignalValueTypeDef<Ljava/util/List<TT;>;>;"
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/6t;->A06()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 64816
    .local p0, "newSignalValue":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6t;->A06()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 64817
    .local p1, "prevSignalValue":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v4, 0x1

    const/4 v11, 0x0

    if-eqz v5, :cond_0

    if-nez v6, :cond_2

    .line 64818
    :cond_0
    if-nez v5, :cond_1

    if-nez v6, :cond_1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 64819
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/6t;->A06()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6t;->A06()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v1, v0, :cond_3

    .line 64820
    return v11

    .line 64821
    :cond_3
    const/4 v3, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    .line 64822
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 64823
    .local v5, "newSignal":Ljava/lang/Object;, "TT;"
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 64824
    .local v4, "prevSignal":Ljava/lang/Object;, "TT;"
    sget-object v1, Lcom/facebook/ads/redexgen/X/6m;->A00:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wx;->A00:Lcom/facebook/ads/redexgen/X/6s;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6s;->ordinal()I

    move-result v0

    aget v8, v1, v0

    if-eq v8, v4, :cond_4

    const/4 v0, 0x2

    if-eq v8, v0, :cond_4

    const/4 v7, 0x3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wx;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x38

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 64825
    .end local v11
    :cond_4
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 64826
    return v11

    .line 64827
    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wx;->A03:[Ljava/lang/String;

    const-string v1, "PVJXl7i9igVvgtM2Ff25T91SWhRVy8QK"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eq v8, v7, :cond_7

    .line 64828
    .end local v5    # "newSignal":Ljava/lang/Object;, "TT;"
    .end local v4    # "prevSignal":Ljava/lang/Object;, "TT;"
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 64829
    :cond_7
    check-cast v10, Lcom/facebook/ads/redexgen/X/6k;

    .line 64830
    .local v11, "customObjectSignalValueDef":Lcom/facebook/ads/redexgen/X/6k;
    invoke-interface {v10, v9}, Lcom/facebook/ads/redexgen/X/6k;->A82(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 64831
    return v11

    .line 64832
    .end local v5
    :cond_8
    return v4
.end method
