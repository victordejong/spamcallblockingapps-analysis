.class public final Lcom/facebook/ads/redexgen/X/V7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/DM;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/extractor/ts/Ac3Reader$State;
    }
.end annotation


# static fields
.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:J

.field public A04:J

.field public A05:Lcom/facebook/ads/internal/exoplayer2/Format;

.field public A06:Lcom/facebook/ads/redexgen/X/CS;

.field public A07:Ljava/lang/String;

.field public A08:Z

.field public final A09:Lcom/facebook/ads/redexgen/X/IL;

.field public final A0A:Lcom/facebook/ads/redexgen/X/IM;

.field public final A0B:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/V7;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58663
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/V7;-><init>(Ljava/lang/String;)V

    .line 58664
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 58665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58666
    const/16 v0, 0x80

    new-array v1, v0, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/IL;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A09:Lcom/facebook/ads/redexgen/X/IL;

    .line 58667
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A09:Lcom/facebook/ads/redexgen/X/IL;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IL;->A00:[B

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    .line 58668
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A02:I

    .line 58669
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/V7;->A0B:Ljava/lang/String;

    .line 58670
    return-void
.end method

.method private A00()V
    .locals 13

    .line 58671
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/V7;->A09:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A08(I)V

    .line 58672
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A09:Lcom/facebook/ads/redexgen/X/IL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ao;->A09(Lcom/facebook/ads/redexgen/X/IL;)Lcom/facebook/ads/redexgen/X/An;

    move-result-object v1

    .line 58673
    .local p0, "frameInfo":Lcom/facebook/ads/redexgen/X/An;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A05:Lcom/facebook/ads/internal/exoplayer2/Format;

    if-eqz v0, :cond_0

    iget v2, v1, Lcom/facebook/ads/redexgen/X/An;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A05:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget v0, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A05:I

    if-ne v2, v0, :cond_0

    iget v2, v1, Lcom/facebook/ads/redexgen/X/An;->A03:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A05:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget v0, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0C:I

    if-ne v2, v0, :cond_0

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/An;->A05:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A05:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget-object v0, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    if-eq v2, v0, :cond_1

    .line 58674
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/V7;->A07:Ljava/lang/String;

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/An;->A05:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    iget v7, v1, Lcom/facebook/ads/redexgen/X/An;->A00:I

    iget v8, v1, Lcom/facebook/ads/redexgen/X/An;->A03:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/facebook/ads/redexgen/X/V7;->A0B:Ljava/lang/String;

    .line 58675
    invoke-static/range {v2 .. v12}, Lcom/facebook/ads/internal/exoplayer2/Format;->A07(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A05:Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 58676
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/V7;->A06:Lcom/facebook/ads/redexgen/X/CS;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A05:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/CS;->A5P(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 58677
    :cond_1
    iget v0, v1, Lcom/facebook/ads/redexgen/X/An;->A01:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A01:I

    .line 58678
    const-wide/32 v4, 0xf4240

    iget v0, v1, Lcom/facebook/ads/redexgen/X/An;->A02:I

    int-to-long v2, v0

    mul-long/2addr v2, v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A05:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget v0, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0C:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/V7;->A03:J

    .line 58679
    return-void
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "mbAQvr7MIJ9zYtytkk0sWni"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "zQlPMWfyjCSCZKfQd9vDVhFQhVv73YqI"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ubzZtpV"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "6sk7Q3ChFwdk8hO"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "5nP0vRbeTUqw2Q2sVOxAzLpq7wH8Ag2P"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "6E9oAvxuWuzJlR5wi5kvDyRyjv5M5YMo"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "K3K5S"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "KoAf0dFV9h1i8l47TSNDV4MTicVUyrEX"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/V7;->A0C:[Ljava/lang/String;

    return-void
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/IM;)Z
    .locals 5

    .line 58680
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    const/4 v4, 0x0

    if-lez v0, :cond_4

    .line 58681
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A08:Z

    const/16 v3, 0xb

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 58682
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    if-ne v0, v3, :cond_0

    const/4 v4, 0x1

    :cond_0
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/V7;->A08:Z

    .line 58683
    goto :goto_0

    .line 58684
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v1

    .line 58685
    .local p0, "secondByte":I
    const/16 v0, 0x77

    if-ne v1, v0, :cond_2

    .line 58686
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/V7;->A08:Z

    .line 58687
    return v2

    .line 58688
    :cond_2
    if-ne v1, v3, :cond_3

    const/4 v4, 0x1

    :cond_3
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/V7;->A08:Z

    .line 58689
    .end local p0    # "secondByte":I
    goto :goto_0

    .line 58690
    :cond_4
    return v4
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/IM;[BI)Z
    .locals 2

    .line 58691
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A00:I

    sub-int v0, p3, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 58692
    .local p0, "bytesToRead":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A00:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 58693
    iget v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A00:I

    .line 58694
    iget v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A00:I

    if-ne v0, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A45(Lcom/facebook/ads/redexgen/X/IM;)V
    .locals 11

    .line 58695
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    if-lez v0, :cond_6

    .line 58696
    iget v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A02:I

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v5, :cond_1

    goto :goto_0

    .line 58697
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/V7;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A00:I

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 58698
    .local p0, "bytesToRead":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A06:Lcom/facebook/ads/redexgen/X/CS;

    invoke-interface {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/CS;->ADS(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 58699
    iget v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A00:I

    .line 58700
    iget v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A00:I

    iget v8, p0, Lcom/facebook/ads/redexgen/X/V7;->A01:I

    if-ne v0, v8, :cond_0

    .line 58701
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/V7;->A06:Lcom/facebook/ads/redexgen/X/CS;

    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/V7;->A04:J

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/CS;->ADT(JIIILcom/facebook/ads/redexgen/X/CR;)V

    .line 58702
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/V7;->A04:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A03:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/V7;->A04:J

    .line 58703
    iput v3, p0, Lcom/facebook/ads/redexgen/X/V7;->A02:I

    goto :goto_0

    .line 58704
    .end local p0    # "bytesToRead":I
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    sget-object v1, Lcom/facebook/ads/redexgen/X/V7;->A0C:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/V7;->A0C:[Ljava/lang/String;

    const-string v1, "S6aX7vtHpMrnSx4XJ27NV2OL6ut6ILAg"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/16 v2, 0x80

    invoke-direct {p0, p1, v4, v2}, Lcom/facebook/ads/redexgen/X/V7;->A03(Lcom/facebook/ads/redexgen/X/IM;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58705
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/V7;->A00()V

    .line 58706
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 58707
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/V7;->A06:Lcom/facebook/ads/redexgen/X/CS;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/CS;->ADS(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 58708
    iput v5, p0, Lcom/facebook/ads/redexgen/X/V7;->A02:I

    goto :goto_0

    .line 58709
    :cond_3
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/V7;->A02(Lcom/facebook/ads/redexgen/X/IM;)Z

    move-result v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/V7;->A0C:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/V7;->A0C:[Ljava/lang/String;

    const-string v1, "r6jl0"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v6, :cond_0

    .line 58710
    iput v4, p0, Lcom/facebook/ads/redexgen/X/V7;->A02:I

    .line 58711
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/16 v0, 0xb

    aput-byte v0, v1, v3

    .line 58712
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/16 v0, 0x77

    aput-byte v0, v1, v4

    .line 58713
    iput v5, p0, Lcom/facebook/ads/redexgen/X/V7;->A00:I

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 58714
    :cond_6
    return-void
.end method

.method public final A4S(Lcom/facebook/ads/redexgen/X/CI;Lcom/facebook/ads/redexgen/X/Da;)V
    .locals 2

    .line 58715
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A05()V

    .line 58716
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A04()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A07:Ljava/lang/String;

    .line 58717
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A03()I

    move-result v1

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/CI;->AEO(II)Lcom/facebook/ads/redexgen/X/CS;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A06:Lcom/facebook/ads/redexgen/X/CS;

    .line 58718
    return-void
.end method

.method public final ACI()V
    .locals 0

    .line 58719
    return-void
.end method

.method public final ACJ(JZ)V
    .locals 0

    .line 58720
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/V7;->A04:J

    .line 58721
    return-void
.end method

.method public final ADW()V
    .locals 1

    .line 58722
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A02:I

    .line 58723
    iput v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A00:I

    .line 58724
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A08:Z

    .line 58725
    return-void
.end method
