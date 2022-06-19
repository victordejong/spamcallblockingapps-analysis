.class public final Lcom/facebook/ads/redexgen/X/AG;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A0F:[B

.field public static A0G:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/AG;

.field public A02:Lcom/facebook/ads/redexgen/X/AH;

.field public A03:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

.field public A04:Lcom/facebook/ads/redexgen/X/H8;

.field public A05:Z

.field public A06:Z

.field public A07:Lcom/facebook/ads/redexgen/X/H8;

.field public final A08:Lcom/facebook/ads/redexgen/X/aW;

.field public final A09:Ljava/lang/Object;

.field public final A0A:[Lcom/facebook/ads/redexgen/X/FZ;

.field public final A0B:[Z

.field public final A0C:Lcom/facebook/ads/redexgen/X/FE;

.field public final A0D:Lcom/facebook/ads/redexgen/X/H7;

.field public final A0E:[Lcom/facebook/ads/redexgen/X/AY;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/AG;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/AG;->A01()V

    return-void
.end method

.method public constructor <init>([Lcom/facebook/ads/redexgen/X/AY;JLcom/facebook/ads/redexgen/X/H7;Lcom/facebook/ads/redexgen/X/HA;Lcom/facebook/ads/redexgen/X/FE;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/AH;)V
    .locals 14

    move-wide/from16 v2, p2

    .line 20817
    move-object v5, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20818
    iput-object p1, v5, Lcom/facebook/ads/redexgen/X/AG;->A0E:[Lcom/facebook/ads/redexgen/X/AY;

    .line 20819
    move-object/from16 v6, p8

    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/AH;->A03:J

    sub-long/2addr v2, v0

    iput-wide v2, v5, Lcom/facebook/ads/redexgen/X/AG;->A00:J

    .line 20820
    move-object/from16 v0, p4

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/AG;->A0D:Lcom/facebook/ads/redexgen/X/H7;

    .line 20821
    move-object/from16 v1, p6

    iput-object v1, v5, Lcom/facebook/ads/redexgen/X/AG;->A0C:Lcom/facebook/ads/redexgen/X/FE;

    .line 20822
    invoke-static/range {p7 .. p7}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/AG;->A09:Ljava/lang/Object;

    .line 20823
    iput-object v6, v5, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    .line 20824
    array-length v0, p1

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/FZ;

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/AG;->A0A:[Lcom/facebook/ads/redexgen/X/FZ;

    .line 20825
    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/AG;->A0B:[Z

    .line 20826
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/AH;->A04:Lcom/facebook/ads/redexgen/X/FC;

    move-object/from16 v2, p5

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/FE;->A4Q(Lcom/facebook/ads/redexgen/X/FC;Lcom/facebook/ads/redexgen/X/HA;)Lcom/facebook/ads/redexgen/X/aW;

    move-result-object v8

    .line 20827
    .local v2, "mediaPeriod":Lcom/facebook/ads/redexgen/X/aW;
    iget-wide v3, v6, Lcom/facebook/ads/redexgen/X/AH;->A02:J

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 20828
    new-instance v7, Lcom/facebook/ads/redexgen/X/C8;

    const/4 v9, 0x1

    const-wide/16 v10, 0x0

    iget-wide v12, v6, Lcom/facebook/ads/redexgen/X/AH;->A02:J

    invoke-direct/range {v7 .. v13}, Lcom/facebook/ads/redexgen/X/C8;-><init>(Lcom/facebook/ads/redexgen/X/aW;ZJJ)V

    move-object v8, v7

    .line 20829
    :cond_0
    iput-object v8, v5, Lcom/facebook/ads/redexgen/X/AG;->A08:Lcom/facebook/ads/redexgen/X/aW;

    .line 20830
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/AG;->A0F:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x69

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/AG;->A0F:[B

    return-void

    :array_0
    .array-data 1
        0x2at
        0x42t
        0x41t
        0x46t
        0x3et
        0x2dt
        0x42t
        0x4ft
        0x46t
        0x4ct
        0x41t
        0x25t
        0x4ct
        0x49t
        0x41t
        0x42t
        0x4ft
        0x32t
        0x47t
        0x54t
        0x4bt
        0x51t
        0x46t
        0x2t
        0x54t
        0x47t
        0x4et
        0x47t
        0x43t
        0x55t
        0x47t
        0x2t
        0x48t
        0x43t
        0x4bt
        0x4et
        0x47t
        0x46t
        0x10t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "veEP335vIU"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "oLB3f1kinZ5WOxb9JrKF9bI12rnC7Hj4"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "JTOn230cVZ0r3ImY4sjYKOAnliXJWsYG"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "qI3jAuZXuqqi9ieUnmB3HYz1RRsZ6ptY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "FV6PRsoISyO05pqLoteca44"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "2aqdzlIyDZTOMtMqQXI"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "yc78GsDKEqwKVvSYIw58zbgjS6oh7wuT"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "vKvp49qN2fZ5TwJRBPfaEcKl4xZFQEWJ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/AG;->A0G:[Ljava/lang/String;

    return-void
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/H8;)V
    .locals 5

    .line 20831
    const/4 v3, 0x0

    .local p0, "i":I
    :goto_0
    iget v4, p1, Lcom/facebook/ads/redexgen/X/H8;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/AG;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/AG;->A0G:[Ljava/lang/String;

    const-string v1, "zTmDI2eB0pskJnfpVdGiT2gSjaG941UO"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "GwIuNKKr0Vh704cWvV3fzSTRpdmwONBr"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ge v3, v4, :cond_2

    .line 20832
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/H8;->A00(I)Z

    move-result v1

    .line 20833
    .local p1, "rendererEnabled":Z
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/H8;->A01:Lcom/facebook/ads/redexgen/X/H5;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/H5;->A01(I)Lcom/facebook/ads/redexgen/X/H4;

    move-result-object v0

    .line 20834
    .local v3, "trackSelection":Lcom/facebook/ads/redexgen/X/H4;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 20835
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/H4;->A57()V

    .line 20836
    .end local p1    # "rendererEnabled":Z
    .end local v3    # "trackSelection":Lcom/facebook/ads/redexgen/X/H4;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 20837
    .end local p0    # "i":I
    :cond_2
    return-void
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/H8;)V
    .locals 1

    .line 20838
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A07:Lcom/facebook/ads/redexgen/X/H8;

    .line 20839
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AG;->A07:Lcom/facebook/ads/redexgen/X/H8;

    .line 20840
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A07:Lcom/facebook/ads/redexgen/X/H8;

    if-eqz v0, :cond_0

    .line 20841
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/AG;->A03(Lcom/facebook/ads/redexgen/X/H8;)V

    .line 20842
    :cond_0
    return-void
.end method

.method private A05([Lcom/facebook/ads/redexgen/X/FZ;)V
    .locals 3

    .line 20843
    const/4 v2, 0x0

    .local p0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AG;->A0E:[Lcom/facebook/ads/redexgen/X/AY;

    array-length v0, v1

    if-ge v2, v0, :cond_1

    .line 20844
    aget-object v0, v1, v2

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AY;->A7P()I

    move-result v1

    const/4 v0, 0x5

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A04:Lcom/facebook/ads/redexgen/X/H8;

    .line 20845
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/H8;->A00(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20846
    new-instance v0, Lcom/facebook/ads/redexgen/X/aQ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/aQ;-><init>()V

    aput-object v0, p1, v2

    .line 20847
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 20848
    .end local p0    # "i":I
    :cond_1
    return-void
.end method

.method private A06([Lcom/facebook/ads/redexgen/X/FZ;)V
    .locals 3

    .line 20849
    const/4 v2, 0x0

    .local p0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AG;->A0E:[Lcom/facebook/ads/redexgen/X/AY;

    array-length v0, v1

    if-ge v2, v0, :cond_1

    .line 20850
    aget-object v0, v1, v2

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AY;->A7P()I

    move-result v1

    const/4 v0, 0x5

    if-ne v1, v0, :cond_0

    .line 20851
    const/4 v0, 0x0

    aput-object v0, p1, v2

    .line 20852
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 20853
    .end local p0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public final A07()J
    .locals 2

    .line 20854
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A06:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A08:Lcom/facebook/ads/redexgen/X/aW;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/aW;->A6o()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final A08()J
    .locals 2

    .line 20855
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A00:J

    return-wide v0
.end method

.method public final A09(J)J
    .locals 2

    .line 20856
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AG;->A08()J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public final A0A(J)J
    .locals 2

    .line 20857
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AG;->A08()J

    move-result-wide v0

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public final A0B(JZ)J
    .locals 2

    .line 20858
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A0E:[Lcom/facebook/ads/redexgen/X/AY;

    array-length v0, v0

    new-array v0, v0, [Z

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/AG;->A0C(JZ[Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A0C(JZ[Z)J
    .locals 12

    .line 20859
    const/4 v4, 0x0

    .local p0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A04:Lcom/facebook/ads/redexgen/X/H8;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/H8;->A00:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v4, v0, :cond_1

    .line 20860
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/AG;->A0B:[Z

    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AG;->A04:Lcom/facebook/ads/redexgen/X/H8;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A07:Lcom/facebook/ads/redexgen/X/H8;

    .line 20861
    invoke-virtual {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/H8;->A02(Lcom/facebook/ads/redexgen/X/H8;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    aput-boolean v2, v3, v4

    .line 20862
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 20863
    .end local p0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A0A:[Lcom/facebook/ads/redexgen/X/FZ;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/AG;->A06([Lcom/facebook/ads/redexgen/X/FZ;)V

    .line 20864
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A04:Lcom/facebook/ads/redexgen/X/H8;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/AG;->A04(Lcom/facebook/ads/redexgen/X/H8;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/AG;->A0G:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x39

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 20865
    :cond_2
    sget-object v4, Lcom/facebook/ads/redexgen/X/AG;->A0G:[Ljava/lang/String;

    const-string v1, "QjaNyuHuRXZwiIdLefV3JnB"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    const-string v1, "qMpMOgpNZnnJVrHuPMC"

    const/4 v0, 0x5

    aput-object v1, v4, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A04:Lcom/facebook/ads/redexgen/X/H8;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/H8;->A01:Lcom/facebook/ads/redexgen/X/H5;

    .line 20866
    .local p0, "trackSelections":Lcom/facebook/ads/redexgen/X/H5;
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/AG;->A08:Lcom/facebook/ads/redexgen/X/aW;

    .line 20867
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/H5;->A02()[Lcom/facebook/ads/redexgen/X/H4;

    move-result-object v6

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/AG;->A0B:[Z

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/AG;->A0A:[Lcom/facebook/ads/redexgen/X/FZ;

    .line 20868
    move-wide v10, p1

    move-object/from16 v9, p4

    invoke-interface/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/aW;->ADb([Lcom/facebook/ads/redexgen/X/H4;[Z[Lcom/facebook/ads/redexgen/X/FZ;[ZJ)J

    move-result-wide v7

    .line 20869
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A0A:[Lcom/facebook/ads/redexgen/X/FZ;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/AG;->A05([Lcom/facebook/ads/redexgen/X/FZ;)V

    .line 20870
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/AG;->A05:Z

    .line 20871
    const/4 v5, 0x0

    .local v10, "i":I
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AG;->A0A:[Lcom/facebook/ads/redexgen/X/FZ;

    array-length v0, v1

    if-ge v5, v0, :cond_7

    .line 20872
    aget-object v6, v1, v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/AG;->A0G:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x39

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/AG;->A0G:[Ljava/lang/String;

    const-string v1, "ECZNN42Owql1H3dvmIySnd1"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "Y1ZBsUrBheVlA6CxnB4"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v6, :cond_5

    .line 20873
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A04:Lcom/facebook/ads/redexgen/X/H8;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/H8;->A00(I)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 20874
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A0E:[Lcom/facebook/ads/redexgen/X/AY;

    aget-object v0, v0, v5

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AY;->A7P()I

    move-result v1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_3

    .line 20875
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/AG;->A05:Z

    .line 20876
    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/AG;->A0G:[Ljava/lang/String;

    const-string v1, "F5cg"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v6, :cond_5

    goto :goto_2

    .line 20877
    :cond_5
    invoke-virtual {v4, v5}, Lcom/facebook/ads/redexgen/X/H5;->A01(I)Lcom/facebook/ads/redexgen/X/H4;

    move-result-object v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_4
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    .line 20878
    .end local v10    # "i":I
    :cond_7
    return-wide v7
.end method

.method public final A0D(Z)J
    .locals 5

    .line 20879
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A06:Z

    if-nez v0, :cond_0

    .line 20880
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/AH;->A03:J

    return-wide v0

    .line 20881
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A08:Lcom/facebook/ads/redexgen/X/aW;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/aW;->A5m()J

    move-result-wide v3

    .line 20882
    .local p0, "bufferedPositionUs":J
    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 20883
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    sget-object v2, Lcom/facebook/ads/redexgen/X/AG;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/AG;->A0G:[Ljava/lang/String;

    const-string v1, "Yxep602BeUF0L8l"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-wide v3, v3, Lcom/facebook/ads/redexgen/X/AH;->A01:J

    .line 20884
    :cond_2
    return-wide v3
.end method

.method public final A0E()V
    .locals 5

    .line 20885
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/AG;->A04(Lcom/facebook/ads/redexgen/X/H8;)V

    .line 20886
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/AH;->A02:J

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 20887
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AG;->A0C:Lcom/facebook/ads/redexgen/X/FE;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A08:Lcom/facebook/ads/redexgen/X/aW;

    check-cast v0, Lcom/facebook/ads/redexgen/X/C8;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/C8;->A05:Lcom/facebook/ads/redexgen/X/aW;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/FE;->AD4(Lcom/facebook/ads/redexgen/X/aW;)V

    goto :goto_0

    .line 20888
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AG;->A0C:Lcom/facebook/ads/redexgen/X/FE;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A08:Lcom/facebook/ads/redexgen/X/aW;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/FE;->AD4(Lcom/facebook/ads/redexgen/X/aW;)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20889
    :catch_0
    move-exception v4

    .line 20890
    .local p0, "e":Ljava/lang/RuntimeException;
    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AG;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x11

    const/16 v1, 0x16

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AG;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20891
    .end local p0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method public final A0F(F)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 20892
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A06:Z

    .line 20893
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A08:Lcom/facebook/ads/redexgen/X/aW;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/aW;->A7O()Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A03:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    .line 20894
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/AG;->A0J(F)Z

    .line 20895
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/AH;->A03:J

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/AG;->A0B(JZ)J

    move-result-wide v2

    .line 20896
    .local p0, "newStartPositionUs":J
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/AG;->A00:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/AH;->A03:J

    sub-long/2addr v0, v2

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/AG;->A00:J

    .line 20897
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    invoke-virtual {v0, v2, v3}, Lcom/facebook/ads/redexgen/X/AH;->A01(J)Lcom/facebook/ads/redexgen/X/AH;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    .line 20898
    return-void
.end method

.method public final A0G(J)V
    .locals 3

    .line 20899
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/AG;->A09(J)J

    move-result-wide v1

    .line 20900
    .local p0, "loadingPeriodPositionUs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A08:Lcom/facebook/ads/redexgen/X/aW;

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/aW;->A4B(J)Z

    .line 20901
    return-void
.end method

.method public final A0H(J)V
    .locals 3

    .line 20902
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A06:Z

    if-eqz v0, :cond_0

    .line 20903
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/AG;->A08:Lcom/facebook/ads/redexgen/X/aW;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/AG;->A09(J)J

    move-result-wide v0

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/aW;->ACv(J)V

    .line 20904
    :cond_0
    return-void
.end method

.method public final A0I()Z
    .locals 5

    .line 20905
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A06:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A05:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A08:Lcom/facebook/ads/redexgen/X/aW;

    .line 20906
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/aW;->A5m()J

    move-result-wide v3

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 20907
    :goto_0
    return v0

    .line 20908
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0J(F)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 20909
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/AG;->A0D:Lcom/facebook/ads/redexgen/X/H7;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AG;->A0E:[Lcom/facebook/ads/redexgen/X/AY;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A03:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    .line 20910
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/H7;->A0V([Lcom/facebook/ads/redexgen/X/AY;Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;)Lcom/facebook/ads/redexgen/X/H8;

    move-result-object v1

    .line 20911
    .local p0, "selectorResult":Lcom/facebook/ads/redexgen/X/H8;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A07:Lcom/facebook/ads/redexgen/X/H8;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/H8;->A01(Lcom/facebook/ads/redexgen/X/H8;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 20912
    return v3

    .line 20913
    :cond_0
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/AG;->A04:Lcom/facebook/ads/redexgen/X/H8;

    .line 20914
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A04:Lcom/facebook/ads/redexgen/X/H8;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/H8;->A01:Lcom/facebook/ads/redexgen/X/H5;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/H5;->A02()[Lcom/facebook/ads/redexgen/X/H4;

    move-result-object v2

    array-length v1, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v0, v2, v3

    .line 20915
    .local v0, "trackSelection":Lcom/facebook/ads/redexgen/X/H4;
    if-eqz v0, :cond_1

    .line 20916
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/H4;->AB8(F)V

    .line 20917
    .end local v0    # "trackSelection":Lcom/facebook/ads/redexgen/X/H4;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 20918
    :cond_2
    const/4 v0, 0x1

    return v0
.end method
