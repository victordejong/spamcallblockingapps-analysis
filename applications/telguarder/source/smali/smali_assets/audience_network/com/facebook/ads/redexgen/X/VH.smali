.class public final Lcom/facebook/ads/redexgen/X/VH;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/D9;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/VI;
    }
.end annotation


# static fields
.field public static A0C:[B

.field public static A0D:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:J

.field public A06:J

.field public A07:J

.field public final A08:J

.field public final A09:J

.field public final A0A:Lcom/facebook/ads/redexgen/X/D8;

.field public final A0B:Lcom/facebook/ads/redexgen/X/DC;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/VH;->A0B()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/VH;->A0A()V

    return-void
.end method

.method public constructor <init>(JJLcom/facebook/ads/redexgen/X/DC;IJ)V
    .locals 4

    .line 59020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59021
    new-instance v0, Lcom/facebook/ads/redexgen/X/D8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/D8;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VH;->A0A:Lcom/facebook/ads/redexgen/X/D8;

    .line 59022
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-ltz v0, :cond_1

    cmp-long v0, p3, p1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 59023
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/VH;->A0B:Lcom/facebook/ads/redexgen/X/DC;

    .line 59024
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/VH;->A09:J

    .line 59025
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/VH;->A08:J

    .line 59026
    int-to-long v1, p6

    sub-long/2addr p3, p1

    cmp-long v0, v1, p3

    if-nez v0, :cond_0

    .line 59027
    iput-wide p7, p0, Lcom/facebook/ads/redexgen/X/VH;->A07:J

    .line 59028
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/VH;->A00:I

    .line 59029
    :goto_1
    return-void

    .line 59030
    :cond_0
    iput v3, p0, Lcom/facebook/ads/redexgen/X/VH;->A00:I

    goto :goto_1

    .line 59031
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A00(JJJ)J
    .locals 7

    .line 59032
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/VH;->A08:J

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/VH;->A09:J

    sub-long/2addr v3, v1

    mul-long/2addr v3, p3

    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/VH;->A07:J

    div-long/2addr v3, v5

    sub-long/2addr v3, p5

    add-long/2addr p1, v3

    .line 59033
    cmp-long v0, p1, v1

    if-gez v0, :cond_0

    .line 59034
    iget-wide p1, p0, Lcom/facebook/ads/redexgen/X/VH;->A09:J

    .line 59035
    :cond_0
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/VH;->A08:J

    sget-object v1, Lcom/facebook/ads/redexgen/X/VH;->A0D:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6a

    if-eq v1, v0, :cond_2

    sget-object v4, Lcom/facebook/ads/redexgen/X/VH;->A0D:[Ljava/lang/String;

    const-string v1, "Xylf9jO9V9IYqFRgYXs59s"

    const/4 v0, 0x6

    aput-object v1, v4, v0

    const-string v1, "fTKdBxopGmfKNMEwW"

    const/4 v0, 0x2

    aput-object v1, v4, v0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_1

    .line 59036
    const-wide/16 v0, 0x1

    sub-long p1, v2, v0

    .line 59037
    :cond_1
    return-wide p1

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A01(JLcom/facebook/ads/redexgen/X/CH;)J
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 59038
    move-object v10, p0

    iget-wide v3, v10, Lcom/facebook/ads/redexgen/X/VH;->A04:J

    iget-wide v1, v10, Lcom/facebook/ads/redexgen/X/VH;->A01:J

    const-wide/16 v13, 0x2

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 59039
    iget-wide v2, v10, Lcom/facebook/ads/redexgen/X/VH;->A05:J

    add-long/2addr v2, v13

    neg-long v0, v2

    return-wide v0

    .line 59040
    :cond_0
    move-object/from16 v5, p3

    invoke-interface {v5}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v1

    .line 59041
    .local v2, "initialPosition":J
    iget-wide v3, v10, Lcom/facebook/ads/redexgen/X/VH;->A01:J

    invoke-direct {v10, v5, v3, v4}, Lcom/facebook/ads/redexgen/X/VH;->A0E(Lcom/facebook/ads/redexgen/X/CH;J)Z

    move-result v0

    if-nez v0, :cond_3

    .line 59042
    iget-wide v3, v10, Lcom/facebook/ads/redexgen/X/VH;->A04:J

    cmp-long v5, v3, v1

    sget-object v1, Lcom/facebook/ads/redexgen/X/VH;->A0D:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6a

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/VH;->A0D:[Ljava/lang/String;

    const-string v1, "hDpoqlvfyMejPsE9QE5wpckHazqfwJ3A"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v5, :cond_1

    .line 59043
    return-wide v3

    .line 59044
    :cond_1
    const/4 v2, 0x0

    const/16 v1, 0x19

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VH;->A09(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 59045
    :cond_3
    iget-object v3, v10, Lcom/facebook/ads/redexgen/X/VH;->A0A:Lcom/facebook/ads/redexgen/X/D8;

    const/4 v0, 0x0

    invoke-virtual {v3, v5, v0}, Lcom/facebook/ads/redexgen/X/D8;->A04(Lcom/facebook/ads/redexgen/X/CH;Z)Z

    .line 59046
    invoke-interface {v5}, Lcom/facebook/ads/redexgen/X/CH;->ADN()V

    .line 59047
    iget-object v0, v10, Lcom/facebook/ads/redexgen/X/VH;->A0A:Lcom/facebook/ads/redexgen/X/D8;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/D8;->A05:J

    sub-long p1, p1, v3

    sget-object v4, Lcom/facebook/ads/redexgen/X/VH;->A0D:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v3, v4, v0

    const/4 v0, 0x2

    aget-object v0, v4, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v3, v0, :cond_a

    .line 59048
    .local v10, "granuleDistance":J
    sget-object v4, Lcom/facebook/ads/redexgen/X/VH;->A0D:[Ljava/lang/String;

    const-string v3, "TbqqvngDTmZ0XoYtto4TU9"

    const/4 v0, 0x6

    aput-object v3, v4, v0

    const-string v3, "pxk1hoLZKGv2CKCHn"

    const/4 v0, 0x2

    aput-object v3, v4, v0

    iget-object v0, v10, Lcom/facebook/ads/redexgen/X/VH;->A0A:Lcom/facebook/ads/redexgen/X/D8;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/D8;->A01:I

    iget-object v0, v10, Lcom/facebook/ads/redexgen/X/VH;->A0A:Lcom/facebook/ads/redexgen/X/D8;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/D8;->A00:I

    add-int/2addr v4, v0

    .line 59049
    .local v1, "pageSize":I
    const-wide/16 v11, 0x0

    cmp-long v0, p1, v11

    if-ltz v0, :cond_4

    const-wide/32 v6, 0x11940

    cmp-long v0, p1, v6

    if-lez v0, :cond_9

    .line 59050
    :cond_4
    const-wide/32 v7, 0x186a0

    cmp-long v0, p1, v11

    if-gez v0, :cond_6

    .line 59051
    iput-wide v1, v10, Lcom/facebook/ads/redexgen/X/VH;->A01:J

    .line 59052
    iget-object v0, v10, Lcom/facebook/ads/redexgen/X/VH;->A0A:Lcom/facebook/ads/redexgen/X/D8;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/D8;->A05:J

    iput-wide v0, v10, Lcom/facebook/ads/redexgen/X/VH;->A02:J

    .line 59053
    :cond_5
    iget-wide v2, v10, Lcom/facebook/ads/redexgen/X/VH;->A01:J

    iget-wide v0, v10, Lcom/facebook/ads/redexgen/X/VH;->A04:J

    sub-long/2addr v2, v0

    cmp-long v6, v2, v7

    if-gez v6, :cond_7

    .line 59054
    iput-wide v0, v10, Lcom/facebook/ads/redexgen/X/VH;->A01:J

    .line 59055
    return-wide v0

    .line 59056
    :cond_6
    invoke-interface {v5}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v2

    int-to-long v0, v4

    add-long/2addr v2, v0

    iput-wide v2, v10, Lcom/facebook/ads/redexgen/X/VH;->A04:J

    .line 59057
    iget-object v0, v10, Lcom/facebook/ads/redexgen/X/VH;->A0A:Lcom/facebook/ads/redexgen/X/D8;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/D8;->A05:J

    iput-wide v0, v10, Lcom/facebook/ads/redexgen/X/VH;->A05:J

    .line 59058
    iget-wide v2, v10, Lcom/facebook/ads/redexgen/X/VH;->A01:J

    iget-wide v0, v10, Lcom/facebook/ads/redexgen/X/VH;->A04:J

    sub-long/2addr v2, v0

    int-to-long v0, v4

    add-long/2addr v2, v0

    cmp-long v0, v2, v7

    if-gez v0, :cond_5

    .line 59059
    invoke-interface {v5, v4}, Lcom/facebook/ads/redexgen/X/CH;->AE4(I)V

    .line 59060
    iget-wide v2, v10, Lcom/facebook/ads/redexgen/X/VH;->A05:J

    add-long/2addr v2, v13

    neg-long v0, v2

    return-wide v0

    .line 59061
    :cond_7
    int-to-long v3, v4

    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-gtz v0, :cond_8

    :goto_0
    mul-long/2addr v3, v13

    .line 59062
    .local v9, "offset":J
    invoke-interface {v5}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v6

    sub-long/2addr v6, v3

    iget-wide v8, v10, Lcom/facebook/ads/redexgen/X/VH;->A01:J

    iget-wide v4, v10, Lcom/facebook/ads/redexgen/X/VH;->A04:J

    sub-long/2addr v8, v4

    mul-long v8, v8, p1

    .end local v2    # "initialPosition":J
    .local p1, "initialPosition":J
    iget-wide v2, v10, Lcom/facebook/ads/redexgen/X/VH;->A02:J

    .end local v10    # "granuleDistance":J
    .local p3, "granuleDistance":J
    iget-wide v0, v10, Lcom/facebook/ads/redexgen/X/VH;->A05:J

    sub-long/2addr v2, v0

    div-long/2addr v8, v2

    add-long/2addr v6, v8

    .line 59063
    .local v3, "nextPosition":J
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 59064
    .end local v3    # "nextPosition":J
    .local p1, "nextPosition":J
    iget-wide v2, v10, Lcom/facebook/ads/redexgen/X/VH;->A01:J

    const-wide/16 v0, 0x1

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 59065
    return-wide v0

    .line 59066
    :cond_8
    const-wide/16 v13, 0x1

    goto :goto_0

    .line 59067
    :cond_9
    invoke-interface {v5, v4}, Lcom/facebook/ads/redexgen/X/CH;->AE4(I)V

    .line 59068
    iget-object v0, v10, Lcom/facebook/ads/redexgen/X/VH;->A0A:Lcom/facebook/ads/redexgen/X/D8;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/D8;->A05:J

    add-long/2addr v2, v13

    neg-long v0, v2

    return-wide v0

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A02(Lcom/facebook/ads/redexgen/X/CH;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 59069
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/VH;->A0D(Lcom/facebook/ads/redexgen/X/CH;)V

    .line 59070
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VH;->A0A:Lcom/facebook/ads/redexgen/X/D8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/D8;->A03()V

    .line 59071
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VH;->A0A:Lcom/facebook/ads/redexgen/X/D8;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/D8;->A04:I

    const/4 v0, 0x4

    and-int/2addr v1, v0

    if-eq v1, v0, :cond_0

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v3

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/VH;->A08:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    .line 59072
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VH;->A0A:Lcom/facebook/ads/redexgen/X/D8;

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/D8;->A04(Lcom/facebook/ads/redexgen/X/CH;Z)Z

    .line 59073
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VH;->A0A:Lcom/facebook/ads/redexgen/X/D8;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/D8;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VH;->A0A:Lcom/facebook/ads/redexgen/X/D8;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/D8;->A00:I

    add-int/2addr v1, v0

    invoke-interface {p1, v1}, Lcom/facebook/ads/redexgen/X/CH;->AE4(I)V

    goto :goto_0

    .line 59074
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VH;->A0A:Lcom/facebook/ads/redexgen/X/D8;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/D8;->A05:J

    return-wide v0
.end method

.method private final A03(Lcom/facebook/ads/redexgen/X/CH;JJ)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 59075
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VH;->A0A:Lcom/facebook/ads/redexgen/X/D8;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Lcom/facebook/ads/redexgen/X/D8;->A04(Lcom/facebook/ads/redexgen/X/CH;Z)Z

    .line 59076
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VH;->A0A:Lcom/facebook/ads/redexgen/X/D8;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/D8;->A05:J

    cmp-long v0, v1, p2

    if-gez v0, :cond_0

    .line 59077
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VH;->A0A:Lcom/facebook/ads/redexgen/X/D8;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/D8;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VH;->A0A:Lcom/facebook/ads/redexgen/X/D8;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/D8;->A00:I

    add-int/2addr v1, v0

    invoke-interface {p1, v1}, Lcom/facebook/ads/redexgen/X/CH;->AE4(I)V

    .line 59078
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VH;->A0A:Lcom/facebook/ads/redexgen/X/D8;

    iget-wide p4, v0, Lcom/facebook/ads/redexgen/X/D8;->A05:J

    .line 59079
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VH;->A0A:Lcom/facebook/ads/redexgen/X/D8;

    invoke-virtual {v0, p1, v3}, Lcom/facebook/ads/redexgen/X/D8;->A04(Lcom/facebook/ads/redexgen/X/CH;Z)Z

    goto :goto_0

    .line 59080
    :cond_0
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->ADN()V

    .line 59081
    return-wide p4
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/VH;)J
    .locals 1

    .line 59082
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/VH;->A09:J

    return-wide v0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/VH;)J
    .locals 1

    .line 59083
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/VH;->A07:J

    return-wide v0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/VH;JJJ)J
    .locals 0

    .line 59084
    invoke-direct/range {p0 .. p6}, Lcom/facebook/ads/redexgen/X/VH;->A00(JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private final A07()Lcom/facebook/ads/redexgen/X/VI;
    .locals 6

    .line 59085
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/VH;->A07:J

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    cmp-long v0, v4, v1

    if-eqz v0, :cond_0

    new-instance v0, Lcom/facebook/ads/redexgen/X/VI;

    invoke-direct {v0, p0, v3}, Lcom/facebook/ads/redexgen/X/VI;-><init>(Lcom/facebook/ads/redexgen/X/VH;Lcom/facebook/ads/redexgen/X/D6;)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v3

    goto :goto_0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/VH;)Lcom/facebook/ads/redexgen/X/DC;
    .locals 0

    .line 59086
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/VH;->A0B:Lcom/facebook/ads/redexgen/X/DC;

    return-object p0
.end method

.method public static A09(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/VH;->A0C:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4e

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0A()V
    .locals 1

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/VH;->A0C:[B

    return-void

    :array_0
    .array-data 1
        0x66t
        0x47t
        0x8t
        0x47t
        0x4ft
        0x4ft
        0x8t
        0x58t
        0x49t
        0x4ft
        0x4dt
        0x8t
        0x4bt
        0x49t
        0x46t
        0x8t
        0x4at
        0x4dt
        0x8t
        0x4et
        0x47t
        0x5dt
        0x46t
        0x4ct
        0x6t
    .end array-data
.end method

.method public static A0B()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ApBJS8mcdonSXw2hxs1TM4BQcMVIDLT9"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "0TLkwtK0TmASGyk08REsMrmULm6fEBdU"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "AidchnE54FH9NYAJJ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Zl0GCu4MQYq3HwPEcim9xr0fQSfH8b7a"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Ikbpl"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "cISm4wuiLujAxVHbl"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ZRhFl9ulFgp0o5QxWoO4Dh"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "f5jTB"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/VH;->A0D:[Ljava/lang/String;

    return-void
.end method

.method private final A0C()V
    .locals 2

    .line 59087
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/VH;->A09:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/VH;->A04:J

    .line 59088
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/VH;->A08:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/VH;->A01:J

    .line 59089
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/VH;->A05:J

    .line 59090
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/VH;->A07:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/VH;->A02:J

    .line 59091
    return-void
.end method

.method private final A0D(Lcom/facebook/ads/redexgen/X/CH;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 59092
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/VH;->A08:J

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/VH;->A0E(Lcom/facebook/ads/redexgen/X/CH;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59093
    return-void

    .line 59094
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method private final A0E(Lcom/facebook/ads/redexgen/X/CH;J)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 59095
    const-wide/16 v2, 0x3

    add-long/2addr v2, p2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/VH;->A08:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 59096
    const/16 v0, 0x800

    new-array v3, v0, [B

    .line 59097
    .local p0, "buffer":[B
    array-length v2, v3

    .line 59098
    .local p1, "peekLength":I
    :goto_0
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v4

    int-to-long v0, v2

    add-long/2addr v4, v0

    const/4 v6, 0x0

    cmp-long v0, v4, v7

    if-lez v0, :cond_0

    .line 59099
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v4

    sub-long v0, v7, v4

    long-to-int v2, v0

    .line 59100
    const/4 v0, 0x4

    if-ge v2, v0, :cond_0

    .line 59101
    return v6

    .line 59102
    :cond_0
    invoke-interface {p1, v3, v6, v2, v6}, Lcom/facebook/ads/redexgen/X/CH;->ACN([BIIZ)Z

    .line 59103
    const/4 v4, 0x0

    .local p2, "i":I
    :goto_1
    add-int/lit8 v0, v2, -0x3

    if-ge v4, v0, :cond_2

    .line 59104
    aget-byte v1, v3, v4

    const/16 v0, 0x4f

    if-ne v1, v0, :cond_1

    add-int/lit8 v0, v4, 0x1

    aget-byte v0, v3, v0

    const/16 v1, 0x67

    if-ne v0, v1, :cond_1

    add-int/lit8 v0, v4, 0x2

    aget-byte v0, v3, v0

    if-ne v0, v1, :cond_1

    add-int/lit8 v0, v4, 0x3

    aget-byte v1, v3, v0

    const/16 v0, 0x53

    if-ne v1, v0, :cond_1

    .line 59105
    invoke-interface {p1, v4}, Lcom/facebook/ads/redexgen/X/CH;->AE4(I)V

    .line 59106
    const/4 v0, 0x1

    return v0

    .line 59107
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 59108
    .end local p2    # "i":I
    :cond_2
    add-int/lit8 v0, v2, -0x3

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CH;->AE4(I)V

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic A4P()Lcom/facebook/ads/redexgen/X/CP;
    .locals 1

    .line 59109
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/VH;->A07()Lcom/facebook/ads/redexgen/X/VI;

    move-result-object v0

    return-object v0
.end method

.method public final ACl(Lcom/facebook/ads/redexgen/X/CH;)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 59110
    iget v1, p0, Lcom/facebook/ads/redexgen/X/VH;->A00:I

    const/4 v2, 0x1

    const/4 v4, 0x3

    move-object v8, p1

    if-eqz v1, :cond_4

    if-eq v1, v2, :cond_5

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    if-ne v1, v4, :cond_0

    .line 59111
    const-wide/16 v0, -0x1

    return-wide v0

    .line 59112
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 59113
    :cond_1
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/VH;->A06:J

    const-wide/16 v2, 0x2

    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-nez v5, :cond_2

    .line 59114
    const-wide/16 v0, 0x0

    .line 59115
    .local p0, "currentGranule":J
    .local p0, "currentGranule":J
    :goto_0
    iput v4, p0, Lcom/facebook/ads/redexgen/X/VH;->A00:I

    .line 59116
    add-long/2addr v2, v0

    neg-long v0, v2

    return-wide v0

    .line 59117
    .end local p0    # "currentGranule":J
    :cond_2
    invoke-direct {p0, v0, v1, v8}, Lcom/facebook/ads/redexgen/X/VH;->A01(JLcom/facebook/ads/redexgen/X/CH;)J

    move-result-wide v0

    .line 59118
    .local p0, "position":J
    cmp-long v5, v0, v6

    if-ltz v5, :cond_3

    .line 59119
    return-wide v0

    .line 59120
    :cond_3
    iget-wide v9, p0, Lcom/facebook/ads/redexgen/X/VH;->A06:J

    add-long/2addr v0, v2

    neg-long v11, v0

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/VH;->A03(Lcom/facebook/ads/redexgen/X/CH;JJ)J

    move-result-wide v0

    goto :goto_0

    .line 59121
    .end local p0    # "position":J
    :cond_4
    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/VH;->A03:J

    .line 59122
    iput v2, p0, Lcom/facebook/ads/redexgen/X/VH;->A00:I

    .line 59123
    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/VH;->A08:J

    const-wide/32 v0, 0xff1b

    sub-long/2addr v5, v0

    .line 59124
    .local p0, "lastPageSearchPosition":J
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/VH;->A03:J

    cmp-long v0, v5, v1

    if-lez v0, :cond_5

    .line 59125
    return-wide v5

    .line 59126
    .end local p0    # "lastPageSearchPosition":J
    :cond_5
    invoke-direct {p0, v8}, Lcom/facebook/ads/redexgen/X/VH;->A02(Lcom/facebook/ads/redexgen/X/CH;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/VH;->A07:J

    .line 59127
    iput v4, p0, Lcom/facebook/ads/redexgen/X/VH;->A00:I

    .line 59128
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/VH;->A03:J

    return-wide v0
.end method

.method public final AEC(J)J
    .locals 5

    .line 59129
    iget v1, p0, Lcom/facebook/ads/redexgen/X/VH;->A00:I

    const/4 v3, 0x2

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    if-ne v1, v3, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 59130
    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-nez v0, :cond_1

    :goto_1
    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/VH;->A06:J

    .line 59131
    iput v3, p0, Lcom/facebook/ads/redexgen/X/VH;->A00:I

    .line 59132
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/VH;->A0C()V

    .line 59133
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/VH;->A06:J

    sget-object v4, Lcom/facebook/ads/redexgen/X/VH;->A0D:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v4, v0

    const/4 v0, 0x0

    aget-object v4, v4, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 59134
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VH;->A0B:Lcom/facebook/ads/redexgen/X/DC;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/DC;->A05(J)J

    move-result-wide v1

    goto :goto_1

    .line 59135
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/facebook/ads/redexgen/X/VH;->A0D:[Ljava/lang/String;

    const-string v1, "OE6hq"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    const-string v1, "ZiYOq"

    const/4 v0, 0x7

    aput-object v1, v4, v0

    return-wide v2
.end method
