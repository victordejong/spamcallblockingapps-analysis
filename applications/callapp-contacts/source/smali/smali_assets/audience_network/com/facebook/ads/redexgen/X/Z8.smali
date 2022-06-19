.class public final Lcom/facebook/ads/redexgen/X/Z8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/CG;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Z7;,
        Lcom/facebook/ads/internal/exoplayer2/extractor/mp3/Mp3Extractor$Flags;
    }
.end annotation


# static fields
.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;

.field public static final A0G:Lcom/facebook/ads/redexgen/X/CJ;

.field public static final A0H:I

.field public static final A0I:I

.field public static final A0J:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:J

.field public A04:Lcom/facebook/ads/redexgen/X/CI;

.field public A05:Lcom/facebook/ads/redexgen/X/CS;

.field public A06:Lcom/facebook/ads/redexgen/X/Z7;

.field public A07:Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

.field public final A08:I

.field public final A09:J

.field public final A0A:Lcom/facebook/ads/redexgen/X/CK;

.field public final A0B:Lcom/facebook/ads/redexgen/X/CL;

.field public final A0C:Lcom/facebook/ads/redexgen/X/CM;

.field public final A0D:Lcom/facebook/ads/redexgen/X/IM;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 62986
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Z8;->A06()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Z8;->A05()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Z6;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Z6;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Z8;->A0G:Lcom/facebook/ads/redexgen/X/CJ;

    .line 62987
    const/16 v2, 0x20

    const/4 v1, 0x4

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z8;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Z8;->A0J:I

    .line 62988
    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z8;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Z8;->A0H:I

    .line 62989
    const/16 v2, 0x1c

    const/4 v1, 0x4

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z8;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Z8;->A0I:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 62990
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Z8;-><init>(I)V

    .line 62991
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 62992
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/Z8;-><init>(IJ)V

    .line 62993
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 2

    .line 62994
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62995
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Z8;->A08:I

    .line 62996
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/Z8;->A09:J

    .line 62997
    const/16 v1, 0xa

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A0D:Lcom/facebook/ads/redexgen/X/IM;

    .line 62998
    new-instance v0, Lcom/facebook/ads/redexgen/X/CM;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/CM;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    .line 62999
    new-instance v0, Lcom/facebook/ads/redexgen/X/CK;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/CK;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A0A:Lcom/facebook/ads/redexgen/X/CK;

    .line 63000
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A02:J

    .line 63001
    new-instance v0, Lcom/facebook/ads/redexgen/X/CL;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/CL;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A0B:Lcom/facebook/ads/redexgen/X/CL;

    .line 63002
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/CH;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 63003
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A00:I

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    if-nez v0, :cond_5

    .line 63004
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->ADN()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Z8;->A0F:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    .line 63005
    sget-object v2, Lcom/facebook/ads/redexgen/X/Z8;->A0F:[Ljava/lang/String;

    const-string v1, "k6Z5PTGWNQqxWVGEWp2g14fMjsllqw2H"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "hJNgcdrxKvM79jF48EqDHnrsGOClnbxU"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A0D:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/4 v0, 0x4

    invoke-interface {p1, v1, v4, v0, v6}, Lcom/facebook/ads/redexgen/X/CH;->ACN([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63006
    return v5

    .line 63007
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A0D:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 63008
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A0D:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v2

    .line 63009
    .local p0, "sampleHeaderData":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A01:I

    int-to-long v0, v0

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Z8;->A07(IJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63010
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/CM;->A00(I)I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 63011
    :cond_1
    invoke-interface {p1, v6}, Lcom/facebook/ads/redexgen/X/CH;->AE3(I)V

    .line 63012
    iput v4, p0, Lcom/facebook/ads/redexgen/X/Z8;->A01:I

    .line 63013
    return v4

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 63014
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/CM;->A05(ILcom/facebook/ads/redexgen/X/CM;)Z

    .line 63015
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A02:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v7

    if-nez v2, :cond_4

    .line 63016
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Z8;->A06:Lcom/facebook/ads/redexgen/X/Z7;

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v0

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Z7;->A7L(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A02:J

    .line 63017
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A09:J

    cmp-long v2, v0, v7

    if-eqz v2, :cond_4

    .line 63018
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Z8;->A06:Lcom/facebook/ads/redexgen/X/Z7;

    const-wide/16 v0, 0x0

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Z7;->A7L(J)J

    move-result-wide v7

    .line 63019
    .local v5, "embeddedFirstSampleTimestampUs":J
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Z8;->A02:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A09:J

    sub-long/2addr v0, v7

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Z8;->A02:J

    .line 63020
    .end local v5    # "embeddedFirstSampleTimestampUs":J
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CM;->A02:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A00:I

    .line 63021
    .end local p0    # "sampleHeaderData":I
    :cond_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z8;->A05:Lcom/facebook/ads/redexgen/X/CS;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A00:I

    invoke-interface {v1, p1, v0, v6}, Lcom/facebook/ads/redexgen/X/CS;->ADQ(Lcom/facebook/ads/redexgen/X/CH;IZ)I

    move-result v1

    .line 63022
    .local p0, "bytesAppended":I
    if-ne v1, v5, :cond_6

    .line 63023
    return v5

    .line 63024
    :cond_6
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A00:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A00:I

    .line 63025
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A00:I

    if-lez v0, :cond_7

    .line 63026
    return v4

    .line 63027
    :cond_7
    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/Z8;->A02:J

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Z8;->A03:J

    const-wide/32 v0, 0xf4240

    mul-long/2addr v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CM;->A03:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    add-long/2addr v6, v2

    .line 63028
    .local p1, "timeUs":J
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Z8;->A05:Lcom/facebook/ads/redexgen/X/CS;

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    iget v9, v0, Lcom/facebook/ads/redexgen/X/CM;->A02:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/CS;->ADS(JIIILcom/facebook/ads/redexgen/X/CR;)V

    .line 63029
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Z8;->A03:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CM;->A04:I

    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Z8;->A03:J

    .line 63030
    iput v4, p0, Lcom/facebook/ads/redexgen/X/Z8;->A00:I

    .line 63031
    return v4
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/IM;I)I
    .locals 2

    .line 63032
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v1

    add-int/lit8 v0, p1, 0x4

    if-lt v1, v0, :cond_1

    .line 63033
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 63034
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v1

    .line 63035
    .local p0, "headerData":I
    sget v0, Lcom/facebook/ads/redexgen/X/Z8;->A0J:I

    if-eq v1, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Z8;->A0H:I

    if-ne v1, v0, :cond_1

    .line 63036
    :cond_0
    return v1

    .line 63037
    .end local p0    # "headerData":I
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v1

    const/16 v0, 0x28

    if-lt v1, v0, :cond_2

    .line 63038
    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 63039
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/Z8;->A0I:I

    if-ne v1, v0, :cond_2

    .line 63040
    return v0

    .line 63041
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/CH;)Lcom/facebook/ads/redexgen/X/Z7;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 63042
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A0D:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/4 v1, 0x0

    const/4 v0, 0x4

    invoke-interface {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 63043
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A0D:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 63044
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A0D:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/CM;->A05(ILcom/facebook/ads/redexgen/X/CM;)Z

    .line 63045
    new-instance v0, Lcom/facebook/ads/redexgen/X/Di;

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A6i()J

    move-result-wide v1

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v3

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Z8;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Di;-><init>(JJLcom/facebook/ads/redexgen/X/CM;)V

    return-object v0
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/CH;)Lcom/facebook/ads/redexgen/X/Z7;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 63046
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CM;->A02:I

    new-instance v9, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v9, v0}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    .line 63047
    .local p0, "frame":Lcom/facebook/ads/redexgen/X/IM;
    iget-object v1, v9, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CM;->A02:I

    const/4 v3, 0x0

    invoke-interface {p1, v1, v3, v0}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 63048
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CM;->A05:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/16 v2, 0x15

    if-eqz v0, :cond_3

    .line 63049
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CM;->A01:I

    if-eq v0, v1, :cond_0

    const/16 v2, 0x24

    .line 63050
    .local p1, "xingBase":I
    :cond_0
    :goto_0
    invoke-static {v9, v2}, Lcom/facebook/ads/redexgen/X/Z8;->A01(Lcom/facebook/ads/redexgen/X/IM;I)I

    move-result v1

    .line 63051
    .local v0, "seekHeader":I
    sget v0, Lcom/facebook/ads/redexgen/X/Z8;->A0J:I

    if-eq v1, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Z8;->A0H:I

    if-ne v1, v0, :cond_5

    .line 63052
    .end local v0    # "seekHeader":I
    :cond_1
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A6i()J

    move-result-wide v4

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v6

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/Z8;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    invoke-static/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Df;->A01(JJLcom/facebook/ads/redexgen/X/CM;Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/Df;

    move-result-object v4

    .line 63053
    .restart local v0    # "seekHeader":I
    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A0A:Lcom/facebook/ads/redexgen/X/CK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/CK;->A04()Z

    move-result v0

    if-nez v0, :cond_2

    .line 63054
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->ADN()V

    .line 63055
    add-int/lit16 v0, v2, 0x8d

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CH;->A3N(I)V

    .line 63056
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A0D:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/4 v0, 0x3

    invoke-interface {p1, v2, v3, v0}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 63057
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A0D:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 63058
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Z8;->A0A:Lcom/facebook/ads/redexgen/X/CK;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A0D:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0H()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/CK;->A05(I)Z

    .line 63059
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CM;->A02:I

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CH;->AE3(I)V

    .line 63060
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Df;->A8D()Z

    move-result v0

    if-nez v0, :cond_6

    sget v0, Lcom/facebook/ads/redexgen/X/Z8;->A0H:I

    if-ne v1, v0, :cond_6

    .line 63061
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Z8;->A02(Lcom/facebook/ads/redexgen/X/CH;)Lcom/facebook/ads/redexgen/X/Z7;

    move-result-object v0

    return-object v0

    .line 63062
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CM;->A01:I

    if-eq v0, v1, :cond_4

    goto :goto_0

    :cond_4
    const/16 v2, 0xd

    goto :goto_0

    .line 63063
    :cond_5
    sget v0, Lcom/facebook/ads/redexgen/X/Z8;->A0I:I

    if-ne v1, v0, :cond_7

    .line 63064
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A6i()J

    move-result-wide v4

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v6

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/Z8;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    invoke-static/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Dh;->A00(JJLcom/facebook/ads/redexgen/X/CM;Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/Dh;

    move-result-object v4

    .line 63065
    .local v0, "seeker":Lcom/facebook/ads/redexgen/X/Z7;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CM;->A02:I

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CH;->AE3(I)V

    .line 63066
    :cond_6
    :goto_1
    return-object v4

    .line 63067
    .end local v0    # "seeker":Lcom/facebook/ads/redexgen/X/Z7;
    :cond_7
    const/4 v4, 0x0

    .line 63068
    .restart local v0    # "seeker":Lcom/facebook/ads/redexgen/X/Z7;
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->ADN()V

    goto :goto_1
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Z8;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x1c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x24

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Z8;->A0E:[B

    return-void

    :array_0
    .array-data 1
        0x75t
        0x52t
        0x5at
        0x53t
        0x61t
        0x57t
        0x53t
        0x40t
        0x51t
        0x5at
        0x57t
        0x56t
        0x12t
        0x46t
        0x5dt
        0x5dt
        0x12t
        0x5ft
        0x53t
        0x5ct
        0x4bt
        0x12t
        0x50t
        0x4bt
        0x46t
        0x57t
        0x41t
        0x1ct
        0x0t
        0x14t
        0x4t
        0x1ft
        0xbt
        0x3at
        0x3dt
        0x34t
    .end array-data
.end method

.method public static A06()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ydp2W5xsf3wxxmCItZRtLRLpaCcQN61V"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ZzeQ67WJ6"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "MfxT7BiZm"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "QAZkmCdKFAHfN7ilsO4NsWCm7AIOdsAB"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "uXA2W"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "sq6CLgUZZ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "GhmTF3RrY3ydpwpSZCJZy8aIHeXkOr61"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "710SvX7FP4z"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Z8;->A0F:[Ljava/lang/String;

    return-void
.end method

.method public static A07(IJ)Z
    .locals 4

    .line 63069
    const v0, -0x1f400

    and-int/2addr v0, p0

    int-to-long v3, v0

    const-wide/32 v1, -0x1f400

    and-long/2addr v1, p1

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/CH;Z)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 63070
    const/4 v6, 0x0

    .line 63071
    .local p0, "validFrameCount":I
    const/4 v8, 0x0

    .line 63072
    .local p1, "candidateSynchronizedHeaderData":I
    const/4 v5, 0x0

    .line 63073
    .local p2, "peekedId3Bytes":I
    const/4 v7, 0x0

    .line 63074
    .local v6, "searchedBytes":I
    if-eqz p2, :cond_10

    const/16 v4, 0x4000

    .line 63075
    .local v8, "searchLimitBytes":I
    :goto_0
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->ADN()V

    .line 63076
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v11

    const-wide/16 v9, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    cmp-long v0, v11, v9

    if-nez v0, :cond_1

    .line 63077
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A08:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    .line 63078
    .local v5, "onlyDecodeGaplessInfoFrames":Z
    :goto_1
    if-eqz v0, :cond_e

    sget-object v1, Lcom/facebook/ads/redexgen/X/CK;->A04:Lcom/facebook/ads/redexgen/X/E6;

    .line 63079
    .local v7, "id3FramePredicate":Lcom/facebook/ads/redexgen/X/E6;
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A0B:Lcom/facebook/ads/redexgen/X/CL;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/CL;->A00(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/E6;)Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A07:Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    .line 63080
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z8;->A07:Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    if-eqz v1, :cond_0

    .line 63081
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A0A:Lcom/facebook/ads/redexgen/X/CK;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/CK;->A06(Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)Z

    .line 63082
    :cond_0
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A6w()J

    move-result-wide v0

    long-to-int v5, v0

    .line 63083
    if-nez p2, :cond_1

    .line 63084
    invoke-interface {p1, v5}, Lcom/facebook/ads/redexgen/X/CH;->AE3(I)V

    .line 63085
    .end local v5    # "onlyDecodeGaplessInfoFrames":Z
    .end local v7    # "id3FramePredicate":Lcom/facebook/ads/redexgen/X/E6;
    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A0D:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    if-lez v6, :cond_d

    const/4 v0, 0x1

    :goto_4
    const/4 v11, 0x4

    invoke-interface {p1, v1, v3, v11, v0}, Lcom/facebook/ads/redexgen/X/CH;->ACN([BIIZ)Z

    move-result v0

    if-nez v0, :cond_3

    .line 63086
    .end local v5
    .end local v11
    :goto_5
    if-eqz p2, :cond_2

    .line 63087
    add-int/2addr v5, v7

    invoke-interface {p1, v5}, Lcom/facebook/ads/redexgen/X/CH;->AE3(I)V

    .line 63088
    :goto_6
    iput v8, p0, Lcom/facebook/ads/redexgen/X/Z8;->A01:I

    .line 63089
    return v2

    .line 63090
    :cond_2
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->ADN()V

    goto :goto_6

    .line 63091
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A0D:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 63092
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A0D:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v9

    .line 63093
    .local v5, "headerData":I
    if-eqz v8, :cond_6

    int-to-long v0, v8

    .line 63094
    invoke-static {v9, v0, v1}, Lcom/facebook/ads/redexgen/X/Z8;->A07(IJ)Z

    move-result v12

    sget-object v10, Lcom/facebook/ads/redexgen/X/Z8;->A0F:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v10, v0

    const/4 v0, 0x5

    aget-object v0, v10, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    sget-object v10, Lcom/facebook/ads/redexgen/X/Z8;->A0F:[Ljava/lang/String;

    const-string v1, "nssPeb4tx"

    const/4 v0, 0x2

    aput-object v1, v10, v0

    const-string v1, "z93zYtEja"

    const/4 v0, 0x5

    aput-object v1, v10, v0

    if-eqz v12, :cond_7

    .line 63095
    :cond_6
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/CM;->A00(I)I

    move-result v10

    .local v11, "frameSize":I
    const/4 v0, -0x1

    if-ne v10, v0, :cond_8

    .line 63096
    .end local v11    # "frameSize":I
    :cond_7
    add-int/lit8 v1, v7, 0x1

    .end local v6    # "searchedBytes":I
    .local v7, "searchedBytes":I
    if-ne v7, v4, :cond_b

    .line 63097
    if-eqz p2, :cond_11

    .line 63098
    return v3

    .line 63099
    .end local v7    # "searchedBytes":I
    .restart local v6    # "searchedBytes":I
    .restart local v5    # "headerData":I
    .restart local v11    # "frameSize":I
    :cond_8
    add-int/lit8 v6, v6, 0x1

    .line 63100
    if-ne v6, v2, :cond_a

    .line 63101
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    invoke-static {v9, v0}, Lcom/facebook/ads/redexgen/X/CM;->A05(ILcom/facebook/ads/redexgen/X/CM;)Z

    sget-object v8, Lcom/facebook/ads/redexgen/X/Z8;->A0F:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v8, v0

    const/4 v0, 0x4

    aget-object v0, v8, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    .line 63102
    sget-object v8, Lcom/facebook/ads/redexgen/X/Z8;->A0F:[Ljava/lang/String;

    const-string v1, "7zrNMK9WlizC5ZgtVSnCLN45BdGxm2zl"

    const/4 v0, 0x0

    aput-object v1, v8, v0

    const-string v1, "9rqhFN3Qk74SkJ0Nh6RYQs7QnFKhXl33"

    const/4 v0, 0x6

    aput-object v1, v8, v0

    move v8, v9

    .line 63103
    .restart local v5    # "headerData":I
    .restart local v11    # "frameSize":I
    :cond_9
    add-int/lit8 v0, v10, -0x4

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CH;->A3N(I)V

    goto/16 :goto_3

    .line 63104
    :cond_a
    if-ne v6, v11, :cond_9

    goto/16 :goto_5

    .line 63105
    :cond_b
    const/4 v6, 0x0

    .line 63106
    const/4 v8, 0x0

    .line 63107
    if-eqz p2, :cond_c

    .line 63108
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->ADN()V

    .line 63109
    add-int v0, v5, v1

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CH;->A3N(I)V

    .line 63110
    .end local v5    # "headerData":I
    :goto_7
    move v7, v1

    goto/16 :goto_3

    .line 63111
    :cond_c
    invoke-interface {p1, v2}, Lcom/facebook/ads/redexgen/X/CH;->AE3(I)V

    goto :goto_7

    .line 63112
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 63113
    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 63114
    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 63115
    :cond_10
    const/high16 v4, 0x20000

    goto/16 :goto_0

    .line 63116
    :cond_11
    const/4 v2, 0x4

    const/16 v1, 0x18

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z8;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final A7q(Lcom/facebook/ads/redexgen/X/CI;)V
    .locals 3

    .line 63117
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Z8;->A04:Lcom/facebook/ads/redexgen/X/CI;

    .line 63118
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Z8;->A04:Lcom/facebook/ads/redexgen/X/CI;

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CI;->AEM(II)Lcom/facebook/ads/redexgen/X/CS;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A05:Lcom/facebook/ads/redexgen/X/CS;

    .line 63119
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A04:Lcom/facebook/ads/redexgen/X/CI;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CI;->A5B()V

    .line 63120
    return-void
.end method

.method public final ACk(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/CN;)I
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 63121
    move-object/from16 v1, p0

    move-object v1, v1

    iget v2, v1, Lcom/facebook/ads/redexgen/X/Z8;->A01:I

    move-object/from16 v0, p1

    if-nez v2, :cond_0

    .line 63122
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Z8;->A08(Lcom/facebook/ads/redexgen/X/CH;Z)Z

    goto :goto_0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63123
    .local v1, "e":Ljava/io/EOFException;
    :catch_0
    const/4 v0, -0x1

    return v0

    .line 63124
    :cond_0
    :goto_0
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/Z8;->A06:Lcom/facebook/ads/redexgen/X/Z7;

    if-nez v2, :cond_4

    .line 63125
    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Z8;->A03(Lcom/facebook/ads/redexgen/X/CH;)Lcom/facebook/ads/redexgen/X/Z7;

    move-result-object v2

    iput-object v2, v1, Lcom/facebook/ads/redexgen/X/Z8;->A06:Lcom/facebook/ads/redexgen/X/Z7;

    .line 63126
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/Z8;->A06:Lcom/facebook/ads/redexgen/X/Z7;

    if-eqz v2, :cond_1

    .line 63127
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/CP;->A8D()Z

    move-result v2

    if-nez v2, :cond_3

    iget v2, v1, Lcom/facebook/ads/redexgen/X/Z8;->A08:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 63128
    :cond_1
    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Z8;->A02(Lcom/facebook/ads/redexgen/X/CH;)Lcom/facebook/ads/redexgen/X/Z7;

    move-result-object v5

    sget-object v4, Lcom/facebook/ads/redexgen/X/Z8;->A0F:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v3, v4, v2

    const/4 v2, 0x5

    aget-object v2, v4, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v3, v2, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v4, Lcom/facebook/ads/redexgen/X/Z8;->A0F:[Ljava/lang/String;

    const-string v3, "vRoDRHRtSRtNnEEJ64K4r5ogXxosELXw"

    const/4 v2, 0x3

    aput-object v3, v4, v2

    iput-object v5, v1, Lcom/facebook/ads/redexgen/X/Z8;->A06:Lcom/facebook/ads/redexgen/X/Z7;

    .line 63129
    :cond_3
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/Z8;->A04:Lcom/facebook/ads/redexgen/X/CI;

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/Z8;->A06:Lcom/facebook/ads/redexgen/X/Z7;

    invoke-interface {v3, v2}, Lcom/facebook/ads/redexgen/X/CI;->ADX(Lcom/facebook/ads/redexgen/X/CP;)V

    .line 63130
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/Z8;->A05:Lcom/facebook/ads/redexgen/X/CS;

    const/4 v4, 0x0

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/Z8;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/CM;->A06:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/16 v8, 0x1000

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/Z8;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    iget v9, v2, Lcom/facebook/ads/redexgen/X/CM;->A01:I

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/Z8;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    iget v10, v2, Lcom/facebook/ads/redexgen/X/CM;->A03:I

    const/4 v11, -0x1

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/Z8;->A0A:Lcom/facebook/ads/redexgen/X/CK;

    iget v12, v2, Lcom/facebook/ads/redexgen/X/CK;->A00:I

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/Z8;->A0A:Lcom/facebook/ads/redexgen/X/CK;

    iget v13, v2, Lcom/facebook/ads/redexgen/X/CK;->A01:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    .line 63131
    iget v2, v1, Lcom/facebook/ads/redexgen/X/Z8;->A08:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    .line 63132
    :goto_1
    const/16 v16, 0x0

    move-object/from16 v18, v2

    invoke-static/range {v4 .. v18}, Lcom/facebook/ads/internal/exoplayer2/Format;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;ILjava/lang/String;Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v2

    .line 63133
    invoke-interface {v3, v2}, Lcom/facebook/ads/redexgen/X/CS;->A5P(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 63134
    :cond_4
    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Z8;->A00(Lcom/facebook/ads/redexgen/X/CH;)I

    move-result v0

    return v0

    .line 63135
    :cond_5
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/Z8;->A07:Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    goto :goto_1
.end method

.method public final ADW(JJ)V
    .locals 3

    .line 63136
    const/4 v2, 0x0

    iput v2, p0, Lcom/facebook/ads/redexgen/X/Z8;->A01:I

    .line 63137
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A02:J

    .line 63138
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A03:J

    .line 63139
    iput v2, p0, Lcom/facebook/ads/redexgen/X/Z8;->A00:I

    .line 63140
    return-void
.end method

.method public final AE4(Lcom/facebook/ads/redexgen/X/CH;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 63141
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Z8;->A08(Lcom/facebook/ads/redexgen/X/CH;Z)Z

    move-result v0

    return v0
.end method
