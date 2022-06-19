.class public final Lcom/facebook/ads/redexgen/X/6g;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A01:J

.field public static A02:Lcom/facebook/ads/redexgen/X/6g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/ads/redexgen/X/60<",
            "Lcom/facebook/ads/redexgen/X/6t;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 15546
    invoke-static {}, Lcom/facebook/ads/redexgen/X/6g;->A02()V

    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/6g;->A02:Lcom/facebook/ads/redexgen/X/6g;

    .line 15547
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/facebook/ads/redexgen/X/6g;->A01:J

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/ads/redexgen/X/60<",
            "Lcom/facebook/ads/redexgen/X/6t;",
            ">;>;)V"
        }
    .end annotation

    .line 15548
    .local p1, "signalCollectionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/facebook/ads/internal/botdetection/interval/buffer/CircularBuffer<Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/SignalValueTypeDef;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15549
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6g;->A00:Ljava/util/Map;

    .line 15550
    return-void
.end method

.method public static declared-synchronized A00()J
    .locals 3

    const-class v2, Lcom/facebook/ads/redexgen/X/6g;

    monitor-enter v2

    .line 15551
    :try_start_0
    sget-wide v0, Lcom/facebook/ads/redexgen/X/6g;->A01:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static A01()Lcom/facebook/ads/redexgen/X/6g;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .line 15552
    sget-object v0, Lcom/facebook/ads/redexgen/X/6g;->A02:Lcom/facebook/ads/redexgen/X/6g;

    if-nez v0, :cond_0

    .line 15553
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 15554
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/6g;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/6g;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/6g;->A02:Lcom/facebook/ads/redexgen/X/6g;

    .line 15555
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/6g;->A02:Lcom/facebook/ads/redexgen/X/6g;

    return-object v0
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "0WDYHg1PPdMkYUDGiFMYxPMualwO6ehf"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "4gvT6zjbgY10hOVPwtjVK5oLjMjEPu2N"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "10xuI68amGMSZUXkVpMZHNXg6CYBlnbI"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "1vRarEMiNbWJDum3tl4Jmg3rRZFTxLM8"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ma42DeqJItCvGaZbWwWQg63SI4qUK2GC"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "rfF5x2QtrtRbzCqQ6P7UMni6uI3m30la"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Eu7CWO6eIqSvzMNw87JI007qsC3v3lse"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ZwccTa77LawKVYwcY7ARtlnJiTqN1DCZ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/6g;->A03:[Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized A03(Lcom/facebook/ads/redexgen/X/60;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/60<",
            "Lcom/facebook/ads/redexgen/X/6t;",
            ">;I)V"
        }
    .end annotation

    .local v0, "signalCollectedValues":Lcom/facebook/ads/redexgen/X/60;, "Lcom/facebook/ads/internal/botdetection/interval/buffer/CircularBuffer<Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/SignalValueTypeDef;>;"
    monitor-enter p0

    .line 15556
    const/4 v0, 0x0

    .line 15557
    .local p0, "removedObjectSize":I
    const/4 v4, 0x0

    .line 15558
    .local p1, "isObjectRemoved":Z
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/60;->A00()I

    move-result v1

    if-nez v1, :cond_0

    .line 15559
    const/4 v4, 0x1

    .line 15560
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/60;->A01()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/6t;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6t;->A05()I

    move-result v0

    .line 15561
    .end local v0    # "signalCollectedValues":Lcom/facebook/ads/redexgen/X/60;, "Lcom/facebook/ads/internal/botdetection/interval/buffer/CircularBuffer<Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/SignalValueTypeDef;>;"
    :cond_0
    sub-int/2addr p2, v0

    .line 15562
    .local p2, "updatedSize":I
    sget-wide v2, Lcom/facebook/ads/redexgen/X/6g;->A01:J

    if-eqz v4, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    :goto_0
    add-int/2addr v0, p2

    int-to-long v0, v0

    add-long/2addr v2, v0

    sput-wide v2, Lcom/facebook/ads/redexgen/X/6g;->A01:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15563
    monitor-exit p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/6g;->A03:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6d

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/6g;->A03:[Ljava/lang/String;

    const-string v1, "NAQYs54CprbmkDmKeDhpgvGYkll7p3LH"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void

    .line 15564
    .end local p0    # "removedObjectSize":I
    .end local p1    # "isObjectRemoved":Z
    .end local p2    # "updatedSize":I
    .end local v0
    .end local p2
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final A04()Ljava/util/Map;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PublicMethodReturnMutableCollection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/ads/redexgen/X/60<",
            "Lcom/facebook/ads/redexgen/X/6t;",
            ">;>;"
        }
    .end annotation

    .line 15565
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A00:Ljava/util/Map;

    return-object v0
.end method

.method public final declared-synchronized A05(ILcom/facebook/ads/redexgen/X/60;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/ads/redexgen/X/60<",
            "Lcom/facebook/ads/redexgen/X/6t;",
            ">;I)V"
        }
    .end annotation

    .local v1, "signalCollectedValues":Lcom/facebook/ads/redexgen/X/60;, "Lcom/facebook/ads/internal/botdetection/interval/buffer/CircularBuffer<Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/SignalValueTypeDef;>;"
    monitor-enter p0

    .line 15566
    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6g;->A00:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15567
    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/6g;->A03(Lcom/facebook/ads/redexgen/X/60;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15568
    monitor-exit p0

    return-void

    .line 15569
    .end local p2    # null:Lcom/facebook/ads/redexgen/X/60;
    .end local p3    # null:I
    .end local v1    # "signalCollectedValues":Lcom/facebook/ads/redexgen/X/60;, "Lcom/facebook/ads/internal/botdetection/interval/buffer/CircularBuffer<Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/SignalValueTypeDef;>;"
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
