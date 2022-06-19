.class public final Lcom/facebook/ads/redexgen/X/ZZ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/DM;


# static fields
.field public static A0B:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:J

.field public A05:J

.field public A06:Lcom/facebook/ads/internal/exoplayer2/Format;

.field public A07:Lcom/facebook/ads/redexgen/X/CS;

.field public A08:Ljava/lang/String;

.field public final A09:Lcom/facebook/ads/redexgen/X/IM;

.field public final A0A:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ZZ;->A01()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 64990
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64991
    const/16 v0, 0x12

    new-array v1, v0, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A09:Lcom/facebook/ads/redexgen/X/IM;

    .line 64992
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A02:I

    .line 64993
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A0A:Ljava/lang/String;

    .line 64994
    return-void
.end method

.method private A00()V
    .locals 6

    .line 64995
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A09:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    .line 64996
    .local p0, "frameData":[B
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A06:Lcom/facebook/ads/internal/exoplayer2/Format;

    if-nez v0, :cond_0

    .line 64997
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A08:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A0A:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/BP;->A03([BLjava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A06:Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 64998
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A07:Lcom/facebook/ads/redexgen/X/CS;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A06:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/CS;->A5P(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 64999
    :cond_0
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/BP;->A01([B)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A01:I

    .line 65000
    const-wide/32 v4, 0xf4240

    .line 65001
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/BP;->A02([B)I

    move-result v0

    int-to-long v2, v0

    mul-long/2addr v2, v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A06:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget v0, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0C:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    long-to-int v0, v2

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A04:J

    .line 65002
    return-void
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Egp8wbctYg3AnrLoFsY0muWOBg0DV21X"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "e5h8xZQ9y742"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "HWojDw1vanmhl7F"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "V39ipiog0D"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "u2piqSS4vuQoaStDwbY0GoBR5fBlfuuM"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "rfNh4mzWhxdgTcwc6CqJaoU4clFtHzcH"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "1g0ZSxhEfC"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "eBXSmpY9RuNSQ1O4XZ5t"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ZZ;->A0B:[Ljava/lang/String;

    return-void
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/IM;)Z
    .locals 5

    .line 65003
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZZ;->A0B:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/ZZ;->A0B:[Ljava/lang/String;

    const-string v1, "u2vG9yItOjfrtL1HZZufPW"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v3, 0x0

    if-lez v4, :cond_2

    .line 65004
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A03:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A03:I

    .line 65005
    iget v1, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A03:I

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    or-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A03:I

    .line 65006
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A03:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/BP;->A08(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65007
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A09:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A03:I

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    .line 65008
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A09:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A03:I

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v4, 0x1

    aput-byte v0, v1, v4

    .line 65009
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A09:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/4 v1, 0x2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A03:I

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v2, v1

    .line 65010
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A09:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/4 v1, 0x3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A03:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v2, v1

    .line 65011
    const/4 v0, 0x4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A00:I

    .line 65012
    iput v3, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A03:I

    .line 65013
    return v4

    .line 65014
    :cond_2
    return v3
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/IM;[BI)Z
    .locals 2

    .line 65015
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A00:I

    sub-int v0, p3, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 65016
    .local p0, "bytesToRead":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A00:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 65017
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A00:I

    .line 65018
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A00:I

    if-ne v0, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A49(Lcom/facebook/ads/redexgen/X/IM;)V
    .locals 11

    .line 65019
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    if-lez v0, :cond_5

    .line 65020
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A02:I

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v0, v1, :cond_2

    if-eq v0, v4, :cond_1

    goto :goto_0

    .line 65021
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A00:I

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 65022
    .local p0, "bytesToRead":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A07:Lcom/facebook/ads/redexgen/X/CS;

    invoke-interface {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/CS;->ADR(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 65023
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A00:I

    .line 65024
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A00:I

    iget v8, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A01:I

    if-ne v0, v8, :cond_0

    .line 65025
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A07:Lcom/facebook/ads/redexgen/X/CS;

    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A05:J

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/CS;->ADS(JIIILcom/facebook/ads/redexgen/X/CR;)V

    .line 65026
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A05:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A04:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A05:J

    .line 65027
    iput v3, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A02:I

    goto :goto_0

    .line 65028
    .end local p0    # "bytesToRead":I
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A09:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZZ;->A0B:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZZ;->A0B:[Ljava/lang/String;

    const-string v1, "fRWG3CzCM1nyuvAzq7jz"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "3KzD1A3zkNrKwQoZtzGyJPl8BSj940od"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/16 v2, 0x12

    invoke-direct {p0, p1, v5, v2}, Lcom/facebook/ads/redexgen/X/ZZ;->A03(Lcom/facebook/ads/redexgen/X/IM;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65029
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZZ;->A00()V

    .line 65030
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A09:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 65031
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A07:Lcom/facebook/ads/redexgen/X/CS;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A09:Lcom/facebook/ads/redexgen/X/IM;

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/CS;->ADR(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 65032
    iput v4, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A02:I

    goto :goto_0

    .line 65033
    :cond_3
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ZZ;->A02(Lcom/facebook/ads/redexgen/X/IM;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65034
    iput v1, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A02:I

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 65035
    :cond_5
    return-void
.end method

.method public final A4V(Lcom/facebook/ads/redexgen/X/CI;Lcom/facebook/ads/redexgen/X/Da;)V
    .locals 2

    .line 65036
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A06()V

    .line 65037
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A05()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A08:Ljava/lang/String;

    .line 65038
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A04()I

    move-result v1

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/CI;->AEM(II)Lcom/facebook/ads/redexgen/X/CS;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A07:Lcom/facebook/ads/redexgen/X/CS;

    .line 65039
    return-void
.end method

.method public final ACI()V
    .locals 0

    .line 65040
    return-void
.end method

.method public final ACJ(JZ)V
    .locals 0

    .line 65041
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A05:J

    .line 65042
    return-void
.end method

.method public final ADV()V
    .locals 1

    .line 65043
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A02:I

    .line 65044
    iput v0, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A00:I

    .line 65045
    iput v0, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A03:I

    .line 65046
    return-void
.end method
