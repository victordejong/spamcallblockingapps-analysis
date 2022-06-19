.class public final Lcom/facebook/ads/redexgen/X/Ct;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/ZF;
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

    .line 25607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25608
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ct;->A06:Lcom/facebook/ads/redexgen/X/CS;

    .line 25609
    new-instance v0, Lcom/facebook/ads/redexgen/X/D4;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/D4;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    .line 25610
    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A09:Lcom/facebook/ads/redexgen/X/IM;

    .line 25611
    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IM;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A08:Lcom/facebook/ads/redexgen/X/IM;

    .line 25612
    return-void
.end method

.method private A00()Lcom/facebook/ads/redexgen/X/D3;
    .locals 4

    .line 25613
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/D4;->A07:Lcom/facebook/ads/redexgen/X/Cn;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/Cn;->A02:I

    .line 25614
    .local p0, "sampleDescriptionIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/D4;->A08:Lcom/facebook/ads/redexgen/X/D3;

    if-eqz v0, :cond_1

    .line 25615
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ct;->A0A:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ct;->A0A:[Ljava/lang/String;

    const-string v1, "mhitCTNVD2gTcCiZ9jaRAXWaAA0g9dMw"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "MwiogHOaq0gqmibDd9x4nD1rPGRVV4il"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/D4;->A08:Lcom/facebook/ads/redexgen/X/D3;

    goto :goto_0

    .line 25616
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A05:Lcom/facebook/ads/redexgen/X/D2;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/D2;->A00(I)Lcom/facebook/ads/redexgen/X/D3;

    move-result-object v0

    .line 25617
    :goto_0
    return-object v0
.end method

.method private A01()V
    .locals 3

    .line 25618
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/D4;->A0A:Z

    if-nez v0, :cond_0

    .line 25619
    return-void

    .line 25620
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/D4;->A09:Lcom/facebook/ads/redexgen/X/IM;

    .line 25621
    .local p0, "sampleEncryptionData":Lcom/facebook/ads/redexgen/X/IM;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ct;->A00()Lcom/facebook/ads/redexgen/X/D3;

    move-result-object v1

    .line 25622
    .local v0, "encryptionBox":Lcom/facebook/ads/redexgen/X/D3;
    iget v0, v1, Lcom/facebook/ads/redexgen/X/D3;->A00:I

    if-eqz v0, :cond_1

    .line 25623
    iget v0, v1, Lcom/facebook/ads/redexgen/X/D3;->A00:I

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 25624
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/D4;->A0H:[Z

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A01:I

    aget-boolean v0, v1, v0

    if-eqz v0, :cond_2

    .line 25625
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 25626
    :cond_2
    return-void
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "3clh"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "In2mDQuCVOg3ihkf16hWdIIfuM6sFv5F"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "x02l2Vae1akitXdZsfkSin5rPssADgyF"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "voDg"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "hUzVtg6QDcg3AayaGyy4Y5hfj2RvIx7z"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "AYA0HHhZRav1tOhmR967ChnIf"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "RG8"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "bQ6q4wCv1qa3psjbWrVNO9D1ADq5zdw2"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ct;->A0A:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Ct;)V
    .locals 0

    .line 25627
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ct;->A01()V

    return-void
.end method


# virtual methods
.method public final A04()I
    .locals 7

    .line 25628
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/D4;->A0A:Z

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 25629
    return v4

    .line 25630
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ct;->A00()Lcom/facebook/ads/redexgen/X/D3;

    move-result-object v1

    .line 25631
    .local p0, "encryptionBox":Lcom/facebook/ads/redexgen/X/D3;
    iget v0, v1, Lcom/facebook/ads/redexgen/X/D3;->A00:I

    if-eqz v0, :cond_2

    .line 25632
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/D4;->A09:Lcom/facebook/ads/redexgen/X/IM;

    .line 25633
    .local v0, "initializationVectorData":Lcom/facebook/ads/redexgen/X/IM;
    iget v3, v1, Lcom/facebook/ads/redexgen/X/D3;->A00:I

    .line 25634
    .local v4, "vectorSize":I
    .local v0, "vectorSize":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/D4;->A0H:[Z

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A01:I

    aget-boolean v5, v1, v0

    .line 25635
    .local v1, "subsampleEncryption":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A09:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    if-eqz v5, :cond_1

    const/16 v0, 0x80

    :goto_1
    or-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, v1, v4

    .line 25636
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A09:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 25637
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ct;->A06:Lcom/facebook/ads/redexgen/X/CS;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ct;->A09:Lcom/facebook/ads/redexgen/X/IM;

    const/4 v0, 0x1

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CS;->ADR(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 25638
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A06:Lcom/facebook/ads/redexgen/X/CS;

    invoke-interface {v0, v6, v3}, Lcom/facebook/ads/redexgen/X/CS;->ADR(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 25639
    if-nez v5, :cond_4

    .line 25640
    add-int/lit8 v0, v3, 0x1

    return v0

    .line 25641
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 25642
    .end local v0    # "vectorSize":I
    .end local v4    # "vectorSize":I
    :cond_2
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/D3;->A04:[B

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ct;->A0A:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 25643
    .local v0, "initVectorData":[B
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ct;->A0A:[Ljava/lang/String;

    const-string v1, "Pfb0S5CneQgYrjeMjOJgtR7T7eyOdr1R"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "zLY8KEVp0MgNhcadjz3HGMWIKnjSbq4p"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ct;->A08:Lcom/facebook/ads/redexgen/X/IM;

    array-length v0, v3

    invoke-virtual {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0c([BI)V

    .line 25644
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Ct;->A08:Lcom/facebook/ads/redexgen/X/IM;

    .line 25645
    .local v4, "initializationVectorData":Lcom/facebook/ads/redexgen/X/IM;
    array-length v3, v3

    goto :goto_0

    .line 25646
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/D4;->A09:Lcom/facebook/ads/redexgen/X/IM;

    .line 25647
    .local v0, "subsampleEncryptionData":Lcom/facebook/ads/redexgen/X/IM;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v1

    .line 25648
    .local v0, "subsampleCount":I
    const/4 v0, -0x2

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 25649
    mul-int/lit8 v0, v1, 0x6

    add-int/lit8 v1, v0, 0x2

    .line 25650
    .local v0, "subsampleDataLength":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A06:Lcom/facebook/ads/redexgen/X/CS;

    invoke-interface {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/CS;->ADR(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 25651
    add-int/lit8 v0, v3, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public final A05()V
    .locals 1

    .line 25652
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/D4;->A02()V

    .line 25653
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A01:I

    .line 25654
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A02:I

    .line 25655
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A00:I

    .line 25656
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A03:I

    .line 25657
    return-void
.end method

.method public final A06(J)V
    .locals 7

    .line 25658
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/9u;->A01(J)J

    move-result-wide v5

    .line 25659
    .local p0, "timeMs":J
    iget v4, p0, Lcom/facebook/ads/redexgen/X/Ct;->A01:I

    .line 25660
    .local v2, "searchIndex":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/D4;->A00:I

    if-ge v4, v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    .line 25661
    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/D4;->A01(I)J

    move-result-wide v1

    cmp-long v0, v1, v5

    if-gez v0, :cond_2

    .line 25662
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/D4;->A0I:[Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ct;->A0A:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ct;->A0A:[Ljava/lang/String;

    const-string v1, "yYyJ6pNJ0kgjmttu9OhrBT2GfQD0mn7b"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "spdSEizAECgh3deYwyaUKu4kY7nul1tj"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    aget-boolean v0, v3, v4

    if-eqz v0, :cond_1

    .line 25663
    iput v4, p0, Lcom/facebook/ads/redexgen/X/Ct;->A03:I

    .line 25664
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 25665
    :cond_2
    return-void
.end method

.method public final A07(Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)V
    .locals 4

    .line 25666
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ct;->A05:Lcom/facebook/ads/redexgen/X/D2;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/D4;->A07:Lcom/facebook/ads/redexgen/X/Cn;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Cn;->A02:I

    .line 25667
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/D2;->A00(I)Lcom/facebook/ads/redexgen/X/D3;

    move-result-object v0

    .line 25668
    .local p0, "encryptionBox":Lcom/facebook/ads/redexgen/X/D3;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/D3;->A02:Ljava/lang/String;

    .line 25669
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

    .line 25670
    return-void

    .line 25671
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final A08(Lcom/facebook/ads/redexgen/X/D2;Lcom/facebook/ads/redexgen/X/Cn;)V
    .locals 2

    .line 25672
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/D2;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A05:Lcom/facebook/ads/redexgen/X/D2;

    .line 25673
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Cn;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A04:Lcom/facebook/ads/redexgen/X/Cn;

    .line 25674
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ct;->A06:Lcom/facebook/ads/redexgen/X/CS;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/CS;->A5P(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 25675
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ct;->A05()V

    .line 25676
    return-void
.end method

.method public final A09()Z
    .locals 4

    .line 25677
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A01:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A01:I

    .line 25678
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A00:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A00:I

    .line 25679
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Ct;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/D4;->A0E:[I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ct;->A02:I

    aget v0, v0, v1

    if-ne v2, v0, :cond_1

    .line 25680
    add-int/2addr v1, v3

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Ct;->A02:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ct;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 25681
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ct;->A0A:[Ljava/lang/String;

    const-string v1, "24SILmm"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A00:I

    .line 25682
    return v0

    .line 25683
    :cond_1
    return v3
.end method
