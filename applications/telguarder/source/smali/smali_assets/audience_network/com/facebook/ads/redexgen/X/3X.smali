.class public final Lcom/facebook/ads/redexgen/X/3X;
.super Lcom/facebook/ads/redexgen/X/Dh;
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

.field public A03:Lcom/facebook/ads/redexgen/X/UJ;

.field public A04:Lcom/facebook/ads/redexgen/X/BT;

.field public A05:Lcom/facebook/ads/redexgen/X/BS;

.field public A06:Lcom/facebook/ads/redexgen/X/BS;

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

    .line 8969
    sget-object v0, Lcom/facebook/ads/redexgen/X/GE;->A00:Lcom/facebook/ads/redexgen/X/GE;

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/3X;-><init>(Lcom/facebook/ads/redexgen/X/GF;Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/GE;)V

    .line 8970
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/GF;Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/GE;)V
    .locals 1

    .line 8971
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dh;-><init>(I)V

    .line 8972
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/GF;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0C:Lcom/facebook/ads/redexgen/X/GF;

    .line 8973
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A09:Landroid/os/Handler;

    .line 8974
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/3X;->A0B:Lcom/facebook/ads/redexgen/X/GE;

    .line 8975
    new-instance v0, Lcom/facebook/ads/redexgen/X/AD;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/AD;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0A:Lcom/facebook/ads/redexgen/X/AD;

    .line 8976
    return-void

    .line 8977
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    goto :goto_0
.end method

.method private A00()J
    .locals 2

    .line 8978
    iget v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A01:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A06:Lcom/facebook/ads/redexgen/X/BS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BS;->A6T()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 8979
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    .line 8980
    :goto_0
    return-wide v0

    .line 8981
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A06:Lcom/facebook/ads/redexgen/X/BS;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A01:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/BS;->A6S(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private A01()V
    .locals 1

    .line 8982
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/3X;->A07(Ljava/util/List;)V

    .line 8983
    return-void
.end method

.method private A02()V
    .locals 4

    .line 8984
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3X;->A04:Lcom/facebook/ads/redexgen/X/BT;

    .line 8985
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A01:I

    .line 8986
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A06:Lcom/facebook/ads/redexgen/X/BS;

    if-eqz v0, :cond_0

    .line 8987
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BS;->A08()V

    .line 8988
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3X;->A06:Lcom/facebook/ads/redexgen/X/BS;

    .line 8989
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A05:Lcom/facebook/ads/redexgen/X/BS;

    if-eqz v0, :cond_2

    .line 8990
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BS;->A08()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A0D:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 8991
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A0D:[Ljava/lang/String;

    const-string v1, "ZbCSl4PIZJoqYKG17rFUYXobBAwPv5"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "1qgDpt5yYnpgJ2s8P70cBwbCS8Yqlr"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3X;->A05:Lcom/facebook/ads/redexgen/X/BS;

    .line 8992
    :cond_2
    return-void
.end method

.method private A03()V
    .locals 1

    .line 8993
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A02()V

    .line 8994
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A03:Lcom/facebook/ads/redexgen/X/UJ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BZ;->ACz()V

    .line 8995
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A03:Lcom/facebook/ads/redexgen/X/UJ;

    .line 8996
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A00:I

    .line 8997
    return-void
.end method

.method private A04()V
    .locals 2

    .line 8998
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A03()V

    .line 8999
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0B:Lcom/facebook/ads/redexgen/X/GE;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A02:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/GE;->A4D(Lcom/facebook/ads/internal/exoplayer2/Format;)Lcom/facebook/ads/redexgen/X/UJ;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A03:Lcom/facebook/ads/redexgen/X/UJ;

    .line 9000
    return-void
.end method

.method public static A05()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "YAon1iqvl35fJwR23tGkaH6lxoL6nOG8"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "kkGedFfBLr7ZPvBUnJ59kta6CsO7bR"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "cNcPntKXUoItbiFQzamflTQvnVQy2Z44"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "wtHz99ZG9ZWk3UZgjX5mP6jdEx86OY"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "XCkr7xBgIooU2YT2OiqKlImiqfF1TVO6"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "rAN2Z2ieWqCteZq4cW11eW5y1uN3BWux"

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

    .line 9001
    .local v0, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/text/Cue;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0C:Lcom/facebook/ads/redexgen/X/GF;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/GF;->A9r(Ljava/util/List;)V

    .line 9002
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

    .line 9003
    .local v0, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/text/Cue;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A09:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 9004
    const/4 v0, 0x0

    invoke-virtual {v1, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 9005
    :goto_0
    return-void

    .line 9006
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3X;->A06(Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public final A15()V
    .locals 1

    .line 9007
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A02:Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 9008
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A01()V

    .line 9009
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A03()V

    .line 9010
    return-void
.end method

.method public final A18(JZ)V
    .locals 1

    .line 9011
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A01()V

    .line 9012
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A07:Z

    .line 9013
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A08:Z

    .line 9014
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A00:I

    if-eqz v0, :cond_0

    .line 9015
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A04()V

    .line 9016
    :goto_0
    return-void

    .line 9017
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A02()V

    .line 9018
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A03:Lcom/facebook/ads/redexgen/X/UJ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BZ;->flush()V

    goto :goto_0
.end method

.method public final A1A([Lcom/facebook/ads/internal/exoplayer2/Format;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 9019
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A02:Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 9020
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A03:Lcom/facebook/ads/redexgen/X/UJ;

    if-eqz v0, :cond_0

    .line 9021
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A00:I

    .line 9022
    :goto_0
    return-void

    .line 9023
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A0B:Lcom/facebook/ads/redexgen/X/GE;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A02:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/GE;->A4D(Lcom/facebook/ads/internal/exoplayer2/Format;)Lcom/facebook/ads/redexgen/X/UJ;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A03:Lcom/facebook/ads/redexgen/X/UJ;

    goto :goto_0
.end method

.method public final A81()Z
    .locals 1

    .line 9024
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A08:Z

    return v0
.end method

.method public final A8B()Z
    .locals 1

    .line 9025
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

    .line 9026
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A08:Z

    if-eqz v0, :cond_0

    .line 9027
    return-void

    .line 9028
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A05:Lcom/facebook/ads/redexgen/X/BS;

    if-nez v0, :cond_1

    .line 9029
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A03:Lcom/facebook/ads/redexgen/X/UJ;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/UJ;->ADs(J)V

    .line 9030
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A03:Lcom/facebook/ads/redexgen/X/UJ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BZ;->A4i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/BS;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A05:Lcom/facebook/ads/redexgen/X/BS;

    goto :goto_0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/GD; {:try_start_0 .. :try_end_0} :catch_0

    .line 9031
    :catch_0
    move-exception v1

    .line 9032
    .local p0, "e":Lcom/facebook/ads/redexgen/X/GD;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dh;->A11()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/A0;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/A0;

    move-result-object v0

    throw v0

    .line 9033
    .end local p0    # "e":Lcom/facebook/ads/redexgen/X/GD;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dh;->A7H()I

    move-result v0

    const/4 v5, 0x2

    if-eq v0, v5, :cond_2

    .line 9034
    return-void

    .line 9035
    :cond_2
    const/4 v8, 0x0

    .line 9036
    .local p0, "textRendererNeedsUpdate":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A06:Lcom/facebook/ads/redexgen/X/BS;

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    .line 9037
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A00()J

    move-result-wide v1

    .line 9038
    .local v4, "subtitleNextEventTimeUs":J
    :goto_1
    cmp-long v0, v1, p1

    if-gtz v0, :cond_3

    .line 9039
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A01:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A01:I

    .line 9040
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A00()J

    move-result-wide v1

    .line 9041
    const/4 v8, 0x1

    goto :goto_1

    .line 9042
    .end local v4    # "subtitleNextEventTimeUs":J
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A05:Lcom/facebook/ads/redexgen/X/BS;

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 9043
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BV;->A04()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 9044
    if-nez v8, :cond_4

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A00()J

    move-result-wide v6

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v0, v6, v1

    if-nez v0, :cond_4

    .line 9045
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A00:I

    if-ne v0, v5, :cond_6

    .line 9046
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A04()V

    .line 9047
    :cond_4
    :goto_2
    if-eqz v8, :cond_5

    .line 9048
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A06:Lcom/facebook/ads/redexgen/X/BS;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/BS;->A63(J)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/3X;->A07(Ljava/util/List;)V

    .line 9049
    :cond_5
    iget v6, p0, Lcom/facebook/ads/redexgen/X/3X;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A0D:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_9

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 9050
    :cond_6
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3X;->A02()V

    .line 9051
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/3X;->A08:Z

    goto :goto_2

    .line 9052
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A05:Lcom/facebook/ads/redexgen/X/BS;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/Vs;->A01:J

    cmp-long v2, v0, p1

    if-gtz v2, :cond_4

    .line 9053
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A06:Lcom/facebook/ads/redexgen/X/BS;

    if-eqz v0, :cond_8

    .line 9054
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BS;->A08()V

    .line 9055
    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A05:Lcom/facebook/ads/redexgen/X/BS;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A06:Lcom/facebook/ads/redexgen/X/BS;

    .line 9056
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3X;->A05:Lcom/facebook/ads/redexgen/X/BS;

    .line 9057
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A06:Lcom/facebook/ads/redexgen/X/BS;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/BS;->A6n(J)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A01:I

    .line 9058
    const/4 v8, 0x1

    goto :goto_2

    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A0D:[Ljava/lang/String;

    const-string v1, "m98pxVmbMpcNK2CNcRuMPbPccHGTaRJj"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "FS7hLaUj6aNQhoRH13bOIMO8RRhU4tkk"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ne v6, v5, :cond_a

    .line 9059
    return-void

    .line 9060
    :cond_a
    :goto_3
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A07:Z

    if-nez v0, :cond_f

    .line 9061
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A04:Lcom/facebook/ads/redexgen/X/BT;

    if-nez v0, :cond_b

    .line 9062
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A03:Lcom/facebook/ads/redexgen/X/UJ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BZ;->A4h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/BT;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A04:Lcom/facebook/ads/redexgen/X/BT;

    .line 9063
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A04:Lcom/facebook/ads/redexgen/X/BT;

    if-nez v0, :cond_b

    goto :goto_5

    .line 9064
    :cond_b
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A00:I

    if-ne v0, v4, :cond_c

    .line 9065
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A04:Lcom/facebook/ads/redexgen/X/BT;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/BV;->A02(I)V

    .line 9066
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A03:Lcom/facebook/ads/redexgen/X/UJ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A04:Lcom/facebook/ads/redexgen/X/BT;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/BZ;->ACj(Ljava/lang/Object;)V

    .line 9067
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3X;->A04:Lcom/facebook/ads/redexgen/X/BT;

    .line 9068
    iput v5, p0, Lcom/facebook/ads/redexgen/X/3X;->A00:I

    goto :goto_6

    .line 9069
    :cond_c
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3X;->A0A:Lcom/facebook/ads/redexgen/X/AD;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A04:Lcom/facebook/ads/redexgen/X/BT;

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dh;->A13(Lcom/facebook/ads/redexgen/X/AD;Lcom/facebook/ads/redexgen/X/Vt;Z)I

    move-result v1

    .line 9070
    .local v2, "result":I
    const/4 v0, -0x4

    if-ne v1, v0, :cond_e

    .line 9071
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A04:Lcom/facebook/ads/redexgen/X/BT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BV;->A04()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 9072
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/3X;->A07:Z

    .line 9073
    :goto_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3X;->A03:Lcom/facebook/ads/redexgen/X/UJ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A04:Lcom/facebook/ads/redexgen/X/BT;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/BZ;->ACj(Ljava/lang/Object;)V

    .line 9074
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3X;->A04:Lcom/facebook/ads/redexgen/X/BT;

    goto :goto_3

    .line 9075
    :cond_d
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3X;->A04:Lcom/facebook/ads/redexgen/X/BT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0A:Lcom/facebook/ads/redexgen/X/AD;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AD;->A00:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget-wide v0, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0G:J

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/BT;->A00:J

    .line 9076
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A04:Lcom/facebook/ads/redexgen/X/BT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vt;->A08()V

    goto :goto_4

    .line 9077
    :cond_e
    const/4 v0, -0x3

    if-ne v1, v0, :cond_a

    .line 9078
    return-void

    .line 9079
    :goto_5
    return-void

    .line 9080
    :goto_6
    return-void

    .line 9081
    :cond_f
    return-void
    :try_end_1
    .catch Lcom/facebook/ads/redexgen/X/GD; {:try_start_1 .. :try_end_1} :catch_1

    .line 9082
    :catch_1
    move-exception v1

    .line 9083
    .local p1, "e":Lcom/facebook/ads/redexgen/X/GD;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dh;->A11()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/A0;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/A0;

    move-result-object v0

    throw v0
.end method

.method public final AEI(Lcom/facebook/ads/internal/exoplayer2/Format;)I
    .locals 4

    .line 9084
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3X;->A0B:Lcom/facebook/ads/redexgen/X/GE;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/GE;->AEJ(Lcom/facebook/ads/internal/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9085
    const/4 v1, 0x0

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0H:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Dh;->A10(Lcom/facebook/ads/redexgen/X/C0;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 9086
    :cond_1
    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IF;->A0B(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9087
    const/4 v0, 0x1

    return v0

    .line 9088
    :cond_2
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A0D:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/3X;->A0D:[Ljava/lang/String;

    const-string v1, "hrUxnkYc9whBcQREqHPR6BoShpI9IVjj"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "cRdvisKPwoQKfzfZnCIyLI7155f1ExXu"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return v3
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 9089
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 9090
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/3X;->A06(Ljava/util/List;)V

    .line 9091
    const/4 v0, 0x1

    return v0

    .line 9092
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
