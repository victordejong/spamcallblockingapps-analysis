.class public final Lcom/facebook/ads/redexgen/X/Ct;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/VL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackBundle"
.end annotation


# static fields
.field public static A0A:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:Lcom/facebook/ads/redexgen/X/Cn;

.field public A05:Lcom/facebook/ads/redexgen/X/D2;

.field public final A06:Lcom/facebook/ads/redexgen/X/CS;

.field public final A07:Lcom/facebook/ads/redexgen/X/D4;

.field public final A08:Lcom/facebook/ads/redexgen/X/IM;

.field public final A09:Lcom/facebook/ads/redexgen/X/IM;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ct;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/CS;)V
    .locals 2

    .line 25622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25623
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ct;->A06:Lcom/facebook/ads/redexgen/X/CS;

    .line 25624
    new-instance v0, Lcom/facebook/ads/redexgen/X/D4;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/D4;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    .line 25625
    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A09:Lcom/facebook/ads/redexgen/X/IM;

    .line 25626
    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IM;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A08:Lcom/facebook/ads/redexgen/X/IM;

    .line 25627
    return-void
.end method

.method private A00()Lcom/facebook/ads/redexgen/X/D3;
    .locals 2

    .line 25628
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/D4;->A07:Lcom/facebook/ads/redexgen/X/Cn;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/Cn;->A02:I

    .line 25629
    .local p0, "sampleDescriptionIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/D4;->A08:Lcom/facebook/ads/redexgen/X/D3;

    if-eqz v0, :cond_0

    .line 25630
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/D4;->A08:Lcom/facebook/ads/redexgen/X/D3;

    .line 25631
    :goto_0
    return-object v0

    .line 25632
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A05:Lcom/facebook/ads/redexgen/X/D2;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/D2;->A00(I)Lcom/facebook/ads/redexgen/X/D3;

    move-result-object v0

    goto :goto_0
.end method

.method private A01()V
    .locals 5

    .line 25633
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/D4;->A0A:Z

    if-nez v0, :cond_0

    .line 25634
    return-void

    .line 25635
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/D4;->A09:Lcom/facebook/ads/redexgen/X/IM;

    .line 25636
    .local p0, "sampleEncryptionData":Lcom/facebook/ads/redexgen/X/IM;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ct;->A00()Lcom/facebook/ads/redexgen/X/D3;

    move-result-object v1

    .line 25637
    .local v0, "encryptionBox":Lcom/facebook/ads/redexgen/X/D3;
    iget v0, v1, Lcom/facebook/ads/redexgen/X/D3;->A00:I

    if-eqz v0, :cond_1

    .line 25638
    iget v0, v1, Lcom/facebook/ads/redexgen/X/D3;->A00:I

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 25639
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/D4;->A0H:[Z

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A01:I

    aget-boolean v0, v1, v0

    if-eqz v0, :cond_2

    .line 25640
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ct;->A0A:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ct;->A0A:[Ljava/lang/String;

    const-string v1, "Skh"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "oxn29DyP"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    mul-int/lit8 v0, v4, 0x6

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 25641
    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "gmS7MBfR0mlkEUfZ0Wz3ALK5z0PVdRJN"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "8BL"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Zo"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "gmkQv6Xedxm1evnA8F4cnZAm6EPAMw0X"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "2Wpc4BNBlu95wNbl7be4F0BOiwL3zJOR"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "LZyXYGEPjYCxckQVA7iL9eO7ubDgIg3P"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "VWqkrNZ2zmHVixG7L2sHJco6c31wZKbs"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "AFA92NWo"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ct;->A0A:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Ct;)V
    .locals 0

    .line 25642
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ct;->A01()V

    return-void
.end method


# virtual methods
.method public final A04()I
    .locals 7

    .line 25643
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/D4;->A0A:Z

    const/4 v6, 0x0

    if-nez v0, :cond_0

    .line 25644
    return v6

    .line 25645
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ct;->A00()Lcom/facebook/ads/redexgen/X/D3;

    move-result-object v1

    .line 25646
    .local p0, "encryptionBox":Lcom/facebook/ads/redexgen/X/D3;
    iget v0, v1, Lcom/facebook/ads/redexgen/X/D3;->A00:I

    if-eqz v0, :cond_2

    .line 25647
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/D4;->A09:Lcom/facebook/ads/redexgen/X/IM;

    .line 25648
    .local v0, "initializationVectorData":Lcom/facebook/ads/redexgen/X/IM;
    iget v3, v1, Lcom/facebook/ads/redexgen/X/D3;->A00:I

    .line 25649
    .local v6, "vectorSize":I
    .local v0, "vectorSize":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/D4;->A0H:[Z

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A01:I

    aget-boolean v4, v1, v0

    .line 25650
    .local v1, "subsampleEncryption":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A09:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    if-eqz v4, :cond_1

    const/16 v0, 0x80

    :goto_1
    or-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, v1, v6

    .line 25651
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A09:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 25652
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ct;->A06:Lcom/facebook/ads/redexgen/X/CS;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ct;->A09:Lcom/facebook/ads/redexgen/X/IM;

    const/4 v0, 0x1

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CS;->ADS(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 25653
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A06:Lcom/facebook/ads/redexgen/X/CS;

    invoke-interface {v0, v5, v3}, Lcom/facebook/ads/redexgen/X/CS;->ADS(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 25654
    if-nez v4, :cond_3

    .line 25655
    add-int/lit8 v0, v3, 0x1

    return v0

    .line 25656
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 25657
    .end local v0    # "vectorSize":I
    .end local v6    # "vectorSize":I
    :cond_2
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/D3;->A04:[B

    .line 25658
    .local v0, "initVectorData":[B
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ct;->A08:Lcom/facebook/ads/redexgen/X/IM;

    array-length v0, v2

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0c([BI)V

    .line 25659
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Ct;->A08:Lcom/facebook/ads/redexgen/X/IM;

    .line 25660
    .local v6, "initializationVectorData":Lcom/facebook/ads/redexgen/X/IM;
    array-length v3, v2

    goto :goto_0

    .line 25661
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/D4;->A09:Lcom/facebook/ads/redexgen/X/IM;

    .line 25662
    .local v0, "subsampleEncryptionData":Lcom/facebook/ads/redexgen/X/IM;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v1

    .line 25663
    .local v0, "subsampleCount":I
    const/4 v0, -0x2

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 25664
    mul-int/lit8 v0, v1, 0x6

    add-int/lit8 v1, v0, 0x2

    .line 25665
    .local v0, "subsampleDataLength":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A06:Lcom/facebook/ads/redexgen/X/CS;

    invoke-interface {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/CS;->ADS(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 25666
    add-int/lit8 v0, v3, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public final A05()V
    .locals 1

    .line 25667
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/D4;->A02()V

    .line 25668
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A01:I

    .line 25669
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A02:I

    .line 25670
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A00:I

    .line 25671
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A03:I

    .line 25672
    return-void
.end method

.method public final A06(J)V
    .locals 6

    .line 25673
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/9u;->A01(J)J

    move-result-wide v4

    .line 25674
    .local p0, "timeMs":J
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Ct;->A01:I

    .line 25675
    .local v2, "searchIndex":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/D4;->A00:I

    if-ge v3, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    .line 25676
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/D4;->A01(I)J

    move-result-wide v1

    cmp-long v0, v1, v4

    if-gez v0, :cond_1

    .line 25677
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/D4;->A0I:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_0

    .line 25678
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Ct;->A03:I

    .line 25679
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 25680
    :cond_1
    return-void
.end method

.method public final A07(Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)V
    .locals 4

    .line 25681
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ct;->A05:Lcom/facebook/ads/redexgen/X/D2;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/D4;->A07:Lcom/facebook/ads/redexgen/X/Cn;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Cn;->A02:I

    .line 25682
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/D2;->A00(I)Lcom/facebook/ads/redexgen/X/D3;

    move-result-object v0

    .line 25683
    .local p0, "encryptionBox":Lcom/facebook/ads/redexgen/X/D3;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/D3;->A02:Ljava/lang/String;

    .line 25684
    .local p1, "schemeType":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ct;->A06:Lcom/facebook/ads/redexgen/X/CS;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A05:Lcom/facebook/ads/redexgen/X/D2;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-virtual {p1, v3}, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;->A03(Ljava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/exoplayer2/Format;->A0J(Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/CS;->A5P(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 25685
    return-void

    .line 25686
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final A08(Lcom/facebook/ads/redexgen/X/D2;Lcom/facebook/ads/redexgen/X/Cn;)V
    .locals 2

    .line 25687
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/D2;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A05:Lcom/facebook/ads/redexgen/X/D2;

    .line 25688
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Cn;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A04:Lcom/facebook/ads/redexgen/X/Cn;

    .line 25689
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ct;->A06:Lcom/facebook/ads/redexgen/X/CS;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/CS;->A5P(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 25690
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ct;->A05()V

    .line 25691
    return-void
.end method

.method public final A09()Z
    .locals 4

    .line 25692
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A01:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A01:I

    .line 25693
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A00:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A00:I

    .line 25694
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Ct;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/D4;->A0E:[I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ct;->A02:I

    aget v0, v0, v1

    if-ne v2, v0, :cond_0

    .line 25695
    add-int/2addr v1, v3

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Ct;->A02:I

    .line 25696
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A00:I

    .line 25697
    return v0

    .line 25698
    :cond_0
    return v3
.end method
