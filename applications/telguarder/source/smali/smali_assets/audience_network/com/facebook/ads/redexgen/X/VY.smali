.class public final Lcom/facebook/ads/redexgen/X/VY;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/CY;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/CX;,
        Lcom/facebook/ads/internal/exoplayer2/extractor/mkv/DefaultEbmlReader$ElementState;
    }
.end annotation


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:Lcom/facebook/ads/redexgen/X/Ca;

.field public final A04:Lcom/facebook/ads/redexgen/X/Cf;

.field public final A05:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/ads/redexgen/X/CX;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/VY;->A06()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/VY;->A05()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 61037
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61038
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A06:[B

    .line 61039
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A05:Ljava/util/ArrayDeque;

    .line 61040
    new-instance v0, Lcom/facebook/ads/redexgen/X/Cf;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Cf;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A04:Lcom/facebook/ads/redexgen/X/Cf;

    .line 61041
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/CH;I)D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61042
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/VY;->A02(Lcom/facebook/ads/redexgen/X/CH;I)J

    move-result-wide v1

    .line 61043
    .local p0, "integerValue":J
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 61044
    long-to-int v0, v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    float-to-double v0, v0

    .line 61045
    .local p2, "floatValue":D
    .restart local p2    # "floatValue":D
    :goto_0
    return-wide v0

    .line 61046
    .end local p2    # "floatValue":D
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    goto :goto_0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/CH;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61047
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->ADN()V

    .line 61048
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A06:[B

    const/4 v2, 0x4

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 61049
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A06:[B

    aget-byte v0, v0, v1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Cf;->A00(I)I

    move-result v4

    .line 61050
    .local p0, "varintLength":I
    const/4 v0, -0x1

    if-eq v4, v0, :cond_0

    if-gt v4, v2, :cond_0

    .line 61051
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A06:[B

    invoke-static {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/Cf;->A01([BIZ)J

    move-result-wide v2

    long-to-int v1, v2

    .line 61052
    .local v0, "potentialId":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A03:Lcom/facebook/ads/redexgen/X/Ca;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Ca;->A87(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61053
    invoke-interface {p1, v4}, Lcom/facebook/ads/redexgen/X/CH;->AE4(I)V

    .line 61054
    int-to-long v0, v1

    return-wide v0

    .line 61055
    .end local v0    # "potentialId":I
    :cond_0
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CH;->AE4(I)V

    .line 61056
    .end local p0    # "varintLength":I
    goto :goto_0
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/CH;I)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61057
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VY;->A06:[B

    const/4 v0, 0x0

    invoke-interface {p1, v1, v0, p2}, Lcom/facebook/ads/redexgen/X/CH;->readFully([BII)V

    .line 61058
    const-wide/16 v3, 0x0

    .line 61059
    .local p0, "value":J
    const/4 v2, 0x0

    .local p2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 61060
    const/16 v0, 0x8

    shl-long/2addr v3, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A06:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    or-long/2addr v3, v0

    .line 61061
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61062
    .end local p2    # "i":I
    :cond_0
    return-wide v3
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/VY;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x3

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/CH;I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61063
    if-nez p2, :cond_0

    .line 61064
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VY;->A03(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 61065
    :cond_0
    new-array v2, p2, [B

    .line 61066
    .local p0, "stringBytes":[B
    const/4 v1, 0x0

    invoke-interface {p1, v2, v1, p2}, Lcom/facebook/ads/redexgen/X/CH;->readFully([BII)V

    .line 61067
    .local p2, "trimmedLength":I
    :goto_0
    if-lez p2, :cond_1

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, v2, v0

    if-nez v0, :cond_1

    .line 61068
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 61069
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v1, p2}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x54

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/VY;->A07:[B

    return-void

    :array_0
    .array-data 1
        0x68t
        0x4ft
        0x57t
        0x40t
        0x4dt
        0x48t
        0x45t
        0x1t
        0x44t
        0x4dt
        0x44t
        0x4ct
        0x44t
        0x4ft
        0x55t
        0x1t
        0x55t
        0x58t
        0x51t
        0x44t
        0x1t
        0x69t
        0x4et
        0x56t
        0x41t
        0x4ct
        0x49t
        0x44t
        0x0t
        0x46t
        0x4ct
        0x4ft
        0x41t
        0x54t
        0x0t
        0x53t
        0x49t
        0x5at
        0x45t
        0x1at
        0x0t
        0x72t
        0x55t
        0x4dt
        0x5at
        0x57t
        0x52t
        0x5ft
        0x1bt
        0x52t
        0x55t
        0x4ft
        0x5et
        0x5ct
        0x5et
        0x49t
        0x1bt
        0x48t
        0x52t
        0x41t
        0x5et
        0x1t
        0x1bt
        0x2t
        0x25t
        0x23t
        0x38t
        0x3ft
        0x36t
        0x71t
        0x34t
        0x3dt
        0x34t
        0x3ct
        0x34t
        0x3ft
        0x25t
        0x71t
        0x22t
        0x38t
        0x2bt
        0x34t
        0x6bt
        0x71t
    .end array-data
.end method

.method public static A06()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "OZOP7lTCfDrdjstPbp0BgTKLqI"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "PANgCbqlNYtCG5uw5U"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "DJZUj9upMmMH6RTe9KF6j8DzaIpybW"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "E4L1xZTMRxf51iCdFYw0FmtrGPkgpd66"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "jGdGnGq8CRHEP8NpvbZ4x4EgEhioMqjb"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "XQS4dsb188IbyHuyfZYVeS3VglHbDlv6"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "WQT8M0dLXtfpiIPgl9DsLbUMX62JRtFE"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Ga2m7eQjW0RTCmND0H"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/VY;->A08:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A7t(Lcom/facebook/ads/redexgen/X/Ca;)V
    .locals 0

    .line 61070
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VY;->A03:Lcom/facebook/ads/redexgen/X/Ca;

    .line 61071
    return-void
.end method

.method public final ACm(Lcom/facebook/ads/redexgen/X/CH;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61072
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A03:Lcom/facebook/ads/redexgen/X/Ca;

    const/4 v7, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 61073
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A05:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61074
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A05:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/CX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/CX;->A01(Lcom/facebook/ads/redexgen/X/CX;)J

    move-result-wide v1

    cmp-long v0, v3, v1

    if-ltz v0, :cond_0

    .line 61075
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VY;->A03:Lcom/facebook/ads/redexgen/X/Ca;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A05:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/CX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/CX;->A00(Lcom/facebook/ads/redexgen/X/CX;)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Ca;->A58(I)V

    .line 61076
    return v6

    .line 61077
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A01:I

    const/4 v3, 0x4

    if-nez v0, :cond_3

    .line 61078
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A04:Lcom/facebook/ads/redexgen/X/Cf;

    invoke-virtual {v0, p1, v6, v7, v3}, Lcom/facebook/ads/redexgen/X/Cf;->A06(Lcom/facebook/ads/redexgen/X/CH;ZZI)J

    move-result-wide v0

    .line 61079
    .local v6, "result":J
    const-wide/16 v4, -0x2

    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    .line 61080
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/VY;->A01(Lcom/facebook/ads/redexgen/X/CH;)J

    move-result-wide v0

    .line 61081
    :cond_1
    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-nez v2, :cond_2

    .line 61082
    return v7

    .line 61083
    :cond_2
    long-to-int v2, v0

    iput v2, p0, Lcom/facebook/ads/redexgen/X/VY;->A00:I

    .line 61084
    iput v6, p0, Lcom/facebook/ads/redexgen/X/VY;->A01:I

    .line 61085
    .end local v6    # "result":J
    :cond_3
    iget v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A01:I

    const/4 v2, 0x2

    if-ne v0, v6, :cond_4

    .line 61086
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VY;->A04:Lcom/facebook/ads/redexgen/X/Cf;

    const/16 v0, 0x8

    invoke-virtual {v1, p1, v7, v6, v0}, Lcom/facebook/ads/redexgen/X/Cf;->A06(Lcom/facebook/ads/redexgen/X/CH;ZZI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A02:J

    .line 61087
    iput v2, p0, Lcom/facebook/ads/redexgen/X/VY;->A01:I

    .line 61088
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VY;->A03:Lcom/facebook/ads/redexgen/X/Ca;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A00:I

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Ca;->A6K(I)I

    move-result v4

    .line 61089
    .local p0, "type":I
    if-eqz v4, :cond_6

    if-eq v4, v6, :cond_10

    const-wide/16 v8, 0x8

    if-eq v4, v2, :cond_d

    const/4 v0, 0x3

    if-eq v4, v0, :cond_b

    if-eq v4, v3, :cond_a

    const/4 v0, 0x5

    if-ne v4, v0, :cond_9

    .line 61090
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/VY;->A02:J

    const-wide/16 v3, 0x4

    cmp-long v0, v1, v3

    if-eqz v0, :cond_5

    cmp-long v0, v1, v8

    if-nez v0, :cond_8

    .line 61091
    :cond_5
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/VY;->A03:Lcom/facebook/ads/redexgen/X/Ca;

    iget v3, p0, Lcom/facebook/ads/redexgen/X/VY;->A00:I

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/VY;->A02:J

    long-to-int v0, v1

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/VY;->A00(Lcom/facebook/ads/redexgen/X/CH;I)D

    move-result-wide v0

    invoke-interface {v4, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/Ca;->A5L(ID)V

    .line 61092
    iput v7, p0, Lcom/facebook/ads/redexgen/X/VY;->A01:I

    .line 61093
    return v6

    .line 61094
    .end local v9
    .end local v0
    :cond_6
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/VY;->A02:J

    long-to-int v0, v1

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CH;->AE4(I)V

    .line 61095
    iput v7, p0, Lcom/facebook/ads/redexgen/X/VY;->A01:I

    .line 61096
    .end local p0    # "type":I
    goto/16 :goto_1

    .line 61097
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 61098
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x15

    const/16 v1, 0x14

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VY;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A02:J

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61099
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x15

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VY;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61100
    :cond_a
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/VY;->A03:Lcom/facebook/ads/redexgen/X/Ca;

    iget v3, p0, Lcom/facebook/ads/redexgen/X/VY;->A00:I

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/VY;->A02:J

    long-to-int v0, v1

    invoke-interface {v4, v3, v0, p1}, Lcom/facebook/ads/redexgen/X/Ca;->A3o(IILcom/facebook/ads/redexgen/X/CH;)V

    .line 61101
    iput v7, p0, Lcom/facebook/ads/redexgen/X/VY;->A01:I

    .line 61102
    return v6

    .line 61103
    :cond_b
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/VY;->A02:J

    const-wide/32 v3, 0x7fffffff

    cmp-long v0, v1, v3

    if-gtz v0, :cond_c

    .line 61104
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/VY;->A03:Lcom/facebook/ads/redexgen/X/Ca;

    iget v3, p0, Lcom/facebook/ads/redexgen/X/VY;->A00:I

    long-to-int v0, v1

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/VY;->A04(Lcom/facebook/ads/redexgen/X/CH;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Ca;->AEH(ILjava/lang/String;)V

    .line 61105
    iput v7, p0, Lcom/facebook/ads/redexgen/X/VY;->A01:I

    .line 61106
    return v6

    .line 61107
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x3f

    const/16 v1, 0x15

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VY;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A02:J

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61108
    :cond_d
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A02:J

    cmp-long v2, v0, v8

    if-gtz v2, :cond_f

    .line 61109
    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/VY;->A03:Lcom/facebook/ads/redexgen/X/Ca;

    iget v5, p0, Lcom/facebook/ads/redexgen/X/VY;->A00:I

    long-to-int v2, v0

    invoke-direct {p0, p1, v2}, Lcom/facebook/ads/redexgen/X/VY;->A02(Lcom/facebook/ads/redexgen/X/CH;I)J

    move-result-wide v1

    sget-object v4, Lcom/facebook/ads/redexgen/X/VY;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v3, v4, v0

    const/4 v0, 0x4

    aget-object v4, v4, v0

    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v3, v0, :cond_e

    sget-object v4, Lcom/facebook/ads/redexgen/X/VY;->A08:[Ljava/lang/String;

    const-string v3, "sRXfMCDRE0ZIa0s05PyZTJa1QG"

    const/4 v0, 0x0

    aput-object v3, v4, v0

    const-string v3, "mrgytmXE35BDuYNSO1srT6L0IFM5oE"

    const/4 v0, 0x2

    aput-object v3, v4, v0

    invoke-interface {v8, v5, v1, v2}, Lcom/facebook/ads/redexgen/X/Ca;->A7v(IJ)V

    .line 61110
    iput v7, p0, Lcom/facebook/ads/redexgen/X/VY;->A01:I

    .line 61111
    return v6

    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 61112
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x29

    const/16 v1, 0x16

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VY;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A02:J

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61113
    :cond_10
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v10

    .line 61114
    .local v9, "elementContentPosition":J
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A02:J

    add-long v2, v10, v0

    .line 61115
    .local v0, "elementEndPosition":J
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/VY;->A05:Ljava/util/ArrayDeque;

    iget v4, p0, Lcom/facebook/ads/redexgen/X/VY;->A00:I

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/CX;

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/facebook/ads/redexgen/X/CX;-><init>(IJLcom/facebook/ads/redexgen/X/CV;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 61116
    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/VY;->A03:Lcom/facebook/ads/redexgen/X/Ca;

    iget v9, p0, Lcom/facebook/ads/redexgen/X/VY;->A00:I

    iget-wide v12, p0, Lcom/facebook/ads/redexgen/X/VY;->A02:J

    invoke-interface/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/Ca;->AE9(IJJ)V

    .line 61117
    iput v7, p0, Lcom/facebook/ads/redexgen/X/VY;->A01:I

    .line 61118
    return v6
.end method

.method public final reset()V
    .locals 1

    .line 61119
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A01:I

    .line 61120
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A05:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 61121
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A04:Lcom/facebook/ads/redexgen/X/Cf;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cf;->A07()V

    .line 61122
    return-void
.end method
