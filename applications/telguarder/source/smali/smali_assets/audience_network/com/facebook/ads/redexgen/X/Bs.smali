.class public final Lcom/facebook/ads/redexgen/X/Bs;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/UN;
.implements Lcom/facebook/ads/redexgen/X/UO;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/UT;
    }
.end annotation


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:J

.field public A03:Lcom/facebook/ads/redexgen/X/UO;

.field public A04:[Lcom/facebook/ads/redexgen/X/UT;

.field public final A05:Lcom/facebook/ads/redexgen/X/UN;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Bs;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/UN;ZJJ)V
    .locals 2

    .line 24022
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24023
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Bs;->A05:Lcom/facebook/ads/redexgen/X/UN;

    .line 24024
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/UT;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bs;->A04:[Lcom/facebook/ads/redexgen/X/UT;

    .line 24025
    if-eqz p2, :cond_0

    move-wide v0, p3

    :goto_0
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Bs;->A02:J

    .line 24026
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/Bs;->A01:J

    .line 24027
    iput-wide p5, p0, Lcom/facebook/ads/redexgen/X/Bs;->A00:J

    .line 24028
    return-void

    .line 24029
    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0
.end method

.method private A00(JLcom/facebook/ads/redexgen/X/Ab;)Lcom/facebook/ads/redexgen/X/Ab;
    .locals 11

    .line 24030
    iget-wide v2, p3, Lcom/facebook/ads/redexgen/X/Ab;->A01:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Bs;->A01:J

    sub-long v6, p1, v0

    .line 24031
    const-wide/16 v4, 0x0

    invoke-static/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/Ic;->A0E(JJJ)J

    move-result-wide v0

    .line 24032
    .local p0, "toleranceBeforeUs":J
    iget-wide v5, p3, Lcom/facebook/ads/redexgen/X/Ab;->A00:J

    .line 24033
    iget-wide v9, p0, Lcom/facebook/ads/redexgen/X/Bs;->A00:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v2, v9, v3

    if-nez v2, :cond_0

    const-wide v9, 0x7fffffffffffffffL

    .line 24034
    :goto_0
    const-wide/16 v7, 0x0

    invoke-static/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/Ic;->A0E(JJJ)J

    move-result-wide v3

    .line 24035
    .local v2, "toleranceAfterUs":J
    iget-wide v5, p3, Lcom/facebook/ads/redexgen/X/Ab;->A01:J

    sget-object v8, Lcom/facebook/ads/redexgen/X/Bs;->A06:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v7, v8, v2

    const/4 v2, 0x7

    aget-object v8, v8, v2

    const/16 v2, 0x1a

    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v7, v2, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 24036
    :cond_0
    sub-long/2addr v9, p1

    goto :goto_0

    :cond_1
    sget-object v8, Lcom/facebook/ads/redexgen/X/Bs;->A06:[Ljava/lang/String;

    const-string v7, "rXL8n4EARiJ66aV2pXziJsX4R"

    const/4 v2, 0x3

    aput-object v7, v8, v2

    cmp-long v2, v0, v5

    if-nez v2, :cond_2

    .line 24037
    iget-wide v5, p3, Lcom/facebook/ads/redexgen/X/Ab;->A00:J

    cmp-long v2, v3, v5

    if-nez v2, :cond_2

    .line 24038
    return-object p3

    .line 24039
    :cond_2
    new-instance v2, Lcom/facebook/ads/redexgen/X/Ab;

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/facebook/ads/redexgen/X/Ab;-><init>(JJ)V

    return-object v2
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "nNj4Ml4oMSG06OQPwaZuPneyXXuMftu7"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "v5qiWbjofKD8ziGVBwJSTV3OvmU5V8vr"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "DwjAKmPwxRTx6jwFmP0oVpK2YNUhjMO"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "o5Up4kV2kOWtBjGX42Vr"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "do9utIyyKSJ9"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "DVH"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "7BNYhm7q90ypTE4RnH6zsvCVoMMquMv"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "jWa4Wm1ir0eCeRxEgNcR6e4M21UEx7rF"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Bs;->A06:[Ljava/lang/String;

    return-void
.end method

.method private final A02(Lcom/facebook/ads/redexgen/X/UN;)V
    .locals 1

    .line 24040
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bs;->A03:Lcom/facebook/ads/redexgen/X/UO;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Fa;->A9o(Lcom/facebook/ads/redexgen/X/Fb;)V

    .line 24041
    return-void
.end method

.method public static A03(J[Lcom/facebook/ads/redexgen/X/H4;)Z
    .locals 4

    .line 24042
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    cmp-long v0, p0, v1

    if-eqz v0, :cond_1

    .line 24043
    array-length v2, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p2, v1

    .line 24044
    .local v3, "trackSelection":Lcom/facebook/ads/redexgen/X/H4;
    if-eqz v0, :cond_0

    .line 24045
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/H4;->A7A()Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    .line 24046
    .local v1, "selectedFormat":Lcom/facebook/ads/internal/exoplayer2/Format;
    iget-object v0, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IF;->A0A(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 24047
    const/4 v0, 0x1

    return v0

    .line 24048
    .end local v3    # "trackSelection":Lcom/facebook/ads/redexgen/X/H4;
    .end local v1    # "selectedFormat":Lcom/facebook/ads/internal/exoplayer2/Format;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24049
    :cond_1
    return v3
.end method


# virtual methods
.method public final A04()Z
    .locals 5

    .line 24050
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Bs;->A02:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A47(J)Z
    .locals 1

    .line 24051
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bs;->A05:Lcom/facebook/ads/redexgen/X/UN;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/UN;->A47(J)Z

    move-result v0

    return v0
.end method

.method public final A4m(JZ)V
    .locals 1

    .line 24052
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bs;->A05:Lcom/facebook/ads/redexgen/X/UN;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/UN;->A4m(JZ)V

    .line 24053
    return-void
.end method

.method public final A5X(JLcom/facebook/ads/redexgen/X/Ab;)J
    .locals 5

    .line 24054
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Bs;->A01:J

    cmp-long v0, p1, v1

    if-nez v0, :cond_0

    .line 24055
    return-wide v1

    .line 24056
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Bs;->A00(JLcom/facebook/ads/redexgen/X/Ab;)Lcom/facebook/ads/redexgen/X/Ab;

    move-result-object v4

    .line 24057
    .local p0, "clippedSeekParameters":Lcom/facebook/ads/redexgen/X/Ab;
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Bs;->A05:Lcom/facebook/ads/redexgen/X/UN;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Bs;->A06:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Bs;->A06:[Ljava/lang/String;

    const-string v1, "Kcxsec84BhkYQE8N0mEPKhX0hnZr9ELm"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-interface {v3, p1, p2, v4}, Lcom/facebook/ads/redexgen/X/UN;->A5X(JLcom/facebook/ads/redexgen/X/Ab;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A5m()J
    .locals 7

    .line 24058
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bs;->A05:Lcom/facebook/ads/redexgen/X/UN;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/UN;->A5m()J

    move-result-wide v5

    .line 24059
    .local p0, "bufferedPositionUs":J
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v0, v5, v3

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Bs;->A00:J

    cmp-long v0, v1, v3

    if-eqz v0, :cond_1

    cmp-long v0, v5, v1

    if-ltz v0, :cond_1

    .line 24060
    :cond_0
    return-wide v3

    .line 24061
    :cond_1
    return-wide v5
.end method

.method public final A6o()J
    .locals 7

    .line 24062
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bs;->A05:Lcom/facebook/ads/redexgen/X/UN;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/UN;->A6o()J

    move-result-wide v5

    .line 24063
    .local p0, "nextLoadPositionUs":J
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v0, v5, v3

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Bs;->A00:J

    cmp-long v0, v1, v3

    if-eqz v0, :cond_1

    cmp-long v0, v5, v1

    if-ltz v0, :cond_1

    .line 24064
    :cond_0
    return-wide v3

    .line 24065
    :cond_1
    return-wide v5
.end method

.method public final A7Q()Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 24066
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bs;->A05:Lcom/facebook/ads/redexgen/X/UN;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/UN;->A7Q()Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public final A92()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24067
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bs;->A05:Lcom/facebook/ads/redexgen/X/UN;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/UN;->A92()V

    .line 24068
    return-void
.end method

.method public final bridge synthetic A9o(Lcom/facebook/ads/redexgen/X/Fb;)V
    .locals 0

    .line 24069
    check-cast p1, Lcom/facebook/ads/redexgen/X/UN;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Bs;->A02(Lcom/facebook/ads/redexgen/X/UN;)V

    return-void
.end method

.method public final ABF(Lcom/facebook/ads/redexgen/X/UN;)V
    .locals 1

    .line 24070
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bs;->A03:Lcom/facebook/ads/redexgen/X/UO;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/UO;->ABF(Lcom/facebook/ads/redexgen/X/UN;)V

    .line 24071
    return-void
.end method

.method public final ACV(Lcom/facebook/ads/redexgen/X/UO;J)V
    .locals 1

    .line 24072
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Bs;->A03:Lcom/facebook/ads/redexgen/X/UO;

    .line 24073
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bs;->A05:Lcom/facebook/ads/redexgen/X/UN;

    invoke-interface {v0, p0, p2, p3}, Lcom/facebook/ads/redexgen/X/UN;->ACV(Lcom/facebook/ads/redexgen/X/UO;J)V

    .line 24074
    return-void
.end method

.method public final ACo()J
    .locals 8

    .line 24075
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Bs;->A04()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_1

    .line 24076
    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/Bs;->A02:J

    .line 24077
    .local v3, "initialDiscontinuityUs":J
    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/Bs;->A02:J

    .line 24078
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Bs;->ACo()J

    move-result-wide v3

    .line 24079
    .local v5, "childDiscontinuityUs":J
    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    :goto_0
    return-wide v3

    :cond_0
    move-wide v3, v5

    goto :goto_0

    .line 24080
    .end local v3    # "initialDiscontinuityUs":J
    .end local v5    # "childDiscontinuityUs":J
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bs;->A05:Lcom/facebook/ads/redexgen/X/UN;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/UN;->ACo()J

    move-result-wide v6

    .line 24081
    .local v3, "discontinuityUs":J
    cmp-long v0, v6, v1

    if-nez v0, :cond_2

    .line 24082
    return-wide v1

    .line 24083
    :cond_2
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Bs;->A01:J

    const/4 v5, 0x1

    cmp-long v0, v6, v1

    if-ltz v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 24084
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Bs;->A00:J

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, v3, v1

    if-eqz v0, :cond_3

    cmp-long v0, v6, v3

    if-gtz v0, :cond_4

    :cond_3
    :goto_2
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 24085
    return-wide v6

    .line 24086
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 24087
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final ACv(J)V
    .locals 1

    .line 24088
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bs;->A05:Lcom/facebook/ads/redexgen/X/UN;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/UN;->ACv(J)V

    .line 24089
    return-void
.end method

.method public final ADb(J)J
    .locals 8

    .line 24090
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Bs;->A02:J

    .line 24091
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Bs;->A04:[Lcom/facebook/ads/redexgen/X/UT;

    array-length v2, v3

    const/4 v7, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, v3, v1

    .line 24092
    .local v4, "sampleStream":Lcom/facebook/ads/redexgen/X/UT;
    if-eqz v0, :cond_0

    .line 24093
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UT;->A01()V

    .line 24094
    .end local v4    # "sampleStream":Lcom/facebook/ads/redexgen/X/UT;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24095
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bs;->A05:Lcom/facebook/ads/redexgen/X/UN;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/UN;->ADb(J)J

    move-result-wide v5

    .line 24096
    .local p0, "seekUs":J
    cmp-long v0, v5, p1

    if-eqz v0, :cond_2

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Bs;->A01:J

    cmp-long v0, v5, v1

    if-ltz v0, :cond_3

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Bs;->A00:J

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    cmp-long v0, v5, v3

    if-gtz v0, :cond_3

    :cond_2
    const/4 v7, 0x1

    :cond_3
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 24097
    return-wide v5
.end method

.method public final ADc([Lcom/facebook/ads/redexgen/X/H4;[Z[Lcom/facebook/ads/redexgen/X/FZ;[ZJ)J
    .locals 15

    .line 24098
    move-object/from16 v4, p3

    array-length v0, v4

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/UT;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bs;->A04:[Lcom/facebook/ads/redexgen/X/UT;

    .line 24099
    array-length v0, v4

    new-array v11, v0, [Lcom/facebook/ads/redexgen/X/FZ;

    .line 24100
    .local p0, "childStreams":[Lcom/facebook/ads/redexgen/X/FZ;
    const/4 v2, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, v4

    const/4 v3, 0x0

    if-ge v2, v0, :cond_1

    .line 24101
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Bs;->A04:[Lcom/facebook/ads/redexgen/X/UT;

    aget-object v0, v4, v2

    check-cast v0, Lcom/facebook/ads/redexgen/X/UT;

    aput-object v0, v1, v2

    .line 24102
    aget-object v0, v1, v2

    if-eqz v0, :cond_0

    aget-object v0, v1, v2

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/UT;->A01:Lcom/facebook/ads/redexgen/X/FZ;

    :cond_0
    aput-object v3, v11, v2

    .line 24103
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 24104
    .end local v9    # "i":I
    :cond_1
    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/Bs;->A05:Lcom/facebook/ads/redexgen/X/UN;

    .line 24105
    move-wide/from16 v13, p5

    move-object/from16 v12, p4

    move-object/from16 v10, p2

    move-object/from16 v9, p1

    invoke-interface/range {v8 .. v14}, Lcom/facebook/ads/redexgen/X/UN;->ADc([Lcom/facebook/ads/redexgen/X/H4;[Z[Lcom/facebook/ads/redexgen/X/FZ;[ZJ)J

    move-result-wide v7

    .line 24106
    .local v9, "enablePositionUs":J
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Bs;->A04()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Bs;->A01:J

    cmp-long v2, v13, v0

    if-nez v2, :cond_7

    .line 24107
    invoke-static {v0, v1, v9}, Lcom/facebook/ads/redexgen/X/Bs;->A03(J[Lcom/facebook/ads/redexgen/X/H4;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 24108
    move-wide v0, v7

    .line 24109
    :goto_1
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Bs;->A02:J

    .line 24110
    cmp-long v0, v7, v13

    if-eqz v0, :cond_2

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Bs;->A01:J

    cmp-long v0, v7, v1

    if-ltz v0, :cond_6

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Bs;->A00:J

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v0, v1, v5

    if-eqz v0, :cond_2

    cmp-long v0, v7, v1

    if-gtz v0, :cond_6

    :cond_2
    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 24111
    const/4 v5, 0x0

    .local v4, "i":I
    :goto_3
    array-length v0, v4

    if-ge v5, v0, :cond_8

    .line 24112
    aget-object v0, v11, v5

    if-nez v0, :cond_4

    .line 24113
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bs;->A04:[Lcom/facebook/ads/redexgen/X/UT;

    aput-object v3, v0, v5

    .line 24114
    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bs;->A04:[Lcom/facebook/ads/redexgen/X/UT;

    aget-object v0, v0, v5

    aput-object v0, v4, v5

    .line 24115
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 24116
    :cond_4
    aget-object v0, v4, v5

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bs;->A04:[Lcom/facebook/ads/redexgen/X/UT;

    aget-object v0, v0, v5

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/UT;->A01:Lcom/facebook/ads/redexgen/X/FZ;

    aget-object v0, v11, v5

    if-eq v1, v0, :cond_3

    .line 24117
    :cond_5
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Bs;->A04:[Lcom/facebook/ads/redexgen/X/UT;

    aget-object v1, v11, v5

    new-instance v0, Lcom/facebook/ads/redexgen/X/UT;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/UT;-><init>(Lcom/facebook/ads/redexgen/X/Bs;Lcom/facebook/ads/redexgen/X/FZ;)V

    aput-object v0, v2, v5

    goto :goto_4

    .line 24118
    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 24119
    :cond_7
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_1

    .line 24120
    .end local v4    # "i":I
    :cond_8
    return-wide v7
.end method
