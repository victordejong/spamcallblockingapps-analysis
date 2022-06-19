.class public abstract Lcom/facebook/ads/redexgen/X/Vr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/BZ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lcom/facebook/ads/redexgen/X/Vt;",
        "O:",
        "Lcom/facebook/ads/redexgen/X/Vs;",
        "E:",
        "Ljava/lang/Exception;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/BZ<",
        "TI;TO;TE;>;"
    }
.end annotation


# static fields
.field public static A0D:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/redexgen/X/Vt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field public A04:Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public A05:Z

.field public A06:Z

.field public final A07:Ljava/lang/Object;

.field public final A08:Ljava/lang/Thread;

.field public final A09:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TI;>;"
        }
    .end annotation
.end field

.field public final A0A:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final A0B:[Lcom/facebook/ads/redexgen/X/Vt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TI;"
        }
    .end annotation
.end field

.field public final A0C:[Lcom/facebook/ads/redexgen/X/Vs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TO;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vr;->A0O()V

    return-void
.end method

.method public constructor <init>([Lcom/facebook/ads/redexgen/X/Vt;[Lcom/facebook/ads/redexgen/X/Vs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TI;[TO;)V"
        }
    .end annotation

    .line 61910
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Vr;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local v0, "inputBuffers":[Lcom/facebook/ads/redexgen/X/Vt;, "[TI;"
    .local v0, "outputBuffers":[Lcom/facebook/ads/redexgen/X/Vs;, "[TO;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61911
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A07:Ljava/lang/Object;

    .line 61912
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A09:Ljava/util/ArrayDeque;

    .line 61913
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A0A:Ljava/util/ArrayDeque;

    .line 61914
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vr;->A0B:[Lcom/facebook/ads/redexgen/X/Vt;

    .line 61915
    array-length v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A00:I

    .line 61916
    const/4 v2, 0x0

    .local p0, "i":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A00:I

    if-ge v2, v0, :cond_0

    .line 61917
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vr;->A0B:[Lcom/facebook/ads/redexgen/X/Vt;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Vr;->A0V()Lcom/facebook/ads/redexgen/X/Vt;

    move-result-object v0

    aput-object v0, v1, v2

    .line 61918
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61919
    .end local p0    # "i":I
    :cond_0
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Vr;->A0C:[Lcom/facebook/ads/redexgen/X/Vs;

    .line 61920
    array-length v0, p2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A01:I

    .line 61921
    const/4 v2, 0x0

    .restart local p0    # "i":I
    :goto_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A01:I

    if-ge v2, v0, :cond_1

    .line 61922
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vr;->A0C:[Lcom/facebook/ads/redexgen/X/Vs;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Vr;->A0X()Lcom/facebook/ads/redexgen/X/Vs;

    move-result-object v0

    aput-object v0, v1, v2

    .line 61923
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 61924
    .end local p0    # "i":I
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/Bc;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Bc;-><init>(Lcom/facebook/ads/redexgen/X/Vr;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A08:Ljava/lang/Thread;

    .line 61925
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A08:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 61926
    return-void
.end method

.method private A0L()V
    .locals 1

    .line 61927
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Vr;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vr;->A0S()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61928
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A07:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 61929
    :cond_0
    return-void
.end method

.method private A0M()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 61930
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Vr;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A04:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 61931
    return-void

    .line 61932
    :cond_0
    throw v0
.end method

.method private A0N()V
    .locals 2

    .line 61933
    .local v1, "this":Lcom/facebook/ads/redexgen/X/Vr;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vr;->A0T()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 61934
    :cond_0
    return-void
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61935
    :catch_0
    move-exception v1

    .line 61936
    .local p0, "e":Ljava/lang/InterruptedException;
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static A0O()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ZqaHLLh6aCtZEqWnIviI6knN7tFIeGwe"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "VzMATYAcUchroC4lr6D3rtlkB7RhDvzA"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "WJkCxxnzdKTn0nrahUBVRDmjAHYMkful"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ddjAzOIOXJwrVfCw998VLmGTYuGF"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "bLFwQfUgkXglgoG15WPa2ZWBKya"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "uiLhjUQSEHRq9qqZ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "zU5qn"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ZHrH6L5bKUoyayUGfb1Fg60NArV7AJSl"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vr;->A0D:[Ljava/lang/String;

    return-void
.end method

.method private A0P(Lcom/facebook/ads/redexgen/X/Vt;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    .line 61937
    .local v1, "this":Lcom/facebook/ads/redexgen/X/Vr;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local v0, "inputBuffer":Lcom/facebook/ads/redexgen/X/Vt;, "TI;"
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Vt;->A07()V

    .line 61938
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Vr;->A0B:[Lcom/facebook/ads/redexgen/X/Vt;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vr;->A00:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A00:I

    aput-object p1, v2, v1

    .line 61939
    return-void
.end method

.method private A0Q(Lcom/facebook/ads/redexgen/X/Vs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 61940
    .local v1, "this":Lcom/facebook/ads/redexgen/X/Vr;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local v0, "outputBuffer":Lcom/facebook/ads/redexgen/X/Vs;, "TO;"
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/BV;->A07()V

    .line 61941
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Vr;->A0C:[Lcom/facebook/ads/redexgen/X/Vs;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vr;->A01:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A01:I

    aput-object p1, v2, v1

    .line 61942
    return-void
.end method

.method public static synthetic A0R(Lcom/facebook/ads/redexgen/X/Vr;)V
    .locals 0

    .line 61943
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vr;->A0N()V

    return-void
.end method

.method private A0S()Z
    .locals 4

    .line 61944
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Vr;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A09:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Vr;->A01:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vr;->A0D:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vr;->A0D:[Ljava/lang/String;

    const-string v1, "xaPT90B1z2C93mt7YN7cuYecRJuq"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "eHbznqVoIDKAJrvVehMRdO0RFec"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-lez v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0T()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61945
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Vr;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Vr;->A07:Ljava/lang/Object;

    monitor-enter v2

    .line 61946
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A06:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vr;->A0S()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61947
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A07:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 61948
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A06:Z

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    .line 61949
    monitor-exit v2

    return v5

    .line 61950
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A09:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/Vt;

    .line 61951
    .local v2, "inputBuffer":Lcom/facebook/ads/redexgen/X/Vt;, "TI;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vr;->A0C:[Lcom/facebook/ads/redexgen/X/Vs;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A01:I

    const/4 v7, 0x1

    sub-int/2addr v0, v7

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A01:I

    aget-object v3, v1, v0

    .line 61952
    .local v0, "outputBuffer":Lcom/facebook/ads/redexgen/X/Vs;, "TO;"
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Vr;->A05:Z

    .line 61953
    .local v0, "resetDecoder":Z
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/Vr;->A05:Z

    .line 61954
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 61955
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/BV;->A04()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61956
    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/BV;->A00(I)V

    .line 61957
    :cond_2
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Vr;->A07:Ljava/lang/Object;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vr;->A0D:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 61958
    :cond_3
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/BV;->A03()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 61959
    const/high16 v0, -0x80000000

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/BV;->A00(I)V

    .line 61960
    :cond_4
    :try_start_1
    invoke-virtual {p0, v4, v3, v1}, Lcom/facebook/ads/redexgen/X/Vr;->A0Y(Lcom/facebook/ads/redexgen/X/Vt;Lcom/facebook/ads/redexgen/X/Vs;Z)Ljava/lang/Exception;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A04:Ljava/lang/Exception;

    goto :goto_1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    .line 61961
    :catch_0
    move-exception v0

    .line 61962
    .local p0, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Vr;->A0Z(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A04:Ljava/lang/Exception;

    goto :goto_1

    .line 61963
    .end local p0    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 61964
    .local p0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Vr;->A0Z(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A04:Ljava/lang/Exception;

    .line 61965
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A04:Ljava/lang/Exception;

    if-eqz v0, :cond_2

    .line 61966
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vr;->A07:Ljava/lang/Object;

    monitor-enter v1

    goto :goto_4

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vr;->A0D:[Ljava/lang/String;

    const-string v1, "7wS9KjIfl5mafteo"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    monitor-enter v6

    .line 61967
    :try_start_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A05:Z

    if-eqz v0, :cond_6

    .line 61968
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Vr;->A0Q(Lcom/facebook/ads/redexgen/X/Vs;)V

    .line 61969
    :goto_2
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/Vr;->A0P(Lcom/facebook/ads/redexgen/X/Vt;)V

    .line 61970
    monitor-exit v6

    goto :goto_3

    .line 61971
    :cond_6
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/BV;->A03()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 61972
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A02:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A02:I

    .line 61973
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Vr;->A0Q(Lcom/facebook/ads/redexgen/X/Vs;)V

    goto :goto_2

    .line 61974
    :cond_7
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A02:I

    iput v0, v3, Lcom/facebook/ads/redexgen/X/Vs;->A00:I

    .line 61975
    iput v5, p0, Lcom/facebook/ads/redexgen/X/Vr;->A02:I

    .line 61976
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A0A:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_2

    .line 61977
    :goto_3
    return v7

    .line 61978
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 61979
    :goto_4
    :try_start_3
    monitor-exit v1

    .line 61980
    return v5

    .line 61981
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 61982
    .end local v2    # "inputBuffer":Lcom/facebook/ads/redexgen/X/Vt;, "TI;"
    .end local v0    # "resetDecoder":Z
    .end local v0
    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method


# virtual methods
.method public final A0U()Lcom/facebook/ads/redexgen/X/Vt;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 61983
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Vr;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Vr;->A07:Ljava/lang/Object;

    monitor-enter v3

    .line 61984
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vr;->A0M()V

    .line 61985
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A03:Lcom/facebook/ads/redexgen/X/Vt;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 61986
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A00:I

    if-nez v0, :cond_1

    .line 61987
    const/4 v0, 0x0

    goto :goto_1

    .line 61988
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vr;->A0B:[Lcom/facebook/ads/redexgen/X/Vt;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A00:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A00:I

    aget-object v0, v1, v0

    :goto_1
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A03:Lcom/facebook/ads/redexgen/X/Vt;

    .line 61989
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A03:Lcom/facebook/ads/redexgen/X/Vt;

    monitor-exit v3

    return-object v0

    .line 61990
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract A0V()Lcom/facebook/ads/redexgen/X/Vt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation
.end method

.method public final A0W()Lcom/facebook/ads/redexgen/X/Vs;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 61991
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Vr;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vr;->A07:Ljava/lang/Object;

    monitor-enter v1

    .line 61992
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vr;->A0M()V

    .line 61993
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A0A:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61994
    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    .line 61995
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A0A:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Vs;

    monitor-exit v1

    return-object v0

    .line 61996
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract A0X()Lcom/facebook/ads/redexgen/X/Vs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation
.end method

.method public abstract A0Y(Lcom/facebook/ads/redexgen/X/Vt;Lcom/facebook/ads/redexgen/X/Vs;Z)Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;TO;Z)TE;"
        }
    .end annotation
.end method

.method public abstract A0Z(Ljava/lang/Throwable;)Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")TE;"
        }
    .end annotation
.end method

.method public final A0a(I)V
    .locals 6

    .line 61997
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Vr;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vr;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A0B:[Lcom/facebook/ads/redexgen/X/Vt;

    array-length v0, v0

    const/4 v5, 0x0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 61998
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Vr;->A0B:[Lcom/facebook/ads/redexgen/X/Vt;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vr;->A0D:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 61999
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vr;->A0D:[Ljava/lang/String;

    const-string v1, "AzE4sehoJIazpsxXl4EihxdaZBhrcR5I"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "dXdmzd76n1VBBRieXv3zRNZebjQd2jor"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    array-length v3, v4

    .line 62000
    :goto_1
    if-ge v5, v3, :cond_3

    aget-object v0, v4, v5

    .line 62001
    .local v0, "inputBuffer":Lcom/facebook/ads/redexgen/X/Vt;, "TI;"
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Vt;->A09(I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vr;->A0D:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 62002
    .end local v0    # "inputBuffer":Lcom/facebook/ads/redexgen/X/Vt;, "TI;"
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vr;->A0D:[Ljava/lang/String;

    const-string v1, "D2SXrKSNyZWSOGpGg8mYvNfFk3uqhFOU"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "7BRZZ0LWQ9Pzz8zo6TMjYusgL8ncNq3f"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 62003
    :cond_3
    return-void
.end method

.method public final A0b(Lcom/facebook/ads/redexgen/X/Vt;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62004
    .local v1, "this":Lcom/facebook/ads/redexgen/X/Vr;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local v0, "inputBuffer":Lcom/facebook/ads/redexgen/X/Vt;, "TI;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vr;->A07:Ljava/lang/Object;

    monitor-enter v1

    .line 62005
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vr;->A0M()V

    .line 62006
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A03:Lcom/facebook/ads/redexgen/X/Vt;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 62007
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A09:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 62008
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vr;->A0L()V

    .line 62009
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A03:Lcom/facebook/ads/redexgen/X/Vt;

    .line 62010
    monitor-exit v1

    .line 62011
    return-void

    .line 62012
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public A0c(Lcom/facebook/ads/redexgen/X/Vs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 62013
    .local v1, "this":Lcom/facebook/ads/redexgen/X/Vr;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local v0, "outputBuffer":Lcom/facebook/ads/redexgen/X/Vs;, "TO;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vr;->A07:Ljava/lang/Object;

    monitor-enter v1

    .line 62014
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Vr;->A0Q(Lcom/facebook/ads/redexgen/X/Vs;)V

    .line 62015
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vr;->A0L()V

    .line 62016
    monitor-exit v1

    .line 62017
    return-void

    .line 62018
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final bridge synthetic A4h()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62019
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Vr;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Vr;->A0U()Lcom/facebook/ads/redexgen/X/Vt;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A4i()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62020
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Vr;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Vr;->A0W()Lcom/facebook/ads/redexgen/X/Vs;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic ACj(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62021
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Vr;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    check-cast p1, Lcom/facebook/ads/redexgen/X/Vt;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Vr;->A0b(Lcom/facebook/ads/redexgen/X/Vt;)V

    return-void
.end method

.method public final ACz()V
    .locals 2

    .line 62022
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Vr;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vr;->A07:Ljava/lang/Object;

    monitor-enter v1

    .line 62023
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A06:Z

    .line 62024
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A07:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 62025
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62026
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A08:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    goto :goto_0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 62027
    .local p0, "e":Ljava/lang/InterruptedException;
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 62028
    .end local p0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void

    .line 62029
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final flush()V
    .locals 2

    .line 62030
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Vr;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vr;->A07:Ljava/lang/Object;

    monitor-enter v1

    .line 62031
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A05:Z

    .line 62032
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A02:I

    .line 62033
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A03:Lcom/facebook/ads/redexgen/X/Vt;

    if-eqz v0, :cond_0

    .line 62034
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A03:Lcom/facebook/ads/redexgen/X/Vt;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Vr;->A0P(Lcom/facebook/ads/redexgen/X/Vt;)V

    .line 62035
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A03:Lcom/facebook/ads/redexgen/X/Vt;

    .line 62036
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A09:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 62037
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A09:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Vt;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Vr;->A0P(Lcom/facebook/ads/redexgen/X/Vt;)V

    goto :goto_0

    .line 62038
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A0A:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 62039
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vr;->A0A:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Vs;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Vr;->A0Q(Lcom/facebook/ads/redexgen/X/Vs;)V

    goto :goto_1

    .line 62040
    :cond_2
    monitor-exit v1

    .line 62041
    return-void

    .line 62042
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
