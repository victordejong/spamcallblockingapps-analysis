.class public final Lcom/facebook/ads/redexgen/X/Uv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/DM;


# static fields
.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:J

.field public A04:J

.field public A05:Lcom/facebook/ads/redexgen/X/CS;

.field public A06:Ljava/lang/String;

.field public A07:Z

.field public A08:Z

.field public final A09:Lcom/facebook/ads/redexgen/X/CM;

.field public final A0A:Lcom/facebook/ads/redexgen/X/IM;

.field public final A0B:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Uv;->A00()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57659
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Uv;-><init>(Ljava/lang/String;)V

    .line 57660
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 57661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57662
    const/4 v2, 0x0

    iput v2, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:I

    .line 57663
    const/4 v1, 0x4

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    .line 57664
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/4 v0, -0x1

    aput-byte v0, v1, v2

    .line 57665
    new-instance v0, Lcom/facebook/ads/redexgen/X/CM;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/CM;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A09:Lcom/facebook/ads/redexgen/X/CM;

    .line 57666
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Uv;->A0B:Ljava/lang/String;

    .line 57667
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "7c9ycLK0mIlx3DYAkTyBfy3UmjaW2Mi2"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Dm9whIoV7fy1M5DmP1wFPFFHQDDs9kmU"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "S1DUTXyEARmjkRncfjJkmGZI2NCbgtzy"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "f9ZRo9jm0BXBFv9CsHz8WRgSnsn5f9qq"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Y96967IBjT99CFHpROvHvMTAATuEq7zg"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "KZ1sTLUidjDjZzZuUOou5mCzUbGZRc77"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "QeitoDJXQQOysX7OaAAWkGF2EeYKu5Db"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "dttH0Idk"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Uv;->A0C:[Ljava/lang/String;

    return-void
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/IM;)V
    .locals 11

    .line 57668
    iget-object v6, p1, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    .line 57669
    .local p0, "data":[B
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v5

    .line 57670
    .local p1, "startOffset":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v9

    .line 57671
    .local v6, "endOffset":I
    .local v5, "i":I
    :goto_0
    if-ge v5, v9, :cond_5

    .line 57672
    aget-byte v1, v6, v5

    const/16 v0, 0xff

    and-int/2addr v1, v0

    const/4 v8, 0x0

    const/4 v3, 0x1

    if-ne v1, v0, :cond_3

    const/4 v7, 0x1

    .line 57673
    .local v9, "byteIsFF":Z
    :goto_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A08:Z

    if-eqz v0, :cond_1

    aget-byte v10, v6, v5

    const/16 v4, 0xe0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Uv;->A0C:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Uv;->A0C:[Ljava/lang/String;

    const-string v1, "Aft3TPejYvNO2p9CvYf8Hsq7PQAvIwnl"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "7XVkTB5Guq8rKzXmOTarVo0HkvOpJU6q"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    and-int/2addr v10, v4

    if-ne v10, v4, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 57674
    .local v5, "found":Z
    :goto_2
    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/Uv;->A08:Z

    .line 57675
    if-eqz v0, :cond_2

    .line 57676
    add-int/lit8 v0, v5, 0x1

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 57677
    iput-boolean v8, p0, Lcom/facebook/ads/redexgen/X/Uv;->A08:Z

    .line 57678
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    sget-object v2, Lcom/facebook/ads/redexgen/X/Uv;->A0C:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Uv;->A0C:[Ljava/lang/String;

    const-string v1, "xd9STD635YevZjtaPE5LlBiBcGQOB4yK"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "3p9vhGFzF5GKQtRLZLLpohmTqPJp5eQU"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    aget-byte v0, v6, v5

    aput-byte v0, v4, v3

    .line 57679
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A00:I

    .line 57680
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:I

    .line 57681
    return-void

    .line 57682
    .end local v9    # "byteIsFF":Z
    .end local v5    # "found":Z
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 57683
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Uv;->A0C:[Ljava/lang/String;

    const-string v1, "4rRUUwAg"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    aget-byte v0, v6, v5

    aput-byte v0, v4, v3

    .line 57684
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A00:I

    .line 57685
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:I

    .line 57686
    return-void

    .line 57687
    .end local v5
    :cond_5
    invoke-virtual {p1, v9}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 57688
    return-void
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/IM;)V
    .locals 7

    .line 57689
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Uv;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A00:I

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 57690
    .local p0, "bytesToRead":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A05:Lcom/facebook/ads/redexgen/X/CS;

    invoke-interface {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/CS;->ADS(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 57691
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A00:I

    .line 57692
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A00:I

    iget v4, p0, Lcom/facebook/ads/redexgen/X/Uv;->A01:I

    if-ge v0, v4, :cond_0

    .line 57693
    return-void

    .line 57694
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A05:Lcom/facebook/ads/redexgen/X/CS;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Uv;->A04:J

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/CS;->ADT(JIIILcom/facebook/ads/redexgen/X/CR;)V

    .line 57695
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Uv;->A04:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A03:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Uv;->A04:J

    .line 57696
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A00:I

    .line 57697
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:I

    .line 57698
    return-void
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/IM;)V
    .locals 16

    .line 57699
    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/Uv;->A00:I

    const/4 v3, 0x4

    rsub-int/lit8 v0, v0, 0x4

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 57700
    .local v5, "bytesToRead":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Uv;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget v0, v2, Lcom/facebook/ads/redexgen/X/Uv;->A00:I

    invoke-virtual {v5, v1, v0, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 57701
    iget v0, v2, Lcom/facebook/ads/redexgen/X/Uv;->A00:I

    add-int/2addr v0, v4

    iput v0, v2, Lcom/facebook/ads/redexgen/X/Uv;->A00:I

    .line 57702
    iget v0, v2, Lcom/facebook/ads/redexgen/X/Uv;->A00:I

    if-ge v0, v3, :cond_0

    .line 57703
    return-void

    .line 57704
    :cond_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Uv;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    sget-object v4, Lcom/facebook/ads/redexgen/X/Uv;->A0C:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v4, v4, v0

    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v0, 0x6a

    if-eq v4, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 57705
    :cond_1
    sget-object v5, Lcom/facebook/ads/redexgen/X/Uv;->A0C:[Ljava/lang/String;

    const-string v4, "nhTEFncuaAoL0DPAQWCKQpjPV8gqzWDG"

    const/4 v0, 0x6

    aput-object v4, v5, v0

    const-string v4, "jO9kzHVkYupDRFZYDqHCGwPCpG1cLZiP"

    const/4 v0, 0x3

    aput-object v4, v5, v0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Uv;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v4

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Uv;->A09:Lcom/facebook/ads/redexgen/X/CM;

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/CM;->A05(ILcom/facebook/ads/redexgen/X/CM;)Z

    move-result v0

    .line 57706
    .local v2, "parsedHeader":Z
    const/4 v4, 0x1

    if-nez v0, :cond_2

    .line 57707
    iput v1, v2, Lcom/facebook/ads/redexgen/X/Uv;->A00:I

    .line 57708
    iput v4, v2, Lcom/facebook/ads/redexgen/X/Uv;->A02:I

    .line 57709
    return-void

    .line 57710
    :cond_2
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Uv;->A09:Lcom/facebook/ads/redexgen/X/CM;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CM;->A02:I

    iput v0, v2, Lcom/facebook/ads/redexgen/X/Uv;->A01:I

    .line 57711
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Uv;->A07:Z

    if-nez v0, :cond_3

    .line 57712
    const-wide/32 v5, 0xf4240

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Uv;->A09:Lcom/facebook/ads/redexgen/X/CM;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CM;->A04:I

    int-to-long v7, v0

    mul-long/2addr v7, v5

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Uv;->A09:Lcom/facebook/ads/redexgen/X/CM;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CM;->A03:I

    int-to-long v5, v0

    div-long/2addr v7, v5

    iput-wide v7, v2, Lcom/facebook/ads/redexgen/X/Uv;->A03:J

    .line 57713
    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/Uv;->A06:Ljava/lang/String;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Uv;->A09:Lcom/facebook/ads/redexgen/X/CM;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/CM;->A06:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/16 v9, 0x1000

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Uv;->A09:Lcom/facebook/ads/redexgen/X/CM;

    iget v10, v0, Lcom/facebook/ads/redexgen/X/CM;->A01:I

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Uv;->A09:Lcom/facebook/ads/redexgen/X/CM;

    iget v11, v0, Lcom/facebook/ads/redexgen/X/CM;->A03:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-object v15, v2, Lcom/facebook/ads/redexgen/X/Uv;->A0B:Ljava/lang/String;

    .line 57714
    invoke-static/range {v5 .. v15}, Lcom/facebook/ads/internal/exoplayer2/Format;->A07(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v5

    .line 57715
    .local v4, "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Uv;->A05:Lcom/facebook/ads/redexgen/X/CS;

    invoke-interface {v0, v5}, Lcom/facebook/ads/redexgen/X/CS;->A5P(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 57716
    iput-boolean v4, v2, Lcom/facebook/ads/redexgen/X/Uv;->A07:Z

    .line 57717
    .end local v4    # "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    :cond_3
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Uv;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 57718
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Uv;->A05:Lcom/facebook/ads/redexgen/X/CS;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Uv;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/CS;->ADS(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 57719
    const/4 v0, 0x2

    iput v0, v2, Lcom/facebook/ads/redexgen/X/Uv;->A02:I

    .line 57720
    return-void
.end method


# virtual methods
.method public final A45(Lcom/facebook/ads/redexgen/X/IM;)V
    .locals 2

    .line 57721
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    if-lez v0, :cond_3

    .line 57722
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:I

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    if-eq v1, v0, :cond_1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    goto :goto_0

    .line 57723
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Uv;->A02(Lcom/facebook/ads/redexgen/X/IM;)V

    goto :goto_0

    .line 57724
    :cond_1
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Uv;->A03(Lcom/facebook/ads/redexgen/X/IM;)V

    .line 57725
    goto :goto_0

    .line 57726
    :cond_2
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Uv;->A01(Lcom/facebook/ads/redexgen/X/IM;)V

    .line 57727
    goto :goto_0

    .line 57728
    :cond_3
    return-void
.end method

.method public final A4S(Lcom/facebook/ads/redexgen/X/CI;Lcom/facebook/ads/redexgen/X/Da;)V
    .locals 2

    .line 57729
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A05()V

    .line 57730
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A04()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A06:Ljava/lang/String;

    .line 57731
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A03()I

    move-result v1

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/CI;->AEO(II)Lcom/facebook/ads/redexgen/X/CS;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A05:Lcom/facebook/ads/redexgen/X/CS;

    .line 57732
    return-void
.end method

.method public final ACI()V
    .locals 0

    .line 57733
    return-void
.end method

.method public final ACJ(JZ)V
    .locals 0

    .line 57734
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Uv;->A04:J

    .line 57735
    return-void
.end method

.method public final ADW()V
    .locals 1

    .line 57736
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:I

    .line 57737
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A00:I

    .line 57738
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A08:Z

    .line 57739
    return-void
.end method
