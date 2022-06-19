.class public final Lcom/facebook/ads/redexgen/X/Gb;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Gb;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Gb;->A03()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Gf;[Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/Gf;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Gf;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Gf;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/Gf;"
        }
    .end annotation

    .line 34626
    .local v0, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/text/ttml/TtmlStyle;>;"
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 34627
    const/4 v0, 0x0

    return-object v0

    .line 34628
    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x1

    if-nez p0, :cond_1

    array-length v0, p1

    if-ne v0, v5, :cond_1

    .line 34629
    aget-object v0, p1, v3

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Gf;

    return-object v0

    .line 34630
    :cond_1
    if-nez p0, :cond_3

    array-length v0, p1

    if-le v0, v5, :cond_3

    .line 34631
    new-instance v2, Lcom/facebook/ads/redexgen/X/Gf;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/Gf;-><init>()V

    .line 34632
    .local p1, "chainedStyle":Lcom/facebook/ads/redexgen/X/Gf;
    array-length v1, p1

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v0, p1, v3

    .line 34633
    .local v0, "id":Ljava/lang/String;
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Gf;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Gf;->A0F(Lcom/facebook/ads/redexgen/X/Gf;)Lcom/facebook/ads/redexgen/X/Gf;

    .line 34634
    .end local v0    # "id":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 34635
    :cond_2
    return-object v2

    .line 34636
    .end local p1    # "chainedStyle":Lcom/facebook/ads/redexgen/X/Gf;
    :cond_3
    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    array-length v4, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gb;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gb;->A01:[Ljava/lang/String;

    const-string v1, "yblXVgvt9vkHOLcz15k2oPQTZajY8Fna"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ne v4, v5, :cond_5

    .line 34637
    aget-object v0, p1, v3

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Gf;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Gf;->A0F(Lcom/facebook/ads/redexgen/X/Gf;)Lcom/facebook/ads/redexgen/X/Gf;

    move-result-object v0

    return-object v0

    .line 34638
    :cond_5
    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    array-length v0, p1

    if-le v0, v5, :cond_7

    .line 34639
    array-length v1, p1

    :goto_1
    if-ge v3, v1, :cond_6

    aget-object v0, p1, v3

    .line 34640
    .local p2, "id":Ljava/lang/String;
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Gf;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Gf;->A0F(Lcom/facebook/ads/redexgen/X/Gf;)Lcom/facebook/ads/redexgen/X/Gf;

    .line 34641
    .end local p2    # "id":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 34642
    :cond_6
    return-object p0

    .line 34643
    :cond_7
    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gb;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gb;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gb;->A01:[Ljava/lang/String;

    const-string v1, "l78VUl8tYRnEPeJnb2xSoQQygPBCqHgM"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x7e

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 34644
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gb;->A01(III)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x1

    const/4 v1, 0x2

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gb;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 34645
    .local v2, "out":Ljava/lang/String;
    const/4 v2, 0x4

    const/4 v1, 0x5

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gb;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 34646
    const/4 v2, 0x3

    const/4 v1, 0x1

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gb;->A01(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 34647
    .end local v2    # "out":Ljava/lang/String;
    .local p0, "out":Ljava/lang/String;
    const/16 v2, 0x9

    const/16 v1, 0xb

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gb;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34648
    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Gb;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x33t
        -0x2t
        -0x5t
        -0x3at
        -0x54t
        -0x4at
        -0x6at
        -0x54t
        -0x4at
        0x18t
        -0x23t
        -0x3at
        0x19t
        0x35t
        -0x13t
        -0x1t
        -0x37t
        -0x36t
        0x1at
        -0x18t
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "lFbX7GWnmeA50Vy9iDtGxDRR7zH1Z8cO"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "QYV1IGhJzBMUyDZ2mtzaDkQJXyhNBDQA"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "D7QXTx7N2mU9d7Ko43QFEpnoGNfBIZ8E"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "0U1TJ6A8sZ3tpr29RFuyG0H8Q44pMa2j"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ESWK483Z2EvM"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "b"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "OAJ5ue"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "rWtFlG3D7iH0bhIzrtkAVM3j2ip9A4mw"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Gb;->A01:[Ljava/lang/String;

    return-void
.end method

.method public static A05(Landroid/text/SpannableStringBuilder;)V
    .locals 3

    .line 34649
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .line 34650
    .local p0, "position":I
    :goto_0
    if-ltz v2, :cond_0

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    const/16 v0, 0x20

    if-ne v1, v0, :cond_0

    .line 34651
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 34652
    :cond_0
    if-ltz v2, :cond_1

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_1

    .line 34653
    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 34654
    :cond_1
    return-void
.end method

.method public static A06(Landroid/text/SpannableStringBuilder;IILcom/facebook/ads/redexgen/X/Gf;)V
    .locals 5

    .line 34655
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Gf;->A08()I

    move-result v1

    const/16 v3, 0x21

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    .line 34656
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Gf;->A08()I

    move-result v1

    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 34657
    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 34658
    :cond_0
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Gf;->A0Q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34659
    new-instance v0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 34660
    :cond_1
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Gf;->A0R()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34661
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 34662
    :cond_2
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Gf;->A0P()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 34663
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Gf;->A06()I

    move-result v1

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 34664
    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 34665
    :cond_3
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Gf;->A0O()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 34666
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Gf;->A05()I

    move-result v1

    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 34667
    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 34668
    :cond_4
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Gf;->A0M()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 34669
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Gf;->A0M()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/text/style/TypefaceSpan;

    invoke-direct {v0, v1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 34670
    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 34671
    :cond_5
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Gf;->A09()Landroid/text/Layout$Alignment;

    move-result-object v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gb;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gb;->A01:[Ljava/lang/String;

    const-string v1, "SbSPT7"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v4, :cond_7

    .line 34672
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Gf;->A09()Landroid/text/Layout$Alignment;

    move-result-object v1

    new-instance v0, Landroid/text/style/AlignmentSpan$Standard;

    invoke-direct {v0, v1}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    .line 34673
    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 34674
    :cond_7
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Gf;->A07()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_a

    const/4 v0, 0x2

    if-eq v1, v0, :cond_9

    const/4 v0, 0x3

    if-eq v1, v0, :cond_8

    .line 34675
    :goto_0
    return-void

    .line 34676
    :cond_8
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Gf;->A04()F

    move-result v1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v1, v0

    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 34677
    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 34678
    goto :goto_0

    .line 34679
    :cond_9
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Gf;->A04()F

    move-result v1

    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 34680
    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 34681
    goto :goto_0

    .line 34682
    :cond_a
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Gf;->A04()F

    move-result v0

    float-to-int v1, v0

    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v0, v1, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 34683
    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 34684
    goto :goto_0
.end method
