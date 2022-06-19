.class public final Lcom/facebook/ads/redexgen/X/ZU;
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

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ZU;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 64675
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/ZU;-><init>(Ljava/lang/String;)V

    .line 64676
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 64677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64678
    const/16 v0, 0x80

    new-array v1, v0, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/IL;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A09:Lcom/facebook/ads/redexgen/X/IL;

    .line 64679
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A09:Lcom/facebook/ads/redexgen/X/IL;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IL;->A00:[B

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    .line 64680
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A02:I

    .line 64681
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZU;->A0B:Ljava/lang/String;

    .line 64682
    return-void
.end method

.method private A00()V
    .locals 13

    .line 64683
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZU;->A09:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A08(I)V

    .line 64684
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A09:Lcom/facebook/ads/redexgen/X/IL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ao;->A09(Lcom/facebook/ads/redexgen/X/IL;)Lcom/facebook/ads/redexgen/X/An;

    move-result-object v1

    .line 64685
    .local p0, "frameInfo":Lcom/facebook/ads/redexgen/X/An;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A05:Lcom/facebook/ads/internal/exoplayer2/Format;

    if-eqz v0, :cond_1

    iget v2, v1, Lcom/facebook/ads/redexgen/X/An;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A05:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget v0, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A05:I

    if-ne v2, v0, :cond_1

    iget v5, v1, Lcom/facebook/ads/redexgen/X/An;->A03:I

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/ZU;->A05:Lcom/facebook/ads/internal/exoplayer2/Format;

    sget-object v3, Lcom/facebook/ads/redexgen/X/ZU;->A0C:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v2, v3, v0

    const/4 v0, 0x4

    aget-object v0, v3, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v2, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v3, Lcom/facebook/ads/redexgen/X/ZU;->A0C:[Ljava/lang/String;

    const-string v2, "c77shWRMJ0xw1RnCUz3RaGOhMvVQh1Vq"

    const/4 v0, 0x2

    aput-object v2, v3, v0

    iget v0, v4, Lcom/facebook/ads/internal/exoplayer2/Format;->A0C:I

    if-ne v5, v0, :cond_1

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/An;->A05:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A05:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget-object v0, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    if-eq v2, v0, :cond_2

    .line 64686
    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ZU;->A07:Ljava/lang/String;

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/An;->A05:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    iget v7, v1, Lcom/facebook/ads/redexgen/X/An;->A00:I

    iget v8, v1, Lcom/facebook/ads/redexgen/X/An;->A03:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/facebook/ads/redexgen/X/ZU;->A0B:Ljava/lang/String;

    .line 64687
    invoke-static/range {v2 .. v12}, Lcom/facebook/ads/internal/exoplayer2/Format;->A07(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A05:Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 64688
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ZU;->A06:Lcom/facebook/ads/redexgen/X/CS;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A05:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/CS;->A5P(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 64689
    :cond_2
    iget v0, v1, Lcom/facebook/ads/redexgen/X/An;->A01:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A01:I

    .line 64690
    const-wide/32 v4, 0xf4240

    iget v0, v1, Lcom/facebook/ads/redexgen/X/An;->A02:I

    int-to-long v2, v0

    mul-long/2addr v2, v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A05:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget v0, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0C:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/ZU;->A03:J

    .line 64691
    return-void
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "nJiMpwDCR7ZAmhQyp9AOHiC56UVcRx0k"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "lCnqxh0y89Em7p481QheNATB6nErTPja"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "EOgZonHCFyaPw1rQOdlgFposS9KMweND"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "oVFhsCJtzutno5RzvIOwcHRYGNjJYB0M"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "4"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "S"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "C7ZxqwSPJTae6vgKBRSPBAMVUD"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Gg5xSTo0LtnMpcaC7QBiBySoh1"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ZU;->A0C:[Ljava/lang/String;

    return-void
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/IM;)Z
    .locals 5

    .line 64692
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    const/4 v4, 0x0

    if-lez v0, :cond_4

    .line 64693
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A08:Z

    const/16 v3, 0xb

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 64694
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    if-ne v0, v3, :cond_0

    const/4 v4, 0x1

    :cond_0
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/ZU;->A08:Z

    .line 64695
    goto :goto_0

    .line 64696
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v1

    .line 64697
    .local p0, "secondByte":I
    const/16 v0, 0x77

    if-ne v1, v0, :cond_2

    .line 64698
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/ZU;->A08:Z

    .line 64699
    return v2

    .line 64700
    :cond_2
    if-ne v1, v3, :cond_3

    const/4 v4, 0x1

    :cond_3
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/ZU;->A08:Z

    .line 64701
    .end local p0    # "secondByte":I
    goto :goto_0

    .line 64702
    :cond_4
    return v4
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/IM;[BI)Z
    .locals 2

    .line 64703
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A00:I

    sub-int v0, p3, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 64704
    .local p0, "bytesToRead":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A00:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 64705
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A00:I

    .line 64706
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A00:I

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
    .locals 10

    .line 64707
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    if-lez v0, :cond_4

    .line 64708
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A02:I

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v4, :cond_1

    goto :goto_0

    .line 64709
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/ZU;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A00:I

    sub-int/2addr v1, v0

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 64710
    .local p0, "bytesToRead":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A06:Lcom/facebook/ads/redexgen/X/CS;

    invoke-interface {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/CS;->ADR(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 64711
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A00:I

    .line 64712
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A00:I

    iget v7, p0, Lcom/facebook/ads/redexgen/X/ZU;->A01:I

    if-ne v0, v7, :cond_0

    .line 64713
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ZU;->A06:Lcom/facebook/ads/redexgen/X/CS;

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/ZU;->A04:J

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/CS;->ADS(JIIILcom/facebook/ads/redexgen/X/CR;)V

    .line 64714
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/ZU;->A04:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A03:J

    add-long/2addr v3, v0

    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/ZU;->A04:J

    .line 64715
    iput v2, p0, Lcom/facebook/ads/redexgen/X/ZU;->A02:I

    goto :goto_0

    .line 64716
    .end local p0    # "bytesToRead":I
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/16 v3, 0x80

    invoke-direct {p0, p1, v0, v3}, Lcom/facebook/ads/redexgen/X/ZU;->A03(Lcom/facebook/ads/redexgen/X/IM;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64717
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZU;->A00()V

    .line 64718
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 64719
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZU;->A06:Lcom/facebook/ads/redexgen/X/CS;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/CS;->ADR(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 64720
    iput v4, p0, Lcom/facebook/ads/redexgen/X/ZU;->A02:I

    goto :goto_0

    .line 64721
    :cond_3
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ZU;->A02(Lcom/facebook/ads/redexgen/X/IM;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64722
    iput v3, p0, Lcom/facebook/ads/redexgen/X/ZU;->A02:I

    .line 64723
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/16 v0, 0xb

    aput-byte v0, v1, v2

    .line 64724
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/16 v0, 0x77

    aput-byte v0, v1, v3

    .line 64725
    iput v4, p0, Lcom/facebook/ads/redexgen/X/ZU;->A00:I

    goto :goto_0

    .line 64726
    :cond_4
    return-void
.end method

.method public final A4V(Lcom/facebook/ads/redexgen/X/CI;Lcom/facebook/ads/redexgen/X/Da;)V
    .locals 2

    .line 64727
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A06()V

    .line 64728
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A05()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A07:Ljava/lang/String;

    .line 64729
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A04()I

    move-result v1

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/CI;->AEM(II)Lcom/facebook/ads/redexgen/X/CS;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A06:Lcom/facebook/ads/redexgen/X/CS;

    .line 64730
    return-void
.end method

.method public final ACI()V
    .locals 0

    .line 64731
    return-void
.end method

.method public final ACJ(JZ)V
    .locals 0

    .line 64732
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/ZU;->A04:J

    .line 64733
    return-void
.end method

.method public final ADV()V
    .locals 1

    .line 64734
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A02:I

    .line 64735
    iput v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A00:I

    .line 64736
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A08:Z

    .line 64737
    return-void
.end method
