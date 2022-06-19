.class public final Lcom/facebook/ads/redexgen/X/3X;
.super Lcom/facebook/ads/redexgen/X/EP;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/text/TextRenderer$ReplacementState;,
        Lcom/facebook/ads/internal/exoplayer2/text/TextRenderer$Output;
    }
.end annotation


# static fields
.field public static A0D:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lcom/facebook/ads/internal/exoplayer2/Format;

.field public A03:Lcom/facebook/ads/redexgen/X/am;

.field public A04:Lcom/facebook/ads/redexgen/X/By;

.field public A05:Lcom/facebook/ads/redexgen/X/Bs;

.field public A06:Lcom/facebook/ads/redexgen/X/Bs;

.field public A07:Z

.field public A08:Z

.field public final A09:Landroid/os/Handler;

.field public final A0A:Lcom/facebook/ads/redexgen/X/AD;

.field public final A0B:Lcom/facebook/ads/redexgen/X/GE;

.field public final A0C:Lcom/facebook/ads/redexgen/X/GF;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/3X;->A05()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/GF;Landroid/os/Looper;)V
    .locals 1

    .line 8859
    sget-object v0, Lcom/facebook/ads/redexgen/X/GE;->A00:Lcom/facebook/ads/redexgen/X/GE;

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/3X;-><init>(Lcom/facebook/ads/redexgen/X/GF;Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/GE;)V

    .line 8860
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/GF;Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/GE;)V
    .locals 1

    .line 8861
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/EP;-><init>(I)V

    .line 8862
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/GF;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0C:Lcom/facebook/ads/redexgen/X/GF;

    .line 8863
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A09:Landroid/os/Handler;

    .line 8864
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/3X;->A0B:Lcom/facebook/ads/redexgen/X/GE;

    .line 8865
    new-instance v0, Lcom/facebook/ads/redexgen/X/AD;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/AD;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0A:Lcom/facebook/ads/redexgen/X/AD;

    .line 8866
    return-void

    .line 8867
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    goto :goto_0
.end method

.method private A00()J
    .locals 2

    .line 8868
    iget v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A01:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A06:Lcom/facebook/ads/redexgen/X/Bs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Bs;->A6T()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 8869
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    .line 8870
    :goto_0
    return-wide v0

    .line 8871
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A06:Lcom/facebook/ads/redexgen/X/Bs;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A01:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Bs;->A6S(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private A01()V
    .locals 1

    .line 8872
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/3X;->A07(Ljava/util/List;)V

    .line 8873
    return-void
.end method

.method private A02()V
    .locals 2

    .line 8874
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A04:Lcom/facebook/ads/redexgen/X/By;

    .line 8875
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A01:I

    .line 8876
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A06:Lcom/facebook/ads/redexgen/X/Bs;

    if-eqz v0, :cond_0

    .line 8877
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Bs;->A08()V

    .line 8878
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A06:Lcom/facebook/ads/redexgen/X/Bs;

    .line 8879
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A05:Lcom/facebook/ads/redexgen/X/Bs;

    if-eqz v0, :cond_1

    .line 8880
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Bs;->A08()V

    .line 8881
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A05:Lcom/facebook/ads/redexgen/X/Bs;

    .line 8882
    :cond_1
    return-void
.end method

.method private A03()V
    .locals 1

    .line 8883
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A02()V

    .line 8884
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A03:Lcom/facebook/ads/redexgen/X/am;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BZ;->ACz()V

    .line 8885
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A03:Lcom/facebook/ads/redexgen/X/am;

    .line 8886
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A00:I

    .line 8887
    return-void
.end method

.method private A04()V
    .locals 2

    .line 8888
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A03()V

    .line 8889
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0B:Lcom/facebook/ads/redexgen/X/GE;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A02:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/GE;->A4G(Lcom/facebook/ads/internal/exoplayer2/Format;)Lcom/facebook/ads/redexgen/X/am;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A03:Lcom/facebook/ads/redexgen/X/am;

    .line 8890
    return-void
.end method

.method public static A05()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "fagSsoac43UJSJG"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "PL0Df5XObPsMjoFT3sU6Lp83XbviyP8R"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "k75ap2fxOZvkqr2FjEQ9d3Y"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "qEZm9kPptvCV49j1bDgJYwonF92a"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "8QH8MqTnW7KMzd9bL"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "CjrIcpNXno9M2QOeMZvTD2WdktHrPs5P"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "AfT76Pf2kDJi2th"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "sZbuEqgSWLt9Albo4x4yfDH"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/3X;->A0D:[Ljava/lang/String;

    return-void
.end method

.method private A06(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/GB;",
            ">;)V"
        }
    .end annotation

    .line 8891
    .local v0, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/text/Cue;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0C:Lcom/facebook/ads/redexgen/X/GF;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/GF;->A9s(Ljava/util/List;)V

    .line 8892
    return-void
.end method

.method private A07(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/GB;",
            ">;)V"
        }
    .end annotation

    .line 8893
    .local v0, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/text/Cue;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A09:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 8894
    const/4 v0, 0x0

    invoke-virtual {v1, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 8895
    :goto_0
    return-void

    .line 8896
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3X;->A06(Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public final A14()V
    .locals 1

    .line 8897
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A02:Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 8898
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A01()V

    .line 8899
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A03()V

    .line 8900
    return-void
.end method

.method public final A17(JZ)V
    .locals 4

    .line 8901
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A01()V

    .line 8902
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A07:Z

    .line 8903
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A08:Z

    .line 8904
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A00:I

    if-eqz v0, :cond_0

    .line 8905
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A04()V

    .line 8906
    :goto_0
    return-void

    .line 8907
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A02()V

    .line 8908
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/3X;->A03:Lcom/facebook/ads/redexgen/X/am;

    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A0D:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A0D:[Ljava/lang/String;

    const-string v1, "SIdEizz9oP1X0InrrFd2Zym6xF4ie8Hi"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/BZ;->flush()V

    goto :goto_0
.end method

.method public final A19([Lcom/facebook/ads/internal/exoplayer2/Format;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 8909
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A02:Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 8910
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A03:Lcom/facebook/ads/redexgen/X/am;

    if-eqz v0, :cond_0

    .line 8911
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A00:I

    .line 8912
    :goto_0
    return-void

    .line 8913
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0B:Lcom/facebook/ads/redexgen/X/GE;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A02:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/GE;->A4G(Lcom/facebook/ads/internal/exoplayer2/Format;)Lcom/facebook/ads/redexgen/X/am;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A03:Lcom/facebook/ads/redexgen/X/am;

    goto :goto_0
.end method

.method public final A7z()Z
    .locals 1

    .line 8914
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A08:Z

    return v0
.end method

.method public final A89()Z
    .locals 1

    .line 8915
    const/4 v0, 0x1

    return v0
.end method

.method public final ADC(JJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 8916
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A08:Z

    if-eqz v0, :cond_0

    .line 8917
    return-void

    .line 8918
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A05:Lcom/facebook/ads/redexgen/X/Bs;

    if-nez v0, :cond_1

    .line 8919
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A03:Lcom/facebook/ads/redexgen/X/am;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/am;->ADr(J)V

    .line 8920
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A03:Lcom/facebook/ads/redexgen/X/am;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BZ;->A4k()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Bs;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A05:Lcom/facebook/ads/redexgen/X/Bs;

    goto :goto_0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/GD; {:try_start_0 .. :try_end_0} :catch_0

    .line 8921
    :catch_0
    move-exception v1

    .line 8922
    .local p0, "e":Lcom/facebook/ads/redexgen/X/GD;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/EP;->A10()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/A0;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/A0;

    move-result-object v0

    throw v0

    .line 8923
    .end local p0    # "e":Lcom/facebook/ads/redexgen/X/GD;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/EP;->A7F()I

    move-result v0

    const/4 v5, 0x2

    if-eq v0, v5, :cond_2

    .line 8924
    return-void

    .line 8925
    :cond_2
    const/4 v8, 0x0

    .line 8926
    .local p0, "textRendererNeedsUpdate":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A06:Lcom/facebook/ads/redexgen/X/Bs;

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    .line 8927
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A00()J

    move-result-wide v1

    .line 8928
    .local v4, "subtitleNextEventTimeUs":J
    :goto_1
    cmp-long v0, v1, p1

    if-gtz v0, :cond_3

    .line 8929
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A01:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A01:I

    .line 8930
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A00()J

    move-result-wide v1

    .line 8931
    const/4 v8, 0x1

    goto :goto_1

    .line 8932
    .end local v4    # "subtitleNextEventTimeUs":J
    :cond_3
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/3X;->A05:Lcom/facebook/ads/redexgen/X/Bs;

    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A0D:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_10

    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A0D:[Ljava/lang/String;

    const-string v1, "XY0BtpFryTh5vJ9OnDecIRSpslOi5uhK"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v3, 0x0

    if-eqz v6, :cond_4

    .line 8933
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/BV;->A04()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 8934
    if-nez v8, :cond_4

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A00()J

    move-result-wide v6

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v0, v6, v1

    if-nez v0, :cond_4

    .line 8935
    iget v6, p0, Lcom/facebook/ads/redexgen/X/3X;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A0D:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A0D:[Ljava/lang/String;

    const-string v1, "mbnDFqY2K95bUayMi"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "jZB4HApNBiduyvnow8cew7gbgOu4"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ne v6, v5, :cond_7

    .line 8936
    :goto_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A04()V

    .line 8937
    :cond_4
    :goto_3
    if-eqz v8, :cond_5

    .line 8938
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A06:Lcom/facebook/ads/redexgen/X/Bs;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Bs;->A63(J)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/3X;->A07(Ljava/util/List;)V

    .line 8939
    :cond_5
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A00:I

    if-ne v0, v5, :cond_a

    .line 8940
    return-void

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A0D:[Ljava/lang/String;

    const-string v1, "MeHVLRPd9fQTHEeBi"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "YXb6olWsbop2pyVFpyT7RkPVUyda"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ne v6, v5, :cond_7

    goto :goto_2

    .line 8941
    :cond_7
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A02()V

    .line 8942
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/3X;->A08:Z

    goto :goto_3

    .line 8943
    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A05:Lcom/facebook/ads/redexgen/X/Bs;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/YZ;->A01:J

    cmp-long v2, v0, p1

    if-gtz v2, :cond_4

    .line 8944
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A06:Lcom/facebook/ads/redexgen/X/Bs;

    if-eqz v0, :cond_9

    .line 8945
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Bs;->A08()V

    .line 8946
    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A05:Lcom/facebook/ads/redexgen/X/Bs;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A06:Lcom/facebook/ads/redexgen/X/Bs;

    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A0D:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_10

    .line 8947
    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A0D:[Ljava/lang/String;

    const-string v1, "X2bpaAWybcYqy3FAGHkwIjlm6aPwbX20"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3X;->A05:Lcom/facebook/ads/redexgen/X/Bs;

    .line 8948
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A06:Lcom/facebook/ads/redexgen/X/Bs;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Bs;->A6n(J)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A01:I

    .line 8949
    const/4 v8, 0x1

    goto :goto_3

    .line 8950
    :cond_a
    :goto_4
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A07:Z

    if-nez v0, :cond_f

    .line 8951
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A04:Lcom/facebook/ads/redexgen/X/By;

    if-nez v0, :cond_b

    .line 8952
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A03:Lcom/facebook/ads/redexgen/X/am;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BZ;->A4j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/By;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A04:Lcom/facebook/ads/redexgen/X/By;

    .line 8953
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A04:Lcom/facebook/ads/redexgen/X/By;

    if-nez v0, :cond_b

    goto :goto_6

    .line 8954
    :cond_b
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A00:I

    if-ne v0, v4, :cond_c

    .line 8955
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A04:Lcom/facebook/ads/redexgen/X/By;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/BV;->A02(I)V

    .line 8956
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A03:Lcom/facebook/ads/redexgen/X/am;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A04:Lcom/facebook/ads/redexgen/X/By;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/BZ;->ACj(Ljava/lang/Object;)V

    .line 8957
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3X;->A04:Lcom/facebook/ads/redexgen/X/By;

    .line 8958
    iput v5, p0, Lcom/facebook/ads/redexgen/X/3X;->A00:I

    goto :goto_7

    .line 8959
    :cond_c
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3X;->A0A:Lcom/facebook/ads/redexgen/X/AD;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A04:Lcom/facebook/ads/redexgen/X/By;

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EP;->A12(Lcom/facebook/ads/redexgen/X/AD;Lcom/facebook/ads/redexgen/X/YY;Z)I

    move-result v1

    .line 8960
    .local v2, "result":I
    const/4 v0, -0x4

    if-ne v1, v0, :cond_e

    .line 8961
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A04:Lcom/facebook/ads/redexgen/X/By;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BV;->A04()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 8962
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/3X;->A07:Z

    .line 8963
    :goto_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A03:Lcom/facebook/ads/redexgen/X/am;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A04:Lcom/facebook/ads/redexgen/X/By;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/BZ;->ACj(Ljava/lang/Object;)V

    .line 8964
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3X;->A04:Lcom/facebook/ads/redexgen/X/By;

    goto :goto_4

    .line 8965
    :cond_d
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3X;->A04:Lcom/facebook/ads/redexgen/X/By;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0A:Lcom/facebook/ads/redexgen/X/AD;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AD;->A00:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget-wide v0, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0G:J

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/By;->A00:J

    .line 8966
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A04:Lcom/facebook/ads/redexgen/X/By;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YY;->A08()V

    goto :goto_5

    .line 8967
    :cond_e
    const/4 v0, -0x3

    if-ne v1, v0, :cond_a

    .line 8968
    return-void

    .line 8969
    :goto_6
    return-void

    .line 8970
    :goto_7
    return-void

    .line 8971
    :cond_f
    return-void
    :try_end_1
    .catch Lcom/facebook/ads/redexgen/X/GD; {:try_start_1 .. :try_end_1} :catch_1

    .line 8972
    :catch_1
    move-exception v1

    .line 8973
    .local p1, "e":Lcom/facebook/ads/redexgen/X/GD;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/EP;->A10()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/A0;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/A0;

    move-result-object v0

    throw v0

    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AEG(Lcom/facebook/ads/internal/exoplayer2/Format;)I
    .locals 2

    .line 8974
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0B:Lcom/facebook/ads/redexgen/X/GE;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/GE;->AEH(Lcom/facebook/ads/internal/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8975
    const/4 v1, 0x0

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0H:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/EP;->A0z(Lcom/facebook/ads/redexgen/X/C0;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 8976
    :cond_1
    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IF;->A0B(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8977
    const/4 v0, 0x1

    return v0

    .line 8978
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 8979
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 8980
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/3X;->A06(Ljava/util/List;)V

    .line 8981
    const/4 v0, 0x1

    return v0

    .line 8982
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
