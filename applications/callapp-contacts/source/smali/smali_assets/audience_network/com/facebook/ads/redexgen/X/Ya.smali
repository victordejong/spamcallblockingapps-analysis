.class public abstract Lcom/facebook/ads/redexgen/X/Ya;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/BZ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lcom/facebook/ads/redexgen/X/YY;",
        "O:",
        "Lcom/facebook/ads/redexgen/X/YZ;",
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

.field public A03:Lcom/facebook/ads/redexgen/X/YY;
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

.field public final A0B:[Lcom/facebook/ads/redexgen/X/YY;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TI;"
        }
    .end annotation
.end field

.field public final A0C:[Lcom/facebook/ads/redexgen/X/YZ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TO;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ya;->A0O()V

    return-void
.end method

.method public constructor <init>([Lcom/facebook/ads/redexgen/X/YY;[Lcom/facebook/ads/redexgen/X/YZ;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TI;[TO;)V"
        }
    .end annotation

    .line 60952
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Ya;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local v0, "inputBuffers":[Lcom/facebook/ads/redexgen/X/YY;, "[TI;"
    .local v0, "outputBuffers":[Lcom/facebook/ads/redexgen/X/YZ;, "[TO;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60953
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A07:Ljava/lang/Object;

    .line 60954
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A09:Ljava/util/ArrayDeque;

    .line 60955
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A0A:Ljava/util/ArrayDeque;

    .line 60956
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ya;->A0B:[Lcom/facebook/ads/redexgen/X/YY;

    .line 60957
    array-length v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A00:I

    .line 60958
    const/4 v2, 0x0

    .local p0, "i":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A00:I

    if-ge v2, v0, :cond_0

    .line 60959
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ya;->A0B:[Lcom/facebook/ads/redexgen/X/YY;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ya;->A0V()Lcom/facebook/ads/redexgen/X/YY;

    move-result-object v0

    aput-object v0, v1, v2

    .line 60960
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60961
    .end local p0    # "i":I
    :cond_0
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ya;->A0C:[Lcom/facebook/ads/redexgen/X/YZ;

    .line 60962
    array-length v0, p2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A01:I

    .line 60963
    const/4 v2, 0x0

    .restart local p0    # "i":I
    :goto_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A01:I

    if-ge v2, v0, :cond_1

    .line 60964
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ya;->A0C:[Lcom/facebook/ads/redexgen/X/YZ;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ya;->A0X()Lcom/facebook/ads/redexgen/X/YZ;

    move-result-object v0

    aput-object v0, v1, v2

    .line 60965
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 60966
    .end local p0    # "i":I
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/Bc;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Bc;-><init>(Lcom/facebook/ads/redexgen/X/Ya;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A08:Ljava/lang/Thread;

    .line 60967
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A08:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 60968
    return-void
.end method

.method private A0L()V
    .locals 1

    .line 60969
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Ya;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ya;->A0S()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60970
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A07:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 60971
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

    .line 60972
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Ya;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A04:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 60973
    return-void

    .line 60974
    :cond_0
    throw v0
.end method

.method private A0N()V
    .locals 2

    .line 60975
    .local v1, "this":Lcom/facebook/ads/redexgen/X/Ya;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ya;->A0T()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 60976
    :cond_0
    return-void
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60977
    :catch_0
    move-exception v1

    .line 60978
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

    const-string v0, "Gkl"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "qMMBfBKIWMYZs"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "JMr5TMdVlQ7lAxQbe7gmsO3TMTXZHZrx"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "k"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "fplFQmQDWPfBEKatf3t9LdZAMaYE90Yr"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "qk38PGrA"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "BZh"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ypodQLxrY5Mqx0yNqiahJYpo"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ya;->A0D:[Ljava/lang/String;

    return-void
.end method

.method private A0P(Lcom/facebook/ads/redexgen/X/YY;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    .line 60979
    .local v1, "this":Lcom/facebook/ads/redexgen/X/Ya;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local v0, "inputBuffer":Lcom/facebook/ads/redexgen/X/YY;, "TI;"
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/YY;->A07()V

    .line 60980
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ya;->A0B:[Lcom/facebook/ads/redexgen/X/YY;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ya;->A00:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A00:I

    aput-object p1, v2, v1

    .line 60981
    return-void
.end method

.method private A0Q(Lcom/facebook/ads/redexgen/X/YZ;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 60982
    .local v1, "this":Lcom/facebook/ads/redexgen/X/Ya;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local v0, "outputBuffer":Lcom/facebook/ads/redexgen/X/YZ;, "TO;"
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/BV;->A07()V

    .line 60983
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ya;->A0C:[Lcom/facebook/ads/redexgen/X/YZ;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ya;->A01:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A01:I

    aput-object p1, v2, v1

    .line 60984
    return-void
.end method

.method public static synthetic A0R(Lcom/facebook/ads/redexgen/X/Ya;)V
    .locals 0

    .line 60985
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ya;->A0N()V

    return-void
.end method

.method private A0S()Z
    .locals 1

    .line 60986
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Ya;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A09:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A01:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0T()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60987
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Ya;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ya;->A07:Ljava/lang/Object;

    monitor-enter v2

    .line 60988
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A06:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ya;->A0S()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60989
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A07:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 60990
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A06:Z

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    .line 60991
    monitor-exit v2

    return v5

    .line 60992
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A09:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/YY;

    .line 60993
    .local v2, "inputBuffer":Lcom/facebook/ads/redexgen/X/YY;, "TI;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ya;->A0C:[Lcom/facebook/ads/redexgen/X/YZ;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A01:I

    const/4 v7, 0x1

    sub-int/2addr v0, v7

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A01:I

    aget-object v3, v1, v0

    .line 60994
    .local v0, "outputBuffer":Lcom/facebook/ads/redexgen/X/YZ;, "TO;"
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Ya;->A05:Z

    .line 60995
    .local v0, "resetDecoder":Z
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/Ya;->A05:Z

    .line 60996
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 60997
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/BV;->A04()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 60998
    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/BV;->A00(I)V

    .line 60999
    :cond_2
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Ya;->A07:Ljava/lang/Object;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ya;->A0D:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 61000
    :cond_4
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/BV;->A03()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 61001
    const/high16 v0, -0x80000000

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/BV;->A00(I)V

    .line 61002
    :cond_5
    :try_start_1
    invoke-virtual {p0, v4, v3, v1}, Lcom/facebook/ads/redexgen/X/Ya;->A0Y(Lcom/facebook/ads/redexgen/X/YY;Lcom/facebook/ads/redexgen/X/YZ;Z)Ljava/lang/Exception;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A04:Ljava/lang/Exception;

    goto :goto_1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    .line 61003
    :catch_0
    move-exception v0

    .line 61004
    .local p0, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ya;->A0Z(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A04:Ljava/lang/Exception;

    goto :goto_1

    .line 61005
    .end local p0    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v6

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ya;->A0D:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    .line 61006
    .local p0, "e":Ljava/lang/RuntimeException;
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ya;->A0D:[Ljava/lang/String;

    const-string v1, "JmdauonVcnINF"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "vppaV7cv17cCxaH2hgZaXUeE"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/Ya;->A0Z(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A04:Ljava/lang/Exception;

    .line 61007
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A04:Ljava/lang/Exception;

    if-eqz v0, :cond_2

    .line 61008
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ya;->A07:Ljava/lang/Object;

    monitor-enter v1

    goto :goto_4

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ya;->A0D:[Ljava/lang/String;

    const-string v1, "q0ZgAWd6JYMJo"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "B3H8IuJfVBRbzuvGv4HpnNYI"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    monitor-enter v6

    .line 61009
    :try_start_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A05:Z

    if-eqz v0, :cond_7

    .line 61010
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Ya;->A0Q(Lcom/facebook/ads/redexgen/X/YZ;)V

    .line 61011
    :goto_2
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/Ya;->A0P(Lcom/facebook/ads/redexgen/X/YY;)V

    .line 61012
    monitor-exit v6

    goto :goto_3

    .line 61013
    :cond_7
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/BV;->A03()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 61014
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A02:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A02:I

    .line 61015
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Ya;->A0Q(Lcom/facebook/ads/redexgen/X/YZ;)V

    goto :goto_2

    .line 61016
    :cond_8
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A02:I

    iput v0, v3, Lcom/facebook/ads/redexgen/X/YZ;->A00:I

    .line 61017
    iput v5, p0, Lcom/facebook/ads/redexgen/X/Ya;->A02:I

    .line 61018
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A0A:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_2

    .line 61019
    :goto_3
    return v7

    .line 61020
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 61021
    :goto_4
    :try_start_3
    monitor-exit v1

    .line 61022
    return v5

    .line 61023
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 61024
    .end local v2    # "inputBuffer":Lcom/facebook/ads/redexgen/X/YY;, "TI;"
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
.method public final A0U()Lcom/facebook/ads/redexgen/X/YY;
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

    .line 61025
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Ya;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ya;->A07:Ljava/lang/Object;

    monitor-enter v3

    .line 61026
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ya;->A0M()V

    .line 61027
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A03:Lcom/facebook/ads/redexgen/X/YY;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 61028
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A00:I

    if-nez v0, :cond_1

    .line 61029
    const/4 v0, 0x0

    goto :goto_1

    .line 61030
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ya;->A0B:[Lcom/facebook/ads/redexgen/X/YY;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A00:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A00:I

    aget-object v0, v1, v0

    :goto_1
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A03:Lcom/facebook/ads/redexgen/X/YY;

    .line 61031
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A03:Lcom/facebook/ads/redexgen/X/YY;

    monitor-exit v3

    return-object v0

    .line 61032
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract A0V()Lcom/facebook/ads/redexgen/X/YY;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation
.end method

.method public final A0W()Lcom/facebook/ads/redexgen/X/YZ;
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

    .line 61033
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Ya;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ya;->A07:Ljava/lang/Object;

    monitor-enter v1

    .line 61034
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ya;->A0M()V

    .line 61035
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A0A:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61036
    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    .line 61037
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A0A:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/YZ;

    monitor-exit v1

    return-object v0

    .line 61038
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract A0X()Lcom/facebook/ads/redexgen/X/YZ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation
.end method

.method public abstract A0Y(Lcom/facebook/ads/redexgen/X/YY;Lcom/facebook/ads/redexgen/X/YZ;Z)Ljava/lang/Exception;
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
    .locals 4

    .line 61039
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Ya;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ya;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A0B:[Lcom/facebook/ads/redexgen/X/YY;

    array-length v0, v0

    const/4 v3, 0x0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 61040
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ya;->A0B:[Lcom/facebook/ads/redexgen/X/YY;

    array-length v1, v2

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v0, v2, v3

    .line 61041
    .local v0, "inputBuffer":Lcom/facebook/ads/redexgen/X/YY;, "TI;"
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/YY;->A09(I)V

    .line 61042
    .end local v0    # "inputBuffer":Lcom/facebook/ads/redexgen/X/YY;, "TI;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 61043
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 61044
    :cond_1
    return-void
.end method

.method public final A0b(Lcom/facebook/ads/redexgen/X/YY;)V
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

    .line 61045
    .local v1, "this":Lcom/facebook/ads/redexgen/X/Ya;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local v0, "inputBuffer":Lcom/facebook/ads/redexgen/X/YY;, "TI;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ya;->A07:Ljava/lang/Object;

    monitor-enter v1

    .line 61046
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ya;->A0M()V

    .line 61047
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A03:Lcom/facebook/ads/redexgen/X/YY;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 61048
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A09:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 61049
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ya;->A0L()V

    .line 61050
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A03:Lcom/facebook/ads/redexgen/X/YY;

    .line 61051
    monitor-exit v1

    .line 61052
    return-void

    .line 61053
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public A0c(Lcom/facebook/ads/redexgen/X/YZ;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 61054
    .local v1, "this":Lcom/facebook/ads/redexgen/X/Ya;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local v0, "outputBuffer":Lcom/facebook/ads/redexgen/X/YZ;, "TO;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ya;->A07:Ljava/lang/Object;

    monitor-enter v1

    .line 61055
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ya;->A0Q(Lcom/facebook/ads/redexgen/X/YZ;)V

    .line 61056
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ya;->A0L()V

    .line 61057
    monitor-exit v1

    .line 61058
    return-void

    .line 61059
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final bridge synthetic A4j()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 61060
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Ya;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ya;->A0U()Lcom/facebook/ads/redexgen/X/YY;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A4k()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 61061
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Ya;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ya;->A0W()Lcom/facebook/ads/redexgen/X/YZ;

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

    .line 61062
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Ya;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    check-cast p1, Lcom/facebook/ads/redexgen/X/YY;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Ya;->A0b(Lcom/facebook/ads/redexgen/X/YY;)V

    return-void
.end method

.method public final ACz()V
    .locals 2

    .line 61063
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Ya;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ya;->A07:Ljava/lang/Object;

    monitor-enter v1

    .line 61064
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A06:Z

    .line 61065
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A07:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 61066
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61067
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A08:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    goto :goto_0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 61068
    .local p0, "e":Ljava/lang/InterruptedException;
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 61069
    .end local p0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void

    .line 61070
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

    .line 61071
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Ya;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ya;->A07:Ljava/lang/Object;

    monitor-enter v1

    .line 61072
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A05:Z

    .line 61073
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A02:I

    .line 61074
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A03:Lcom/facebook/ads/redexgen/X/YY;

    if-eqz v0, :cond_0

    .line 61075
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A03:Lcom/facebook/ads/redexgen/X/YY;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ya;->A0P(Lcom/facebook/ads/redexgen/X/YY;)V

    .line 61076
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A03:Lcom/facebook/ads/redexgen/X/YY;

    .line 61077
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A09:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 61078
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A09:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/YY;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ya;->A0P(Lcom/facebook/ads/redexgen/X/YY;)V

    goto :goto_0

    .line 61079
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A0A:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 61080
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A0A:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/YZ;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ya;->A0Q(Lcom/facebook/ads/redexgen/X/YZ;)V

    goto :goto_1

    .line 61081
    :cond_2
    monitor-exit v1

    .line 61082
    return-void

    .line 61083
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
