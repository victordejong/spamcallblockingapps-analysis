.class public final Lcom/facebook/ads/redexgen/X/Cx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/VT;


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:J

.field public final A02:J

.field public final A03:J

.field public final A04:[J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Cx;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Cx;->A03()V

    return-void
.end method

.method public constructor <init>(JIJ)V
    .locals 9

    .line 25949
    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v4, p4

    move v3, p3

    move-wide v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/redexgen/X/Cx;-><init>(JIJJ[J)V

    .line 25950
    return-void
.end method

.method public constructor <init>(JIJJ[J)V
    .locals 0

    .line 25951
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25952
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Cx;->A02:J

    .line 25953
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Cx;->A00:I

    .line 25954
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/Cx;->A03:J

    .line 25955
    iput-wide p6, p0, Lcom/facebook/ads/redexgen/X/Cx;->A01:J

    .line 25956
    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/Cx;->A04:[J

    .line 25957
    return-void
.end method

.method private A00(I)J
    .locals 4

    .line 25958
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Cx;->A03:J

    int-to-long v0, p1

    mul-long/2addr v2, v0

    const-wide/16 v0, 0x64

    div-long/2addr v2, v0

    return-wide v2
.end method

.method public static A01(JJLcom/facebook/ads/redexgen/X/CM;Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/Cx;
    .locals 13

    .line 25959
    move-object/from16 v2, p4

    iget v5, v2, Lcom/facebook/ads/redexgen/X/CM;->A04:I

    .line 25960
    .local v1, "samplesPerFrame":I
    iget v4, v2, Lcom/facebook/ads/redexgen/X/CM;->A03:I

    .line 25961
    .local v0, "sampleRate":I
    invoke-virtual/range {p5 .. p5}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v3

    .line 25962
    .local v0, "flags":I
    and-int/lit8 v1, v3, 0x1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    invoke-virtual/range {p5 .. p5}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v0

    .local v0, "frameCount":I
    if-nez v0, :cond_1

    .line 25963
    .end local v0    # "frameCount":I
    .end local v0
    .end local v8
    .end local v0
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 25964
    :cond_1
    int-to-long v6, v0

    int-to-long v8, v5

    const-wide/32 v0, 0xf4240

    mul-long/2addr v8, v0

    int-to-long v10, v4

    .line 25965
    invoke-static/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/Ic;->A0F(JJJ)J

    move-result-wide v8

    .line 25966
    .local v0, "durationUs":J
    and-int/lit8 v1, v3, 0x6

    const/4 v0, 0x6

    move-wide v5, p2

    if-eq v1, v0, :cond_2

    .line 25967
    new-instance v4, Lcom/facebook/ads/redexgen/X/Cx;

    iget v7, v2, Lcom/facebook/ads/redexgen/X/CM;->A02:I

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Cx;-><init>(JIJ)V

    return-object v4

    .line 25968
    :cond_2
    invoke-virtual/range {p5 .. p5}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v0

    int-to-long v10, v0

    .line 25969
    .local v2, "dataSize":J
    const/16 v4, 0x64

    new-array v12, v4, [J

    .line 25970
    .local v4, "tableOfContents":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 25971
    invoke-virtual/range {p5 .. p5}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    int-to-long v0, v0

    aput-wide v0, v12, v3

    .line 25972
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 25973
    .end local v3    # "i":I
    :cond_3
    const-wide/16 v3, -0x1

    cmp-long v0, p0, v3

    if-eqz v0, :cond_4

    add-long v3, v5, v10

    cmp-long v0, p0, v3

    if-eqz v0, :cond_4

    .line 25974
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x2

    const/16 v1, 0x19

    const/16 v0, 0x51

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Cx;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x70

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Cx;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v0, v5, v10

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0x1b

    const/16 v1, 0xa

    const/16 v0, 0x79

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Cx;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25975
    :cond_4
    new-instance v4, Lcom/facebook/ads/redexgen/X/Cx;

    iget v7, v2, Lcom/facebook/ads/redexgen/X/CM;->A02:I

    .end local v2    # "dataSize":J
    .local v8, "dataSize":J
    .end local v4    # "tableOfContents":[J
    .local v0, "tableOfContents":[J
    invoke-direct/range {v4 .. v12}, Lcom/facebook/ads/redexgen/X/Cx;-><init>(JIJJ[J)V

    return-object v4
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cx;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x5d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 4

    const/16 v0, 0x25

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cx;->A06:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cx;->A06:[Ljava/lang/String;

    const-string v1, "k3anBqsCrHvEqekvg"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/Cx;->A05:[B

    return-void

    :array_0
    .array-data 1
        -0x7t
        -0x13t
        0x6t
        -0x9t
        -0x4t
        -0xbt
        -0x32t
        0x12t
        0xft
        0x22t
        0xft
        -0x32t
        0x21t
        0x17t
        0x28t
        0x13t
        -0x32t
        0x1bt
        0x17t
        0x21t
        0x1bt
        0xft
        0x22t
        0x11t
        0x16t
        -0x18t
        -0x32t
        0x2et
        0x3ft
        0x44t
        0x3dt
        0x29t
        0x3bt
        0x3bt
        0x41t
        0x3bt
        0x48t
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "p8RdCat0G36AvJ3nMfWTsuR1F4itZ0iY"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "WzhHUGcobaAiKs73bzciWsQubh8TgCkC"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "1crhAdjlBFf5kONaZT6USZvi4SG5ieAj"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "rbkKdzMvp0j9j5CVX3s5GiXP9gMsoHFI"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "33296JWHLCq86ZOLusQKi4AmZM0eQQ2C"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "1QakY00ME"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "vN893HhYOdKr32Lywaz7iVaY0SpTuopl"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "nw"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Cx;->A06:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A6J()J
    .locals 2

    .line 25976
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Cx;->A03:J

    return-wide v0
.end method

.method public final A79(J)Lcom/facebook/ads/redexgen/X/CO;
    .locals 14

    .line 25977
    move-object v4, p0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Cx;->A8F()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25978
    const-wide/16 v5, 0x0

    iget-wide v2, v4, Lcom/facebook/ads/redexgen/X/Cx;->A02:J

    iget v0, v4, Lcom/facebook/ads/redexgen/X/Cx;->A00:I

    int-to-long v0, v0

    add-long/2addr v2, v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/CQ;

    invoke-direct {v1, v5, v6, v2, v3}, Lcom/facebook/ads/redexgen/X/CQ;-><init>(JJ)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/CO;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/CO;-><init>(Lcom/facebook/ads/redexgen/X/CQ;)V

    return-object v0

    .line 25979
    :cond_0
    const-wide/16 v7, 0x0

    iget-wide v9, v4, Lcom/facebook/ads/redexgen/X/Cx;->A03:J

    move-wide v5, p1

    invoke-static/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/Ic;->A0E(JJJ)J

    move-result-wide v2

    .line 25980
    .end local v9
    .local v5, "timeUs":J
    long-to-double v7, v2

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    mul-double/2addr v7, v9

    iget-wide v5, v4, Lcom/facebook/ads/redexgen/X/Cx;->A03:J

    long-to-double v0, v5

    div-double/2addr v7, v0

    .line 25981
    .local v4, "percent":D
    const-wide/16 v5, 0x0

    const-wide/high16 v12, 0x4070000000000000L    # 256.0

    cmpg-double v0, v7, v5

    if-gtz v0, :cond_1

    .line 25982
    const-wide/16 v5, 0x0

    .line 25983
    .local v5, "scaledPosition":D
    .end local v2
    .end local v11
    .end local v13
    .local v5, "scaledPosition":D
    :goto_0
    div-double/2addr v5, v12

    iget-wide v7, v4, Lcom/facebook/ads/redexgen/X/Cx;->A01:J

    long-to-double v0, v7

    mul-double/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    .line 25984
    .local v2, "positionOffset":J
    iget v0, v4, Lcom/facebook/ads/redexgen/X/Cx;->A00:I

    int-to-long v7, v0

    iget-wide v9, v4, Lcom/facebook/ads/redexgen/X/Cx;->A01:J

    const-wide/16 v0, 0x1

    sub-long/2addr v9, v0

    invoke-static/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/Ic;->A0E(JJJ)J

    move-result-wide v0

    .line 25985
    iget-wide v4, v4, Lcom/facebook/ads/redexgen/X/Cx;->A02:J

    add-long/2addr v4, v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/CQ;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/facebook/ads/redexgen/X/CQ;-><init>(JJ)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/CO;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/CO;-><init>(Lcom/facebook/ads/redexgen/X/CQ;)V

    return-object v0

    .line 25986
    .end local v5    # "scaledPosition":D
    :cond_1
    cmpl-double v0, v7, v9

    if-ltz v0, :cond_2

    .line 25987
    const-wide/high16 v5, 0x4070000000000000L    # 256.0

    .restart local v5    # "scaledPosition":D
    goto :goto_0

    .line 25988
    .end local v5    # "scaledPosition":D
    :cond_2
    double-to-int v11, v7

    .line 25989
    .local v5, "prevTableIndex":I
    iget-object v9, v4, Lcom/facebook/ads/redexgen/X/Cx;->A04:[J

    aget-wide v0, v9, v11

    long-to-double v5, v0

    .line 25990
    .local v2, "prevScaledPosition":D
    const/16 v0, 0x63

    if-ne v11, v0, :cond_3

    move-wide v9, v12

    .line 25991
    .local v11, "nextScaledPosition":D
    :goto_1
    int-to-double v0, v11

    sub-double/2addr v7, v0

    .line 25992
    .local v13, "interpolateFraction":D
    sub-double/2addr v9, v5

    mul-double/2addr v9, v7

    add-double/2addr v5, v9

    goto :goto_0

    .line 25993
    :cond_3
    add-int/lit8 v0, v11, 0x1

    aget-wide v0, v9, v0

    long-to-double v9, v0

    goto :goto_1
.end method

.method public final A7N(J)J
    .locals 13

    .line 25994
    move-object v8, p0

    iget-wide v0, v8, Lcom/facebook/ads/redexgen/X/Cx;->A02:J

    sub-long/2addr p1, v0

    .line 25995
    .local p1, "positionOffset":J
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Cx;->A8F()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, v8, Lcom/facebook/ads/redexgen/X/Cx;->A00:I

    int-to-long v1, v0

    cmp-long v0, p1, v1

    if-gtz v0, :cond_1

    .line 25996
    .end local p1    # "positionOffset":J
    .restart local v4
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0

    .line 25997
    :cond_1
    long-to-double v4, p1

    const-wide/high16 v0, 0x4070000000000000L    # 256.0

    mul-double/2addr v4, v0

    iget-wide v2, v8, Lcom/facebook/ads/redexgen/X/Cx;->A01:J

    long-to-double v0, v2

    div-double/2addr v4, v0

    .line 25998
    .local v8, "scaledPosition":D
    iget-object v3, v8, Lcom/facebook/ads/redexgen/X/Cx;->A04:[J

    double-to-long v1, v4

    const/4 v0, 0x1

    invoke-static {v3, v1, v2, v0, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0B([JJZZ)I

    move-result v1

    .line 25999
    .local v5, "prevTableIndex":I
    invoke-direct {v8, v1}, Lcom/facebook/ads/redexgen/X/Cx;->A00(I)J

    move-result-wide v11

    .line 26000
    .local p1, "prevTimeUs":J
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/Cx;->A04:[J

    aget-wide v6, v0, v1

    .line 26001
    .local v0, "prevScaledPosition":J
    add-int/lit8 v0, v1, 0x1

    invoke-direct {v8, v0}, Lcom/facebook/ads/redexgen/X/Cx;->A00(I)J

    move-result-wide v2

    .line 26002
    .local v11, "nextTimeUs":J
    const/16 v0, 0x63

    if-ne v1, v0, :cond_4

    const-wide/16 v9, 0x100

    .line 26003
    .local v0, "nextScaledPosition":J
    :goto_0
    cmp-long v0, v6, v9

    if-nez v0, :cond_2

    .line 26004
    const-wide/16 v4, 0x0

    .line 26005
    .local p0, "interpolateFraction":D
    :goto_1
    sub-long/2addr v2, v11

    long-to-double v0, v2

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    add-long/2addr v0, v11

    return-wide v0

    .line 26006
    .end local p1    # "prevTimeUs":J
    .local v4, "positionOffset":J
    :cond_2
    long-to-double v0, v6

    sub-double/2addr v4, v0

    .end local v8    # "scaledPosition":D
    .local v0, "scaledPosition":D
    sub-long/2addr v9, v6

    long-to-double v7, v9

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cx;->A06:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v6, Lcom/facebook/ads/redexgen/X/Cx;->A06:[Ljava/lang/String;

    const-string v1, "HyDMty4JhZdOfhCA1K7v7TVfCu9ApPVR"

    const/4 v0, 0x4

    aput-object v1, v6, v0

    div-double/2addr v4, v7

    goto :goto_1

    .line 26007
    :cond_4
    iget-object v9, v8, Lcom/facebook/ads/redexgen/X/Cx;->A04:[J

    add-int/lit8 v10, v1, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cx;->A06:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_5

    aget-wide v9, v9, v10

    goto :goto_0

    :cond_5
    sget-object v8, Lcom/facebook/ads/redexgen/X/Cx;->A06:[Ljava/lang/String;

    const-string v1, "C2dMcxyf6PZ7bZZCWSoSwoeOZSsnWD4s"

    const/4 v0, 0x2

    aput-object v1, v8, v0

    const-string v1, "dhYf6G8j5k9212ra3iFULIFZySOQTEY4"

    const/4 v0, 0x6

    aput-object v1, v8, v0

    aget-wide v9, v9, v10

    goto :goto_0
.end method

.method public final A8F()Z
    .locals 1

    .line 26008
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cx;->A04:[J

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
