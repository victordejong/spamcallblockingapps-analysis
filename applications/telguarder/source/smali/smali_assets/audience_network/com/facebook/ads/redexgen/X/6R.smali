.class public abstract Lcom/facebook/ads/redexgen/X/6R;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:Landroid/content/Context;

.field public final A01:Lcom/facebook/ads/redexgen/X/5v;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/6R;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V
    .locals 0

    .line 14838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14839
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6R;->A00:Landroid/content/Context;

    .line 14840
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/6R;->A01:Lcom/facebook/ads/redexgen/X/5v;

    .line 14841
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/5v;Lcom/facebook/ads/redexgen/X/6b;)I
    .locals 4

    .line 14842
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/6b;->A01()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/5v;->A0f(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14843
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/6b;->A01()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/5v;->A0f(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 14844
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/6b;->A04()Ljava/util/EnumSet;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/6i;->A0B:Lcom/facebook/ads/redexgen/X/6i;

    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14845
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/5v;->A0T()I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/6R;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 14846
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/6b;->A04()Ljava/util/EnumSet;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/6R;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/6R;->A02:[Ljava/lang/String;

    const-string v1, "VyelOAwpXSCJRi2TwIVPf7v0h12KNHAH"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return v3

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/6R;->A02:[Ljava/lang/String;

    const-string v1, "CSVmx4YjU1c4s4"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "LCQZkbwTCICBik"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/6i;->A08:Lcom/facebook/ads/redexgen/X/6i;

    invoke-virtual {v3, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14847
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/5v;->A0S()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/6R;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/6R;->A02:[Ljava/lang/String;

    const-string v1, "6UVFiQppNnKXvb6m8AyQmZTt3MjfZFjm"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return v3

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/6R;->A02:[Ljava/lang/String;

    const-string v1, "dKFP1DNdMVA4JW"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "CO3VWn9VlhcbOo"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3

    .line 14848
    :cond_5
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/5v;->A0W()I

    move-result v0

    return v0
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "MGIyL3hsI72hPb"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "o6xzGV5spF3yEWn0cbYsWCpxF16ug3IV"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ElCx5voyn"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "bWPBGRejWbuMp1"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "3MULQUyWukOQ6loBEbl8K41T9mAX3VWJ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "E5Ux086a1sDeCNOBcJIdEzkgRqth"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "fmlQj7soD"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "9R3il7CbfTgaHW3E4QzzulxNFhjKHNDl"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/6R;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final declared-synchronized A02(Lcom/facebook/ads/redexgen/X/6f;Ljava/util/List;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/6f;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/6b;",
            ">;)V"
        }
    .end annotation

    .local v0, "signalList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/botdetection/signals/model/BDSignal;>;"
    monitor-enter p0

    .line 14849
    :try_start_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/6g;->A01()Lcom/facebook/ads/redexgen/X/6g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->A04()Ljava/util/Map;

    move-result-object v4

    .line 14850
    .local p0, "signalCollectionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/facebook/ads/internal/botdetection/interval/buffer/CircularBuffer<Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/SignalValueTypeDef;>;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/6b;

    .line 14851
    .local p2, "signal":Lcom/facebook/ads/redexgen/X/6b;
    invoke-virtual {v6, p1}, Lcom/facebook/ads/redexgen/X/6b;->A03(Lcom/facebook/ads/redexgen/X/6f;)Lcom/facebook/ads/redexgen/X/6e;

    move-result-object v0

    .line 14852
    .local v0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    if-nez v0, :cond_1

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14853
    :cond_1
    :try_start_1
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/6e;->A5D()Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v5

    goto :goto_1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14854
    .end local v4
    :catchall_0
    move-exception v1

    .line 14855
    .local v4, "t":Ljava/lang/Throwable;
    :try_start_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6R;->A00:Landroid/content/Context;

    .line 14856
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/72;->A04(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/X1;

    move-result-object v5

    .line 14857
    .local v4, "newSignalValueTypeDef":Lcom/facebook/ads/redexgen/X/6t;
    :goto_1
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/6t;->A06()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 14858
    :cond_2
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/6b;->A04()Ljava/util/EnumSet;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/6i;->A0B:Lcom/facebook/ads/redexgen/X/6i;

    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14859
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/6b;->A01()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14860
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/6b;->A01()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/60;

    .line 14861
    .local v7, "signalValueCircularBuffer":Lcom/facebook/ads/redexgen/X/60;, "Lcom/facebook/ads/internal/botdetection/interval/buffer/CircularBuffer<Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/SignalValueTypeDef;>;"
    if-eqz v3, :cond_3

    .line 14862
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/60;->A02()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/6t;

    goto :goto_2

    .line 14863
    .end local v5
    :cond_3
    const/4 v1, 0x0

    .line 14864
    .local v0, "lastSignalValueTypeDef":Lcom/facebook/ads/redexgen/X/6t;
    :goto_2
    if-nez v3, :cond_4

    .line 14865
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6R;->A01:Lcom/facebook/ads/redexgen/X/5v;

    .line 14866
    invoke-direct {p0, v0, v6}, Lcom/facebook/ads/redexgen/X/6R;->A00(Lcom/facebook/ads/redexgen/X/5v;Lcom/facebook/ads/redexgen/X/6b;)I

    move-result v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/60;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/60;-><init>(I)V

    .line 14867
    :cond_4
    if-eqz v1, :cond_5

    .line 14868
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/6b;->A04()Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/6t;->A08(Lcom/facebook/ads/redexgen/X/6t;Ljava/util/EnumSet;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14869
    :cond_5
    invoke-virtual {v3, v5}, Lcom/facebook/ads/redexgen/X/60;->A04(Ljava/lang/Object;)V

    .line 14870
    invoke-static {}, Lcom/facebook/ads/redexgen/X/6g;->A01()Lcom/facebook/ads/redexgen/X/6g;

    move-result-object v2

    .line 14871
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/6b;->A01()I

    move-result v1

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/6t;->A05()I

    move-result v0

    invoke-virtual {v2, v1, v3, v0}, Lcom/facebook/ads/redexgen/X/6g;->A05(ILcom/facebook/ads/redexgen/X/60;I)V

    goto/16 :goto_0

    .line 14872
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6R;->A01:Lcom/facebook/ads/redexgen/X/5v;

    .line 14873
    invoke-direct {p0, v0, v6}, Lcom/facebook/ads/redexgen/X/6R;->A00(Lcom/facebook/ads/redexgen/X/5v;Lcom/facebook/ads/redexgen/X/6b;)I

    move-result v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/60;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/60;-><init>(I)V

    .line 14874
    .restart local v7    # "signalValueCircularBuffer":Lcom/facebook/ads/redexgen/X/60;, "Lcom/facebook/ads/internal/botdetection/interval/buffer/CircularBuffer<Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/SignalValueTypeDef;>;"
    invoke-virtual {v3, v5}, Lcom/facebook/ads/redexgen/X/60;->A04(Ljava/lang/Object;)V

    .line 14875
    invoke-static {}, Lcom/facebook/ads/redexgen/X/6g;->A01()Lcom/facebook/ads/redexgen/X/6g;

    move-result-object v2

    .line 14876
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/6b;->A01()I

    move-result v1

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/6t;->A05()I

    move-result v0

    invoke-virtual {v2, v1, v3, v0}, Lcom/facebook/ads/redexgen/X/6g;->A05(ILcom/facebook/ads/redexgen/X/60;I)V

    goto/16 :goto_0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14877
    :cond_7
    monitor-exit p0

    return-void

    .line 14878
    .end local p0    # "signalCollectionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/facebook/ads/internal/botdetection/interval/buffer/CircularBuffer<Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/SignalValueTypeDef;>;>;"
    .end local v1
    .end local v0    # "lastSignalValueTypeDef":Lcom/facebook/ads/redexgen/X/6t;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
