.class public final Lcom/facebook/ads/redexgen/X/Yy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/CG;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/extractor/flv/FlvExtractor$States;
    }
.end annotation


# static fields
.field public static A0F:[B

.field public static A0G:[Ljava/lang/String;

.field public static final A0H:Lcom/facebook/ads/redexgen/X/CJ;

.field public static final A0I:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:J

.field public A05:J

.field public A06:Lcom/facebook/ads/redexgen/X/CI;

.field public A07:Lcom/facebook/ads/redexgen/X/Yw;

.field public A08:Lcom/facebook/ads/redexgen/X/Z1;

.field public A09:Z

.field public final A0A:Lcom/facebook/ads/redexgen/X/Yz;

.field public final A0B:Lcom/facebook/ads/redexgen/X/IM;

.field public final A0C:Lcom/facebook/ads/redexgen/X/IM;

.field public final A0D:Lcom/facebook/ads/redexgen/X/IM;

.field public final A0E:Lcom/facebook/ads/redexgen/X/IM;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 62048
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Yy;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Yy;->A03()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Yx;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Yx;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Yy;->A0H:Lcom/facebook/ads/redexgen/X/CJ;

    .line 62049
    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Yy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Yy;->A0I:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 62050
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62051
    const/4 v1, 0x4

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A0C:Lcom/facebook/ads/redexgen/X/IM;

    .line 62052
    const/16 v1, 0x9

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A0B:Lcom/facebook/ads/redexgen/X/IM;

    .line 62053
    const/16 v1, 0xb

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    .line 62054
    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IM;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A0D:Lcom/facebook/ads/redexgen/X/IM;

    .line 62055
    new-instance v0, Lcom/facebook/ads/redexgen/X/Yz;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Yz;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A0A:Lcom/facebook/ads/redexgen/X/Yz;

    .line 62056
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A01:I

    .line 62057
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A04:J

    .line 62058
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/CH;)Lcom/facebook/ads/redexgen/X/IM;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 62059
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Yy;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A0D:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A06()I

    move-result v0

    const/4 v3, 0x0

    if-le v1, v0, :cond_0

    .line 62060
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Yy;->A0D:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IM;->A06()I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A02:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v2, v0, v3}, Lcom/facebook/ads/redexgen/X/IM;->A0c([BI)V

    .line 62061
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yy;->A0D:Lcom/facebook/ads/redexgen/X/IM;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A02:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Y(I)V

    .line 62062
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A0D:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A02:I

    invoke-interface {p1, v1, v3, v0}, Lcom/facebook/ads/redexgen/X/CH;->readFully([BII)V

    .line 62063
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A0D:Lcom/facebook/ads/redexgen/X/IM;

    return-object v0

    .line 62064
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A0D:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    goto :goto_0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Yy;->A0F:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .locals 5

    .line 62065
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A09:Z

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_0

    .line 62066
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yy;->A06:Lcom/facebook/ads/redexgen/X/CI;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Yt;

    invoke-direct {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/Yt;-><init>(J)V

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/CI;->ADX(Lcom/facebook/ads/redexgen/X/CP;)V

    .line 62067
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A09:Z

    .line 62068
    :cond_0
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Yy;->A04:J

    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    .line 62069
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A0A:Lcom/facebook/ads/redexgen/X/Yz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Yz;->A0E()J

    move-result-wide v1

    cmp-long v0, v1, v3

    if-nez v0, :cond_2

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Yy;->A05:J

    neg-long v0, v2

    :goto_0
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A04:J

    .line 62070
    :cond_1
    return-void

    .line 62071
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static A03()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Yy;->A0F:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x75t
        -0x6ft
        -0x65t
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "F9KwQMNMxiTjkayDhPM6gvDLkPvUNcLn"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Em4FZTw9NeUBCVsnasMEsqdbQrmSbGq"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "tDq5h6G1X4d5RY1LfaFLZXWqT85DrCya"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "B5R7X"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Y"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Zp00UWtElOmikRSXEs37FpNUTZ5eWL9Y"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "wqRNyyxlEoRi9"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Yy;->A0G:[Ljava/lang/String;

    return-void
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/CH;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 62072
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A00:I

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CH;->AE3(I)V

    .line 62073
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A00:I

    .line 62074
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A01:I

    .line 62075
    return-void
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/CH;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 62076
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A0B:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/16 v4, 0x9

    const/4 v6, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v0, v6, v4, v3}, Lcom/facebook/ads/redexgen/X/CH;->ACp([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62077
    return v6

    .line 62078
    :cond_0
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Yy;->A0B:Lcom/facebook/ads/redexgen/X/IM;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Yy;->A0G:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Yy;->A0G:[Ljava/lang/String;

    const-string v1, "xxv79KM5VyarLmUhQqEOMlbbyGFtPWOG"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "n0W8PrJEyrqWl4lCbLWkK9bcjvpbO2Fn"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v5, v6}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 62079
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A0B:Lcom/facebook/ads/redexgen/X/IM;

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 62080
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A0B:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v2

    .line 62081
    .local p0, "flags":I
    and-int/lit8 v0, v2, 0x4

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    .line 62082
    .local v6, "hasAudio":Z
    :goto_0
    and-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_1

    const/4 v6, 0x1

    .line 62083
    .local v0, "hasVideo":Z
    :cond_1
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A07:Lcom/facebook/ads/redexgen/X/Yw;

    if-nez v0, :cond_2

    .line 62084
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yy;->A06:Lcom/facebook/ads/redexgen/X/CI;

    const/16 v0, 0x8

    .line 62085
    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/CI;->AEM(II)Lcom/facebook/ads/redexgen/X/CS;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Yw;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Yw;-><init>(Lcom/facebook/ads/redexgen/X/CS;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A07:Lcom/facebook/ads/redexgen/X/Yw;

    .line 62086
    :cond_2
    const/4 v2, 0x2

    if-eqz v6, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A08:Lcom/facebook/ads/redexgen/X/Z1;

    if-nez v0, :cond_3

    .line 62087
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A06:Lcom/facebook/ads/redexgen/X/CI;

    .line 62088
    invoke-interface {v0, v4, v2}, Lcom/facebook/ads/redexgen/X/CI;->AEM(II)Lcom/facebook/ads/redexgen/X/CS;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Z1;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Z1;-><init>(Lcom/facebook/ads/redexgen/X/CS;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A08:Lcom/facebook/ads/redexgen/X/Z1;

    .line 62089
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A06:Lcom/facebook/ads/redexgen/X/CI;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CI;->A5B()V

    .line 62090
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A0B:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v0

    sub-int/2addr v0, v4

    add-int/2addr v0, v5

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A00:I

    .line 62091
    iput v2, p0, Lcom/facebook/ads/redexgen/X/Yy;->A01:I

    .line 62092
    return v3

    .line 62093
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/CH;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 62094
    const/4 v6, 0x1

    .line 62095
    .local p0, "wasConsumed":Z
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Yy;->A03:I

    const/16 v0, 0x8

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A07:Lcom/facebook/ads/redexgen/X/Yw;

    if-eqz v0, :cond_1

    .line 62096
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Yy;->A02()V

    .line 62097
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Yy;->A07:Lcom/facebook/ads/redexgen/X/Yw;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Yy;->A00(Lcom/facebook/ads/redexgen/X/CH;)Lcom/facebook/ads/redexgen/X/IM;

    move-result-object v4

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Yy;->A04:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A05:J

    add-long/2addr v2, v0

    invoke-virtual {v5, v4, v2, v3}, Lcom/facebook/ads/redexgen/X/CU;->A00(Lcom/facebook/ads/redexgen/X/IM;J)V

    .line 62098
    :cond_0
    :goto_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A00:I

    .line 62099
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A01:I

    .line 62100
    return v6

    .line 62101
    :cond_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Yy;->A03:I

    const/16 v0, 0x9

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A08:Lcom/facebook/ads/redexgen/X/Z1;

    if-eqz v0, :cond_2

    .line 62102
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Yy;->A02()V

    .line 62103
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Yy;->A08:Lcom/facebook/ads/redexgen/X/Z1;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Yy;->A00(Lcom/facebook/ads/redexgen/X/CH;)Lcom/facebook/ads/redexgen/X/IM;

    move-result-object v4

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Yy;->A04:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A05:J

    add-long/2addr v2, v0

    invoke-virtual {v5, v4, v2, v3}, Lcom/facebook/ads/redexgen/X/CU;->A00(Lcom/facebook/ads/redexgen/X/IM;J)V

    goto :goto_0

    .line 62104
    :cond_2
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Yy;->A03:I

    const/16 v0, 0x12

    if-ne v1, v0, :cond_3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A09:Z

    if-nez v0, :cond_3

    .line 62105
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Yy;->A0A:Lcom/facebook/ads/redexgen/X/Yz;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Yy;->A00(Lcom/facebook/ads/redexgen/X/CH;)Lcom/facebook/ads/redexgen/X/IM;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A05:J

    invoke-virtual {v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/CU;->A00(Lcom/facebook/ads/redexgen/X/IM;J)V

    .line 62106
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A0A:Lcom/facebook/ads/redexgen/X/Yz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Yz;->A0E()J

    move-result-wide v2

    .line 62107
    .local p1, "durationUs":J
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 62108
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yy;->A06:Lcom/facebook/ads/redexgen/X/CI;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Yt;

    invoke-direct {v0, v2, v3}, Lcom/facebook/ads/redexgen/X/Yt;-><init>(J)V

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/CI;->ADX(Lcom/facebook/ads/redexgen/X/CP;)V

    .line 62109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A09:Z

    goto :goto_0

    .line 62110
    :cond_3
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Yy;->A02:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Yy;->A0G:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Yy;->A0G:[Ljava/lang/String;

    const-string v1, "mShHrd4Vu2jNkvRJUK8UrhhXjzgbGKl1"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-interface {p1, v3}, Lcom/facebook/ads/redexgen/X/CH;->AE3(I)V

    .line 62111
    const/4 v6, 0x0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/CH;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 62112
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/16 v0, 0xb

    invoke-interface {p1, v2, v1, v0, v4}, Lcom/facebook/ads/redexgen/X/CH;->ACp([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62113
    return v1

    .line 62114
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 62115
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A03:I

    .line 62116
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0H()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A02:I

    .line 62117
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0H()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A05:J

    .line 62118
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    int-to-long v2, v0

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A05:J

    or-long/2addr v2, v0

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Yy;->A05:J

    .line 62119
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yy;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 62120
    const/4 v0, 0x4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A01:I

    .line 62121
    return v4
.end method


# virtual methods
.method public final A7q(Lcom/facebook/ads/redexgen/X/CI;)V
    .locals 0

    .line 62122
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Yy;->A06:Lcom/facebook/ads/redexgen/X/CI;

    .line 62123
    return-void
.end method

.method public final ACk(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/CN;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 62124
    :cond_0
    :goto_0
    iget v5, p0, Lcom/facebook/ads/redexgen/X/Yy;->A01:I

    const/4 v0, 0x1

    const/4 v4, -0x1

    if-eq v5, v0, :cond_3

    const/4 v0, 0x2

    if-eq v5, v0, :cond_2

    const/4 v3, 0x3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Yy;->A0G:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/Yy;->A0G:[Ljava/lang/String;

    const-string v1, "ncW0XwKX3pgCRaaT"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eq v5, v3, :cond_1

    const/4 v0, 0x4

    if-ne v5, v0, :cond_5

    .line 62125
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Yy;->A07(Lcom/facebook/ads/redexgen/X/CH;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62126
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Yy;->A0G:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6a

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Yy;->A0G:[Ljava/lang/String;

    const-string v1, "5"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return v3

    .line 62127
    :cond_1
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Yy;->A08(Lcom/facebook/ads/redexgen/X/CH;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62128
    return v4

    .line 62129
    :cond_2
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Yy;->A05(Lcom/facebook/ads/redexgen/X/CH;)V

    .line 62130
    goto :goto_0

    .line 62131
    :cond_3
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Yy;->A06(Lcom/facebook/ads/redexgen/X/CH;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62132
    return v4

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Yy;->A0G:[Ljava/lang/String;

    const-string v1, "DR5iBP2XCUKx659t"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return v3

    .line 62133
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final ADW(JJ)V
    .locals 2

    .line 62134
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A01:I

    .line 62135
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A04:J

    .line 62136
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A00:I

    .line 62137
    return-void
.end method

.method public final AE4(Lcom/facebook/ads/redexgen/X/CH;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 62138
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A0C:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/4 v2, 0x0

    const/4 v0, 0x3

    invoke-interface {p1, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 62139
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A0C:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 62140
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A0C:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0H()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/Yy;->A0I:I

    if-eq v1, v0, :cond_0

    .line 62141
    return v2

    .line 62142
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A0C:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/4 v0, 0x2

    invoke-interface {p1, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 62143
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A0C:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 62144
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A0C:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v0

    and-int/lit16 v0, v0, 0xfa

    if-eqz v0, :cond_1

    .line 62145
    return v2

    .line 62146
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A0C:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/4 v1, 0x4

    invoke-interface {p1, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 62147
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A0C:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 62148
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A0C:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v0

    .line 62149
    .local p0, "dataOffset":I
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->ADN()V

    .line 62150
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CH;->A3N(I)V

    .line 62151
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A0C:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-interface {p1, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 62152
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A0C:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 62153
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A0C:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method
