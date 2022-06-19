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

.field public final A08:Lcom/facebook/ads/redexgen/X/UN;

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

    .line 20884
    move-object v5, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20885
    iput-object p1, v5, Lcom/facebook/ads/redexgen/X/AG;->A0E:[Lcom/facebook/ads/redexgen/X/AY;

    .line 20886
    move-object/from16 v6, p8

    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/AH;->A03:J

    sub-long/2addr v2, v0

    iput-wide v2, v5, Lcom/facebook/ads/redexgen/X/AG;->A00:J

    .line 20887
    move-object/from16 v0, p4

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/AG;->A0D:Lcom/facebook/ads/redexgen/X/H7;

    .line 20888
    move-object/from16 v1, p6

    iput-object v1, v5, Lcom/facebook/ads/redexgen/X/AG;->A0C:Lcom/facebook/ads/redexgen/X/FE;

    .line 20889
    invoke-static/range {p7 .. p7}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/AG;->A09:Ljava/lang/Object;

    .line 20890
    iput-object v6, v5, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    .line 20891
    array-length v0, p1

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/FZ;

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/AG;->A0A:[Lcom/facebook/ads/redexgen/X/FZ;

    .line 20892
    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/AG;->A0B:[Z

    .line 20893
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/AH;->A04:Lcom/facebook/ads/redexgen/X/FC;

    move-object/from16 v2, p5

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/FE;->A4N(Lcom/facebook/ads/redexgen/X/FC;Lcom/facebook/ads/redexgen/X/HA;)Lcom/facebook/ads/redexgen/X/UN;

    move-result-object v8

    .line 20894
    .local v2, "mediaPeriod":Lcom/facebook/ads/redexgen/X/UN;
    iget-wide v3, v6, Lcom/facebook/ads/redexgen/X/AH;->A02:J

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 20895
    new-instance v7, Lcom/facebook/ads/redexgen/X/Bs;

    const/4 v9, 0x1

    const-wide/16 v10, 0x0

    iget-wide v12, v6, Lcom/facebook/ads/redexgen/X/AH;->A02:J

    invoke-direct/range {v7 .. v13}, Lcom/facebook/ads/redexgen/X/Bs;-><init>(Lcom/facebook/ads/redexgen/X/UN;ZJJ)V

    move-object v8, v7

    .line 20896
    :cond_0
    iput-object v8, v5, Lcom/facebook/ads/redexgen/X/AG;->A08:Lcom/facebook/ads/redexgen/X/UN;

    .line 20897
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

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x1b

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
        0x3ct
        0x14t
        0x15t
        0x18t
        0x10t
        0x21t
        0x14t
        0x3t
        0x18t
        0x1et
        0x15t
        0x39t
        0x1et
        0x1dt
        0x15t
        0x14t
        0x3t
        0x1et
        0x2bt
        0x3ct
        0x27t
        0x21t
        0x2at
        0x6et
        0x3ct
        0x2bt
        0x22t
        0x2bt
        0x2ft
        0x3dt
        0x2bt
        0x6et
        0x28t
        0x2ft
        0x27t
        0x22t
        0x2bt
        0x2at
        0x60t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "djLNfLTYXBBWxW1OAaenZ41u8bpF"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "DN6xHgIpO2EBYO8k"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "sYHp7ujmIaeyQ6TYN2j85hlIS3Z4GX3B"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "rOwywTApx94l8X4a6MJyyOdwioum5sDq"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "gfoh6MgFbbfS5hIEl8hlAudzR53Jcpky"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Q32PGikOq0k"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "pFNRzERaCxLbRj8m"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "hb0SBJ7uyN4rXb8eS886eV22oVs3k5Sf"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/AG;->A0G:[Ljava/lang/String;

    return-void
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/H8;)V
    .locals 3

    .line 20898
    const/4 v2, 0x0

    .local p0, "i":I
    :goto_0
    iget v0, p1, Lcom/facebook/ads/redexgen/X/H8;->A00:I

    if-ge v2, v0, :cond_1

    .line 20899
    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/H8;->A00(I)Z

    move-result v1

    .line 20900
    .local p1, "rendererEnabled":Z
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/H8;->A01:Lcom/facebook/ads/redexgen/X/H5;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/H5;->A01(I)Lcom/facebook/ads/redexgen/X/H4;

    move-result-object v0

    .line 20901
    .local v2, "trackSelection":Lcom/facebook/ads/redexgen/X/H4;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 20902
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/H4;->A55()V

    .line 20903
    .end local p1    # "rendererEnabled":Z
    .end local v2    # "trackSelection":Lcom/facebook/ads/redexgen/X/H4;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 20904
    .end local p0    # "i":I
    :cond_1
    return-void
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/H8;)V
    .locals 1

    .line 20905
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A07:Lcom/facebook/ads/redexgen/X/H8;

    .line 20906
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AG;->A07:Lcom/facebook/ads/redexgen/X/H8;

    .line 20907
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A07:Lcom/facebook/ads/redexgen/X/H8;

    if-eqz v0, :cond_0

    .line 20908
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/AG;->A03(Lcom/facebook/ads/redexgen/X/H8;)V

    .line 20909
    :cond_0
    return-void
.end method

.method private A05([Lcom/facebook/ads/redexgen/X/FZ;)V
    .locals 3

    .line 20910
    const/4 v2, 0x0

    .local p0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AG;->A0E:[Lcom/facebook/ads/redexgen/X/AY;

    array-length v0, v1

    if-ge v2, v0, :cond_1

    .line 20911
    aget-object v0, v1, v2

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AY;->A7R()I

    move-result v1

    const/4 v0, 0x5

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A04:Lcom/facebook/ads/redexgen/X/H8;

    .line 20912
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/H8;->A00(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20913
    new-instance v0, Lcom/facebook/ads/redexgen/X/US;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/US;-><init>()V

    aput-object v0, p1, v2

    .line 20914
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 20915
    .end local p0    # "i":I
    :cond_1
    return-void
.end method

.method private A06([Lcom/facebook/ads/redexgen/X/FZ;)V
    .locals 3

    .line 20916
    const/4 v2, 0x0

    .local p0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AG;->A0E:[Lcom/facebook/ads/redexgen/X/AY;

    array-length v0, v1

    if-ge v2, v0, :cond_1

    .line 20917
    aget-object v0, v1, v2

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AY;->A7R()I

    move-result v1

    const/4 v0, 0x5

    if-ne v1, v0, :cond_0

    .line 20918
    const/4 v0, 0x0

    aput-object v0, p1, v2

    .line 20919
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 20920
    .end local p0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public final A07()J
    .locals 2

    .line 20921
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A06:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A08:Lcom/facebook/ads/redexgen/X/UN;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/UN;->A6o()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final A08()J
    .locals 2

    .line 20922
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A00:J

    return-wide v0
.end method

.method public final A09(J)J
    .locals 2

    .line 20923
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AG;->A08()J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public final A0A(J)J
    .locals 2

    .line 20924
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AG;->A08()J

    move-result-wide v0

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public final A0B(JZ)J
    .locals 2

    .line 20925
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A0E:[Lcom/facebook/ads/redexgen/X/AY;

    array-length v0, v0

    new-array v0, v0, [Z

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/AG;->A0C(JZ[Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A0C(JZ[Z)J
    .locals 11

    .line 20926
    const/4 v4, 0x0

    .local p0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A04:Lcom/facebook/ads/redexgen/X/H8;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/H8;->A00:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v4, v0, :cond_1

    .line 20927
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/AG;->A0B:[Z

    if-nez p3, :cond_0

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/AG;->A04:Lcom/facebook/ads/redexgen/X/H8;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A07:Lcom/facebook/ads/redexgen/X/H8;

    .line 20928
    invoke-virtual {v2, v0, v4}, Lcom/facebook/ads/redexgen/X/H8;->A02(Lcom/facebook/ads/redexgen/X/H8;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    aput-boolean v1, v3, v4

    .line 20929
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 20930
    .end local p0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A0A:[Lcom/facebook/ads/redexgen/X/FZ;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/AG;->A06([Lcom/facebook/ads/redexgen/X/FZ;)V

    .line 20931
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A04:Lcom/facebook/ads/redexgen/X/H8;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/AG;->A04(Lcom/facebook/ads/redexgen/X/H8;)V

    .line 20932
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A04:Lcom/facebook/ads/redexgen/X/H8;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/H8;->A01:Lcom/facebook/ads/redexgen/X/H5;

    .line 20933
    .local p0, "trackSelections":Lcom/facebook/ads/redexgen/X/H5;
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/AG;->A08:Lcom/facebook/ads/redexgen/X/UN;

    .line 20934
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/H5;->A02()[Lcom/facebook/ads/redexgen/X/H4;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/AG;->A0B:[Z

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/AG;->A0A:[Lcom/facebook/ads/redexgen/X/FZ;

    .line 20935
    move-object v8, p4

    move-wide v9, p1

    invoke-interface/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/UN;->ADc([Lcom/facebook/ads/redexgen/X/H4;[Z[Lcom/facebook/ads/redexgen/X/FZ;[ZJ)J

    move-result-wide v5

    .line 20936
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A0A:[Lcom/facebook/ads/redexgen/X/FZ;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/AG;->A05([Lcom/facebook/ads/redexgen/X/FZ;)V

    .line 20937
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/AG;->A05:Z

    .line 20938
    const/4 v4, 0x0

    .local v9, "i":I
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AG;->A0A:[Lcom/facebook/ads/redexgen/X/FZ;

    array-length v0, v1

    if-ge v4, v0, :cond_5

    .line 20939
    aget-object v0, v1, v4

    if-eqz v0, :cond_3

    .line 20940
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A04:Lcom/facebook/ads/redexgen/X/H8;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/H8;->A00(I)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 20941
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A0E:[Lcom/facebook/ads/redexgen/X/AY;

    aget-object v0, v0, v4

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AY;->A7R()I

    move-result v1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_2

    .line 20942
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/AG;->A05:Z

    .line 20943
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 20944
    :cond_3
    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/H5;->A01(I)Lcom/facebook/ads/redexgen/X/H4;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    .line 20945
    .end local v9    # "i":I
    :cond_5
    return-wide v5
.end method

.method public final A0D(Z)J
    .locals 5

    .line 20946
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A06:Z

    if-nez v0, :cond_0

    .line 20947
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/AH;->A03:J

    return-wide v0

    .line 20948
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A08:Lcom/facebook/ads/redexgen/X/UN;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/UN;->A5m()J

    move-result-wide v3

    .line 20949
    .local p0, "bufferedPositionUs":J
    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 20950
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/AH;->A01:J

    .line 20951
    :cond_1
    return-wide v3
.end method

.method public final A0E()V
    .locals 5

    .line 20952
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/AG;->A04(Lcom/facebook/ads/redexgen/X/H8;)V

    .line 20953
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/AH;->A02:J

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 20954
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AG;->A0C:Lcom/facebook/ads/redexgen/X/FE;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A08:Lcom/facebook/ads/redexgen/X/UN;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Bs;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Bs;->A05:Lcom/facebook/ads/redexgen/X/UN;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/FE;->AD4(Lcom/facebook/ads/redexgen/X/UN;)V

    goto :goto_0

    .line 20955
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AG;->A0C:Lcom/facebook/ads/redexgen/X/FE;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A08:Lcom/facebook/ads/redexgen/X/UN;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/FE;->AD4(Lcom/facebook/ads/redexgen/X/UN;)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20956
    :catch_0
    move-exception v4

    .line 20957
    .local p0, "e":Ljava/lang/RuntimeException;
    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AG;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x11

    const/16 v1, 0x16

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AG;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20958
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

    .line 20959
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A06:Z

    .line 20960
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A08:Lcom/facebook/ads/redexgen/X/UN;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/UN;->A7Q()Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A03:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    .line 20961
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/AG;->A0J(F)Z

    .line 20962
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/AH;->A03:J

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/AG;->A0B(JZ)J

    move-result-wide v2

    .line 20963
    .local p0, "newStartPositionUs":J
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/AG;->A00:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/AH;->A03:J

    sub-long/2addr v0, v2

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/AG;->A00:J

    .line 20964
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    invoke-virtual {v0, v2, v3}, Lcom/facebook/ads/redexgen/X/AH;->A01(J)Lcom/facebook/ads/redexgen/X/AH;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    .line 20965
    return-void
.end method

.method public final A0G(J)V
    .locals 3

    .line 20966
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/AG;->A09(J)J

    move-result-wide v1

    .line 20967
    .local p0, "loadingPeriodPositionUs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A08:Lcom/facebook/ads/redexgen/X/UN;

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/UN;->A47(J)Z

    .line 20968
    return-void
.end method

.method public final A0H(J)V
    .locals 3

    .line 20969
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A06:Z

    if-eqz v0, :cond_0

    .line 20970
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/AG;->A08:Lcom/facebook/ads/redexgen/X/UN;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/AG;->A09(J)J

    move-result-wide v0

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/UN;->ACv(J)V

    .line 20971
    :cond_0
    return-void
.end method

.method public final A0I()Z
    .locals 5

    .line 20972
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A06:Z

    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/AG;->A05:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/AG;->A0G:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x11

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

    const-string v1, "EKlCeZiazUf"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "Ee9BojYmUpHV5mZwNipxwtWcknfq"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A08:Lcom/facebook/ads/redexgen/X/UN;

    .line 20973
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/UN;->A5m()J

    move-result-wide v3

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 20974
    :goto_0
    return v0
.end method

.method public final A0J(F)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 20975
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/AG;->A0D:Lcom/facebook/ads/redexgen/X/H7;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AG;->A0E:[Lcom/facebook/ads/redexgen/X/AY;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A03:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    .line 20976
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/H7;->A0V([Lcom/facebook/ads/redexgen/X/AY;Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;)Lcom/facebook/ads/redexgen/X/H8;

    move-result-object v1

    .line 20977
    .local p0, "selectorResult":Lcom/facebook/ads/redexgen/X/H8;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A07:Lcom/facebook/ads/redexgen/X/H8;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/H8;->A01(Lcom/facebook/ads/redexgen/X/H8;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 20978
    return v3

    .line 20979
    :cond_0
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/AG;->A04:Lcom/facebook/ads/redexgen/X/H8;

    .line 20980
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AG;->A04:Lcom/facebook/ads/redexgen/X/H8;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/H8;->A01:Lcom/facebook/ads/redexgen/X/H5;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/H5;->A02()[Lcom/facebook/ads/redexgen/X/H4;

    move-result-object v2

    array-length v1, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v0, v2, v3

    .line 20981
    .local v0, "trackSelection":Lcom/facebook/ads/redexgen/X/H4;
    if-eqz v0, :cond_1

    .line 20982
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/H4;->AB8(F)V

    .line 20983
    .end local v0    # "trackSelection":Lcom/facebook/ads/redexgen/X/H4;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 20984
    :cond_2
    const/4 v0, 0x1

    return v0
.end method
