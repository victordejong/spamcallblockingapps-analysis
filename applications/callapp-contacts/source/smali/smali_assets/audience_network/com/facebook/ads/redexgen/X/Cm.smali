.class public final Lcom/facebook/ads/redexgen/X/Cm;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/ZC;,
        Lcom/facebook/ads/redexgen/X/ZB;,
        Lcom/facebook/ads/redexgen/X/Cj;,
        Lcom/facebook/ads/redexgen/X/Ck;,
        Lcom/facebook/ads/redexgen/X/Cl;,
        Lcom/facebook/ads/redexgen/X/Ci;,
        Lcom/facebook/ads/redexgen/X/ZD;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:I

.field public static final A03:I

.field public static final A04:I

.field public static final A05:I

.field public static final A06:I

.field public static final A07:I

.field public static final A08:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 24849
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Cm;->A0K()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Cm;->A0J()V

    const/16 v2, 0x2b8

    const/4 v1, 0x4

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Cm;->A08:I

    .line 24850
    const/16 v2, 0x296

    const/4 v1, 0x4

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Cm;->A05:I

    .line 24851
    const/16 v2, 0x2b4

    const/4 v1, 0x4

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Cm;->A07:I

    .line 24852
    const/16 v2, 0x27c

    const/4 v1, 0x4

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Cm;->A04:I

    .line 24853
    const/16 v2, 0x29a

    const/4 v1, 0x4

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Cm;->A06:I

    .line 24854
    const/16 v2, 0x25e

    const/4 v1, 0x4

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Cm;->A02:I

    .line 24855
    const/16 v2, 0x278

    const/4 v1, 0x4

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Cm;->A03:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24857
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/IM;I)F
    .locals 2

    .line 24858
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 24859
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v1

    .line 24860
    .local p0, "hSpacing":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v0

    .line 24861
    .local p1, "vSpacing":I
    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/IM;)I
    .locals 3

    .line 24862
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v2

    .line 24863
    .local p0, "currentByte":I
    and-int/lit8 v1, v2, 0x7f

    .line 24864
    .local v2, "size":I
    :goto_0
    and-int/lit16 v2, v2, 0x80

    const/16 v0, 0x80

    if-ne v2, v0, :cond_0

    .line 24865
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v2

    .line 24866
    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v0, v2, 0x7f

    or-int/2addr v1, v0

    goto :goto_0

    .line 24867
    :cond_0
    return v1
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/IM;)I
    .locals 4

    .line 24868
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 24869
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v3

    .line 24870
    .local p0, "trackType":I
    sget v0, Lcom/facebook/ads/redexgen/X/Cm;->A05:I

    if-ne v3, v0, :cond_0

    .line 24871
    const/4 v0, 0x1

    return v0

    .line 24872
    :cond_0
    sget p0, Lcom/facebook/ads/redexgen/X/Cm;->A08:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "sACqbdB9h4ZaSOP8RBXRhKf5pkODD9Ze"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "nfjFHkgcUdXk9ZZxpn0R0spMdbOfBjgH"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ne v3, p0, :cond_2

    .line 24873
    const/4 v0, 0x2

    return v0

    .line 24874
    :cond_2
    sget v0, Lcom/facebook/ads/redexgen/X/Cm;->A07:I

    if-eq v3, v0, :cond_3

    sget v0, Lcom/facebook/ads/redexgen/X/Cm;->A04:I

    if-eq v3, v0, :cond_3

    sget v0, Lcom/facebook/ads/redexgen/X/Cm;->A06:I

    if-eq v3, v0, :cond_3

    sget v0, Lcom/facebook/ads/redexgen/X/Cm;->A02:I

    if-ne v3, v0, :cond_5

    .line 24875
    :cond_3
    const/4 v3, 0x3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    return v3

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "HjSYihfmO4Fjwo0SJsN86rpcIq24412o"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "nDlBCf5sAdyqWE5fn1qZlgrWKnIrwKiA"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return v3

    .line 24876
    :cond_5
    sget v0, Lcom/facebook/ads/redexgen/X/Cm;->A03:I

    if-ne v3, v0, :cond_6

    .line 24877
    const/4 v0, 0x4

    return v0

    .line 24878
    :cond_6
    const/4 v0, -0x1

    return v0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/IM;II)I
    .locals 6

    .line 24879
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v5

    .line 24880
    .local p0, "childAtomPosition":I
    :goto_0
    sub-int v0, v5, p1

    if-ge v0, p2, :cond_2

    .line 24881
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 24882
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v4

    .line 24883
    .local p1, "childAtomSize":I
    if-lez v4, :cond_1

    const/4 v3, 0x1

    :goto_1
    const/16 v2, 0x23e

    const/16 v1, 0x20

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A05(ZLjava/lang/Object;)V

    .line 24884
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v1

    .line 24885
    .local p2, "childType":I
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0S:I

    if-ne v1, v0, :cond_0

    .line 24886
    return v5

    .line 24887
    :cond_0
    add-int/2addr v5, v4

    .line 24888
    .end local p1    # "childAtomSize":I
    .end local p2    # "childType":I
    goto :goto_0

    .line 24889
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 24890
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/IM;)J
    .locals 2

    .line 24891
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 24892
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v0

    .line 24893
    .local v1, "fullAtom":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ch;->A01(I)I

    move-result v0

    .line 24894
    .local v0, "version":I
    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 24895
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0N()J

    move-result-wide v0

    return-wide v0

    .line 24896
    :cond_0
    const/16 v1, 0x10

    goto :goto_0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/Z9;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Z9;",
            ")",
            "Landroid/util/Pair<",
            "[J[J>;"
        }
    .end annotation

    .line 24897
    if-eqz p0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0O:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Z9;->A07(I)Lcom/facebook/ads/redexgen/X/ZA;

    move-result-object v0

    .local v0, "elst":Lcom/facebook/ads/redexgen/X/ZA;
    if-nez v0, :cond_1

    .line 24898
    .end local p0    # null:Lcom/facebook/ads/redexgen/X/Z9;
    .end local v0    # "elst":Lcom/facebook/ads/redexgen/X/ZA;
    .end local v0
    .end local v0
    .end local v0
    .end local v0
    .end local v8
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 24899
    :cond_1
    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/ZA;->A00:Lcom/facebook/ads/redexgen/X/IM;

    .line 24900
    .local p0, "elstData":Lcom/facebook/ads/redexgen/X/IM;
    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 24901
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v0

    .line 24902
    .local v0, "fullAtom":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ch;->A01(I)I

    move-result v7

    .line 24903
    .local v0, "version":I
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v6

    .line 24904
    .local v0, "entryCount":I
    new-array v5, v6, [J

    .line 24905
    .local v0, "editListDurations":[J
    new-array v4, v6, [J

    .line 24906
    .local v8, "editListMediaTimes":[J
    const/4 v3, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v3, v6, :cond_5

    .line 24907
    const/4 p0, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_2

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "n2Qu2qSRpGNWmL1w1m0Jsgn90j2APzEn"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ne v7, p0, :cond_4

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/IM;->A0O()J

    move-result-wide v0

    :goto_2
    aput-wide v0, v5, v3

    .line 24908
    if-ne v7, p0, :cond_3

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/IM;->A0M()J

    move-result-wide v0

    :goto_3
    aput-wide v0, v4, v3

    .line 24909
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/IM;->A0V()S

    move-result v0

    .line 24910
    .local v7, "mediaRateInteger":I
    if-ne v0, p0, :cond_6

    .line 24911
    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 24912
    .end local v7    # "mediaRateInteger":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 24913
    :cond_3
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v0

    int-to-long v0, v0

    goto :goto_3

    .line 24914
    :cond_4
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/IM;->A0N()J

    move-result-wide v0

    goto :goto_2

    .line 24915
    .end local v0    # "i":I
    .end local v7
    :cond_5
    invoke-static {v5, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_7

    goto :goto_1

    .line 24916
    .restart local v7    # "mediaRateInteger":I
    :cond_6
    const/16 v2, 0x110

    const/16 v1, 0x17

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "0OgbcJvER11tVuU6ktzS5zcploLwLpnU"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "Fpvfvil3v0kwqlJSCQAnqVBmdIeuMsHJ"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-object v3
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/IM;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/IM;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 24917
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 24918
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v0

    .line 24919
    .local v2, "fullAtom":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ch;->A01(I)I

    move-result v1

    .line 24920
    .local v0, "version":I
    if-nez v1, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 24921
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0N()J

    move-result-wide v5

    .line 24922
    .local v1, "timescale":J
    if-nez v1, :cond_0

    const/4 v2, 0x4

    :cond_0
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 24923
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v4

    .line 24924
    .local p0, "languageCode":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v0, v4, 0xa

    and-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x60

    int-to-char v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v0, v4, 0x5

    and-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x60

    int-to-char v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v0, v4, 0x1f

    add-int/lit8 v0, v0, 0x60

    int-to-char v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 24925
    .local v5, "language":Ljava/lang/String;
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 24926
    :cond_1
    const/16 v0, 0x10

    goto :goto_0
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/IM;I)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/IM;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 24927
    add-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 24928
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 24929
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Cm;->A01(Lcom/facebook/ads/redexgen/X/IM;)I

    .line 24930
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 24931
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v1

    .line 24932
    .local v0, "flags":I
    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_0

    .line 24933
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 24934
    :cond_0
    and-int/lit8 v0, v1, 0x40

    if-eqz v0, :cond_1

    .line 24935
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 24936
    :cond_1
    and-int/lit8 v0, v1, 0x20

    if-eqz v0, :cond_2

    .line 24937
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 24938
    :cond_2
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 24939
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Cm;->A01(Lcom/facebook/ads/redexgen/X/IM;)I

    .line 24940
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    .line 24941
    .local p1, "objectTypeIndication":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "ipSJ7rerSzX8"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "rVXKHnYgOQNY"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/IF;->A03(I)Ljava/lang/String;

    move-result-object v3

    .line 24942
    .local v0, "mimeType":Ljava/lang/String;
    const/16 v2, 0x1e2

    const/16 v1, 0xa

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 24943
    const/16 v2, 0x1f5

    const/16 v1, 0xd

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 24944
    const/16 v2, 0x202

    const/16 v1, 0x10

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 24945
    .end local p0    # null:Lcom/facebook/ads/redexgen/X/IM;
    .end local v4
    :cond_3
    const/4 v0, 0x0

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_4

    return-object v3

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "09LVPMUcXpQFix5jag1XMCG3MLP6JHGE"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "l6DCOVwnZaQMuPJJN9SXx5QHr45WFHuE"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-object v3

    .line 24946
    :cond_5
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 24947
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 24948
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Cm;->A01(Lcom/facebook/ads/redexgen/X/IM;)I

    move-result v2

    .line 24949
    .local p0, "initializationDataSize":I
    new-array v1, v2, [B

    .line 24950
    .local v4, "initializationData":[B
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 24951
    invoke-static {v3, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/IM;II)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/IM;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/ads/redexgen/X/D3;",
            ">;"
        }
    .end annotation

    .line 24952
    add-int/lit8 v3, p1, 0x8

    .line 24953
    .local p0, "childPosition":I
    const/4 v8, -0x1

    .line 24954
    .local p1, "schemeInformationBoxPosition":I
    const/4 v7, 0x0

    .line 24955
    .local p2, "schemeInformationBoxSize":I
    const/4 v6, 0x0

    .line 24956
    .local v3, "schemeType":Ljava/lang/String;
    const/4 v4, 0x0

    .line 24957
    .local v8, "dataFormat":Ljava/lang/Integer;
    :goto_0
    sub-int v5, v3, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "AMwqROlZ"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ge v5, p2, :cond_4

    .line 24958
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 24959
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v2

    .line 24960
    .local v7, "childAtomSize":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v1

    .line 24961
    .local v6, "childAtomType":I
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0T:I

    if-ne v1, v0, :cond_2

    .line 24962
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 24963
    :cond_1
    :goto_1
    add-int/2addr v3, v2

    .line 24964
    .end local v7    # "childAtomSize":I
    .end local v6    # "childAtomType":I
    goto :goto_0

    .line 24965
    :cond_2
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0z:I

    if-ne v1, v0, :cond_3

    .line 24966
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 24967
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0T(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 24968
    :cond_3
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0y:I

    if-ne v1, v0, :cond_1

    .line 24969
    move v8, v3

    .line 24970
    move v7, v2

    goto :goto_1

    .line 24971
    :cond_4
    const/16 v2, 0x236

    const/4 v1, 0x4

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 24972
    const/16 v2, 0x22e

    const/4 v1, 0x4

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 24973
    const/16 v2, 0x23a

    const/4 v1, 0x4

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 24974
    const/16 v2, 0x232

    const/4 v1, 0x4

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 24975
    :cond_5
    const/4 v5, 0x1

    if-eqz v4, :cond_8

    const/4 v3, 0x1

    :goto_2
    const/16 v2, 0x262

    const/16 v1, 0x16

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A05(ZLjava/lang/Object;)V

    .line 24976
    const/4 v0, -0x1

    if-eq v8, v0, :cond_7

    const/4 v3, 0x1

    :goto_3
    const/16 v2, 0x280

    const/16 v1, 0x16

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A05(ZLjava/lang/Object;)V

    .line 24977
    invoke-static {p0, v8, v7, v6}, Lcom/facebook/ads/redexgen/X/Cm;->A0D(Lcom/facebook/ads/redexgen/X/IM;IILjava/lang/String;)Lcom/facebook/ads/redexgen/X/D3;

    move-result-object v3

    .line 24978
    .local v4, "encryptionBox":Lcom/facebook/ads/redexgen/X/D3;
    if-eqz v3, :cond_6

    :goto_4
    const/16 v2, 0x29e

    const/16 v1, 0x16

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A05(ZLjava/lang/Object;)V

    .line 24979
    invoke-static {v4, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 24980
    :cond_6
    const/4 v5, 0x0

    goto :goto_4

    .line 24981
    :cond_7
    const/4 v3, 0x0

    goto :goto_3

    .line 24982
    :cond_8
    const/4 v3, 0x0

    goto :goto_2

    .line 24983
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/IM;II)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/IM;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/ads/redexgen/X/D3;",
            ">;"
        }
    .end annotation

    .line 24984
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v5

    .line 24985
    .local p0, "childPosition":I
    :goto_0
    sub-int v0, v5, p1

    if-ge v0, p2, :cond_2

    .line 24986
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 24987
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v4

    .line 24988
    .local p1, "childAtomSize":I
    if-lez v4, :cond_1

    const/4 v3, 0x1

    :goto_1
    const/16 v2, 0x23e

    const/16 v1, 0x20

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A05(ZLjava/lang/Object;)V

    .line 24989
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v1

    .line 24990
    .local p2, "childAtomType":I
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A13:I

    if-ne v1, v0, :cond_0

    .line 24991
    invoke-static {p0, v5, v4}, Lcom/facebook/ads/redexgen/X/Cm;->A08(Lcom/facebook/ads/redexgen/X/IM;II)Landroid/util/Pair;

    move-result-object v0

    .line 24992
    .local v5, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/TrackEncryptionBox;>;"
    if-eqz v0, :cond_0

    .line 24993
    return-object v0

    .line 24994
    .end local v5    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/TrackEncryptionBox;>;"
    :cond_0
    add-int/2addr v5, v4

    .line 24995
    .end local p1    # "childAtomSize":I
    .end local p2    # "childAtomType":I
    goto :goto_0

    .line 24996
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 24997
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A0A(Lcom/facebook/ads/redexgen/X/IM;IILjava/lang/String;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;Z)Lcom/facebook/ads/redexgen/X/Ck;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 24998
    const/16 v0, 0xc

    move-object/from16 v6, p0

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 24999
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v5

    .line 25000
    .local v15, "numberOfEntries":I
    new-instance v14, Lcom/facebook/ads/redexgen/X/Ck;

    invoke-direct {v14, v5}, Lcom/facebook/ads/redexgen/X/Ck;-><init>(I)V

    .line 25001
    .local v15, "out":Lcom/facebook/ads/redexgen/X/Ck;
    const/4 v15, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v15, v5, :cond_e

    .line 25002
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v8

    .line 25003
    .local v9, "childStartPosition":I
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v9

    .line 25004
    .local v3, "childAtomSize":I
    if-lez v9, :cond_d

    const/4 v3, 0x1

    :goto_1
    const/16 v2, 0x23e

    const/16 v1, 0x20

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A05(ZLjava/lang/Object;)V

    .line 25005
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v7

    .line 25006
    .local v14, "childAtomType":I
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A06:I

    move/from16 v10, p1

    move-object/from16 v13, p4

    if-eq v7, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A07:I

    if-eq v7, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0R:I

    if-eq v7, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0l:I

    if-eq v7, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0X:I

    if-eq v7, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0W:I

    if-eq v7, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0s:I

    if-eq v7, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1S:I

    if-eq v7, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1T:I

    if-ne v7, v0, :cond_3

    .line 25007
    .end local v14    # "childAtomType":I
    .restart local v2
    :cond_0
    move-object/from16 v16, v6

    move/from16 v21, p2

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    move/from16 v20, v10

    move-object/from16 v22, v13

    move-object/from16 v23, v14

    move/from16 p0, v15

    invoke-static/range {v16 .. v24}, Lcom/facebook/ads/redexgen/X/Cm;->A0L(Lcom/facebook/ads/redexgen/X/IM;IIIIILcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;Lcom/facebook/ads/redexgen/X/Ck;I)V

    .line 25008
    :cond_1
    :goto_2
    add-int/2addr v8, v9

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    :goto_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "IGv93Dj7KDTv"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "6A1iIS8N9vp3"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v6, v8}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 25009
    .end local v9    # "childStartPosition":I
    .end local v3    # "childAtomSize":I
    .end local v2
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 25010
    :cond_3
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0k:I

    move-object/from16 v11, p3

    if-eq v7, v0, :cond_4

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0Q:I

    if-eq v7, v0, :cond_4

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A04:I

    if-eq v7, v0, :cond_4

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0M:I

    if-eq v7, v0, :cond_4

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0I:I

    if-eq v7, v0, :cond_4

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0J:I

    if-eq v7, v0, :cond_4

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0K:I

    if-eq v7, v0, :cond_4

    sget v3, Lcom/facebook/ads/redexgen/X/Ch;->A0L:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "aFNChY2Gp5UEShUqI2ZXHXvlMwnckVls"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "ICAWmHz3ZpXYA3N9yykXLnBWwAg7HORp"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eq v7, v3, :cond_4

    :goto_4
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0v:I

    if-eq v7, v0, :cond_4

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0w:I

    if-eq v7, v0, :cond_4

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0a:I

    if-eq v7, v0, :cond_4

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A14:I

    if-eq v7, v0, :cond_4

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A03:I

    if-eq v7, v0, :cond_4

    sget v3, Lcom/facebook/ads/redexgen/X/Ch;->A05:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "qFwSWgIL"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ne v7, v3, :cond_7

    .line 25011
    :cond_4
    :goto_5
    move-object v6, v6

    .end local v14
    .local v2, "childAtomType":I
    move/from16 v12, p5

    invoke-static/range {v6 .. v15}, Lcom/facebook/ads/redexgen/X/Cm;->A0N(Lcom/facebook/ads/redexgen/X/IM;IIIILjava/lang/String;ZLcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;Lcom/facebook/ads/redexgen/X/Ck;I)V

    goto/16 :goto_2

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "CalJSZVBpFQrcbMBJJxLaxIn8rHUlaUl"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ne v7, v3, :cond_7

    goto :goto_5

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "Sa7AXdU7dVgi"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "cU1MdBqtKcjZ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eq v7, v3, :cond_4

    goto :goto_4

    .line 25012
    :cond_7
    sget v3, Lcom/facebook/ads/redexgen/X/Ch;->A02:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_8

    goto/16 :goto_3

    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "Ao0TD4kH2iK3OLyPM25FC6RmFi2h7I9b"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "OuNutSfPZXXgacWVKzm9oLRb1otwM5q4"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eq v7, v3, :cond_a

    sget v3, Lcom/facebook/ads/redexgen/X/Ch;->A1O:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_9

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "AIk7lRaJ8E5MijNPplfsCP53DjqDD31L"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "UZtf95QrnIyEi2GPpmv3pYGFcGVBr3II"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eq v7, v3, :cond_a

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1W:I

    if-eq v7, v0, :cond_a

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A18:I

    if-eq v7, v0, :cond_a

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A09:I

    if-ne v7, v0, :cond_b

    .line 25013
    :cond_a
    move-object v6, v6

    move v7, v7

    move v8, v8

    move v9, v9

    move v10, v10

    move-object v11, v11

    move-object v12, v14

    invoke-static/range {v6 .. v12}, Lcom/facebook/ads/redexgen/X/Cm;->A0M(Lcom/facebook/ads/redexgen/X/IM;IIIILjava/lang/String;Lcom/facebook/ads/redexgen/X/Ck;)V

    goto/16 :goto_2

    .line 25014
    :cond_b
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0A:I

    if-ne v7, v0, :cond_1

    .line 25015
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_c

    const/4 v4, -0x1

    .line 25016
    const/4 v3, 0x0

    const/16 v2, 0x13b

    const/16 v1, 0x1b

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v3, v4, v3}, Lcom/facebook/ads/internal/exoplayer2/Format;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    iput-object v0, v14, Lcom/facebook/ads/redexgen/X/Ck;->A02:Lcom/facebook/ads/internal/exoplayer2/Format;

    goto/16 :goto_2

    :cond_c
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "I4VfvCwCFlYX"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "JqrGNuQTdpXg"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/16 v2, 0x13b

    const/16 v1, 0x1b

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v3, v4, v3}, Lcom/facebook/ads/internal/exoplayer2/Format;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    iput-object v0, v14, Lcom/facebook/ads/redexgen/X/Ck;->A02:Lcom/facebook/ads/internal/exoplayer2/Format;

    goto/16 :goto_2

    .line 25017
    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 25018
    .end local v8    # "i":I
    :cond_e
    return-object v14
.end method

.method public static A0B(Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/Cl;
    .locals 11

    .line 25019
    const/16 v9, 0x8

    invoke-virtual {p0, v9}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 25020
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v0

    .line 25021
    .local v9, "fullAtom":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ch;->A01(I)I

    move-result v8

    .line 25022
    .local v0, "version":I
    const/16 v7, 0x10

    if-nez v8, :cond_a

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 25023
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v5

    .line 25024
    .local v7, "trackId":I
    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 25025
    const/4 v4, 0x1

    .line 25026
    .local v5, "durationUnknown":Z
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v3

    .line 25027
    .local v6, "durationPosition":I
    if-nez v8, :cond_0

    const/4 v9, 0x4

    .line 25028
    .local p0, "durationByteCount":I
    :cond_0
    const/4 v2, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v2, v9, :cond_1

    .line 25029
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    add-int v0, v3, v2

    aget-byte v1, v1, v0

    const/4 v0, -0x1

    if-eq v1, v0, :cond_9

    .line 25030
    const/4 v4, 0x0

    .line 25031
    .end local v4    # "i":I
    :cond_1
    if-eqz v4, :cond_7

    .line 25032
    invoke-virtual {p0, v9}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 25033
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 25034
    .local v4, "duration":J
    :cond_2
    :goto_2
    invoke-virtual {p0, v7}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 25035
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v9

    .line 25036
    .local v8, "a00":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v8

    .line 25037
    .local v2, "a01":I
    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 25038
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v7

    .line 25039
    .local v0, "a10":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v6

    .line 25040
    .local v1, "a11":I
    const/high16 v10, 0x10000

    .line 25041
    .local v0, "fixedOne":I
    if-nez v9, :cond_3

    if-ne v8, v10, :cond_3

    neg-int v0, v10

    if-ne v7, v0, :cond_3

    if-nez v6, :cond_3

    .line 25042
    const/16 v1, 0x5a

    .line 25043
    .local v1, "rotationDegrees":I
    .restart local v1    # "rotationDegrees":I
    :goto_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/Cl;

    invoke-direct {v0, v5, v3, v4, v1}, Lcom/facebook/ads/redexgen/X/Cl;-><init>(IJI)V

    return-object v0

    .line 25044
    .end local v1    # "rotationDegrees":I
    :cond_3
    if-nez v9, :cond_5

    neg-int p0, v10

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "i5DrkfhddIOc"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "TqiRE9mqRyND"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ne v8, p0, :cond_5

    if-ne v7, v10, :cond_5

    if-nez v6, :cond_5

    .line 25045
    const/16 v1, 0x10e

    .restart local v1    # "rotationDegrees":I
    goto :goto_3

    .line 25046
    .end local v1    # "rotationDegrees":I
    :cond_5
    neg-int v0, v10

    if-ne v9, v0, :cond_6

    if-nez v8, :cond_6

    if-nez v7, :cond_6

    neg-int v0, v10

    if-ne v6, v0, :cond_6

    .line 25047
    const/16 v1, 0xb4

    .restart local v1    # "rotationDegrees":I
    goto :goto_3

    .line 25048
    .end local v1    # "rotationDegrees":I
    :cond_6
    const/4 v1, 0x0

    goto :goto_3

    .line 25049
    .end local v4    # "duration":J
    :cond_7
    if-nez v8, :cond_8

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0N()J

    move-result-wide v3

    .line 25050
    .restart local v4    # "duration":J
    :goto_4
    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    .line 25051
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2

    .line 25052
    :cond_8
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0O()J

    move-result-wide v3

    goto :goto_4

    .line 25053
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 25054
    :cond_a
    const/16 v0, 0x10

    goto/16 :goto_0
.end method

.method public static A0C(Lcom/facebook/ads/redexgen/X/Z9;Lcom/facebook/ads/redexgen/X/ZA;JLcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;ZZ)Lcom/facebook/ads/redexgen/X/D2;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    move-wide/from16 v14, p2

    .line 25055
    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A0d:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Z9;->A06(I)Lcom/facebook/ads/redexgen/X/Z9;

    move-result-object v2

    .line 25056
    .local v1, "mdia":Lcom/facebook/ads/redexgen/X/Z9;
    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A0V:I

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/Z9;->A07(I)Lcom/facebook/ads/redexgen/X/ZA;

    move-result-object v1

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/ZA;->A00:Lcom/facebook/ads/redexgen/X/IM;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Cm;->A02(Lcom/facebook/ads/redexgen/X/IM;)I

    move-result v9

    .line 25057
    .local v14, "trackType":I
    const/4 v7, 0x0

    const/4 v1, -0x1

    if-ne v9, v1, :cond_0

    .line 25058
    return-object v7

    .line 25059
    :cond_0
    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A1J:I

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Z9;->A07(I)Lcom/facebook/ads/redexgen/X/ZA;

    move-result-object v5

    sget-object v3, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v3, v3, v1

    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v1, 0x70

    if-eq v3, v1, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v4, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v3, "QWUsjPBg"

    const/4 v1, 0x2

    aput-object v3, v4, v1

    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/ZA;->A00:Lcom/facebook/ads/redexgen/X/IM;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Cm;->A0B(Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/Cl;

    move-result-object v6

    .line 25060
    .local v3, "tkhdData":Lcom/facebook/ads/redexgen/X/Cl;
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v14, v3

    if-nez v1, :cond_2

    .line 25061
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Cl;->A02(Lcom/facebook/ads/redexgen/X/Cl;)J

    move-result-wide v14

    .line 25062
    .end local v14    # "trackType":I
    .local p4, "duration":J
    .end local v14
    .local v1, "duration":J
    :cond_2
    move-object/from16 v1, p1

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/ZA;->A00:Lcom/facebook/ads/redexgen/X/IM;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Cm;->A04(Lcom/facebook/ads/redexgen/X/IM;)J

    move-result-wide v12

    .line 25063
    .local v1, "movieTimescale":J
    cmp-long v1, v14, v3

    if-nez v1, :cond_5

    .line 25064
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 25065
    .local p3, "durationUs":J
    .local v1, "durationUs":J
    :goto_0
    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A0h:I

    .line 25066
    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/Z9;->A06(I)Lcom/facebook/ads/redexgen/X/Z9;

    move-result-object v3

    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A16:I

    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/Z9;->A06(I)Lcom/facebook/ads/redexgen/X/Z9;

    move-result-object v3

    .line 25067
    .local v7, "stbl":Lcom/facebook/ads/redexgen/X/Z9;
    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A0c:I

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/Z9;->A07(I)Lcom/facebook/ads/redexgen/X/ZA;

    move-result-object v1

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/ZA;->A00:Lcom/facebook/ads/redexgen/X/IM;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Cm;->A06(Lcom/facebook/ads/redexgen/X/IM;)Landroid/util/Pair;

    move-result-object v1

    .line 25068
    .local v9, "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    sget v2, Lcom/facebook/ads/redexgen/X/Ch;->A1A:I

    .line 25069
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/Z9;->A07(I)Lcom/facebook/ads/redexgen/X/ZA;

    move-result-object v2

    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/ZA;->A00:Lcom/facebook/ads/redexgen/X/IM;

    .line 25070
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Cl;->A00(Lcom/facebook/ads/redexgen/X/Cl;)I

    move-result p0

    .line 25071
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Cl;->A01(Lcom/facebook/ads/redexgen/X/Cl;)I

    move-result p1

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 25072
    move-object/from16 p3, p4

    move/from16 p4, p6

    move-object/from16 p2, v2

    move-object/from16 v16, v3

    invoke-static/range {v16 .. v21}, Lcom/facebook/ads/redexgen/X/Cm;->A0A(Lcom/facebook/ads/redexgen/X/IM;IILjava/lang/String;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;Z)Lcom/facebook/ads/redexgen/X/Ck;

    move-result-object v5

    .line 25073
    .local v1, "stsdData":Lcom/facebook/ads/redexgen/X/Ck;
    const/4 v4, 0x0

    .line 25074
    .local p3, "editListDurations":[J
    const/4 v3, 0x0

    .line 25075
    .local p5, "editListMediaTimes":[J
    if-nez p5, :cond_3

    .line 25076
    sget v2, Lcom/facebook/ads/redexgen/X/Ch;->A0N:I

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Z9;->A06(I)Lcom/facebook/ads/redexgen/X/Z9;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Cm;->A05(Lcom/facebook/ads/redexgen/X/Z9;)Landroid/util/Pair;

    move-result-object v0

    .line 25077
    .local p4, "edtsData":Landroid/util/Pair;, "Landroid/util/Pair<[J[J>;"
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, [J

    .line 25078
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [J

    .line 25079
    .end local p3    # "editListDurations":[J
    .end local p5    # "editListMediaTimes":[J
    .local v4, "editListDurations":[J
    .local v3, "editListMediaTimes":[J
    :cond_3
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Ck;->A02:Lcom/facebook/ads/internal/exoplayer2/Format;

    if-nez v0, :cond_4

    :goto_1
    return-object v7

    .line 25080
    :cond_4
    new-instance v7, Lcom/facebook/ads/redexgen/X/D2;

    .line 25081
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Cl;->A00(Lcom/facebook/ads/redexgen/X/Cl;)I

    move-result v8

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 25082
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-object v6, v5, Lcom/facebook/ads/redexgen/X/Ck;->A02:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget v2, v5, Lcom/facebook/ads/redexgen/X/Ck;->A01:I

    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/Ck;->A03:[Lcom/facebook/ads/redexgen/X/D3;

    iget v0, v5, Lcom/facebook/ads/redexgen/X/Ck;->A00:I

    .end local v1    # "stsdData":Lcom/facebook/ads/redexgen/X/Ck;
    .local v3, "stsdData":Lcom/facebook/ads/redexgen/X/Ck;
    .end local v9    # "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .local v1, "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v7    # "stbl":Lcom/facebook/ads/redexgen/X/Z9;
    .local v6, "stbl":Lcom/facebook/ads/redexgen/X/Z9;
    move-object/from16 p1, v1

    move/from16 p2, v0

    move-object/from16 p3, v4

    move-object/from16 p4, v3

    move-object/from16 v16, v6

    move/from16 p0, v2

    invoke-direct/range {v7 .. v21}, Lcom/facebook/ads/redexgen/X/D2;-><init>(IIJJJLcom/facebook/ads/internal/exoplayer2/Format;I[Lcom/facebook/ads/redexgen/X/D3;I[J[J)V

    goto :goto_1

    .line 25083
    .end local p3
    :cond_5
    const-wide/32 v16, 0xf4240

    move-wide/from16 p1, v12

    invoke-static/range {v14 .. v19}, Lcom/facebook/ads/redexgen/X/Ic;->A0F(JJJ)J

    move-result-wide v14

    goto/16 :goto_0
.end method

.method public static A0D(Lcom/facebook/ads/redexgen/X/IM;IILjava/lang/String;)Lcom/facebook/ads/redexgen/X/D3;
    .locals 10

    .line 25084
    add-int/lit8 v3, p1, 0x8

    .line 25085
    .local p1, "childPosition":I
    :goto_0
    sub-int v0, v3, p1

    if-ge v0, p2, :cond_5

    .line 25086
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 25087
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v2

    .line 25088
    .local p2, "childAtomSize":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v1

    .line 25089
    .local p0, "childAtomType":I
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1G:I

    if-ne v1, v0, :cond_2

    .line 25090
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v0

    .line 25091
    .local v3, "fullAtom":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ch;->A01(I)I

    move-result v0

    .line 25092
    .local v0, "version":I
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 25093
    const/4 v7, 0x0

    .line 25094
    .local v2, "defaultCryptByteBlock":I
    const/4 v8, 0x0

    .line 25095
    .local v1, "defaultSkipByteBlock":I
    if-nez v0, :cond_1

    .line 25096
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 25097
    .end local v0    # "version":I
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v3, :cond_0

    .line 25098
    .local p2, "defaultIsProtected":Z
    :goto_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v5

    .line 25099
    .local v0, "defaultPerSampleIvSize":I
    const/16 v0, 0x10

    new-array v6, v0, [B

    .line 25100
    .local v8, "defaultKeyId":[B
    array-length v0, v6

    invoke-virtual {p0, v6, v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 25101
    const/4 v9, 0x0

    .line 25102
    .local v0, "constantIv":[B
    if-eqz v3, :cond_4

    if-nez v5, :cond_4

    .line 25103
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    .line 25104
    .local v3, "constantIvSize":I
    new-array v9, v0, [B

    .line 25105
    invoke-virtual {p0, v9, v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 25106
    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    .line 25107
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v1

    .line 25108
    .local v0, "patternByte":I
    and-int/lit16 v0, v1, 0xf0

    shr-int/lit8 v7, v0, 0x4

    .line 25109
    and-int/lit8 v8, v1, 0xf

    goto :goto_1

    .line 25110
    .end local v3    # "constantIvSize":I
    .end local v0    # "patternByte":I
    .end local p2    # "defaultIsProtected":Z
    .end local v2    # "defaultCryptByteBlock":I
    .end local v1    # "defaultSkipByteBlock":I
    .end local v0
    .end local v0
    .end local v0
    :cond_2
    add-int/2addr v3, v2

    .line 25111
    .end local p2
    .end local p0    # "childAtomType":I
    goto :goto_0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "N18HcU44"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    .line 25112
    .end local v0
    .local v0, "constantIv":[B
    :cond_4
    new-instance v2, Lcom/facebook/ads/redexgen/X/D3;

    .end local v8    # "defaultKeyId":[B
    .local v0, "defaultKeyId":[B
    move-object v4, p3

    invoke-direct/range {v2 .. v9}, Lcom/facebook/ads/redexgen/X/D3;-><init>(ZLjava/lang/String;I[BII[B)V

    return-object v2

    .line 25113
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A0E(Lcom/facebook/ads/redexgen/X/D2;Lcom/facebook/ads/redexgen/X/Z9;Lcom/facebook/ads/redexgen/X/CK;)Lcom/facebook/ads/redexgen/X/D5;
    .locals 42
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 25114
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1C:I

    move-object/from16 v4, p1

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Z9;->A07(I)Lcom/facebook/ads/redexgen/X/ZA;

    move-result-object v0

    .line 25115
    .local v3, "stszAtom":Lcom/facebook/ads/redexgen/X/ZA;
    if-eqz v0, :cond_0

    .line 25116
    new-instance v15, Lcom/facebook/ads/redexgen/X/ZB;

    invoke-direct {v15, v0}, Lcom/facebook/ads/redexgen/X/ZB;-><init>(Lcom/facebook/ads/redexgen/X/ZA;)V

    .line 25117
    .local p1, "sampleSizeBox":Lcom/facebook/ads/redexgen/X/Cj;
    .end local p1    # "sampleSizeBox":Lcom/facebook/ads/redexgen/X/Cj;
    .local v2, "sampleSizeBox":Lcom/facebook/ads/redexgen/X/Cj;
    :goto_0
    invoke-interface {v15}, Lcom/facebook/ads/redexgen/X/Cj;->A75()I

    move-result v23

    .line 25118
    .local v8, "sampleCount":I
    const/4 v0, 0x0

    move-object/from16 p1, p0

    if-nez v23, :cond_1

    .line 25119
    new-instance v4, Lcom/facebook/ads/redexgen/X/D5;

    new-array v3, v0, [J

    new-array v2, v0, [I

    const/4 v8, 0x0

    new-array v1, v0, [J

    new-array v0, v0, [I

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v5, p1

    move-object v6, v3

    move-object v7, v2

    move-object v9, v1

    move-object v10, v0

    invoke-direct/range {v4 .. v12}, Lcom/facebook/ads/redexgen/X/D5;-><init>(Lcom/facebook/ads/redexgen/X/D2;[J[II[J[IJ)V

    return-object v4

    .line 25120
    .end local p1
    :cond_0
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1E:I

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Z9;->A07(I)Lcom/facebook/ads/redexgen/X/ZA;

    move-result-object v0

    .line 25121
    .local p1, "stz2Atom":Lcom/facebook/ads/redexgen/X/ZA;
    if-eqz v0, :cond_35

    .line 25122
    new-instance v15, Lcom/facebook/ads/redexgen/X/ZC;

    invoke-direct {v15, v0}, Lcom/facebook/ads/redexgen/X/ZC;-><init>(Lcom/facebook/ads/redexgen/X/ZA;)V

    goto :goto_0

    .line 25123
    :cond_1
    const/4 v3, 0x0

    .line 25124
    .local v4, "chunkOffsetsAreLongs":Z
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A17:I

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Z9;->A07(I)Lcom/facebook/ads/redexgen/X/ZA;

    move-result-object v0

    .line 25125
    .local v9, "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/ZA;
    if-nez v0, :cond_4

    .line 25126
    const/4 v3, 0x1

    .line 25127
    sget v5, Lcom/facebook/ads/redexgen/X/Ch;->A0B:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_3

    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "tAZ8kw98eWsC"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "j06huWSmFoSN"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v4, v5}, Lcom/facebook/ads/redexgen/X/Z9;->A07(I)Lcom/facebook/ads/redexgen/X/ZA;

    move-result-object v0

    .line 25128
    .end local v4    # "chunkOffsetsAreLongs":Z
    .end local v9    # "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/ZA;
    .local v15, "chunkOffsetsAreLongs":Z
    .local v1, "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/ZA;
    :cond_4
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/ZA;->A00:Lcom/facebook/ads/redexgen/X/IM;

    .line 25129
    .local v15, "chunkOffsets":Lcom/facebook/ads/redexgen/X/IM;
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A19:I

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Z9;->A07(I)Lcom/facebook/ads/redexgen/X/ZA;

    move-result-object v0

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/ZA;->A00:Lcom/facebook/ads/redexgen/X/IM;

    .line 25130
    .local v0, "stsc":Lcom/facebook/ads/redexgen/X/IM;
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1D:I

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Z9;->A07(I)Lcom/facebook/ads/redexgen/X/ZA;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ZA;->A00:Lcom/facebook/ads/redexgen/X/IM;

    move-object/from16 v29, v0

    .line 25131
    .local v0, "stts":Lcom/facebook/ads/redexgen/X/IM;
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1B:I

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Z9;->A07(I)Lcom/facebook/ads/redexgen/X/ZA;

    move-result-object v0

    .line 25132
    .local v4, "stssAtom":Lcom/facebook/ads/redexgen/X/ZA;
    const/4 v12, 0x0

    if-eqz v0, :cond_8

    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/ZA;->A00:Lcom/facebook/ads/redexgen/X/IM;

    .line 25133
    .local v9, "stss":Lcom/facebook/ads/redexgen/X/IM;
    :goto_2
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0C:I

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Z9;->A07(I)Lcom/facebook/ads/redexgen/X/ZA;

    move-result-object v0

    .line 25134
    .local p1, "cttsAtom":Lcom/facebook/ads/redexgen/X/ZA;
    if-eqz v0, :cond_5

    iget-object v12, v0, Lcom/facebook/ads/redexgen/X/ZA;->A00:Lcom/facebook/ads/redexgen/X/IM;

    .line 25135
    .local v4, "ctts":Lcom/facebook/ads/redexgen/X/IM;
    :cond_5
    new-instance v10, Lcom/facebook/ads/redexgen/X/Ci;

    invoke-direct {v10, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/Ci;-><init>(Lcom/facebook/ads/redexgen/X/IM;Lcom/facebook/ads/redexgen/X/IM;Z)V

    .line 25136
    .local p1, "chunkIterator":Lcom/facebook/ads/redexgen/X/Ci;
    .end local p1    # "chunkIterator":Lcom/facebook/ads/redexgen/X/Ci;
    .local v11, "cttsAtom":Lcom/facebook/ads/redexgen/X/ZA;
    const/16 v1, 0xc

    move-object/from16 v0, v29

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 25137
    invoke-virtual/range {v29 .. v29}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v0

    add-int/lit8 v9, v0, -0x1

    .line 25138
    .local v18, "remainingTimestampDeltaChanges":I
    invoke-virtual/range {v29 .. v29}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v28

    .line 25139
    .local p1, "remainingSamplesAtTimestampDelta":I
    invoke-virtual/range {v29 .. v29}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v27

    .line 25140
    .local p1, "timestampDeltaInTimeUnits":I
    const/16 v26, 0x0

    .line 25141
    .local v0, "remainingSamplesAtTimestampOffset":I
    const/16 v25, 0x0

    .line 25142
    .local v15, "remainingTimestampOffsetChanges":I
    const/16 v24, 0x0

    .line 25143
    .local v15, "timestampOffset":I
    if-eqz v12, :cond_6

    .line 25144
    const/16 v0, 0xc

    .end local v4    # "ctts":Lcom/facebook/ads/redexgen/X/IM;
    .local v3, "stssAtom":Lcom/facebook/ads/redexgen/X/ZA;
    invoke-virtual {v12, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_7

    .line 25145
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "L0AwLnMzpUVZw0eA5xJMrWaPTFyNZJ4l"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v25

    .line 25146
    .end local v4
    .restart local v3    # "stssAtom":Lcom/facebook/ads/redexgen/X/ZA;
    :cond_6
    :goto_3
    const/4 v14, -0x1

    .line 25147
    .local v4, "nextSynchronizationSampleIndex":I
    const/4 v8, 0x0

    .line 25148
    .local v0, "remainingSynchronizationSamples":I
    if-eqz v11, :cond_b

    .line 25149
    const/16 v0, 0xc

    .end local v4    # "nextSynchronizationSampleIndex":I
    .local v0, "nextSynchronizationSampleIndex":I
    invoke-virtual {v11, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 25150
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v8

    .line 25151
    if-lez v8, :cond_a

    .line 25152
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v0

    add-int/lit8 v14, v0, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_9

    goto/16 :goto_1

    .line 25153
    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "QSMsFg5SqZ0MdGMo2pjKfVLErbdATzfM"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "0ZxnaUDgpQuXguOXfTzNI5lEB6qL53xV"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v25

    goto :goto_3

    .line 25154
    :cond_8
    move-object v11, v12

    goto/16 :goto_2

    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "faWOqNa6"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    .end local v0    # "nextSynchronizationSampleIndex":I
    .restart local v4    # "nextSynchronizationSampleIndex":I
    goto :goto_4

    .line 25155
    .end local v4    # "nextSynchronizationSampleIndex":I
    .restart local v0    # "nextSynchronizationSampleIndex":I
    :cond_a
    const/4 v11, 0x0

    .line 25156
    .end local v9    # "stss":Lcom/facebook/ads/redexgen/X/IM;
    .local v4, "stss":Lcom/facebook/ads/redexgen/X/IM;
    :cond_b
    :goto_4
    invoke-interface {v15}, Lcom/facebook/ads/redexgen/X/Cj;->A82()Z

    move-result v0

    if-eqz v0, :cond_13

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget-object v3, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    .line 25157
    const/16 v2, 0x1ec

    const/16 v1, 0x9

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    if-nez v9, :cond_13

    if-nez v25, :cond_13

    if-nez v8, :cond_13

    const/4 v5, 0x1

    .line 25158
    .local v3, "isFixedSampleSizeRawAudio":Z
    :goto_5
    const/16 v18, 0x0

    .line 25159
    .local v9, "maximumSize":I
    const-wide/16 v1, 0x0

    .line 25160
    .local v5, "timestampTimeUnits":J
    const/16 v4, 0x80

    const/16 v3, 0xb

    const/16 v0, 0x21

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v22

    if-nez v5, :cond_17

    .line 25161
    .end local v9    # "maximumSize":I
    .local v0, "maximumSize":I
    move/from16 v0, v23

    new-array v0, v0, [J

    move-object/from16 v19, v0

    .line 25162
    .local v9, "offsets":[J
    .end local v0    # "maximumSize":I
    .local v0, "stsc":Lcom/facebook/ads/redexgen/X/IM;
    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 25163
    .local v0, "sizes":[I
    .end local v15    # "timestampOffset":I
    .local v1, "chunkOffsetsAreLongs":Z
    move/from16 v0, v23

    new-array v13, v0, [J

    .line 25164
    .local v15, "timestamps":[J
    .end local v15    # "timestamps":[J
    .local v0, "chunkOffsets":Lcom/facebook/ads/redexgen/X/IM;
    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v21, v0

    .line 25165
    .local v15, "flags":[I
    const-wide/16 v5, 0x0

    .line 25166
    .local v0, "offset":J
    const/4 v7, 0x0

    .line 25167
    .local v1, "remainingSamplesInChunk":I
    const/4 v0, 0x0

    .end local v15    # "flags":[I
    .end local v0    # "offset":J
    .end local v0
    .end local v1    # "remainingSamplesInChunk":I
    .local p1, "i":I
    .local v4, "remainingSynchronizationSamples":I
    .local v23, "remainingSamplesAtTimestampDelta":I
    .local v0, "remainingTimestampDeltaChanges":I
    .local v4, "nextSynchronizationSampleIndex":I
    .local v3, "timestampDeltaInTimeUnits":I
    .local v1, "maximumSize":I
    .local v18, "remainingTimestampOffsetChanges":I
    .local p1, "remainingSamplesInChunk":I
    .local v15, "offset":J
    .local v0, "timestampOffset":I
    .local v0, "stszAtom":Lcom/facebook/ads/redexgen/X/ZA;
    .local v2, "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/ZA;
    :goto_6
    move/from16 v3, v23

    if-ge v0, v3, :cond_14

    .line 25168
    :goto_7
    if-nez v7, :cond_c

    .line 25169
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/Ci;->A03()Z

    move-result v3

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 25170
    .end local v23    # "remainingSamplesAtTimestampDelta":I
    .end local v0    # "stszAtom":Lcom/facebook/ads/redexgen/X/ZA;
    .local v0, "remainingSamplesAtTimestampDelta":I
    .local v0, "remainingTimestampDeltaChanges":I
    iget-wide v5, v10, Lcom/facebook/ads/redexgen/X/Ci;->A02:J

    .line 25171
    .end local v15    # "offset":J
    .local v23, "offset":J
    .end local v23    # "offset":J
    .restart local v15    # "offset":J
    iget v7, v10, Lcom/facebook/ads/redexgen/X/Ci;->A01:I

    .end local p1    # "remainingSamplesInChunk":I
    .local v23, "remainingSamplesInChunk":I
    goto :goto_7

    .line 25172
    .end local v0    # "remainingTimestampDeltaChanges":I
    .end local v0
    .local v23, "remainingSamplesAtTimestampDelta":I
    .restart local v0    # "remainingTimestampDeltaChanges":I
    .restart local p1    # "remainingSamplesInChunk":I
    .end local v23    # "remainingSamplesAtTimestampDelta":I
    .end local v0    # "remainingTimestampDeltaChanges":I
    .restart local v0    # "remainingTimestampDeltaChanges":I
    .restart local v0    # "remainingTimestampDeltaChanges":I
    :cond_c
    if-eqz v12, :cond_e

    .line 25173
    :goto_8
    if-nez v26, :cond_d

    if-lez v25, :cond_d

    .line 25174
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v26

    .line 25175
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v24

    .line 25176
    add-int/lit8 v25, v25, -0x1

    goto :goto_8

    .line 25177
    :cond_d
    add-int/lit8 v26, v26, -0x1

    .line 25178
    .end local v0    # "remainingTimestampDeltaChanges":I
    .local v23, "timestampOffset":I
    :cond_e
    aput-wide v5, v19, v0

    .line 25179
    invoke-interface {v15}, Lcom/facebook/ads/redexgen/X/Cj;->ACq()I

    move-result v3

    aput v3, v20, v0

    .line 25180
    aget v3, v20, v0

    move/from16 v4, v18

    move v3, v3

    if-le v3, v4, :cond_f

    .line 25181
    aget v18, v20, v0

    .line 25182
    .end local v2    # "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/ZA;
    .end local v8    # "sampleCount":I
    .local v0, "sampleSizeBox":Lcom/facebook/ads/redexgen/X/Cj;
    .local v0, "sampleCount":I
    :cond_f
    move/from16 v3, v24

    int-to-long v3, v3

    move-wide/from16 v16, v3

    add-long v3, v1, v16

    aput-wide v3, v13, v0

    .line 25183
    if-nez v11, :cond_12

    const/4 v3, 0x1

    :goto_9
    aput v3, v21, v0

    .line 25184
    if-ne v0, v14, :cond_10

    .line 25185
    const/4 v3, 0x1

    aput v3, v21, v0

    .line 25186
    add-int/lit8 v8, v8, -0x1

    .line 25187
    if-lez v8, :cond_10

    .line 25188
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v3

    add-int/lit8 v14, v3, -0x1

    .line 25189
    :cond_10
    move/from16 v3, v27

    int-to-long v3, v3

    move-wide/from16 v16, v3

    add-long v1, v1, v16

    .line 25190
    add-int/lit8 v28, v28, -0x1

    .line 25191
    .end local v0    # "sampleCount":I
    .local v2, "remainingSamplesAtTimestampDelta":I
    if-nez v28, :cond_11

    if-lez v9, :cond_11

    .line 25192
    move-object/from16 v3, v29

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v28

    .line 25193
    move-object/from16 v3, v29

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v27

    .line 25194
    add-int/lit8 v9, v9, -0x1

    .line 25195
    .end local v0
    .local v8, "remainingTimestampDeltaChanges":I
    .end local v0
    .restart local v8    # "remainingTimestampDeltaChanges":I
    .end local v9    # "offsets":[J
    .local v1, "offsets":[J
    :cond_11
    aget v3, v20, v0

    .end local v4    # "nextSynchronizationSampleIndex":I
    .end local v0
    .local v0, "remainingSynchronizationSamples":I
    .local v0, "stts":Lcom/facebook/ads/redexgen/X/IM;
    int-to-long v3, v3

    move-wide/from16 v16, v3

    add-long v5, v5, v16

    .line 25196
    add-int/lit8 v7, v7, -0x1

    .line 25197
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 25198
    :cond_12
    const/4 v3, 0x0

    goto :goto_9

    .line 25199
    :cond_13
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 25200
    .end local v0    # "stts":Lcom/facebook/ads/redexgen/X/IM;
    .end local v1    # "offsets":[J
    .end local v0
    .restart local v9    # "offsets":[J
    .restart local v4    # "nextSynchronizationSampleIndex":I
    .restart local v0    # "stts":Lcom/facebook/ads/redexgen/X/IM;
    .local v23, "remainingSamplesAtTimestampDelta":I
    .local v0, "remainingTimestampDeltaChanges":I
    .local v2, "sampleSizeBox":Lcom/facebook/ads/redexgen/X/Cj;
    .local v8, "sampleCount":I
    .local v0, "timestampOffset":I
    .end local v9    # "offsets":[J
    .end local p1    # "remainingSamplesInChunk":I
    .end local v0    # "timestampOffset":I
    .end local v23    # "remainingSamplesAtTimestampDelta":I
    .end local v2    # "sampleSizeBox":Lcom/facebook/ads/redexgen/X/Cj;
    .end local v8    # "sampleCount":I
    .local v0, "sampleSizeBox":Lcom/facebook/ads/redexgen/X/Cj;
    .restart local v0    # "sampleSizeBox":Lcom/facebook/ads/redexgen/X/Cj;
    .restart local v0    # "sampleSizeBox":Lcom/facebook/ads/redexgen/X/Cj;
    .restart local v0    # "sampleSizeBox":Lcom/facebook/ads/redexgen/X/Cj;
    .restart local v1    # "offsets":[J
    .restart local v0    # "sampleSizeBox":Lcom/facebook/ads/redexgen/X/Cj;
    .end local v0    # "sampleSizeBox":Lcom/facebook/ads/redexgen/X/Cj;
    .local v23, "timestampOffset":I
    :cond_14
    move/from16 v0, v24

    int-to-long v3, v0

    add-long/2addr v1, v3

    .line 25201
    .local v9, "duration":J
    if-nez v26, :cond_16

    const/4 v0, 0x1

    :goto_a
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 25202
    :goto_b
    if-lez v25, :cond_19

    .line 25203
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    :goto_c
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 25204
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    .line 25205
    add-int/lit8 v25, v25, -0x1

    goto :goto_b

    .line 25206
    :cond_15
    const/4 v0, 0x0

    goto :goto_c

    .line 25207
    :cond_16
    const/4 v0, 0x0

    goto :goto_a

    .line 25208
    .end local v4    # "nextSynchronizationSampleIndex":I
    .end local v23    # "timestampOffset":I
    .end local v0
    .end local v4
    .end local v0
    .end local v0
    .end local v1    # "offsets":[J
    .end local v0
    .end local v0
    .end local v2
    .end local v0
    .end local v1
    .end local v0
    .end local v0
    .local v4, "ctts":Lcom/facebook/ads/redexgen/X/IM;
    .local v9, "maximumSize":I
    .local p1, "timestampDeltaInTimeUnits":I
    .restart local v0    # "sampleSizeBox":Lcom/facebook/ads/redexgen/X/Cj;
    .local v0, "stsc":Lcom/facebook/ads/redexgen/X/IM;
    .local v15, "chunkOffsetsAreLongs":Z
    .local v15, "chunkOffsets":Lcom/facebook/ads/redexgen/X/IM;
    .local v3, "stszAtom":Lcom/facebook/ads/redexgen/X/ZA;
    .restart local v2    # "sampleSizeBox":Lcom/facebook/ads/redexgen/X/Cj;
    .local v8, "sampleCount":I
    .local v1, "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/ZA;
    .local v18, "remainingTimestampDeltaChanges":I
    .local p1, "remainingSamplesAtTimestampDelta":I
    .local v15, "remainingTimestampOffsetChanges":I
    .restart local v15    # "remainingTimestampOffsetChanges":I
    .local v0, "remainingSynchronizationSamples":I
    .local v0, "nextSynchronizationSampleIndex":I
    :cond_17
    move-object/from16 v0, p1

    .end local v4    # "ctts":Lcom/facebook/ads/redexgen/X/IM;
    .end local v9    # "maximumSize":I
    .end local v0    # "nextSynchronizationSampleIndex":I
    .end local v0
    .end local v15    # "remainingTimestampOffsetChanges":I
    .end local v15
    .end local v3    # "stszAtom":Lcom/facebook/ads/redexgen/X/ZA;
    .end local v2    # "sampleSizeBox":Lcom/facebook/ads/redexgen/X/Cj;
    .end local v8    # "sampleCount":I
    .end local v1    # "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/ZA;
    .restart local v0    # "nextSynchronizationSampleIndex":I
    .local v0, "maximumSize":I
    .restart local v0    # "maximumSize":I
    .restart local v1    # "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/ZA;
    .restart local v0    # "maximumSize":I
    .restart local v0    # "maximumSize":I
    .restart local v2    # "sampleSizeBox":Lcom/facebook/ads/redexgen/X/Cj;
    .restart local v0    # "maximumSize":I
    .restart local v0    # "maximumSize":I
    .restart local v0    # "maximumSize":I
    iget v1, v10, Lcom/facebook/ads/redexgen/X/Ci;->A05:I

    new-array v5, v1, [J

    .line 25209
    .local v9, "chunkOffsetsBytes":[J
    iget v1, v10, Lcom/facebook/ads/redexgen/X/Ci;->A05:I

    new-array v4, v1, [I

    .line 25210
    .local v4, "chunkSampleCounts":[I
    :goto_d
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/Ci;->A03()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 25211
    iget v3, v10, Lcom/facebook/ads/redexgen/X/Ci;->A00:I

    iget-wide v1, v10, Lcom/facebook/ads/redexgen/X/Ci;->A02:J

    aput-wide v1, v5, v3

    .line 25212
    iget v2, v10, Lcom/facebook/ads/redexgen/X/Ci;->A00:I

    iget v1, v10, Lcom/facebook/ads/redexgen/X/Ci;->A01:I

    aput v1, v4, v2

    goto :goto_d

    .line 25213
    :cond_18
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget v2, v1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0A:I

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget v1, v1, Lcom/facebook/ads/internal/exoplayer2/Format;->A05:I

    .line 25214
    invoke-static {v2, v1}, Lcom/facebook/ads/redexgen/X/Ic;->A05(II)I

    move-result v3

    .line 25215
    .local v0, "fixedSampleSize":I
    move/from16 v1, v27

    int-to-long v1, v1

    .line 25216
    invoke-static {v3, v5, v4, v1, v2}, Lcom/facebook/ads/redexgen/X/Cq;->A00(I[J[IJ)Lcom/facebook/ads/redexgen/X/Cp;

    move-result-object v2

    .line 25217
    .local v0, "rechunkedResults":Lcom/facebook/ads/redexgen/X/Cp;
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Cp;->A04:[J

    move-object/from16 v19, v1

    .line 25218
    .local v15, "offsets":[J
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Cp;->A03:[I

    move-object/from16 v20, v1

    .line 25219
    .local v15, "sizes":[I
    iget v1, v2, Lcom/facebook/ads/redexgen/X/Cp;->A00:I

    move/from16 v18, v1

    .line 25220
    .end local v0    # "rechunkedResults":Lcom/facebook/ads/redexgen/X/Cp;
    .local v23, "maximumSize":I
    iget-object v13, v2, Lcom/facebook/ads/redexgen/X/Cp;->A05:[J

    .line 25221
    .local v4, "timestamps":[J
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Cp;->A02:[I

    move-object/from16 v21, v1

    .line 25222
    .local v3, "flags":[I
    iget-wide v1, v2, Lcom/facebook/ads/redexgen/X/Cp;->A01:J

    goto :goto_e

    .line 25223
    :cond_19
    if-nez v8, :cond_1a

    if-nez v28, :cond_1a

    if-nez v7, :cond_1a

    if-eqz v9, :cond_1d

    .line 25224
    :cond_1a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0xc6

    const/16 v3, 0x20

    const/16 v0, 0x47

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    .end local v4    # "timestamps":[J
    .end local v0
    .local v8, "remainingSamplesAtTimestampDelta":I
    .local v0, "ctts":Lcom/facebook/ads/redexgen/X/IM;
    iget v3, v0, Lcom/facebook/ads/redexgen/X/D2;->A00:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x5e

    const/16 v4, 0x22

    const/16 v3, 0x56

    invoke-static {v6, v4, v3}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    const/16 v4, 0x23

    const/4 v3, 0x3

    invoke-static {v6, v4, v3}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v28

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x23

    const/16 v4, 0x1a

    const/16 v3, 0x62

    invoke-static {v6, v4, v3}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local p1    # "remainingSamplesAtTimestampDelta":I
    .local v4, "remainingSamplesInChunk":I
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v4    # "remainingSamplesInChunk":I
    .restart local p1    # "remainingSamplesAtTimestampDelta":I
    const/16 v6, 0x3d

    const/16 v4, 0x21

    const/16 v3, 0x19

    invoke-static {v6, v4, v3}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v0    # "ctts":Lcom/facebook/ads/redexgen/X/IM;
    .local v4, "remainingTimestampDeltaChanges":I
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v4    # "remainingTimestampDeltaChanges":I
    .restart local v0    # "ctts":Lcom/facebook/ads/redexgen/X/IM;
    move-object/from16 v3, v22

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25225
    .end local v9    # "chunkOffsetsBytes":[J
    .end local p1    # "remainingSamplesAtTimestampDelta":I
    .end local v4
    .end local v0    # "ctts":Lcom/facebook/ads/redexgen/X/IM;
    .end local v3    # "flags":[I
    .end local v15    # "sizes":[I
    .local v0, "flags":[I
    .local v15, "sizes":[I
    .local v15, "timestamps":[J
    .local v23, "timestampDeltaInTimeUnits":I
    .local v4, "duration":J
    .local v8, "remainingSamplesAtTimestampDelta":I
    .local v1, "offsets":[J
    .local v18, "remainingTimestampOffsetChanges":I
    .local p1, "maximumSize":I
    .local v0, "remainingTimestampDeltaChanges":I
    :goto_e
    const-wide/32 v7, 0xf4240

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/D2;->A06:J

    move-wide v5, v1

    move-wide v9, v3

    invoke-static/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/Ic;->A0F(JJJ)J

    move-result-wide v29

    .line 25226
    .local v0, "durationUs":J
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/D2;->A08:[J

    if-eqz v3, :cond_1b

    move-object/from16 v9, p2

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/CK;->A04()Z

    move-result v3

    if-eqz v3, :cond_1e

    sget-object v3, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v2, v3, v1

    const/4 v1, 0x5

    aget-object v3, v3, v1

    const/4 v1, 0x2

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v2, v1, :cond_1c

    sget-object v3, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v2, "0WQDc4By6ZKUv50MYhDXaKvo73wTc1oJ"

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const-string v2, "m7R3atyNmMw0aUGXjhmXWAr036NwYgBK"

    const/4 v1, 0x7

    aput-object v2, v3, v1

    .line 25227
    .end local p1    # "maximumSize":I
    .end local v0    # "durationUs":J
    .end local v15    # "timestamps":[J
    .end local v15
    .end local v8    # "remainingSamplesAtTimestampDelta":I
    .end local v1    # "offsets":[J
    .end local v0
    .end local v0
    .local v23, "timestamps":[J
    .local v0, "flags":[I
    .local v4, "sizes":[I
    .restart local v15    # "timestamps":[J
    .local v1, "chunkOffsets":Lcom/facebook/ads/redexgen/X/IM;
    .local v0, "chunkOffsetsAreLongs":Z
    .restart local v1    # "chunkOffsets":Lcom/facebook/ads/redexgen/X/IM;
    .restart local v1    # "chunkOffsets":Lcom/facebook/ads/redexgen/X/IM;
    .restart local v3    # "flags":[I
    .restart local v0    # "chunkOffsetsAreLongs":Z
    .restart local v0    # "chunkOffsetsAreLongs":Z
    .restart local v0    # "chunkOffsetsAreLongs":Z
    .restart local v1    # "chunkOffsets":Lcom/facebook/ads/redexgen/X/IM;
    :cond_1b
    :goto_f
    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/D2;->A06:J

    const-wide/32 v0, 0xf4240

    invoke-static {v13, v0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/Ic;->A0b([JJJ)V

    .line 25228
    new-instance v22, Lcom/facebook/ads/redexgen/X/D5;

    move-object/from16 v23, p1

    move-object/from16 v24, v19

    move-object/from16 v25, v20

    move/from16 v26, v18

    move-object/from16 v27, v13

    move-object/from16 v28, v21

    invoke-direct/range {v22 .. v30}, Lcom/facebook/ads/redexgen/X/D5;-><init>(Lcom/facebook/ads/redexgen/X/D2;[J[II[J[IJ)V

    return-object v22

    :cond_1c
    sget-object v3, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v2, "jqrwPGYejRDY"

    const/4 v1, 0x4

    aput-object v2, v3, v1

    const-string v2, "OhyeZO60DlaV"

    const/4 v1, 0x6

    aput-object v2, v3, v1

    goto :goto_f

    .line 25229
    :cond_1d
    move-object/from16 v0, p1

    goto :goto_e

    .line 25230
    :cond_1e
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/D2;->A08:[J

    array-length v3, v3

    const-wide/16 v16, 0x0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_22

    iget v3, v0, Lcom/facebook/ads/redexgen/X/D2;->A03:I

    if-ne v3, v4, :cond_22

    array-length v4, v13

    const/4 v3, 0x2

    if-lt v4, v3, :cond_22

    .line 25231
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/D2;->A09:[J

    const/4 v4, 0x0

    aget-wide v34, v3, v4

    .line 25232
    .local v12, "editStartTime":J
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/D2;->A08:[J

    aget-wide v36, v3, v4

    iget-wide v5, v0, Lcom/facebook/ads/redexgen/X/D2;->A06:J

    .end local v0    # "chunkOffsetsAreLongs":Z
    .local v15, "flags":[I
    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/D2;->A05:J

    .line 25233
    move-wide/from16 v38, v5

    move-wide/from16 v40, v3

    invoke-static/range {v36 .. v41}, Lcom/facebook/ads/redexgen/X/Ic;->A0F(JJJ)J

    move-result-wide v3

    add-long v36, v34, v3

    .line 25234
    .local v10, "editEndTime":J
    move-object/from16 v31, v13

    move-wide/from16 v32, v1

    invoke-static/range {v31 .. v37}, Lcom/facebook/ads/redexgen/X/Cm;->A0O([JJJJ)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 25235
    sub-long v31, v1, v36

    .line 25236
    .local v0, "paddingTimeUnits":J
    const/4 v3, 0x0

    aget-wide v3, v13, v3

    sub-long v34, v34, v3

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget v3, v3, Lcom/facebook/ads/internal/exoplayer2/Format;->A0C:I

    int-to-long v5, v3

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/D2;->A06:J

    .line 25237
    move-wide/from16 v38, v5

    move-wide/from16 v40, v3

    move-wide/from16 v36, v34

    invoke-static/range {v36 .. v41}, Lcom/facebook/ads/redexgen/X/Ic;->A0F(JJJ)J

    move-result-wide v3

    .line 25238
    .local v0, "encoderDelay":J
    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget v5, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0C:I

    int-to-long v7, v5

    .end local v23    # "timestamps":[J
    .end local v0    # "encoderDelay":J
    .local v1, "sampleSizeBox":Lcom/facebook/ads/redexgen/X/Cj;
    .local v1, "timestampDeltaInTimeUnits":I
    iget-wide v5, v0, Lcom/facebook/ads/redexgen/X/D2;->A06:J

    .line 25239
    move-wide/from16 v33, v7

    move-wide/from16 v35, v5

    invoke-static/range {v31 .. v36}, Lcom/facebook/ads/redexgen/X/Ic;->A0F(JJJ)J

    move-result-wide v5

    .line 25240
    .local v23, "encoderPadding":J
    cmp-long v7, v3, v16

    if-nez v7, :cond_1f

    cmp-long v11, v5, v16

    sget-object v8, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v7, 0x3

    aget-object v8, v8, v7

    const/16 v7, 0x8

    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v7, 0x70

    if-eq v8, v7, :cond_21

    if-eqz v11, :cond_22

    :cond_1f
    :goto_10
    const-wide/32 v14, 0x7fffffff

    cmp-long v11, v3, v14

    sget-object v10, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v8, v10, v7

    const/4 v7, 0x5

    aget-object v10, v10, v7

    const/4 v7, 0x2

    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v10, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v8, v7, :cond_20

    sget-object v10, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v8, "QK1vfch0"

    const/4 v7, 0x2

    aput-object v8, v10, v7

    if-gtz v11, :cond_22

    :goto_11
    cmp-long v7, v5, v14

    if-gtz v7, :cond_22

    .line 25241
    long-to-int v1, v3

    iput v1, v9, Lcom/facebook/ads/redexgen/X/CK;->A00:I

    .line 25242
    long-to-int v1, v5

    iput v1, v9, Lcom/facebook/ads/redexgen/X/CK;->A01:I

    .line 25243
    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/D2;->A06:J

    const-wide/32 v0, 0xf4240

    invoke-static {v13, v0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/Ic;->A0b([JJJ)V

    .line 25244
    new-instance v22, Lcom/facebook/ads/redexgen/X/D5;

    .end local p1
    .local v3, "chunkIterator":Lcom/facebook/ads/redexgen/X/Ci;
    .end local v0
    .local v0, "encoderDelay":J
    .local v15, "stsc":Lcom/facebook/ads/redexgen/X/IM;
    .local v0, "flags":[I
    .end local v15    # "stsc":Lcom/facebook/ads/redexgen/X/IM;
    .end local v15
    .local v23, "timestamps":[J
    .local v1, "chunkOffsets":Lcom/facebook/ads/redexgen/X/IM;
    .local v0, "chunkOffsetsAreLongs":Z
    .local v0, "sizes":[I
    .local v0, "encoderPadding":J
    move-object/from16 v23, p1

    move-object/from16 v24, v19

    move-object/from16 v25, v20

    move/from16 v26, v18

    move-object/from16 v27, v13

    move-object/from16 v28, v21

    invoke-direct/range {v22 .. v30}, Lcom/facebook/ads/redexgen/X/D5;-><init>(Lcom/facebook/ads/redexgen/X/D2;[J[II[J[IJ)V

    return-object v22

    :cond_20
    sget-object v10, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v8, "tECeEFHQ"

    const/4 v7, 0x2

    aput-object v8, v10, v7

    if-gtz v11, :cond_22

    goto :goto_11

    :cond_21
    sget-object v10, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v8, "GiUyKgvb1y07kiuWm4Sv6lyFuYOGmq6U"

    const/4 v7, 0x0

    aput-object v8, v10, v7

    const-string v8, "fYJ91Mt5TVtKF5bzm86egGGGI715VMxk"

    const/4 v7, 0x5

    aput-object v8, v10, v7

    if-eqz v11, :cond_22

    goto :goto_10

    .line 25245
    .end local p1
    .end local v0    # "encoderPadding":J
    .end local v15
    .end local v15
    .end local v0
    .local v23, "timestamps":[J
    .restart local v15    # "stsc":Lcom/facebook/ads/redexgen/X/IM;
    .local v0, "flags":[I
    .local v1, "chunkOffsets":Lcom/facebook/ads/redexgen/X/IM;
    .local v0, "chunkOffsetsAreLongs":Z
    .restart local v1    # "chunkOffsets":Lcom/facebook/ads/redexgen/X/IM;
    .restart local v1    # "chunkOffsets":Lcom/facebook/ads/redexgen/X/IM;
    .restart local v3    # "chunkIterator":Lcom/facebook/ads/redexgen/X/Ci;
    .restart local v0    # "chunkOffsetsAreLongs":Z
    :cond_22
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/D2;->A08:[J

    array-length v4, v3

    const/4 v3, 0x1

    if-ne v4, v3, :cond_23

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/D2;->A08:[J

    const/4 v6, 0x0

    aget-wide v4, v3, v6

    cmp-long v3, v4, v16

    if-nez v3, :cond_23

    .line 25246
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/D2;->A09:[J

    aget-wide v6, v3, v6

    .line 25247
    .local v0, "editStartTime":J
    const/4 v5, 0x0

    .local p1, "i":I
    :goto_12
    array-length v3, v13

    if-ge v5, v3, :cond_2b

    .line 25248
    aget-wide v22, v13, v5

    sub-long v22, v22, v6

    const-wide/32 v24, 0xf4240

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/D2;->A06:J

    .line 25249
    move-wide/from16 v26, v3

    invoke-static/range {v22 .. v27}, Lcom/facebook/ads/redexgen/X/Ic;->A0F(JJJ)J

    move-result-wide v3

    aput-wide v3, v13, v5

    .line 25250
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 25251
    .end local v0    # "editStartTime":J
    .end local v0
    .restart local v0    # "editStartTime":J
    :cond_23
    iget v2, v0, Lcom/facebook/ads/redexgen/X/D2;->A03:I

    const/4 v1, 0x1

    if-ne v2, v1, :cond_26

    const/4 v7, 0x1

    .line 25252
    .local v0, "omitClippedSample":Z
    :goto_13
    const/4 v8, 0x0

    .line 25253
    .local p1, "editedSampleCount":I
    const/4 v10, 0x0

    .line 25254
    .local v9, "nextSampleIndex":I
    const/16 v17, 0x0

    .line 25255
    .local p1, "copyMetadata":Z
    const/4 v9, 0x0

    .end local p1    # "copyMetadata":Z
    .end local v9    # "nextSampleIndex":I
    .local v4, "i":I
    .local v15, "editedSampleCount":I
    .local v15, "nextSampleIndex":I
    :goto_14
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/D2;->A08:[J

    array-length v1, v1

    const-wide/16 v5, -0x1

    if-ge v9, v1, :cond_27

    .line 25256
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/D2;->A09:[J

    .end local v4    # "i":I
    .local v0, "duration":J
    aget-wide v3, v1, v9

    .line 25257
    .local v4, "editMediaTime":J
    cmp-long v1, v3, v5

    if-eqz v1, :cond_24

    .line 25258
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/D2;->A08:[J

    aget-wide v24, v1, v9

    iget-wide v5, v0, Lcom/facebook/ads/redexgen/X/D2;->A06:J

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/D2;->A05:J

    .line 25259
    move-wide/from16 v26, v5

    move-wide/from16 v28, v1

    invoke-static/range {v24 .. v29}, Lcom/facebook/ads/redexgen/X/Ic;->A0F(JJJ)J

    move-result-wide v11

    .line 25260
    .local p1, "editDuration":J
    const/4 v1, 0x1

    invoke-static {v13, v3, v4, v1, v1}, Lcom/facebook/ads/redexgen/X/Ic;->A0A([JJZZ)I

    move-result v5

    .line 25261
    .local v0, "startIndex":I
    .end local v8
    .end local v1    # "chunkOffsets":Lcom/facebook/ads/redexgen/X/IM;
    .local v0, "remainingSamplesAtTimestampDelta":I
    .local v1, "offsets":[J
    add-long/2addr v3, v11

    .line 25262
    const/4 v1, 0x0

    invoke-static {v13, v3, v4, v7, v1}, Lcom/facebook/ads/redexgen/X/Ic;->A0A([JJZZ)I

    move-result v2

    .line 25263
    .local v8, "endIndex":I
    sub-int v1, v2, v5

    add-int/2addr v8, v1

    .line 25264
    if-eq v10, v5, :cond_25

    const/4 v1, 0x1

    :goto_15
    or-int v17, v17, v1

    .line 25265
    move v10, v2

    .line 25266
    .end local v15    # "nextSampleIndex":I
    .local v0, "nextSampleIndex":I
    .end local v4    # "editMediaTime":J
    .end local v8    # "endIndex":I
    .end local v1    # "offsets":[J
    .restart local v0    # "nextSampleIndex":I
    .restart local v1    # "offsets":[J
    :cond_24
    add-int/lit8 v9, v9, 0x1

    goto :goto_14

    .line 25267
    :cond_25
    const/4 v1, 0x0

    goto :goto_15

    .line 25268
    :cond_26
    const/4 v7, 0x0

    goto :goto_13

    .line 25269
    .end local v0    # "nextSampleIndex":I
    .end local v0
    .end local v1    # "offsets":[J
    .local v4, "duration":J
    .restart local v8    # "endIndex":I
    .restart local v1    # "offsets":[J
    .end local v4    # "duration":J
    .end local v4
    .end local v8    # "endIndex":I
    .end local v1    # "offsets":[J
    .restart local v0    # "nextSampleIndex":I
    .restart local v0    # "nextSampleIndex":I
    .restart local v1    # "offsets":[J
    .end local v0    # "nextSampleIndex":I
    .local v4, "sampleCount":I
    :cond_27
    move/from16 v1, v23

    if-eq v8, v1, :cond_2a

    const/4 v1, 0x1

    :goto_16
    or-int v17, v17, v1

    sget-object v3, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v2, v3, v1

    const/4 v1, 0x5

    aget-object v3, v3, v1

    const/4 v1, 0x2

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v2, v1, :cond_2

    .line 25270
    .end local p1    # "editDuration":J
    .local v3, "copyMetadata":Z
    sget-object v3, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v2, "orK8SNX8"

    const/4 v1, 0x2

    aput-object v2, v3, v1

    if-eqz v17, :cond_29

    new-array v1, v8, [J

    move-object/from16 p0, v1

    .line 25271
    .local v8, "editedOffsets":[J
    :goto_17
    if-eqz v17, :cond_28

    new-array v12, v8, [I

    :goto_18
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v1, 0x8

    if-eq v2, v1, :cond_2c

    goto/16 :goto_1

    :cond_28
    move-object/from16 v12, v20

    goto :goto_18

    .line 25272
    :cond_29
    move-object/from16 p0, v19

    goto :goto_17

    .line 25273
    :cond_2a
    const/4 v1, 0x0

    goto :goto_16

    .line 25274
    .end local p1
    :cond_2b
    sub-long/2addr v1, v6

    const-wide/32 v7, 0xf4240

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/D2;->A06:J

    .line 25275
    move-wide v5, v1

    move-wide v9, v3

    invoke-static/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/Ic;->A0F(JJJ)J

    move-result-wide v7

    .line 25276
    .end local v0
    .local v0, "durationUs":J
    new-instance v0, Lcom/facebook/ads/redexgen/X/D5;

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move/from16 v4, v18

    move-object v5, v13

    move-object/from16 v6, v21

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/redexgen/X/D5;-><init>(Lcom/facebook/ads/redexgen/X/D2;[J[II[J[IJ)V

    return-object v0

    .line 25277
    .local v1, "editedSizes":[I
    :cond_2c
    sget-object v3, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v2, "JgZNmdNdmpUD"

    const/4 v1, 0x4

    aput-object v2, v3, v1

    const-string v2, "PBu5Yw4SG2Bu"

    const/4 v1, 0x6

    aput-object v2, v3, v1

    if-eqz v17, :cond_2d

    const/16 v18, 0x0

    .line 25278
    .local p1, "editedMaximumSize":I
    :cond_2d
    if-eqz v17, :cond_32

    new-array v11, v8, [I

    .line 25279
    .local v4, "editedFlags":[I
    :goto_19
    new-array v10, v8, [J

    .line 25280
    .local p1, "editedTimestamps":[J
    const-wide/16 v34, 0x0

    .line 25281
    .local v0, "pts":J
    const/16 v16, 0x0

    .line 25282
    .local v4, "sampleIndex":I
    const/4 v6, 0x0

    .end local v0    # "pts":J
    .local p1, "i":I
    .local v0, "editedMaximumSize":I
    .local v10, "pts":J
    :goto_1a
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/D2;->A08:[J

    array-length v1, v1

    if-ge v6, v1, :cond_34

    .line 25283
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/D2;->A09:[J

    .end local v15
    .local v0, "editedSampleCount":I
    aget-wide v1, v1, v6

    .line 25284
    .local v0, "editMediaTime":J
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/D2;->A08:[J

    aget-wide v28, v3, v6

    .line 25285
    .local v28, "editDuration":J
    const-wide/16 v4, -0x1

    cmp-long v3, v1, v4

    if-eqz v3, :cond_31

    .line 25286
    .end local p1    # "i":I
    .local v26, "editedTimestamps":[J
    iget-wide v8, v0, Lcom/facebook/ads/redexgen/X/D2;->A06:J

    .end local v4    # "sampleIndex":I
    .local v25, "editedFlags":[I
    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/D2;->A05:J

    .line 25287
    move-wide/from16 v30, v8

    move-wide/from16 v32, v3

    invoke-static/range {v28 .. v33}, Lcom/facebook/ads/redexgen/X/Ic;->A0F(JJJ)J

    move-result-wide v3

    add-long/2addr v3, v1

    .line 25288
    .local v9, "endMediaTime":J
    const/4 v5, 0x1

    invoke-static {v13, v1, v2, v5, v5}, Lcom/facebook/ads/redexgen/X/Ic;->A0A([JJZZ)I

    move-result v5

    .line 25289
    .local v0, "startIndex":I
    const/4 v8, 0x0

    .end local v15
    .local v0, "nextSampleIndex":I
    invoke-static {v13, v3, v4, v7, v8}, Lcom/facebook/ads/redexgen/X/Ic;->A0A([JJZZ)I

    move-result v3

    .line 25290
    .local v15, "endIndex":I
    if-eqz v17, :cond_2e

    .line 25291
    sub-int v4, v3, v5

    .line 25292
    .local v4, "count":I
    .end local v1    # "editedSizes":[I
    .local v0, "offsets":[J
    .local v0, "omitClippedSample":Z
    move-object/from16 v23, v19

    move/from16 v24, v5

    move-object/from16 v25, p0

    move/from16 v26, v16

    move/from16 v27, v4

    invoke-static/range {v23 .. v27}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25293
    .end local v0    # "omitClippedSample":Z
    .local v4, "sizes":[I
    .local v1, "sampleCount":I
    move-object/from16 v23, v20

    move/from16 v24, v5

    move-object/from16 v25, v12

    move/from16 v26, v16

    move/from16 v27, v4

    invoke-static/range {v23 .. v27}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25294
    .end local v9    # "endMediaTime":J
    .end local v0
    .end local v25    # "editedFlags":[I
    .local p1, "editedFlags":[I
    .local v0, "flags":[I
    .local v0, "offsets":[J
    .local v1, "endMediaTime":J
    move-object/from16 v23, v21

    move/from16 v24, v5

    move-object/from16 v25, v11

    move/from16 v26, v16

    move/from16 v27, v4

    invoke-static/range {v23 .. v27}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25295
    .end local v9
    .end local v0    # "offsets":[J
    .end local v25
    .restart local p1    # "editedFlags":[I
    .local v0, "flags":[I
    .local v4, "sizes":[I
    .local v0, "offsets":[J
    .local v1, "sampleCount":I
    .restart local v0    # "offsets":[J
    .restart local v1    # "sampleCount":I
    :cond_2e
    if-ge v5, v3, :cond_2f

    aget v8, v11, v16

    const/4 v4, 0x1

    and-int/2addr v8, v4

    if-eqz v8, :cond_33

    .line 25296
    .end local v0    # "offsets":[J
    .local v4, "j":I
    .local v4, "editedMaximumSize":I
    .local v0, "sampleIndex":I
    :cond_2f
    :goto_1b
    if-ge v5, v3, :cond_31

    .line 25297
    const-wide/32 v36, 0xf4240

    .end local p1    # "editedFlags":[I
    .restart local v25    # "editedFlags":[I
    iget-wide v8, v0, Lcom/facebook/ads/redexgen/X/D2;->A05:J

    move-wide/from16 v38, v8

    invoke-static/range {v34 .. v39}, Lcom/facebook/ads/redexgen/X/Ic;->A0F(JJJ)J

    move-result-wide v14

    .line 25298
    .local v9, "ptsUs":J
    aget-wide v36, v13, v5

    sub-long v36, v36, v1

    const-wide/32 v38, 0xf4240

    .end local v0    # "sampleIndex":I
    .end local v0
    .local v15, "startIndex":I
    .local v0, "editMediaTime":J
    iget-wide v8, v0, Lcom/facebook/ads/redexgen/X/D2;->A06:J

    .line 25299
    move-wide/from16 v40, v8

    invoke-static/range {v36 .. v41}, Lcom/facebook/ads/redexgen/X/Ic;->A0F(JJJ)J

    move-result-wide v8

    .line 25300
    .local v0, "timeInSegmentUs":J
    add-long/2addr v14, v8

    aput-wide v14, v10, v16

    .line 25301
    if-eqz v17, :cond_30

    .end local v9    # "ptsUs":J
    .local v12, "ptsUs":J
    aget v8, v12, v16

    move/from16 v4, v18

    if-le v8, v4, :cond_30

    .line 25302
    aget v18, v20, v5

    .line 25303
    .end local v9
    .restart local v12    # "ptsUs":J
    .end local v0    # "timeInSegmentUs":J
    .end local v12    # "ptsUs":J
    :cond_30
    add-int/lit8 v16, v16, 0x1

    .line 25304
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 25305
    .end local p1
    .end local v4    # "editedMaximumSize":I
    .end local v0
    .end local v15    # "startIndex":I
    .end local v0
    .local v0, "flags":[I
    .local v4, "sizes":[I
    .restart local v0    # "flags":[I
    .local v0, "offsets":[J
    .local v1, "sampleCount":I
    .restart local v0    # "offsets":[J
    .restart local v26    # "editedTimestamps":[J
    .restart local v25    # "editedFlags":[I
    .restart local v0    # "offsets":[J
    :cond_31
    add-long v34, v34, v28

    .line 25306
    .end local v0    # "offsets":[J
    .end local v28    # "editDuration":J
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1a

    .line 25307
    :cond_32
    move-object/from16 v11, v21

    goto/16 :goto_19

    .line 25308
    :cond_33
    const/16 v2, 0x8b

    const/16 v1, 0x3b

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25309
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZD;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/ZD;-><init>()V

    throw v0

    .line 25310
    .end local v0
    .end local v0
    .end local v26    # "editedTimestamps":[J
    .end local v25    # "editedFlags":[I
    .end local v0
    .restart local p1    # "editedFlags":[I
    .restart local v4    # "sizes":[I
    .local v15, "editedSampleCount":I
    .restart local v15    # "editedSampleCount":I
    .local v0, "omitClippedSample":Z
    .local v4, "sampleCount":I
    .restart local v0    # "omitClippedSample":Z
    .local v0, "sizes":[I
    .local v1, "offsets":[J
    .end local p1    # "editedFlags":[I
    .end local p1
    .end local v4    # "sampleCount":I
    .end local v15    # "editedSampleCount":I
    .end local v15
    .end local v0    # "sizes":[I
    .local v0, "flags":[I
    .local v4, "sizes":[I
    .restart local v0    # "flags":[I
    .local v0, "offsets":[J
    .local v1, "sampleCount":I
    .restart local v0    # "offsets":[J
    .restart local v26    # "editedTimestamps":[J
    .restart local v25    # "editedFlags":[I
    .restart local v0    # "offsets":[J
    :cond_34
    const-wide/32 v36, 0xf4240

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/D2;->A06:J

    move-wide/from16 v38, v0

    invoke-static/range {v34 .. v39}, Lcom/facebook/ads/redexgen/X/Ic;->A0F(JJJ)J

    move-result-wide v7

    .line 25311
    .local v0, "editedDurationUs":J
    new-instance v0, Lcom/facebook/ads/redexgen/X/D5;

    .end local v4    # "sizes":[I
    .local v0, "sampleIndex":I
    .end local v26    # "editedTimestamps":[J
    .end local v25    # "editedFlags":[I
    .restart local v4    # "sizes":[I
    .local v12, "editedTimestamps":[J
    .end local v4    # "sizes":[I
    .local v11, "editedFlags":[I
    .local v0, "editedSampleCount":I
    .local v0, "nextSampleIndex":I
    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move-object v3, v12

    move/from16 v4, v18

    move-object v5, v10

    move-object v6, v11

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/redexgen/X/D5;-><init>(Lcom/facebook/ads/redexgen/X/D2;[J[II[J[IJ)V

    return-object v0

    .line 25312
    .end local v23    # "timestamps":[J
    .end local v0    # "nextSampleIndex":I
    .end local v4
    .end local v11    # "editedFlags":[I
    .end local v18    # "remainingTimestampOffsetChanges":I
    .end local v4
    .end local p1
    .end local v0
    .end local v15
    .end local v15
    .end local v3    # "copyMetadata":Z
    .end local v0
    .end local v0
    .end local v3
    .end local v5    # "timestampTimeUnits":J
    .end local v0
    .end local v1    # "sampleCount":I
    .end local v0
    .end local v0
    .end local v2    # "sampleSizeBox":Lcom/facebook/ads/redexgen/X/Cj;
    .end local v1
    .end local v1
    .end local v0
    .end local v0
    .end local v3
    .end local v0
    .end local v0
    .end local v0
    .end local v1
    .end local v0
    .local p1, "stz2Atom":Lcom/facebook/ads/redexgen/X/ZA;
    .local v3, "stszAtom":Lcom/facebook/ads/redexgen/X/ZA;
    :cond_35
    const/16 v2, 0xe6

    const/16 v1, 0x2a

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A0F(Lcom/facebook/ads/redexgen/X/ZA;Z)Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;
    .locals 7

    .line 25313
    const/4 v6, 0x0

    if-eqz p1, :cond_0

    .line 25314
    return-object v6

    .line 25315
    :cond_0
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/ZA;->A00:Lcom/facebook/ads/redexgen/X/IM;

    .line 25316
    .local p1, "udtaData":Lcom/facebook/ads/redexgen/X/IM;
    const/16 v4, 0x8

    invoke-virtual {v5, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 25317
    :goto_0
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    if-lt v0, v4, :cond_2

    .line 25318
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v3

    .line 25319
    .local v5, "atomPosition":I
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v2

    .line 25320
    .local v4, "atomSize":I
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v1

    .line 25321
    .local v0, "atomType":I
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0g:I

    if-ne v1, v0, :cond_1

    .line 25322
    invoke-virtual {v5, v3}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 25323
    add-int/2addr v3, v2

    invoke-static {v5, v3}, Lcom/facebook/ads/redexgen/X/Cm;->A0H(Lcom/facebook/ads/redexgen/X/IM;I)Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    move-result-object v0

    return-object v0

    .line 25324
    :cond_1
    add-int/lit8 v0, v2, -0x8

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 25325
    .end local v5    # "atomPosition":I
    .end local v4    # "atomSize":I
    .end local v0    # "atomType":I
    goto :goto_0

    .line 25326
    :cond_2
    return-object v6
.end method

.method public static A0G(Lcom/facebook/ads/redexgen/X/IM;I)Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;
    .locals 2

    .line 25327
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 25328
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25329
    .local p0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata$Entry;>;"
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 25330
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Cu;->A01(Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata$Entry;

    move-result-object v0

    .line 25331
    .local p1, "entry":Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata$Entry;
    if-eqz v0, :cond_0

    .line 25332
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 25333
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_2
    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    goto :goto_1
.end method

.method public static A0H(Lcom/facebook/ads/redexgen/X/IM;I)Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;
    .locals 4

    .line 25334
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 25335
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 25336
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v3

    .line 25337
    .local p0, "atomPosition":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v2

    .line 25338
    .local p1, "atomSize":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v1

    .line 25339
    .local v0, "atomType":I
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0Z:I

    if-ne v1, v0, :cond_0

    .line 25340
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 25341
    add-int/2addr v3, v2

    invoke-static {p0, v3}, Lcom/facebook/ads/redexgen/X/Cm;->A0G(Lcom/facebook/ads/redexgen/X/IM;I)Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    move-result-object v0

    return-object v0

    .line 25342
    :cond_0
    add-int/lit8 v0, v2, -0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 25343
    .end local p0    # "atomPosition":I
    .end local p1    # "atomSize":I
    .end local v0    # "atomType":I
    goto :goto_0

    .line 25344
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A0I(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cm;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0J()V
    .locals 1

    const/16 v0, 0x2ff

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Cm;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x31t
        0x25t
        0x77t
        0x6at
        0x72t
        0x66t
        0x6et
        0x73t
        0x6et
        0x73t
        0x6ct
        0x58t
        0x66t
        0x72t
        0x75t
        0x71t
        0x6at
        0x78t
        0x46t
        0x79t
        0x59t
        0x6et
        0x72t
        0x6at
        0x78t
        0x79t
        0x66t
        0x72t
        0x75t
        0x49t
        0x6at
        0x71t
        0x79t
        0x66t
        0x25t
        -0x70t
        -0x7ct
        -0x2at
        -0x37t
        -0x2ft
        -0x3bt
        -0x33t
        -0x2et
        -0x33t
        -0x2et
        -0x35t
        -0x49t
        -0x3bt
        -0x2ft
        -0x2ct
        -0x30t
        -0x37t
        -0x29t
        -0x53t
        -0x2et
        -0x59t
        -0x34t
        -0x27t
        -0x2et
        -0x31t
        -0x7ct
        0x47t
        0x3bt
        -0x73t
        -0x80t
        -0x78t
        0x7ct
        -0x7ct
        -0x77t
        -0x7ct
        -0x77t
        -0x7et
        0x6ft
        -0x7ct
        -0x78t
        -0x80t
        -0x72t
        -0x71t
        0x7ct
        -0x78t
        -0x75t
        0x5ft
        -0x80t
        -0x79t
        -0x71t
        0x7ct
        0x5et
        -0x7dt
        0x7ct
        -0x77t
        -0x7et
        -0x80t
        -0x72t
        0x3bt
        -0x6et
        0x78t
        -0x36t
        -0x43t
        -0x3bt
        -0x47t
        -0x3ft
        -0x3at
        -0x3ft
        -0x3at
        -0x41t
        -0x55t
        -0x2ft
        -0x3at
        -0x45t
        -0x40t
        -0x36t
        -0x39t
        -0x3at
        -0x3ft
        -0x2et
        -0x47t
        -0x34t
        -0x3ft
        -0x39t
        -0x3at
        -0x55t
        -0x47t
        -0x3bt
        -0x38t
        -0x3ct
        -0x43t
        -0x35t
        0x78t
        0x64t
        -0x69t
        -0x6et
        -0x70t
        0x73t
        -0x7ct
        -0x6bt
        -0x6at
        -0x78t
        -0x6bt
        -0x6at
        -0x4ct
        -0x2et
        -0x27t
        -0x26t
        -0x23t
        -0x2ct
        -0x27t
        -0x2et
        -0x75t
        -0x30t
        -0x31t
        -0x2ct
        -0x21t
        -0x75t
        -0x29t
        -0x2ct
        -0x22t
        -0x21t
        -0x5bt
        -0x75t
        -0x30t
        -0x31t
        -0x2ct
        -0x21t
        -0x75t
        -0x31t
        -0x26t
        -0x30t
        -0x22t
        -0x75t
        -0x27t
        -0x26t
        -0x21t
        -0x75t
        -0x22t
        -0x21t
        -0x34t
        -0x23t
        -0x21t
        -0x75t
        -0x1et
        -0x2ct
        -0x21t
        -0x2dt
        -0x75t
        -0x34t
        -0x75t
        -0x22t
        -0x1ct
        -0x27t
        -0x32t
        -0x75t
        -0x22t
        -0x34t
        -0x28t
        -0x25t
        -0x29t
        -0x30t
        -0x67t
        -0x6et
        -0x49t
        -0x54t
        -0x48t
        -0x49t
        -0x44t
        -0x4et
        -0x44t
        -0x43t
        -0x52t
        -0x49t
        -0x43t
        0x69t
        -0x44t
        -0x43t
        -0x55t
        -0x4bt
        0x69t
        -0x55t
        -0x48t
        -0x3ft
        0x69t
        -0x51t
        -0x48t
        -0x45t
        0x69t
        -0x43t
        -0x45t
        -0x56t
        -0x54t
        -0x4ct
        0x69t
        0x75t
        -0x6dt
        -0x7et
        -0x7ct
        -0x74t
        0x41t
        -0x77t
        -0x7et
        -0x6ct
        0x41t
        -0x71t
        -0x70t
        0x41t
        -0x6ct
        -0x7et
        -0x72t
        -0x6ft
        -0x73t
        -0x7at
        0x41t
        -0x6bt
        -0x7et
        -0x7dt
        -0x73t
        -0x7at
        0x41t
        -0x6ct
        -0x76t
        -0x65t
        -0x7at
        0x41t
        -0x76t
        -0x71t
        -0x79t
        -0x70t
        -0x6dt
        -0x72t
        -0x7et
        -0x6bt
        -0x76t
        -0x70t
        -0x71t
        -0x78t
        -0x5ft
        -0x5at
        -0x58t
        -0x5dt
        -0x5dt
        -0x5et
        -0x5bt
        -0x59t
        -0x68t
        -0x69t
        0x53t
        -0x60t
        -0x68t
        -0x69t
        -0x64t
        -0x6ct
        0x53t
        -0x5bt
        -0x6ct
        -0x59t
        -0x68t
        0x61t
        -0x20t
        -0x11t
        -0x11t
        -0x15t
        -0x18t
        -0x1et
        -0x20t
        -0xdt
        -0x18t
        -0x12t
        -0x13t
        -0x52t
        -0xdt
        -0xdt
        -0x14t
        -0x15t
        -0x56t
        -0x9t
        -0x14t
        -0x15t
        -0x5at
        -0x4bt
        -0x4bt
        -0x4ft
        -0x52t
        -0x58t
        -0x5at
        -0x47t
        -0x52t
        -0x4ct
        -0x4dt
        0x74t
        -0x43t
        0x72t
        -0x58t
        -0x5at
        -0x4et
        -0x56t
        -0x49t
        -0x5at
        0x72t
        -0x4et
        -0x4ct
        -0x47t
        -0x52t
        -0x4ct
        -0x4dt
        -0x4et
        -0x3ft
        -0x3ft
        -0x43t
        -0x46t
        -0x4ct
        -0x4et
        -0x3bt
        -0x46t
        -0x40t
        -0x41t
        -0x80t
        -0x37t
        0x7et
        -0x42t
        -0x3ft
        -0x7bt
        0x7et
        -0x4ct
        -0x4at
        -0x4et
        0x7et
        -0x79t
        -0x7ft
        -0x77t
        -0x59t
        -0x4at
        -0x4at
        -0x4et
        -0x51t
        -0x57t
        -0x59t
        -0x46t
        -0x51t
        -0x4bt
        -0x4ct
        0x75t
        -0x42t
        0x73t
        -0x4dt
        -0x4at
        0x7at
        0x73t
        -0x44t
        -0x46t
        -0x46t
        -0x65t
        -0x56t
        -0x56t
        -0x5at
        -0x5dt
        -0x63t
        -0x65t
        -0x52t
        -0x5dt
        -0x57t
        -0x58t
        0x69t
        -0x4et
        0x67t
        -0x55t
        -0x51t
        -0x5dt
        -0x63t
        -0x5bt
        -0x52t
        -0x5dt
        -0x59t
        -0x61t
        0x67t
        -0x52t
        -0x4et
        0x6dt
        -0x5ft
        0x7ct
        -0x70t
        0x7ft
        -0x7ct
        -0x76t
        0x4at
        0x4et
        -0x7et
        -0x75t
        -0x75t
        -0x7et
        -0x6at
        -0x7bt
        -0x76t
        -0x70t
        0x50t
        -0x7et
        -0x7ct
        0x54t
        -0x45t
        -0x31t
        -0x42t
        -0x3dt
        -0x37t
        -0x77t
        -0x45t
        -0x3at
        -0x45t
        -0x43t
        -0x21t
        -0xdt
        -0x1et
        -0x19t
        -0x13t
        -0x53t
        -0x21t
        -0x15t
        -0x10t
        -0x55t
        -0xbt
        -0x20t
        0x6bt
        0x7ft
        0x6et
        0x73t
        0x79t
        0x39t
        0x6ft
        0x6bt
        0x6dt
        0x3dt
        -0x6dt
        -0x59t
        -0x6at
        -0x65t
        -0x5ft
        0x61t
        -0x61t
        -0x5et
        0x66t
        -0x6dt
        0x5ft
        -0x62t
        -0x6dt
        -0x5at
        -0x61t
        -0x41t
        -0x2dt
        -0x3et
        -0x39t
        -0x33t
        -0x73t
        -0x35t
        -0x32t
        -0x3dt
        -0x3bt
        -0x44t
        -0x30t
        -0x41t
        -0x3ct
        -0x36t
        -0x76t
        -0x33t
        -0x44t
        -0x2et
        -0x5et
        -0x4at
        -0x5bt
        -0x56t
        -0x50t
        0x70t
        -0x49t
        -0x51t
        -0x5bt
        0x6ft
        -0x5bt
        -0x4bt
        -0x4ct
        -0x57t
        -0x43t
        -0x54t
        -0x4ft
        -0x49t
        0x77t
        -0x42t
        -0x4at
        -0x54t
        0x76t
        -0x54t
        -0x44t
        -0x45t
        0x76t
        -0x50t
        -0x54t
        0x6dt
        -0x7ft
        0x70t
        0x75t
        0x7bt
        0x3bt
        -0x7et
        0x7at
        0x70t
        0x3at
        0x70t
        -0x80t
        0x7ft
        0x3at
        0x74t
        0x70t
        0x47t
        0x7ct
        0x7et
        0x7bt
        0x72t
        0x75t
        0x78t
        0x71t
        0x49t
        0x78t
        0x6et
        0x7et
        -0x77t
        -0x78t
        -0x77t
        0x57t
        -0x20t
        -0x21t
        -0x20t
        -0x10t
        -0x7ct
        -0x7at
        -0x71t
        -0x7ct
        -0x2bt
        -0x29t
        -0x20t
        -0x1bt
        -0x6et
        -0x69t
        -0x68t
        -0x65t
        -0x6dt
        0x70t
        -0x5dt
        -0x62t
        -0x64t
        -0x7et
        -0x68t
        -0x57t
        -0x6ct
        0x4ft
        -0x5et
        -0x69t
        -0x62t
        -0x5ct
        -0x65t
        -0x6dt
        0x4ft
        -0x6ft
        -0x6ct
        0x4ft
        -0x61t
        -0x62t
        -0x5et
        -0x68t
        -0x5dt
        -0x68t
        -0x5bt
        -0x6ct
        0x65t
        0x6et
        0x65t
        0x72t
        -0x77t
        -0x6bt
        -0x70t
        -0x7ct
        0x43t
        -0x7ct
        -0x69t
        -0x6et
        -0x70t
        0x43t
        -0x74t
        -0x6at
        0x43t
        -0x70t
        -0x7ct
        -0x6ft
        -0x79t
        -0x7ct
        -0x69t
        -0x6et
        -0x6bt
        -0x64t
        -0x32t
        -0x3at
        -0x2bt
        -0x3et
        -0x64t
        -0x75t
        -0x63t
        -0x6bt
        -0x63t
        -0x73t
        -0x6et
        -0x6dt
        0x4at
        -0x75t
        -0x62t
        -0x67t
        -0x69t
        0x4at
        -0x6dt
        -0x63t
        0x4at
        -0x69t
        -0x75t
        -0x68t
        -0x72t
        -0x75t
        -0x62t
        -0x67t
        -0x64t
        -0x5dt
        -0x33t
        -0x37t
        -0x31t
        -0x38t
        -0x6ct
        -0x6at
        -0x7dt
        -0x6bt
        -0x3bt
        -0x4at
        -0x41t
        -0x4ct
        0x71t
        -0x4et
        -0x3bt
        -0x40t
        -0x42t
        0x71t
        -0x46t
        -0x3ct
        0x71t
        -0x42t
        -0x4et
        -0x41t
        -0x4bt
        -0x4et
        -0x3bt
        -0x40t
        -0x3dt
        -0x36t
        -0x30t
        -0x3ft
        -0x2ct
        -0x30t
        -0x27t
        -0x34t
        -0x39t
        -0x38t
        -0x4dt
        -0x5at
        -0x5ft
        -0x5et
        -0x54t
        0x6ct
        0x70t
        -0x5ct
        -0x53t
        -0x53t
        -0x34t
        -0x41t
        -0x46t
        -0x45t
        -0x3bt
        -0x7bt
        -0x49t
        -0x34t
        -0x47t
        -0xet
        -0x1bt
        -0x20t
        -0x1ft
        -0x15t
        -0x55t
        -0x1ct
        -0x1ft
        -0xet
        -0x21t
        -0x6dt
        -0x7at
        -0x7ft
        -0x7et
        -0x74t
        0x4ct
        -0x6bt
        0x4at
        -0x6dt
        -0x75t
        -0x7ft
        0x4bt
        -0x74t
        -0x75t
        0x4ft
        0x4bt
        -0x6dt
        -0x73t
        0x55t
        -0x56t
        -0x63t
        -0x68t
        -0x67t
        -0x5dt
        0x63t
        -0x54t
        0x61t
        -0x56t
        -0x5et
        -0x68t
        0x62t
        -0x5dt
        -0x5et
        0x66t
        0x62t
        -0x56t
        -0x5ct
        0x6dt
    .end array-data
.end method

.method public static A0K()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "vNU1Clptty9spXV3rmNWKqfECA0GCDno"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "yQl7wYGB6utTXxK398wXXYrAeYZNPLId"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "BVcq1q5Q"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "NihUY4HxpsM0GkJJgFchlTfxDOIJFYzw"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "lx4TwpHGLs68"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "XI1Xq2FkjwcQfgB5bw70GFmYpaxAyyjl"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "uRZmXRdJsodI"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Cygx2J1H2ENb6XLRYlHXnR1vUW4XHHOP"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    return-void
.end method

.method public static A0L(Lcom/facebook/ads/redexgen/X/IM;IIIIILcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;Lcom/facebook/ads/redexgen/X/Ck;I)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    move-object/from16 v4, p6

    move/from16 v14, p1

    .line 25345
    move/from16 v9, p2

    add-int/lit8 v0, v9, 0x8

    add-int/lit8 v0, v0, 0x8

    move-object/from16 v10, p0

    invoke-virtual {v10, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 25346
    const/16 v0, 0x10

    invoke-virtual {v10, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 25347
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v21

    .line 25348
    .local p0, "width":I
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v22

    .line 25349
    .local v0, "height":I
    const/16 v18, 0x0

    .line 25350
    .local v4, "pixelWidthHeightRatioFromPasp":Z
    const/high16 v17, 0x3f800000    # 1.0f

    .line 25351
    .local v3, "pixelWidthHeightRatio":F
    const/16 v0, 0x32

    invoke-virtual {v10, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 25352
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v7

    .line 25353
    .local p8, "childPosition":I
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0R:I

    move-object/from16 v3, p7

    move/from16 v8, p3

    if-ne v14, v0, :cond_1

    .line 25354
    invoke-static {v10, v9, v8}, Lcom/facebook/ads/redexgen/X/Cm;->A09(Lcom/facebook/ads/redexgen/X/IM;II)Landroid/util/Pair;

    move-result-object v2

    .line 25355
    .local v10, "sampleEntryEncryptionData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/TrackEncryptionBox;>;"
    if-eqz v2, :cond_0

    .line 25356
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 25357
    .end local v0    # "height":I
    .local v9, "atomType":I
    if-nez v4, :cond_2

    .line 25358
    const/4 v4, 0x0

    .line 25359
    .end local v2
    .local v8, "drmInitData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
    :goto_0
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/Ck;->A03:[Lcom/facebook/ads/redexgen/X/D3;

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/D3;

    aput-object v0, v1, p8

    .line 25360
    :cond_0
    invoke-virtual {v10, v7}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 25361
    .end local v0
    .end local v2
    .restart local v8    # "drmInitData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
    .local v0, "atomType":I
    :cond_1
    const/4 v5, 0x0

    .line 25362
    .local v10, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v0, 0x0

    .line 25363
    .local v9, "mimeType":Ljava/lang/String;
    const/16 p2, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v1, 0x8

    if-eq v2, v1, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 25364
    :cond_2
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/D3;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/D3;->A02:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;->A03(Ljava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    move-result-object v4

    goto :goto_0

    .line 25365
    .local v8, "projectionData":[B
    :cond_3
    sget-object v6, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v2, "nt1AbbZdLf7H"

    const/4 v1, 0x4

    aput-object v2, v6, v1

    const-string v2, "te59XVvfeUPr"

    const/4 v1, 0x6

    aput-object v2, v6, v1

    const/16 p3, -0x1

    .line 25366
    .end local v4    # "pixelWidthHeightRatioFromPasp":Z
    .end local v3    # "pixelWidthHeightRatio":F
    .end local p8    # "childPosition":I
    .end local v10    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v9    # "mimeType":Ljava/lang/String;
    .end local v8    # "projectionData":[B
    .local v0, "childPosition":I
    .local v7, "pixelWidthHeightRatioFromPasp":Z
    .local v0, "pixelWidthHeightRatio":F
    .local v14, "stereoMode":I
    .local v2, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v0, "mimeType":Ljava/lang/String;
    .local v0, "projectionData":[B
    :goto_1
    sub-int v1, v7, v9

    if-ge v1, v8, :cond_4

    .line 25367
    invoke-virtual {v10, v7}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 25368
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v11

    .line 25369
    .local v4, "childStartPosition":I
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v6

    .line 25370
    .local v3, "childAtomSize":I
    if-nez v6, :cond_5

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v1

    sub-int/2addr v1, v9

    if-ne v1, v8, :cond_5

    .line 25371
    :cond_4
    if-nez v0, :cond_1a

    .line 25372
    return-void

    .line 25373
    :cond_5
    const/16 v16, 0x0

    const/4 v15, 0x1

    if-lez v6, :cond_19

    const/4 v2, 0x1

    :goto_2
    const/16 v13, 0x23e

    const/16 v12, 0x20

    const/16 v1, 0x2d

    invoke-static {v13, v12, v1}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/facebook/ads/redexgen/X/Hx;->A05(ZLjava/lang/Object;)V

    .line 25374
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v2

    .line 25375
    .local v9, "childAtomType":I
    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A08:I

    if-ne v2, v1, :cond_8

    .line 25376
    if-nez v0, :cond_6

    const/16 v16, 0x1

    :cond_6
    invoke-static/range {v16 .. v16}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 25377
    const/16 v2, 0x2c6

    const/16 v1, 0x9

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    .line 25378
    add-int/lit8 v1, v11, 0x8

    invoke-virtual {v10, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 25379
    invoke-static {v10}, Lcom/facebook/ads/redexgen/X/Ie;->A00(Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/Ie;

    move-result-object v2

    .line 25380
    .local p8, "avcConfig":Lcom/facebook/ads/redexgen/X/Ie;
    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/Ie;->A04:Ljava/util/List;

    .line 25381
    .end local v2    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v10    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget v1, v2, Lcom/facebook/ads/redexgen/X/Ie;->A02:I

    iput v1, v3, Lcom/facebook/ads/redexgen/X/Ck;->A00:I

    .line 25382
    if-nez v18, :cond_7

    .line 25383
    iget v1, v2, Lcom/facebook/ads/redexgen/X/Ie;->A00:F

    move/from16 v17, v1

    .line 25384
    .end local p8    # "avcConfig":Lcom/facebook/ads/redexgen/X/Ie;
    .end local v4    # "childStartPosition":I
    :cond_7
    :goto_3
    add-int/2addr v7, v6

    .line 25385
    .end local v4
    .end local v3    # "childAtomSize":I
    .end local v9    # "childAtomType":I
    goto :goto_1

    .line 25386
    .end local v10    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v2    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_8
    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A0Y:I

    if-ne v2, v1, :cond_a

    .line 25387
    if-nez v0, :cond_9

    const/16 v16, 0x1

    :cond_9
    invoke-static/range {v16 .. v16}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 25388
    const/16 v2, 0x2cf

    const/16 v1, 0xa

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    .line 25389
    add-int/lit8 v1, v11, 0x8

    invoke-virtual {v10, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 25390
    invoke-static {v10}, Lcom/facebook/ads/redexgen/X/Ik;->A00(Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/Ik;

    move-result-object v1

    .line 25391
    .local p8, "hevcConfig":Lcom/facebook/ads/redexgen/X/Ik;
    iget-object v5, v1, Lcom/facebook/ads/redexgen/X/Ik;->A01:Ljava/util/List;

    .line 25392
    .end local v2    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v10    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget v1, v1, Lcom/facebook/ads/redexgen/X/Ik;->A00:I

    iput v1, v3, Lcom/facebook/ads/redexgen/X/Ck;->A00:I

    .line 25393
    .end local p8    # "hevcConfig":Lcom/facebook/ads/redexgen/X/Ik;
    goto :goto_3

    .end local v10    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v2    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_a
    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A1U:I

    if-ne v2, v1, :cond_d

    .line 25394
    if-nez v0, :cond_b

    const/16 v16, 0x1

    :cond_b
    invoke-static/range {v16 .. v16}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 25395
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1S:I

    if-ne v14, v0, :cond_c

    const/16 v2, 0x2d9

    const/16 v1, 0x13

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_c
    const/16 v2, 0x2ec

    const/16 v1, 0x13

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 25396
    :cond_d
    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A0D:I

    if-ne v2, v1, :cond_10

    .line 25397
    if-nez v0, :cond_e

    const/16 v16, 0x1

    :cond_e
    invoke-static/range {v16 .. v16}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 25398
    const/16 v12, 0x2bc

    const/16 v11, 0xa

    const/16 v2, 0x3b

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_f

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_f
    sget-object v13, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "qKPn33WXRD1J"

    const/4 v0, 0x4

    aput-object v1, v13, v0

    const-string v1, "UtAkzKHIBavs"

    const/4 v0, 0x6

    aput-object v1, v13, v0

    invoke-static {v12, v11, v2}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 25399
    :cond_10
    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A0S:I

    if-ne v2, v1, :cond_12

    .line 25400
    if-nez v0, :cond_11

    const/16 v16, 0x1

    :cond_11
    invoke-static/range {v16 .. v16}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 25401
    invoke-static {v10, v11}, Lcom/facebook/ads/redexgen/X/Cm;->A07(Lcom/facebook/ads/redexgen/X/IM;I)Landroid/util/Pair;

    move-result-object v1

    .line 25402
    .local p8, "mimeTypeAndInitializationData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 25403
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 25404
    .end local p8    # "mimeTypeAndInitializationData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    goto/16 :goto_3

    :cond_12
    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A0p:I

    if-ne v2, v1, :cond_13

    .line 25405
    invoke-static {v10, v11}, Lcom/facebook/ads/redexgen/X/Cm;->A00(Lcom/facebook/ads/redexgen/X/IM;I)F

    move-result v17

    .line 25406
    const/16 v18, 0x1

    .end local v7    # "pixelWidthHeightRatioFromPasp":Z
    .local p8, "pixelWidthHeightRatioFromPasp":Z
    goto/16 :goto_3

    .line 25407
    .end local p8    # "pixelWidthHeightRatioFromPasp":Z
    .restart local v7    # "pixelWidthHeightRatioFromPasp":Z
    :cond_13
    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A1F:I

    if-ne v2, v1, :cond_14

    .line 25408
    invoke-static {v10, v11, v6}, Lcom/facebook/ads/redexgen/X/Cm;->A0P(Lcom/facebook/ads/redexgen/X/IM;II)[B

    move-result-object p2

    goto/16 :goto_3

    .line 25409
    :cond_14
    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A15:I

    if-ne v2, v1, :cond_7

    .line 25410
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v1

    .line 25411
    .local p8, "version":I
    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 25412
    if-nez v1, :cond_7

    .line 25413
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v2

    .line 25414
    .local v4, "layout":I
    if-eqz v2, :cond_18

    if-eq v2, v15, :cond_17

    const/4 v1, 0x2

    if-eq v2, v1, :cond_16

    if-eq v2, v11, :cond_15

    goto/16 :goto_3

    .line 25415
    :cond_15
    const/16 p3, 0x3

    .line 25416
    goto/16 :goto_3

    .line 25417
    :cond_16
    const/16 p3, 0x2

    .line 25418
    goto/16 :goto_3

    .line 25419
    :cond_17
    const/16 p3, 0x1

    .line 25420
    goto/16 :goto_3

    .line 25421
    :cond_18
    const/16 p3, 0x0

    goto/16 :goto_3

    .line 25422
    :cond_19
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 25423
    :cond_1a
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0x0

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/high16 v23, -0x40800000    # -1.0f

    const/16 p4, 0x0

    .line 25424
    .end local v0    # "projectionData":[B
    .local v4, "childPosition":I
    .end local v0
    .local v1, "atomType":I
    move/from16 p0, p5

    move-object/from16 v24, v5

    move/from16 p1, v17

    move-object/from16 p5, v4

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v30}, Lcom/facebook/ads/internal/exoplayer2/Format;->A04(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/facebook/ads/internal/exoplayer2/video/ColorInfo;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/Ck;->A02:Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 25425
    return-void
.end method

.method public static A0M(Lcom/facebook/ads/redexgen/X/IM;IIIILjava/lang/String;Lcom/facebook/ads/redexgen/X/Ck;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 25426
    add-int/lit8 v0, p2, 0x8

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 25427
    const/4 v13, 0x0

    .line 25428
    .local p3, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const-wide v11, 0x7fffffffffffffffL

    .line 25429
    .local p4, "subsampleOffsetUs":J
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A02:I

    move-object/from16 v1, p6

    if-ne p1, v0, :cond_0

    .line 25430
    const/16 v3, 0x127

    const/16 v2, 0x14

    const/16 v0, 0x7d

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v4

    .line 25431
    .local v1, "mimeType":Ljava/lang/String;
    :goto_0
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    .line 25432
    move-object/from16 v8, p5

    invoke-static/range {v3 .. v13}, Lcom/facebook/ads/internal/exoplayer2/Format;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;JLjava/util/List;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/Ck;->A02:Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 25433
    return-void

    .line 25434
    .end local v1    # "mimeType":Ljava/lang/String;
    :cond_0
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1O:I

    if-ne p1, v0, :cond_1

    .line 25435
    const/16 v3, 0x184

    const/16 v2, 0x1c

    const/16 v0, 0x38

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v4

    .line 25436
    .restart local v1    # "mimeType":Ljava/lang/String;
    add-int/lit8 v0, p3, -0x8

    add-int/lit8 v3, v0, -0x8

    .line 25437
    .local p0, "sampleDescriptionLength":I
    new-array v2, v3, [B

    .line 25438
    .local p1, "sampleDescriptionData":[B
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v3}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 25439
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    .line 25440
    .end local p0    # "sampleDescriptionLength":I
    .end local p1    # "sampleDescriptionData":[B
    goto :goto_0

    .end local v1    # "mimeType":Ljava/lang/String;
    :cond_1
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1W:I

    if-ne p1, v0, :cond_2

    .line 25441
    const/16 v3, 0x16f

    const/16 v2, 0x15

    const/16 v0, 0x44

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v4

    .restart local v1    # "mimeType":Ljava/lang/String;
    goto :goto_0

    .line 25442
    .end local v1    # "mimeType":Ljava/lang/String;
    :cond_2
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A18:I

    if-ne p1, v0, :cond_3

    .line 25443
    const/16 v3, 0x127

    const/16 v2, 0x14

    const/16 v0, 0x7d

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v4

    .line 25444
    .restart local v1    # "mimeType":Ljava/lang/String;
    const-wide/16 v11, 0x0

    goto :goto_0

    .line 25445
    .end local v1    # "mimeType":Ljava/lang/String;
    :cond_3
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A09:I

    if-ne p1, v0, :cond_4

    .line 25446
    const/16 v3, 0x156

    const/16 v2, 0x19

    const/16 v0, 0x4f

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v4

    .line 25447
    .restart local v1    # "mimeType":Ljava/lang/String;
    const/4 v0, 0x1

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Ck;->A01:I

    goto :goto_0

    .line 25448
    .end local v1    # "mimeType":Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static A0N(Lcom/facebook/ads/redexgen/X/IM;IIIILjava/lang/String;ZLcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;Lcom/facebook/ads/redexgen/X/Ck;I)V
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    move-object/from16 v3, p7

    move/from16 v6, p1

    .line 25449
    move/from16 v7, p2

    add-int/lit8 v1, v7, 0x8

    const/16 v0, 0x8

    add-int/2addr v1, v0

    move-object/from16 v5, p0

    invoke-virtual {v5, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 25450
    const/4 v4, 0x0

    .line 25451
    .local p4, "quickTimeSoundDescriptionVersion":I
    const/4 v8, 0x6

    if-eqz p6, :cond_1c

    .line 25452
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v4

    .line 25453
    invoke-virtual {v5, v8}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 25454
    .end local p4    # "quickTimeSoundDescriptionVersion":I
    .local v15, "quickTimeSoundDescriptionVersion":I
    :goto_0
    const/4 v2, 0x2

    const/16 v1, 0x10

    const/4 v0, 0x1

    if-eqz v4, :cond_0

    if-ne v4, v0, :cond_1b

    .line 25455
    :cond_0
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v21

    .line 25456
    .local v15, "channelCount":I
    invoke-virtual {v5, v8}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 25457
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A0G()I

    move-result v14

    .line 25458
    .local p6, "sampleRate":I
    if-ne v4, v0, :cond_1

    .line 25459
    invoke-virtual {v5, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 25460
    .end local v15    # "channelCount":I
    .restart local p4    # "quickTimeSoundDescriptionVersion":I
    :cond_1
    :goto_1
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v4

    .line 25461
    .local v15, "childPosition":I
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0Q:I

    const/16 v24, 0x0

    move-object/from16 v2, p8

    move/from16 v16, p3

    if-ne v6, v0, :cond_3

    .line 25462
    move/from16 v0, v16

    invoke-static {v5, v7, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A09(Lcom/facebook/ads/redexgen/X/IM;II)Landroid/util/Pair;

    move-result-object v9

    .line 25463
    .local v3, "sampleEntryEncryptionData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/TrackEncryptionBox;>;"
    if-eqz v9, :cond_2

    .line 25464
    iget-object v0, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 25465
    .end local v0
    .local v2, "atomType":I
    if-nez v3, :cond_14

    .line 25466
    move-object/from16 v3, v24

    .line 25467
    .end local v3    # "sampleEntryEncryptionData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/TrackEncryptionBox;>;"
    .local v16, "drmInitData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
    :goto_2
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Ck;->A03:[Lcom/facebook/ads/redexgen/X/D3;

    iget-object v0, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/D3;

    aput-object v0, v1, p9

    .line 25468
    :cond_2
    invoke-virtual {v5, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 25469
    .end local v0
    .end local v3
    .local p9, "drmInitData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
    .local v5, "atomType":I
    :cond_3
    const/4 v0, 0x0

    .line 25470
    .local v16, "mimeType":Ljava/lang/String;
    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A04:I

    if-ne v6, v1, :cond_9

    .line 25471
    const/16 v6, 0x1aa

    const/16 v1, 0x9

    const/16 v0, 0x1f

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    .line 25472
    :cond_4
    :goto_3
    const/4 v1, 0x0

    .line 25473
    .end local v16    # "mimeType":Ljava/lang/String;
    .end local p4    # "quickTimeSoundDescriptionVersion":I
    .end local v15    # "childPosition":I
    .end local p6    # "sampleRate":I
    .local v3, "mimeType":Ljava/lang/String;
    .local v2, "childPosition":I
    .local v0, "channelCount":I
    .local v1, "sampleRate":I
    .local v4, "initializationData":[B
    :goto_4
    sub-int v8, v4, v7

    const/4 v13, -0x1

    move-object/from16 v15, p5

    move/from16 v6, v16

    if-ge v8, v6, :cond_1d

    .line 25474
    invoke-virtual {v5, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 25475
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v6

    .line 25476
    .local p6, "childAtomSize":I
    const/4 v12, 0x0

    if-lez v6, :cond_8

    const/4 v11, 0x1

    :goto_5
    const/16 v10, 0x23e

    const/16 v9, 0x20

    const/16 v8, 0x2d

    invoke-static {v10, v9, v8}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Lcom/facebook/ads/redexgen/X/Hx;->A05(ZLjava/lang/Object;)V

    .line 25477
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v9

    .line 25478
    .local v7, "childAtomType":I
    sget v8, Lcom/facebook/ads/redexgen/X/Ch;->A0S:I

    if-eq v9, v8, :cond_5

    if-eqz p6, :cond_15

    sget v8, Lcom/facebook/ads/redexgen/X/Ch;->A1V:I

    if-ne v9, v8, :cond_15

    .line 25479
    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v2    # "childPosition":I
    .end local p9    # "drmInitData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
    .end local v5    # "atomType":I
    .end local v7    # "childAtomType":I
    .restart local v15    # "childPosition":I
    .local v15, "childPosition":I
    .restart local v4    # "initializationData":[B
    .restart local v4    # "initializationData":[B
    .restart local v1    # "sampleRate":I
    .restart local v21
    :cond_5
    sget v8, Lcom/facebook/ads/redexgen/X/Ch;->A0S:I

    if-ne v9, v8, :cond_7

    .line 25480
    move v8, v4

    .line 25481
    .local v16, "esdsAtomPosition":I
    :goto_6
    if-eq v8, v13, :cond_6

    .line 25482
    invoke-static {v5, v8}, Lcom/facebook/ads/redexgen/X/Cm;->A07(Lcom/facebook/ads/redexgen/X/IM;I)Landroid/util/Pair;

    move-result-object v1

    .line 25483
    .local p4, "mimeTypeAndInitializationData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 25484
    .end local v21
    .restart local v3    # "mimeType":Ljava/lang/String;
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [B

    .line 25485
    const/16 v10, 0x1d3

    const/16 v9, 0xf

    const/16 v8, 0x30

    invoke-static {v10, v9, v8}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 25486
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/I1;->A03([B)Landroid/util/Pair;

    move-result-object v9

    .line 25487
    .local v2, "audioSpecificConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v8, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 25488
    iget-object v8, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 25489
    :cond_6
    :goto_7
    add-int/2addr v4, v6

    .line 25490
    .end local v15    # "childPosition":I
    .end local p6    # "childAtomSize":I
    .end local v15
    .local v2, "childPosition":I
    goto :goto_4

    .line 25491
    :cond_7
    invoke-static {v5, v4, v6}, Lcom/facebook/ads/redexgen/X/Cm;->A03(Lcom/facebook/ads/redexgen/X/IM;II)I

    move-result v8

    goto :goto_6

    .line 25492
    :cond_8
    const/4 v11, 0x0

    goto :goto_5

    .line 25493
    :cond_9
    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A0M:I

    if-ne v6, v1, :cond_a

    .line 25494
    const/16 v6, 0x1c9

    const/16 v1, 0xa

    const/16 v0, 0x8

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 25495
    :cond_a
    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A0I:I

    if-ne v6, v1, :cond_b

    .line 25496
    const/16 v6, 0x1f5

    const/16 v1, 0xd

    const/16 v0, 0x3f

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 25497
    :cond_b
    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A0K:I

    if-eq v6, v1, :cond_c

    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A0L:I

    if-ne v6, v1, :cond_d

    .line 25498
    :cond_c
    const/16 v6, 0x202

    const/16 v1, 0x10

    const/16 v0, 0x46

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 25499
    :cond_d
    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A0J:I

    if-ne v6, v1, :cond_e

    .line 25500
    const/16 v6, 0x212

    const/16 v1, 0x1c

    const/16 v0, 0xa

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 25501
    :cond_e
    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A0v:I

    if-ne v6, v1, :cond_f

    .line 25502
    const/16 v6, 0x1a0

    const/16 v1, 0xa

    const/16 v0, 0x19

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 25503
    :cond_f
    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A0w:I

    if-ne v6, v1, :cond_10

    .line 25504
    const/16 v6, 0x1bd

    const/16 v1, 0xc

    const/16 v0, 0x7c

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 25505
    :cond_10
    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A0a:I

    if-eq v6, v1, :cond_11

    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A14:I

    if-ne v6, v1, :cond_12

    .line 25506
    :cond_11
    const/16 v6, 0x1ec

    const/16 v1, 0x9

    const/16 v0, 0x59

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 25507
    :cond_12
    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A03:I

    if-ne v6, v1, :cond_13

    .line 25508
    const/16 v6, 0x1e2

    const/16 v1, 0xa

    const/16 v0, 0x5c

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 25509
    :cond_13
    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A05:I

    if-ne v6, v1, :cond_4

    .line 25510
    const/16 v6, 0x1b3

    const/16 v1, 0xa

    const/16 v0, 0x58

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 25511
    :cond_14
    iget-object v10, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    sget-object v8, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v8, v0

    const/4 v0, 0x7

    aget-object v8, v8, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1a

    goto :goto_8

    .line 25512
    :cond_15
    sget v8, Lcom/facebook/ads/redexgen/X/Ch;->A0E:I

    if-ne v9, v8, :cond_17

    .line 25513
    add-int/lit8 v10, v4, 0x8

    sget-object v9, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v8, 0x3

    aget-object v9, v9, v8

    const/16 v8, 0x8

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v8, 0x70

    if-eq v9, v8, :cond_16

    :goto_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_16
    sget-object v11, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v9, "HYOwJoQ2L6umAwimTza29CMlFS3ISf2h"

    const/4 v8, 0x0

    aput-object v9, v11, v8

    const-string v9, "FglgDO1LYQ1bVlWfctdCtrgF4dzfBOT4"

    const/4 v8, 0x5

    aput-object v9, v11, v8

    invoke-virtual {v5, v10}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 25514
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v15, v3}, Lcom/facebook/ads/redexgen/X/Ao;->A07(Lcom/facebook/ads/redexgen/X/IM;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v8

    iput-object v8, v2, Lcom/facebook/ads/redexgen/X/Ck;->A02:Lcom/facebook/ads/internal/exoplayer2/Format;

    goto/16 :goto_7

    .line 25515
    :cond_17
    sget v8, Lcom/facebook/ads/redexgen/X/Ch;->A0H:I

    if-ne v9, v8, :cond_18

    .line 25516
    add-int/lit8 v8, v4, 0x8

    invoke-virtual {v5, v8}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 25517
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v15, v3}, Lcom/facebook/ads/redexgen/X/Ao;->A08(Lcom/facebook/ads/redexgen/X/IM;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v8

    iput-object v8, v2, Lcom/facebook/ads/redexgen/X/Ck;->A02:Lcom/facebook/ads/internal/exoplayer2/Format;

    goto/16 :goto_7

    .line 25518
    :cond_18
    sget v8, Lcom/facebook/ads/redexgen/X/Ch;->A0G:I

    if-ne v9, v8, :cond_19

    .line 25519
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    const/16 v27, 0x0

    const/16 v28, -0x1

    const/16 v29, -0x1

    const/16 p0, 0x0

    const/16 p2, 0x0

    .line 25520
    move-object/from16 v26, v0

    .end local p6
    .local v0, "childAtomSize":I
    .end local v3    # "mimeType":Ljava/lang/String;
    .local v21, "mimeType":Ljava/lang/String;
    .end local v2    # "childPosition":I
    .local v14, "childPosition":I
    .end local p9
    .local v4, "drmInitData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
    .end local v5
    .local v4, "atomType":I
    .end local v7
    .local v21, "childAtomType":I
    .end local v15
    .local v1, "quickTimeSoundDescriptionVersion":I
    move-object/from16 p3, v15

    move/from16 v30, v21

    move/from16 v31, v14

    move-object/from16 p1, v3

    invoke-static/range {v25 .. v35}, Lcom/facebook/ads/internal/exoplayer2/Format;->A07(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v8

    iput-object v8, v2, Lcom/facebook/ads/redexgen/X/Ck;->A02:Lcom/facebook/ads/internal/exoplayer2/Format;

    goto/16 :goto_7

    .line 25521
    .end local v4    # "atomType":I
    .end local v4
    .end local v1    # "quickTimeSoundDescriptionVersion":I
    .end local v0    # "childAtomSize":I
    .end local v21    # "childAtomType":I
    .end local v14    # "childPosition":I
    .end local v21
    .restart local p6    # "childAtomSize":I
    .restart local v3    # "mimeType":Ljava/lang/String;
    .restart local v2    # "childPosition":I
    .restart local p9    # "drmInitData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
    .restart local v5    # "atomType":I
    .restart local v7    # "childAtomType":I
    .restart local v15    # "childPosition":I
    .end local p6    # "childAtomSize":I
    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v2    # "childPosition":I
    .end local p9    # "drmInitData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
    .end local v5    # "atomType":I
    .end local v7    # "childAtomType":I
    .end local v15    # "childPosition":I
    .restart local v4    # "atomType":I
    .restart local v4    # "atomType":I
    .restart local v1    # "quickTimeSoundDescriptionVersion":I
    .restart local v0    # "childAtomSize":I
    .restart local v21    # "childAtomType":I
    .restart local v14    # "childPosition":I
    .restart local v21    # "childAtomType":I
    :cond_19
    sget v8, Lcom/facebook/ads/redexgen/X/Ch;->A05:I

    .end local v21    # "childAtomType":I
    .local v15, "childAtomType":I
    if-ne v9, v8, :cond_6

    .line 25522
    .end local v0    # "childAtomSize":I
    .restart local p6    # "childAtomSize":I
    new-array v1, v6, [B

    .line 25523
    .end local v4    # "atomType":I
    .local p4, "initializationData":[B
    .end local v14    # "childPosition":I
    .local v15, "childPosition":I
    invoke-virtual {v5, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 25524
    invoke-virtual {v5, v1, v12, v6}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    goto/16 :goto_7

    .line 25525
    :cond_1a
    sget-object v8, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "pOqul1QRpDZUg5bU2yQQaQp61y123VtO"

    const/4 v0, 0x3

    aput-object v1, v8, v0

    check-cast v10, Lcom/facebook/ads/redexgen/X/D3;

    iget-object v0, v10, Lcom/facebook/ads/redexgen/X/D3;->A02:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;->A03(Ljava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    move-result-object v3

    goto/16 :goto_2

    .line 25526
    :cond_1b
    if-ne v4, v2, :cond_21

    .line 25527
    invoke-virtual {v5, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 25528
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A04()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v14, v0

    .line 25529
    .local v15, "sampleRate":I
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v21

    .line 25530
    .local p4, "channelCount":I
    const/16 v0, 0x14

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    goto/16 :goto_1

    .line 25531
    :cond_1c
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    goto/16 :goto_0

    .line 25532
    .end local v4
    .end local v4
    .end local v1    # "quickTimeSoundDescriptionVersion":I
    .restart local p9    # "drmInitData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
    .restart local v5    # "atomType":I
    .local v15, "quickTimeSoundDescriptionVersion":I
    .end local v3
    .end local v2
    .end local p9    # "drmInitData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
    .end local v5    # "atomType":I
    .local v15, "childPosition":I
    .restart local v4    # "atomType":I
    .restart local v4    # "atomType":I
    .restart local v1    # "quickTimeSoundDescriptionVersion":I
    .restart local v21    # "childAtomType":I
    :cond_1d
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/Ck;->A02:Lcom/facebook/ads/internal/exoplayer2/Format;

    if-nez v4, :cond_1e

    .end local v21    # "childAtomType":I
    .local v16, "mimeType":Ljava/lang/String;
    if-eqz v0, :cond_1e

    .line 25533
    const/16 v6, 0x1ec

    const/16 v5, 0x9

    const/16 v4, 0x59

    invoke-static {v6, v5, v4}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    const/16 v23, 0x2

    .line 25534
    .local v5, "pcmEncoding":I
    :goto_9
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0x0

    const/16 v19, -0x1

    const/16 v20, -0x1

    .line 25535
    if-nez v1, :cond_1f

    :goto_a
    const/16 v26, 0x0

    .line 25536
    .end local v16    # "mimeType":Ljava/lang/String;
    .local v8, "mimeType":Ljava/lang/String;
    .end local v15    # "childPosition":I
    .local v2, "childPosition":I
    move-object/from16 v25, v3

    move-object/from16 v27, v15

    move/from16 v22, v14

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v27}, Lcom/facebook/ads/internal/exoplayer2/Format;->A06(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Ck;->A02:Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 25537
    .end local v15
    .end local v21
    .restart local v8    # "mimeType":Ljava/lang/String;
    .restart local v2    # "childPosition":I
    :cond_1e
    return-void

    .line 25538
    :cond_1f
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v24

    goto :goto_a

    .line 25539
    :cond_20
    const/16 v23, -0x1

    goto :goto_9

    .line 25540
    .end local p4    # "channelCount":I
    .end local v15
    :cond_21
    return-void
.end method

.method public static A0O([JJJJ)Z
    .locals 6

    .line 25541
    array-length v3, p0

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    .line 25542
    .local p0, "lastIndex":I
    const/4 v2, 0x3

    const/4 v1, 0x0

    invoke-static {v2, v1, v3}, Lcom/facebook/ads/redexgen/X/Ic;->A06(III)I

    move-result v4

    .line 25543
    .local v4, "latestDelayIndex":I
    array-length v0, p0

    sub-int/2addr v0, v2

    .line 25544
    invoke-static {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/Ic;->A06(III)I

    move-result v3

    .line 25545
    .local v2, "earliestPaddingIndex":I
    aget-wide v1, p0, v1

    cmp-long v0, v1, p3

    if-gtz v0, :cond_0

    aget-wide v1, p0, v4

    cmp-long v0, p3, v1

    if-gez v0, :cond_0

    aget-wide v1, p0, v3

    cmp-long v0, v1, p5

    if-gez v0, :cond_0

    cmp-long v0, p5, p1

    if-gtz v0, :cond_0

    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static A0P(Lcom/facebook/ads/redexgen/X/IM;II)[B
    .locals 4

    .line 25546
    add-int/lit8 v3, p1, 0x8

    .line 25547
    .local p0, "childPosition":I
    :goto_0
    sub-int v0, v3, p1

    if-ge v0, p2, :cond_1

    .line 25548
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 25549
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v2

    .line 25550
    .local p1, "childAtomSize":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v1

    .line 25551
    .local p2, "childAtomType":I
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0q:I

    if-ne v1, v0, :cond_0

    .line 25552
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    add-int v0, v3, v2

    invoke-static {v1, v3, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0

    .line 25553
    :cond_0
    add-int/2addr v3, v2

    .line 25554
    .end local p1    # "childAtomSize":I
    .end local p2    # "childAtomType":I
    goto :goto_0

    .line 25555
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
