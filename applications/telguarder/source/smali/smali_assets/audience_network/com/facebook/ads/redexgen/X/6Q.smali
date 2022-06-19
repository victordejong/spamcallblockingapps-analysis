.class public final Lcom/facebook/ads/redexgen/X/6Q;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A08:Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:Landroid/content/Context;

.field public final A02:Lcom/facebook/ads/redexgen/X/5v;

.field public final A03:Lcom/facebook/ads/redexgen/X/6C;

.field public final A04:Lcom/facebook/ads/redexgen/X/Zv;

.field public final A05:Lcom/facebook/ads/redexgen/X/Zu;

.field public final A06:Lcom/facebook/ads/redexgen/X/Zt;

.field public final A07:Lcom/facebook/ads/redexgen/X/6x;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 14785
    const-class v0, Lcom/facebook/ads/redexgen/X/6Q;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/6Q;->A08:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V
    .locals 3

    .line 14786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14787
    new-instance v1, Lcom/facebook/ads/redexgen/X/6W;

    invoke-direct {v1, p1, p2}, Lcom/facebook/ads/redexgen/X/6W;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/6U;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/6U;-><init>(Lcom/facebook/ads/redexgen/X/6W;)V

    .line 14788
    .local p0, "signalLibrary":Lcom/facebook/ads/redexgen/X/6U;
    new-instance v2, Lcom/facebook/ads/redexgen/X/6T;

    invoke-direct {v2, p1, v0, p2}, Lcom/facebook/ads/redexgen/X/6T;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/6U;Lcom/facebook/ads/redexgen/X/5v;)V

    .line 14789
    .local p1, "signalConfigParser":Lcom/facebook/ads/redexgen/X/6T;
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6Q;->A01:Landroid/content/Context;

    .line 14790
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/6T;->A0B()Lcom/facebook/ads/redexgen/X/Zu;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A05:Lcom/facebook/ads/redexgen/X/Zu;

    .line 14791
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/6T;->A0C()Lcom/facebook/ads/redexgen/X/Zt;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A06:Lcom/facebook/ads/redexgen/X/Zt;

    .line 14792
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/6T;->A0A()Lcom/facebook/ads/redexgen/X/Zv;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A04:Lcom/facebook/ads/redexgen/X/Zv;

    .line 14793
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/6T;->A09()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A00:I

    .line 14794
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/6Q;->A02:Lcom/facebook/ads/redexgen/X/5v;

    .line 14795
    new-instance v0, Lcom/facebook/ads/redexgen/X/6C;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/6C;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A03:Lcom/facebook/ads/redexgen/X/6C;

    .line 14796
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6Q;->A03:Lcom/facebook/ads/redexgen/X/6C;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A04:Lcom/facebook/ads/redexgen/X/Zv;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6C;->A01(Lcom/facebook/ads/redexgen/X/6M;)V

    .line 14797
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/6T;->A0D()Lcom/facebook/ads/redexgen/X/6x;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A07:Lcom/facebook/ads/redexgen/X/6x;

    .line 14798
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A07:Lcom/facebook/ads/redexgen/X/6x;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6x;->A04()V

    .line 14799
    return-void
.end method

.method public static A00()Lorg/json/JSONObject;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-android.util.Log.e",
            "CatchGeneralException"
        }
    .end annotation

    .line 14800
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 14801
    .local v6, "jsonSignalObject":Lorg/json/JSONObject;
    invoke-static {}, Lcom/facebook/ads/redexgen/X/6g;->A01()Lcom/facebook/ads/redexgen/X/6g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->A04()Ljava/util/Map;

    move-result-object v7

    .line 14802
    .local v0, "signalCollectionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/facebook/ads/internal/botdetection/interval/buffer/CircularBuffer<Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/SignalValueTypeDef;>;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14803
    :cond_0
    return-object v6

    .line 14804
    :cond_1
    :try_start_0
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 14805
    .local v7, "keyset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 14806
    .local v0, "key":Ljava/lang/Integer;
    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/60;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/60;->A03()Ljava/util/List;

    move-result-object v0

    .line 14807
    .local v5, "listOfValue":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/SignalValueTypeDef;>;"
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 14808
    .local v0, "jsonArray":Lorg/json/JSONArray;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/6t;

    .line 14809
    .local v4, "signalValueTypeDef":Lcom/facebook/ads/redexgen/X/6t;
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6t;->A07(Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 14810
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14811
    :catchall_0
    move-exception v0

    .line 14812
    .local v7, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/67;->A03(Ljava/lang/Throwable;)V

    .line 14813
    .end local v7    # "t":Ljava/lang/Throwable;
    :cond_3
    return-object v6
.end method

.method private A01(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/6f;Lcom/facebook/ads/redexgen/X/6j;)V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-java.lang.System.currentTimeMillis"
        }
    .end annotation

    .line 14814
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A02:Lcom/facebook/ads/redexgen/X/5v;

    .line 14815
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5v;->A0Z()Lcom/facebook/ads/redexgen/X/65;

    move-result-object v4

    .line 14816
    .local p0, "bdSignalDataLoggingDelegate":Lcom/facebook/ads/redexgen/X/65;
    move-object v6, p1

    if-eqz v4, :cond_0

    .line 14817
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    div-long/2addr v2, v0

    long-to-int v9, v2

    .line 14818
    .local v9, "sessionEndTime":I
    invoke-static {}, Lcom/facebook/ads/redexgen/X/72;->A05()Ljava/lang/String;

    move-result-object v5

    iget v7, p0, Lcom/facebook/ads/redexgen/X/6Q;->A00:I

    .line 14819
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/6f;->A04()I

    move-result v8

    .line 14820
    invoke-static {}, Lcom/facebook/ads/redexgen/X/6Q;->A00()Lorg/json/JSONObject;

    move-result-object v10

    .line 14821
    move-object v11, p3

    invoke-interface/range {v4 .. v11}, Lcom/facebook/ads/redexgen/X/65;->A8p(Ljava/lang/String;Ljava/lang/String;IIILorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/6j;)V

    .line 14822
    .end local v9    # "sessionEndTime":I
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6Q;->A02:Lcom/facebook/ads/redexgen/X/5v;

    sget-object v0, Lcom/facebook/ads/redexgen/X/62;->A07:Lcom/facebook/ads/redexgen/X/62;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/62;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v6}, Lcom/facebook/ads/redexgen/X/72;->A0C(Lcom/facebook/ads/redexgen/X/5v;Ljava/lang/String;Ljava/lang/String;)V

    .line 14823
    return-void
.end method


# virtual methods
.method public final A02()V
    .locals 1

    .line 14824
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A03:Lcom/facebook/ads/redexgen/X/6C;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6C;->A00()V

    .line 14825
    return-void
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/6f;)V
    .locals 2

    .line 14826
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6Q;->A04:Lcom/facebook/ads/redexgen/X/Zv;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A01:Landroid/content/Context;

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Zv;->A04(Lcom/facebook/ads/redexgen/X/6f;Landroid/content/Context;)V

    .line 14827
    return-void
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/6h;Lcom/facebook/ads/redexgen/X/6f;Ljava/lang/String;)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 14828
    sget-object v0, Lcom/facebook/ads/redexgen/X/6j;->A04:Lcom/facebook/ads/redexgen/X/6j;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/6Q;->A05(Lcom/facebook/ads/redexgen/X/6h;Lcom/facebook/ads/redexgen/X/6f;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/6j;)V

    .line 14829
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/6h;Lcom/facebook/ads/redexgen/X/6f;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/6j;)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 14830
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A05:Lcom/facebook/ads/redexgen/X/Zu;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/Zu;->A05(Lcom/facebook/ads/redexgen/X/6f;)V

    .line 14831
    sget-object v0, Lcom/facebook/ads/redexgen/X/6h;->A02:Lcom/facebook/ads/redexgen/X/6h;

    if-ne p1, v0, :cond_0

    .line 14832
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A06:Lcom/facebook/ads/redexgen/X/Zt;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/Zt;->A04(Lcom/facebook/ads/redexgen/X/6f;)V

    .line 14833
    if-eqz p3, :cond_0

    .line 14834
    invoke-direct {p0, p3, p2, p4}, Lcom/facebook/ads/redexgen/X/6Q;->A01(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/6f;Lcom/facebook/ads/redexgen/X/6j;)V

    .line 14835
    :cond_0
    return-void
.end method

.method public final A06()Z
    .locals 1

    .line 14836
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A05:Lcom/facebook/ads/redexgen/X/Zu;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zu;->A03()Ljava/util/List;

    move-result-object v0

    .line 14837
    .local p0, "dynamicSignalList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/botdetection/signals/model/BDSignal;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
