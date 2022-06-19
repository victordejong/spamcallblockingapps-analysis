.class public final Lcom/facebook/ads/redexgen/X/Cm;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/VO;,
        Lcom/facebook/ads/redexgen/X/VP;,
        Lcom/facebook/ads/redexgen/X/Cj;,
        Lcom/facebook/ads/redexgen/X/Ck;,
        Lcom/facebook/ads/redexgen/X/Cl;,
        Lcom/facebook/ads/redexgen/X/Ci;,
        Lcom/facebook/ads/redexgen/X/VN;
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

    .line 24859
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Cm;->A0K()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Cm;->A0J()V

    const/16 v2, 0x2b8

    const/4 v1, 0x4

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Cm;->A08:I

    .line 24860
    const/16 v2, 0x296

    const/4 v1, 0x4

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Cm;->A05:I

    .line 24861
    const/16 v2, 0x2b4

    const/4 v1, 0x4

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Cm;->A07:I

    .line 24862
    const/16 v2, 0x27c

    const/4 v1, 0x4

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Cm;->A04:I

    .line 24863
    const/16 v2, 0x29a

    const/4 v1, 0x4

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Cm;->A06:I

    .line 24864
    const/16 v2, 0x25e

    const/4 v1, 0x4

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Cm;->A02:I

    .line 24865
    const/16 v2, 0x278

    const/4 v1, 0x4

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Cm;->A03:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24866
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24867
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/IM;I)F
    .locals 2

    .line 24868
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 24869
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v1

    .line 24870
    .local p0, "hSpacing":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v0

    .line 24871
    .local p1, "vSpacing":I
    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/IM;)I
    .locals 3

    .line 24872
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v2

    .line 24873
    .local p0, "currentByte":I
    and-int/lit8 v1, v2, 0x7f

    .line 24874
    .local v2, "size":I
    :goto_0
    and-int/lit16 v2, v2, 0x80

    const/16 v0, 0x80

    if-ne v2, v0, :cond_0

    .line 24875
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v2

    .line 24876
    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v0, v2, 0x7f

    or-int/2addr v1, v0

    goto :goto_0

    .line 24877
    :cond_0
    return v1
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/IM;)I
    .locals 4

    .line 24878
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 24879
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result p0

    .line 24880
    .local p0, "trackType":I
    sget v0, Lcom/facebook/ads/redexgen/X/Cm;->A05:I

    if-ne p0, v0, :cond_0

    .line 24881
    const/4 v0, 0x1

    return v0

    .line 24882
    :cond_0
    sget v0, Lcom/facebook/ads/redexgen/X/Cm;->A08:I

    if-ne p0, v0, :cond_1

    .line 24883
    const/4 v0, 0x2

    return v0

    .line 24884
    :cond_1
    sget v0, Lcom/facebook/ads/redexgen/X/Cm;->A07:I

    if-eq p0, v0, :cond_2

    sget v0, Lcom/facebook/ads/redexgen/X/Cm;->A04:I

    if-eq p0, v0, :cond_2

    sget v3, Lcom/facebook/ads/redexgen/X/Cm;->A06:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "W2rsTfMdCE729hpfdymkXS"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eq p0, v3, :cond_2

    sget v3, Lcom/facebook/ads/redexgen/X/Cm;->A02:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "YzUKc0DSVL"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ne p0, v3, :cond_3

    .line 24885
    :cond_2
    const/4 v0, 0x3

    return v0

    .line 24886
    :cond_3
    sget v0, Lcom/facebook/ads/redexgen/X/Cm;->A03:I

    if-ne p0, v0, :cond_4

    .line 24887
    const/4 v0, 0x4

    return v0

    .line 24888
    :cond_4
    const/4 v0, -0x1

    return v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/IM;II)I
    .locals 6

    .line 24889
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v5

    .line 24890
    .local p0, "childAtomPosition":I
    :goto_0
    sub-int v0, v5, p1

    if-ge v0, p2, :cond_2

    .line 24891
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 24892
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v4

    .line 24893
    .local p1, "childAtomSize":I
    if-lez v4, :cond_1

    const/4 v3, 0x1

    :goto_1
    const/16 v2, 0x23e

    const/16 v1, 0x20

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A05(ZLjava/lang/Object;)V

    .line 24894
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v1

    .line 24895
    .local p2, "childType":I
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0T:I

    if-ne v1, v0, :cond_0

    .line 24896
    return v5

    .line 24897
    :cond_0
    add-int/2addr v5, v4

    .line 24898
    .end local p1    # "childAtomSize":I
    .end local p2    # "childType":I
    goto :goto_0

    .line 24899
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 24900
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/IM;)J
    .locals 2

    .line 24901
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 24902
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v0

    .line 24903
    .local v1, "fullAtom":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ch;->A01(I)I

    move-result v0

    .line 24904
    .local v0, "version":I
    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 24905
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0N()J

    move-result-wide v0

    return-wide v0

    .line 24906
    :cond_0
    const/16 v1, 0x10

    goto :goto_0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/VR;)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/VR;",
            ")",
            "Landroid/util/Pair<",
            "[J[J>;"
        }
    .end annotation

    .line 24907
    if-eqz p0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0P:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/VR;->A08(I)Lcom/facebook/ads/redexgen/X/VQ;

    move-result-object v0

    .local v0, "elst":Lcom/facebook/ads/redexgen/X/VQ;
    if-nez v0, :cond_1

    .line 24908
    .end local p0    # null:Lcom/facebook/ads/redexgen/X/VR;
    .end local v0    # "elst":Lcom/facebook/ads/redexgen/X/VQ;
    .end local v0
    .end local v0
    .end local v0
    .end local v0
    .end local v9
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 24909
    :cond_1
    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/VQ;->A00:Lcom/facebook/ads/redexgen/X/IM;

    .line 24910
    .local p0, "elstData":Lcom/facebook/ads/redexgen/X/IM;
    const/16 v0, 0x8

    invoke-virtual {v9, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 24911
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v0

    .line 24912
    .local v0, "fullAtom":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ch;->A01(I)I

    move-result v8

    .line 24913
    .local v0, "version":I
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v7

    .line 24914
    .local v0, "entryCount":I
    new-array v6, v7, [J

    .line 24915
    .local v0, "editListDurations":[J
    new-array v5, v7, [J

    .line 24916
    .local v9, "editListMediaTimes":[J
    const/4 v4, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v4, v7, :cond_6

    .line 24917
    const/4 v3, 0x1

    if-ne v8, v3, :cond_3

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/IM;->A0O()J

    move-result-wide v0

    :goto_1
    aput-wide v0, v6, v4

    .line 24918
    if-ne v8, v3, :cond_2

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/IM;->A0M()J

    move-result-wide v0

    :goto_2
    aput-wide v0, v5, v4

    .line 24919
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/IM;->A0V()S

    move-result v0

    .line 24920
    .local v8, "mediaRateInteger":I
    if-ne v0, v3, :cond_4

    .line 24921
    const/4 v0, 0x2

    invoke-virtual {v9, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 24922
    .end local v8    # "mediaRateInteger":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 24923
    :cond_2
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "SRi2WFkuBmPXXuX7ZXhvZ7xoIKGneo49"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    int-to-long v0, p0

    goto :goto_2

    .line 24924
    :cond_3
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/IM;->A0N()J

    move-result-wide v0

    goto :goto_1

    .line 24925
    .restart local v8    # "mediaRateInteger":I
    :cond_4
    const/16 v2, 0x110

    const/16 v1, 0x17

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 24926
    .end local v0    # "i":I
    .end local v8    # "mediaRateInteger":I
    :cond_6
    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
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

    .line 24927
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 24928
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v0

    .line 24929
    .local v4, "fullAtom":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ch;->A01(I)I

    move-result v3

    .line 24930
    .local v0, "version":I
    if-nez v3, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 24931
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0N()J

    move-result-wide v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_2

    .line 24932
    .local v3, "timescale":J
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "M9UvEtOuxV0M7yf0yGH"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v3, :cond_0

    const/4 v4, 0x4

    :cond_0
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 24933
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v4

    .line 24934
    .local p0, "languageCode":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x3f

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

    .line 24935
    .local v5, "language":Ljava/lang/String;
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 24936
    :cond_1
    const/16 v0, 0x10

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/IM;I)Landroid/util/Pair;
    .locals 7
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

    .line 24937
    add-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 24938
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 24939
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Cm;->A01(Lcom/facebook/ads/redexgen/X/IM;)I

    .line 24940
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 24941
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v6

    .line 24942
    .local v0, "flags":I
    and-int/lit16 v0, v6, 0x80

    if-eqz v0, :cond_0

    .line 24943
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 24944
    :cond_0
    and-int/lit8 v0, v6, 0x40

    if-eqz v0, :cond_2

    .line 24945
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "UvJPYCfgzi2v8CTQU"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 24946
    :cond_2
    and-int/lit8 v0, v6, 0x20

    if-eqz v0, :cond_3

    .line 24947
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 24948
    :cond_3
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 24949
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Cm;->A01(Lcom/facebook/ads/redexgen/X/IM;)I

    .line 24950
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    .line 24951
    .local p1, "objectTypeIndication":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IF;->A03(I)Ljava/lang/String;

    move-result-object v3

    .line 24952
    .local v0, "mimeType":Ljava/lang/String;
    const/16 v2, 0x1e2

    const/16 v1, 0xa

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 24953
    const/16 v2, 0x1f5

    const/16 v1, 0xd

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 24954
    const/16 v2, 0x202

    const/16 v1, 0x10

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "HWZCS4AJ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 24955
    .end local p0    # null:Lcom/facebook/ads/redexgen/X/IM;
    .end local v4
    :cond_4
    :goto_0
    const/4 v0, 0x0

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "qnGwv9px7H6PoncDmyxNUQWCbUgDHzBF"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    .line 24956
    :cond_6
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 24957
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 24958
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Cm;->A01(Lcom/facebook/ads/redexgen/X/IM;)I

    move-result v2

    .line 24959
    .local p0, "initializationDataSize":I
    new-array v1, v2, [B

    .line 24960
    .local v4, "initializationData":[B
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 24961
    invoke-static {v3, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/IM;II)Landroid/util/Pair;
    .locals 11
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

    .line 24962
    add-int/lit8 v9, p1, 0x8

    .line 24963
    .local p0, "childPosition":I
    const/4 v8, -0x1

    .line 24964
    .local p1, "schemeInformationBoxPosition":I
    const/4 v7, 0x0

    .line 24965
    .local p2, "schemeInformationBoxSize":I
    const/4 v6, 0x0

    .line 24966
    .local v9, "schemeType":Ljava/lang/String;
    const/4 v4, 0x0

    .line 24967
    .local v8, "dataFormat":Ljava/lang/Integer;
    :goto_0
    sub-int v0, v9, p1

    if-ge v0, p2, :cond_4

    .line 24968
    invoke-virtual {p0, v9}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 24969
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v10

    .line 24970
    .local v7, "childAtomSize":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v5

    .line 24971
    .local v6, "childAtomType":I
    sget v3, Lcom/facebook/ads/redexgen/X/Ch;->A0U:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "2oeDj9ahStLET2wwljSKLkYChPoQ4K8"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ne v5, v3, :cond_1

    .line 24972
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 24973
    :cond_0
    :goto_1
    add-int/2addr v9, v10

    .line 24974
    .end local v7    # "childAtomSize":I
    .end local v6    # "childAtomType":I
    goto :goto_0

    .line 24975
    :cond_1
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A10:I

    if-ne v5, v0, :cond_2

    .line 24976
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 24977
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0T(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 24978
    :cond_2
    sget v3, Lcom/facebook/ads/redexgen/X/Ch;->A0z:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "HJN16P8KLdaiNuTm5tgISCuyHanFGsXX"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ne v5, v3, :cond_0

    .line 24979
    :goto_2
    move v8, v9

    .line 24980
    move v7, v10

    goto :goto_1

    :cond_3
    if-ne v5, v3, :cond_0

    goto :goto_2

    .line 24981
    :cond_4
    const/16 v2, 0x236

    const/4 v1, 0x4

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x37

    if-eq v1, v0, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "2X6m8fjY7gOmBCKX2dRnUwHFzdwIskdR"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-nez v3, :cond_7

    .line 24982
    const/16 v2, 0x22e

    const/4 v1, 0x4

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 24983
    const/16 v2, 0x23a

    const/4 v1, 0x4

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 24984
    const/16 v2, 0x232

    const/4 v1, 0x4

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 24985
    :cond_7
    const/4 v5, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "XIXFAdYFB9CZ3tu1Iw"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v4, :cond_b

    :goto_3
    const/4 v3, 0x1

    :goto_4
    const/16 v2, 0x262

    const/16 v1, 0x16

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A05(ZLjava/lang/Object;)V

    .line 24986
    const/4 v0, -0x1

    if-eq v8, v0, :cond_9

    const/4 v3, 0x1

    :goto_5
    const/16 v2, 0x280

    const/16 v1, 0x16

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A05(ZLjava/lang/Object;)V

    .line 24987
    invoke-static {p0, v8, v7, v6}, Lcom/facebook/ads/redexgen/X/Cm;->A0D(Lcom/facebook/ads/redexgen/X/IM;IILjava/lang/String;)Lcom/facebook/ads/redexgen/X/D3;

    move-result-object v3

    .line 24988
    .local v4, "encryptionBox":Lcom/facebook/ads/redexgen/X/D3;
    if-eqz v3, :cond_8

    :goto_6
    const/16 v2, 0x29e

    const/16 v1, 0x16

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A05(ZLjava/lang/Object;)V

    .line 24989
    invoke-static {v4, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 24990
    :cond_8
    const/4 v5, 0x0

    goto :goto_6

    .line 24991
    :cond_9
    const/4 v3, 0x0

    goto :goto_5

    :cond_a
    if-eqz v4, :cond_b

    goto :goto_3

    .line 24992
    :cond_b
    const/4 v3, 0x0

    goto :goto_4

    .line 24993
    :cond_c
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

    .line 24994
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v5

    .line 24995
    .local p0, "childPosition":I
    :goto_0
    sub-int v0, v5, p1

    if-ge v0, p2, :cond_3

    .line 24996
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 24997
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    .line 24998
    .local p1, "childAtomSize":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "mnDCU8gLTLq8WgzEYsN8Gooajmvf69On"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "X1Gr3i3ILIrGrzYmKIQCVeU2Is0eJCdp"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-lez v4, :cond_1

    const/4 v3, 0x1

    :goto_1
    const/16 v2, 0x23e

    const/16 v1, 0x20

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A05(ZLjava/lang/Object;)V

    .line 24999
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v1

    .line 25000
    .local p2, "childAtomType":I
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A14:I

    if-ne v1, v0, :cond_0

    .line 25001
    invoke-static {p0, v5, v4}, Lcom/facebook/ads/redexgen/X/Cm;->A08(Lcom/facebook/ads/redexgen/X/IM;II)Landroid/util/Pair;

    move-result-object v0

    .line 25002
    .local v5, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/TrackEncryptionBox;>;"
    if-eqz v0, :cond_0

    .line 25003
    return-object v0

    .line 25004
    .end local v5    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/TrackEncryptionBox;>;"
    :cond_0
    add-int/2addr v5, v4

    .line 25005
    .end local p1    # "childAtomSize":I
    .end local p2    # "childAtomType":I
    goto :goto_0

    .line 25006
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 25007
    :cond_3
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    return-object v3

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "uJW45795ErtdxGRjmM2miVCeVcisKO83"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "bq0rXx75Fu9KNI3lUXUXnJxkVqBRbY9y"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3
.end method

.method public static A0A(Lcom/facebook/ads/redexgen/X/IM;IILjava/lang/String;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;Z)Lcom/facebook/ads/redexgen/X/Ck;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 25008
    const/16 v0, 0xc

    move-object/from16 v9, p0

    invoke-virtual {v9, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 25009
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v8

    .line 25010
    .local v6, "numberOfEntries":I
    new-instance v7, Lcom/facebook/ads/redexgen/X/Ck;

    invoke-direct {v7, v8}, Lcom/facebook/ads/redexgen/X/Ck;-><init>(I)V

    .line 25011
    .local v6, "out":Lcom/facebook/ads/redexgen/X/Ck;
    const/4 v6, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v6, v8, :cond_a

    .line 25012
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v11

    .line 25013
    .local v12, "childStartPosition":I
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v12

    .line 25014
    .local v3, "childAtomSize":I
    if-lez v12, :cond_9

    const/4 v3, 0x1

    :goto_1
    const/16 v2, 0x23e

    const/16 v1, 0x20

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A05(ZLjava/lang/Object;)V

    .line 25015
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v10

    .line 25016
    .local v7, "childAtomType":I
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A07:I

    move-object/from16 v16, p4

    move/from16 v13, p1

    if-eq v10, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A08:I

    if-eq v10, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0S:I

    if-eq v10, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0m:I

    if-eq v10, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0Y:I

    if-eq v10, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0X:I

    if-eq v10, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0t:I

    if-eq v10, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1T:I

    if-eq v10, v0, :cond_1

    sget v3, Lcom/facebook/ads/redexgen/X/Ch;->A1U:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x5

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "YBqcQG5h70WJwSFTfYCx4v0f76LIQSiP"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ne v10, v3, :cond_3

    .line 25017
    .end local v7    # "childAtomType":I
    .restart local v2
    :cond_1
    move-object v9, v9

    move/from16 v14, p2

    move v10, v10

    move v11, v11

    move v12, v12

    move v13, v13

    move-object/from16 v15, v16

    move-object/from16 v16, v7

    move/from16 v17, v6

    invoke-static/range {v9 .. v17}, Lcom/facebook/ads/redexgen/X/Cm;->A0L(Lcom/facebook/ads/redexgen/X/IM;IIIIILcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;Lcom/facebook/ads/redexgen/X/Ck;I)V

    .line 25018
    :cond_2
    :goto_2
    add-int/2addr v11, v12

    invoke-virtual {v9, v11}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 25019
    .end local v12    # "childStartPosition":I
    .end local v3    # "childAtomSize":I
    .end local v2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 25020
    :cond_3
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0l:I

    move-object/from16 v14, p3

    if-eq v10, v0, :cond_4

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0R:I

    if-eq v10, v0, :cond_4

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A05:I

    if-eq v10, v0, :cond_4

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0N:I

    if-eq v10, v0, :cond_4

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0J:I

    if-eq v10, v0, :cond_4

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0K:I

    if-eq v10, v0, :cond_4

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0L:I

    if-eq v10, v0, :cond_4

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0M:I

    if-eq v10, v0, :cond_4

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0w:I

    if-eq v10, v0, :cond_4

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0x:I

    if-eq v10, v0, :cond_4

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0b:I

    if-eq v10, v0, :cond_4

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A15:I

    if-eq v10, v0, :cond_4

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A04:I

    if-eq v10, v0, :cond_4

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A06:I

    if-ne v10, v0, :cond_5

    .line 25021
    :cond_4
    move-object v9, v9

    .end local v7
    .local v2, "childAtomType":I
    move/from16 v15, p5

    move/from16 p0, v6

    move-object/from16 v17, v7

    invoke-static/range {v9 .. v18}, Lcom/facebook/ads/redexgen/X/Cm;->A0N(Lcom/facebook/ads/redexgen/X/IM;IIIILjava/lang/String;ZLcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;Lcom/facebook/ads/redexgen/X/Ck;I)V

    goto :goto_2

    .line 25022
    :cond_5
    sget v3, Lcom/facebook/ads/redexgen/X/Ch;->A03:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "mrgiIwi"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "sjEfyUQ"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eq v10, v3, :cond_6

    :goto_3
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1P:I

    if-eq v10, v0, :cond_6

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1X:I

    if-eq v10, v0, :cond_6

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A19:I

    if-eq v10, v0, :cond_6

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0A:I

    if-ne v10, v0, :cond_8

    .line 25023
    :cond_6
    move-object v9, v9

    move v10, v10

    move v11, v11

    move v12, v12

    move v13, v13

    move-object v14, v14

    move-object v15, v7

    invoke-static/range {v9 .. v15}, Lcom/facebook/ads/redexgen/X/Cm;->A0M(Lcom/facebook/ads/redexgen/X/IM;IIIILjava/lang/String;Lcom/facebook/ads/redexgen/X/Ck;)V

    goto/16 :goto_2

    :cond_7
    if-eq v10, v3, :cond_6

    goto :goto_3

    .line 25024
    :cond_8
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0B:I

    if-ne v10, v0, :cond_2

    .line 25025
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v4, -0x1

    .line 25026
    const/4 v3, 0x0

    const/16 v2, 0x13b

    const/16 v1, 0x1b

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v3, v4, v3}, Lcom/facebook/ads/internal/exoplayer2/Format;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    iput-object v0, v7, Lcom/facebook/ads/redexgen/X/Ck;->A02:Lcom/facebook/ads/internal/exoplayer2/Format;

    goto/16 :goto_2

    .line 25027
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 25028
    .end local v11    # "i":I
    :cond_a
    return-object v7
.end method

.method public static A0B(Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/Cl;
    .locals 10

    .line 25029
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 25030
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v0

    .line 25031
    .local v4, "fullAtom":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ch;->A01(I)I

    move-result v9

    .line 25032
    .local v0, "version":I
    const/16 v7, 0x10

    if-nez v9, :cond_9

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 25033
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v6

    .line 25034
    .local v7, "trackId":I
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 25035
    const/4 v8, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_a

    .line 25036
    .local v6, "durationUnknown":Z
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "njO81UDuqe9M1tDtp2gBeHK"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v3

    .line 25037
    .local v5, "durationPosition":I
    if-nez v9, :cond_0

    const/4 v4, 0x4

    .line 25038
    .local p0, "durationByteCount":I
    :cond_0
    const/4 v2, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v2, v4, :cond_1

    .line 25039
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    add-int v0, v3, v2

    aget-byte v1, v1, v0

    const/4 v0, -0x1

    if-eq v1, v0, :cond_8

    .line 25040
    const/4 v8, 0x0

    .line 25041
    .end local v8    # "i":I
    :cond_1
    if-eqz v8, :cond_6

    .line 25042
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 25043
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 25044
    .local v8, "duration":J
    :cond_2
    :goto_2
    invoke-virtual {p0, v7}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 25045
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v8

    .line 25046
    .local v9, "a00":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v7

    .line 25047
    .local v0, "a01":I
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 25048
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v5

    .line 25049
    .local v0, "a10":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v2

    .line 25050
    .local v0, "a11":I
    const/high16 v1, 0x10000

    .line 25051
    .local v1, "fixedOne":I
    if-nez v8, :cond_3

    if-ne v7, v1, :cond_3

    neg-int v0, v1

    if-ne v5, v0, :cond_3

    if-nez v2, :cond_3

    .line 25052
    const/16 v1, 0x5a

    .line 25053
    .local v0, "rotationDegrees":I
    .restart local v0    # "rotationDegrees":I
    :goto_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/Cl;

    invoke-direct {v0, v6, v3, v4, v1}, Lcom/facebook/ads/redexgen/X/Cl;-><init>(IJI)V

    return-object v0

    .line 25054
    .end local v0    # "rotationDegrees":I
    :cond_3
    if-nez v8, :cond_4

    neg-int v0, v1

    if-ne v7, v0, :cond_4

    if-ne v5, v1, :cond_4

    if-nez v2, :cond_4

    .line 25055
    const/16 v1, 0x10e

    .restart local v0    # "rotationDegrees":I
    goto :goto_3

    .line 25056
    .end local v0    # "rotationDegrees":I
    :cond_4
    neg-int v0, v1

    if-ne v8, v0, :cond_5

    if-nez v7, :cond_5

    if-nez v5, :cond_5

    neg-int v0, v1

    if-ne v2, v0, :cond_5

    .line 25057
    const/16 v1, 0xb4

    .restart local v0    # "rotationDegrees":I
    goto :goto_3

    .line 25058
    .end local v0    # "rotationDegrees":I
    :cond_5
    const/4 v1, 0x0

    goto :goto_3

    .line 25059
    .end local v8    # "duration":J
    :cond_6
    if-nez v9, :cond_7

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0N()J

    move-result-wide v3

    .line 25060
    .restart local v8    # "duration":J
    :goto_4
    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    .line 25061
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2

    .line 25062
    :cond_7
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0O()J

    move-result-wide v3

    goto :goto_4

    .line 25063
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 25064
    :cond_9
    const/16 v0, 0x10

    goto/16 :goto_0

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0C(Lcom/facebook/ads/redexgen/X/VR;Lcom/facebook/ads/redexgen/X/VQ;JLcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;ZZ)Lcom/facebook/ads/redexgen/X/D2;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    move-wide/from16 v14, p2

    .line 25065
    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A0e:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/VR;->A07(I)Lcom/facebook/ads/redexgen/X/VR;

    move-result-object v2

    .line 25066
    .local v1, "mdia":Lcom/facebook/ads/redexgen/X/VR;
    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A0W:I

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/VR;->A08(I)Lcom/facebook/ads/redexgen/X/VQ;

    move-result-object v1

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/VQ;->A00:Lcom/facebook/ads/redexgen/X/IM;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Cm;->A02(Lcom/facebook/ads/redexgen/X/IM;)I

    move-result v9

    .line 25067
    .local v14, "trackType":I
    const/4 v7, 0x0

    const/4 v1, -0x1

    if-ne v9, v1, :cond_0

    .line 25068
    return-object v7

    .line 25069
    :cond_0
    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A1K:I

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/VR;->A08(I)Lcom/facebook/ads/redexgen/X/VQ;

    move-result-object v1

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/VQ;->A00:Lcom/facebook/ads/redexgen/X/IM;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Cm;->A0B(Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/Cl;

    move-result-object v6

    sget-object v3, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, v3, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v1, 0x9

    if-eq v3, v1, :cond_5

    .line 25070
    .local v1, "tkhdData":Lcom/facebook/ads/redexgen/X/Cl;
    sget-object v4, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v3, "IIhoRyi"

    const/4 v1, 0x0

    aput-object v3, v4, v1

    const-string v3, "f5GG2CV"

    const/4 v1, 0x5

    aput-object v3, v4, v1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v14, v3

    if-nez v1, :cond_1

    .line 25071
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Cl;->A02(Lcom/facebook/ads/redexgen/X/Cl;)J

    move-result-wide v14

    .line 25072
    .end local v14    # "trackType":I
    .local p4, "duration":J
    .end local v14
    .local v6, "duration":J
    :cond_1
    move-object/from16 v1, p1

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/VQ;->A00:Lcom/facebook/ads/redexgen/X/IM;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Cm;->A04(Lcom/facebook/ads/redexgen/X/IM;)J

    move-result-wide v12

    .line 25073
    .local v1, "movieTimescale":J
    cmp-long v1, v14, v3

    if-nez v1, :cond_4

    .line 25074
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 25075
    .local p3, "durationUs":J
    .local v3, "durationUs":J
    :goto_0
    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A0i:I

    .line 25076
    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/VR;->A07(I)Lcom/facebook/ads/redexgen/X/VR;

    move-result-object v3

    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A17:I

    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/VR;->A07(I)Lcom/facebook/ads/redexgen/X/VR;

    move-result-object v3

    .line 25077
    .local v7, "stbl":Lcom/facebook/ads/redexgen/X/VR;
    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A0d:I

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/VR;->A08(I)Lcom/facebook/ads/redexgen/X/VQ;

    move-result-object v1

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/VQ;->A00:Lcom/facebook/ads/redexgen/X/IM;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Cm;->A06(Lcom/facebook/ads/redexgen/X/IM;)Landroid/util/Pair;

    move-result-object v1

    .line 25078
    .local v9, "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    sget v2, Lcom/facebook/ads/redexgen/X/Ch;->A1B:I

    .line 25079
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/VR;->A08(I)Lcom/facebook/ads/redexgen/X/VQ;

    move-result-object v2

    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/VQ;->A00:Lcom/facebook/ads/redexgen/X/IM;

    .line 25080
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Cl;->A00(Lcom/facebook/ads/redexgen/X/Cl;)I

    move-result p0

    .line 25081
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Cl;->A01(Lcom/facebook/ads/redexgen/X/Cl;)I

    move-result p1

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 25082
    move-object/from16 p3, p4

    move/from16 p4, p6

    move-object/from16 p2, v2

    move-object/from16 v16, v3

    invoke-static/range {v16 .. v21}, Lcom/facebook/ads/redexgen/X/Cm;->A0A(Lcom/facebook/ads/redexgen/X/IM;IILjava/lang/String;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;Z)Lcom/facebook/ads/redexgen/X/Ck;

    move-result-object v5

    .line 25083
    .local v1, "stsdData":Lcom/facebook/ads/redexgen/X/Ck;
    const/4 v4, 0x0

    .line 25084
    .local p3, "editListDurations":[J
    const/4 v3, 0x0

    .line 25085
    .local p5, "editListMediaTimes":[J
    if-nez p5, :cond_2

    .line 25086
    sget v2, Lcom/facebook/ads/redexgen/X/Ch;->A0O:I

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/VR;->A07(I)Lcom/facebook/ads/redexgen/X/VR;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Cm;->A05(Lcom/facebook/ads/redexgen/X/VR;)Landroid/util/Pair;

    move-result-object v0

    .line 25087
    .local p4, "edtsData":Landroid/util/Pair;, "Landroid/util/Pair<[J[J>;"
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, [J

    .line 25088
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [J

    .line 25089
    .end local p3    # "editListDurations":[J
    .end local p5    # "editListMediaTimes":[J
    .local v4, "editListDurations":[J
    .local v3, "editListMediaTimes":[J
    :cond_2
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Ck;->A02:Lcom/facebook/ads/internal/exoplayer2/Format;

    if-nez v0, :cond_3

    :goto_1
    return-object v7

    .line 25090
    :cond_3
    new-instance v7, Lcom/facebook/ads/redexgen/X/D2;

    .line 25091
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Cl;->A00(Lcom/facebook/ads/redexgen/X/Cl;)I

    move-result v8

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 25092
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-object v6, v5, Lcom/facebook/ads/redexgen/X/Ck;->A02:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget v2, v5, Lcom/facebook/ads/redexgen/X/Ck;->A01:I

    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/Ck;->A03:[Lcom/facebook/ads/redexgen/X/D3;

    iget v0, v5, Lcom/facebook/ads/redexgen/X/Ck;->A00:I

    .end local v1    # "stsdData":Lcom/facebook/ads/redexgen/X/Ck;
    .local v3, "stsdData":Lcom/facebook/ads/redexgen/X/Ck;
    .end local v9    # "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .local v3, "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v7    # "stbl":Lcom/facebook/ads/redexgen/X/VR;
    .local v1, "stbl":Lcom/facebook/ads/redexgen/X/VR;
    move-object/from16 p1, v1

    move/from16 p2, v0

    move-object/from16 p3, v4

    move-object/from16 p4, v3

    move-object/from16 v16, v6

    move/from16 p0, v2

    invoke-direct/range {v7 .. v21}, Lcom/facebook/ads/redexgen/X/D2;-><init>(IIJJJLcom/facebook/ads/internal/exoplayer2/Format;I[Lcom/facebook/ads/redexgen/X/D3;I[J[J)V

    goto :goto_1

    .line 25093
    .end local p3
    :cond_4
    const-wide/32 v16, 0xf4240

    move-wide/from16 p1, v12

    invoke-static/range {v14 .. v19}, Lcom/facebook/ads/redexgen/X/Ic;->A0F(JJJ)J

    move-result-wide v14

    goto/16 :goto_0

    .line 25094
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0D(Lcom/facebook/ads/redexgen/X/IM;IILjava/lang/String;)Lcom/facebook/ads/redexgen/X/D3;
    .locals 9

    .line 25095
    add-int/lit8 v3, p1, 0x8

    .line 25096
    .local p1, "childPosition":I
    :goto_0
    sub-int v0, v3, p1

    if-ge v0, p2, :cond_4

    .line 25097
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 25098
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v2

    .line 25099
    .local p2, "childAtomSize":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v1

    .line 25100
    .local p0, "childAtomType":I
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1H:I

    if-ne v1, v0, :cond_3

    .line 25101
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v0

    .line 25102
    .local v3, "fullAtom":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ch;->A01(I)I

    move-result v0

    .line 25103
    .local v0, "version":I
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 25104
    const/4 v6, 0x0

    .line 25105
    .local v2, "defaultCryptByteBlock":I
    const/4 v7, 0x0

    .line 25106
    .local v1, "defaultSkipByteBlock":I
    if-nez v0, :cond_2

    .line 25107
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 25108
    .end local v0    # "version":I
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_1

    .line 25109
    .local p2, "defaultIsProtected":Z
    :goto_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v4

    .line 25110
    .local v0, "defaultPerSampleIvSize":I
    const/16 v0, 0x10

    new-array v5, v0, [B

    .line 25111
    .local v7, "defaultKeyId":[B
    array-length v0, v5

    invoke-virtual {p0, v5, v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 25112
    const/4 v8, 0x0

    .line 25113
    .local v0, "constantIv":[B
    if-eqz v2, :cond_0

    if-nez v4, :cond_0

    .line 25114
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    .line 25115
    .local v2, "constantIvSize":I
    new-array v8, v0, [B

    .line 25116
    invoke-virtual {p0, v8, v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 25117
    .end local v0    # "constantIv":[B
    .local v0, "constantIv":[B
    :cond_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/D3;

    .end local v7    # "defaultKeyId":[B
    .local v0, "defaultKeyId":[B
    move-object v3, p3

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/D3;-><init>(ZLjava/lang/String;I[BII[B)V

    return-object v1

    .line 25118
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 25119
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v1

    .line 25120
    .local v0, "patternByte":I
    and-int/lit16 v0, v1, 0xf0

    shr-int/lit8 v6, v0, 0x4

    .line 25121
    and-int/lit8 v7, v1, 0xf

    goto :goto_1

    .line 25122
    .end local v3    # "fullAtom":I
    .end local v0    # "patternByte":I
    .end local p2    # "defaultIsProtected":Z
    .end local v2    # "constantIvSize":I
    .end local v1    # "defaultSkipByteBlock":I
    .end local v0
    .end local v0
    .end local v0
    :cond_3
    add-int/2addr v3, v2

    .line 25123
    .end local p2
    .end local p0    # "childAtomType":I
    goto :goto_0

    .line 25124
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A0E(Lcom/facebook/ads/redexgen/X/D2;Lcom/facebook/ads/redexgen/X/VR;Lcom/facebook/ads/redexgen/X/CK;)Lcom/facebook/ads/redexgen/X/D5;
    .locals 42
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 25125
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1D:I

    move-object/from16 v4, p1

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/VR;->A08(I)Lcom/facebook/ads/redexgen/X/VQ;

    move-result-object v0

    .line 25126
    .local v3, "stszAtom":Lcom/facebook/ads/redexgen/X/VQ;
    if-eqz v0, :cond_0

    .line 25127
    new-instance v15, Lcom/facebook/ads/redexgen/X/VP;

    invoke-direct {v15, v0}, Lcom/facebook/ads/redexgen/X/VP;-><init>(Lcom/facebook/ads/redexgen/X/VQ;)V

    .line 25128
    .local p1, "sampleSizeBox":Lcom/facebook/ads/redexgen/X/Cj;
    .end local p1    # "sampleSizeBox":Lcom/facebook/ads/redexgen/X/Cj;
    .local v2, "sampleSizeBox":Lcom/facebook/ads/redexgen/X/Cj;
    :goto_0
    invoke-interface {v15}, Lcom/facebook/ads/redexgen/X/Cj;->A75()I

    move-result v23

    .line 25129
    .local v8, "sampleCount":I
    const/4 v0, 0x0

    move-object/from16 p1, p0

    if-nez v23, :cond_1

    .line 25130
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

    .line 25131
    .end local p1
    :cond_0
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1F:I

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/VR;->A08(I)Lcom/facebook/ads/redexgen/X/VQ;

    move-result-object v0

    .line 25132
    .local p1, "stz2Atom":Lcom/facebook/ads/redexgen/X/VQ;
    if-eqz v0, :cond_36

    .line 25133
    new-instance v15, Lcom/facebook/ads/redexgen/X/VO;

    invoke-direct {v15, v0}, Lcom/facebook/ads/redexgen/X/VO;-><init>(Lcom/facebook/ads/redexgen/X/VQ;)V

    goto :goto_0

    .line 25134
    :cond_1
    const/4 v3, 0x0

    .line 25135
    .local v4, "chunkOffsetsAreLongs":Z
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A18:I

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/VR;->A08(I)Lcom/facebook/ads/redexgen/X/VQ;

    move-result-object v0

    .line 25136
    .local v10, "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/VQ;
    if-nez v0, :cond_4

    .line 25137
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x37

    if-eq v1, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 25138
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "VfTGMXjykvxBEJOj2fUcqsVzptjeSTj"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0C:I

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/VR;->A08(I)Lcom/facebook/ads/redexgen/X/VQ;

    move-result-object v0

    .line 25139
    .end local v4    # "chunkOffsetsAreLongs":Z
    .end local v10    # "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/VQ;
    .local v15, "chunkOffsetsAreLongs":Z
    .local v1, "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/VQ;
    :cond_4
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/VQ;->A00:Lcom/facebook/ads/redexgen/X/IM;

    .line 25140
    .local v15, "chunkOffsets":Lcom/facebook/ads/redexgen/X/IM;
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1A:I

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/VR;->A08(I)Lcom/facebook/ads/redexgen/X/VQ;

    move-result-object v0

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/VQ;->A00:Lcom/facebook/ads/redexgen/X/IM;

    .line 25141
    .local v0, "stsc":Lcom/facebook/ads/redexgen/X/IM;
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1E:I

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/VR;->A08(I)Lcom/facebook/ads/redexgen/X/VQ;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/VQ;->A00:Lcom/facebook/ads/redexgen/X/IM;

    move-object/from16 v29, v0

    .line 25142
    .local v0, "stts":Lcom/facebook/ads/redexgen/X/IM;
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1C:I

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/VR;->A08(I)Lcom/facebook/ads/redexgen/X/VQ;

    move-result-object v0

    .line 25143
    .local v4, "stssAtom":Lcom/facebook/ads/redexgen/X/VQ;
    const/4 v13, 0x0

    if-eqz v0, :cond_9

    iget-object v14, v0, Lcom/facebook/ads/redexgen/X/VQ;->A00:Lcom/facebook/ads/redexgen/X/IM;

    .line 25144
    .local v10, "stss":Lcom/facebook/ads/redexgen/X/IM;
    :goto_1
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0D:I

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/VR;->A08(I)Lcom/facebook/ads/redexgen/X/VQ;

    move-result-object v0

    .line 25145
    .local p1, "cttsAtom":Lcom/facebook/ads/redexgen/X/VQ;
    if-eqz v0, :cond_5

    iget-object v13, v0, Lcom/facebook/ads/redexgen/X/VQ;->A00:Lcom/facebook/ads/redexgen/X/IM;

    .line 25146
    .local v4, "ctts":Lcom/facebook/ads/redexgen/X/IM;
    :cond_5
    new-instance v12, Lcom/facebook/ads/redexgen/X/Ci;

    invoke-direct {v12, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/Ci;-><init>(Lcom/facebook/ads/redexgen/X/IM;Lcom/facebook/ads/redexgen/X/IM;Z)V

    .line 25147
    .local p1, "chunkIterator":Lcom/facebook/ads/redexgen/X/Ci;
    .end local p1    # "chunkIterator":Lcom/facebook/ads/redexgen/X/Ci;
    .local v11, "cttsAtom":Lcom/facebook/ads/redexgen/X/VQ;
    const/16 v1, 0xc

    move-object/from16 v0, v29

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 25148
    invoke-virtual/range {v29 .. v29}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v0

    add-int/lit8 v11, v0, -0x1

    .line 25149
    .local v18, "remainingTimestampDeltaChanges":I
    invoke-virtual/range {v29 .. v29}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v28

    .line 25150
    .local p1, "remainingSamplesAtTimestampDelta":I
    invoke-virtual/range {v29 .. v29}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v27

    .line 25151
    .local p1, "timestampDeltaInTimeUnits":I
    const/16 v26, 0x0

    .line 25152
    .local v0, "remainingSamplesAtTimestampOffset":I
    const/16 v25, 0x0

    .line 25153
    .local v15, "remainingTimestampOffsetChanges":I
    const/16 v24, 0x0

    .line 25154
    .local v15, "timestampOffset":I
    if-eqz v13, :cond_6

    .line 25155
    const/16 v0, 0xc

    .end local v4    # "ctts":Lcom/facebook/ads/redexgen/X/IM;
    .local v3, "stssAtom":Lcom/facebook/ads/redexgen/X/VQ;
    invoke-virtual {v13, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 25156
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v25

    .line 25157
    .end local v4
    .restart local v3    # "stssAtom":Lcom/facebook/ads/redexgen/X/VQ;
    :cond_6
    const/4 v10, -0x1

    .line 25158
    .local v4, "nextSynchronizationSampleIndex":I
    const/4 v6, 0x0

    .line 25159
    .local v0, "remainingSynchronizationSamples":I
    if-eqz v14, :cond_7

    .line 25160
    const/16 v0, 0xc

    .end local v4    # "nextSynchronizationSampleIndex":I
    .local v0, "nextSynchronizationSampleIndex":I
    invoke-virtual {v14, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 25161
    invoke-virtual {v14}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v6

    .line 25162
    if-lez v6, :cond_8

    .line 25163
    invoke-virtual {v14}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    .line 25164
    .end local v0    # "nextSynchronizationSampleIndex":I
    .restart local v4    # "nextSynchronizationSampleIndex":I
    .end local v10    # "stss":Lcom/facebook/ads/redexgen/X/IM;
    .local v4, "stss":Lcom/facebook/ads/redexgen/X/IM;
    :cond_7
    :goto_2
    invoke-interface {v15}, Lcom/facebook/ads/redexgen/X/Cj;->A84()Z

    move-result v0

    if-eqz v0, :cond_b

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget-object v4, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    .line 25165
    const/16 v2, 0x1ec

    const/16 v1, 0x9

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x37

    if-eq v1, v0, :cond_a

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 25166
    .end local v4    # "stss":Lcom/facebook/ads/redexgen/X/IM;
    .restart local v0    # "nextSynchronizationSampleIndex":I
    :cond_8
    const/4 v14, 0x0

    goto :goto_2

    .line 25167
    :cond_9
    move-object v14, v13

    goto :goto_1

    :cond_a
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "HRNeyCVI7GO1NVw6qzf2fEOZn1yilRHS"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 25168
    if-nez v11, :cond_b

    if-nez v25, :cond_b

    if-nez v6, :cond_b

    const/4 v5, 0x1

    goto :goto_3

    :cond_b
    const/4 v5, 0x0

    .line 25169
    .local v3, "isFixedSampleSizeRawAudio":Z
    :goto_3
    const/16 v18, 0x0

    .line 25170
    .local v10, "maximumSize":I
    const-wide/16 v1, 0x0

    .line 25171
    .local v1, "timestampTimeUnits":J
    const/16 v4, 0x80

    const/16 v3, 0xb

    const/16 v0, 0x17

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v22

    if-nez v5, :cond_17

    .line 25172
    .end local v10    # "maximumSize":I
    .local v1, "maximumSize":I
    move/from16 v0, v23

    new-array v0, v0, [J

    move-object/from16 v19, v0

    .line 25173
    .local v10, "offsets":[J
    .end local v0    # "nextSynchronizationSampleIndex":I
    .local v0, "stsc":Lcom/facebook/ads/redexgen/X/IM;
    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 25174
    .local v0, "sizes":[I
    .end local v15    # "timestampOffset":I
    .local v1, "chunkOffsetsAreLongs":Z
    move/from16 v0, v23

    new-array v7, v0, [J

    .line 25175
    .local v15, "timestamps":[J
    .end local v15    # "timestamps":[J
    .local v0, "chunkOffsets":Lcom/facebook/ads/redexgen/X/IM;
    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v21, v0

    .line 25176
    .local v15, "flags":[I
    const-wide/16 v8, 0x0

    .line 25177
    .local v0, "offset":J
    const/4 v5, 0x0

    .line 25178
    .local v1, "remainingSamplesInChunk":I
    const/4 v0, 0x0

    .end local v15    # "flags":[I
    .end local v0    # "offset":J
    .end local v1    # "remainingSamplesInChunk":I
    .end local v1
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
    .local v0, "stszAtom":Lcom/facebook/ads/redexgen/X/VQ;
    .local v2, "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/VQ;
    :goto_4
    move/from16 v3, v23

    if-ge v0, v3, :cond_14

    .line 25179
    :goto_5
    if-nez v5, :cond_c

    .line 25180
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/Ci;->A03()Z

    move-result v3

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 25181
    .end local v23    # "remainingSamplesAtTimestampDelta":I
    .end local v0    # "stszAtom":Lcom/facebook/ads/redexgen/X/VQ;
    .local v0, "remainingSamplesAtTimestampDelta":I
    .local v1, "remainingTimestampDeltaChanges":I
    iget-wide v8, v12, Lcom/facebook/ads/redexgen/X/Ci;->A02:J

    .line 25182
    .end local v15    # "offset":J
    .local v23, "offset":J
    .end local v23    # "offset":J
    .restart local v15    # "offset":J
    iget v5, v12, Lcom/facebook/ads/redexgen/X/Ci;->A01:I

    .end local p1    # "remainingSamplesInChunk":I
    .local v23, "remainingSamplesInChunk":I
    goto :goto_5

    .line 25183
    .end local v0    # "remainingSamplesAtTimestampDelta":I
    .end local v1    # "remainingTimestampDeltaChanges":I
    .local v23, "remainingSamplesAtTimestampDelta":I
    .restart local v0    # "remainingSamplesAtTimestampDelta":I
    .restart local p1    # "remainingSamplesInChunk":I
    :cond_c
    sget-object v4, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v4, v4, v3

    const/16 v3, 0x8

    move-object/from16 v16, v4

    move/from16 v17, v3

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v3, 0x37

    move v4, v4

    move v3, v3

    if-eq v4, v3, :cond_d

    .end local v23    # "remainingSamplesAtTimestampDelta":I
    .end local v0    # "remainingSamplesAtTimestampDelta":I
    .restart local v0    # "remainingSamplesAtTimestampDelta":I
    .restart local v1    # "remainingTimestampDeltaChanges":I
    if-eqz v13, :cond_f

    .line 25184
    :goto_6
    if-nez v26, :cond_e

    if-lez v25, :cond_e

    .line 25185
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v26

    .line 25186
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v24

    .line 25187
    add-int/lit8 v25, v25, -0x1

    goto :goto_6

    .end local v23
    .end local v0    # "remainingSamplesAtTimestampDelta":I
    .restart local v0    # "remainingSamplesAtTimestampDelta":I
    .restart local v1    # "remainingTimestampDeltaChanges":I
    :cond_d
    sget-object v16, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v4, "0Yc80ln"

    const/4 v3, 0x0

    aput-object v4, v16, v3

    const-string v4, "uo9Brhe"

    const/4 v3, 0x5

    aput-object v4, v16, v3

    if-eqz v13, :cond_f

    goto :goto_6

    .line 25188
    :cond_e
    add-int/lit8 v26, v26, -0x1

    .line 25189
    .end local v0    # "remainingSamplesAtTimestampDelta":I
    .local v23, "timestampOffset":I
    :cond_f
    aput-wide v8, v19, v0

    .line 25190
    invoke-interface {v15}, Lcom/facebook/ads/redexgen/X/Cj;->ACq()I

    move-result v3

    aput v3, v20, v0

    .line 25191
    aget v3, v20, v0

    move/from16 v4, v18

    move v3, v3

    if-le v3, v4, :cond_10

    .line 25192
    aget v18, v20, v0

    .line 25193
    .end local v2    # "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/VQ;
    .end local v8    # "sampleCount":I
    .local v0, "sampleSizeBox":Lcom/facebook/ads/redexgen/X/Cj;
    .local v0, "sampleCount":I
    :cond_10
    move/from16 v3, v24

    int-to-long v3, v3

    add-long v16, v1, v3

    aput-wide v16, v7, v0

    .line 25194
    if-nez v14, :cond_13

    const/4 v3, 0x1

    :goto_7
    aput v3, v21, v0

    .line 25195
    if-ne v0, v10, :cond_11

    .line 25196
    const/4 v3, 0x1

    aput v3, v21, v0

    .line 25197
    add-int/lit8 v6, v6, -0x1

    .line 25198
    if-lez v6, :cond_11

    .line 25199
    invoke-virtual {v14}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v3

    add-int/lit8 v10, v3, -0x1

    .line 25200
    :cond_11
    move/from16 v3, v27

    int-to-long v3, v3

    add-long/2addr v1, v3

    sget-object v4, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v3, 0x9

    move v4, v4

    move v3, v3

    if-eq v4, v3, :cond_2

    .line 25201
    sget-object v16, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v4, "v0w4OAr"

    const/4 v3, 0x0

    aput-object v4, v16, v3

    const-string v4, "o5vrawG"

    const/4 v3, 0x5

    aput-object v4, v16, v3

    add-int/lit8 v28, v28, -0x1

    .line 25202
    .end local v0    # "sampleCount":I
    .local v2, "remainingSamplesAtTimestampDelta":I
    if-nez v28, :cond_12

    if-lez v11, :cond_12

    .line 25203
    move-object/from16 v3, v29

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v28

    .line 25204
    move-object/from16 v3, v29

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v27

    .line 25205
    add-int/lit8 v11, v11, -0x1

    .line 25206
    .end local v1    # "remainingTimestampDeltaChanges":I
    .local v8, "remainingTimestampDeltaChanges":I
    .end local v1
    .restart local v8    # "remainingTimestampDeltaChanges":I
    .end local v10    # "offsets":[J
    .local v0, "offsets":[J
    :cond_12
    aget v3, v20, v0

    .end local v4    # "nextSynchronizationSampleIndex":I
    .end local v0    # "offsets":[J
    .local v0, "remainingSynchronizationSamples":I
    .local v0, "stts":Lcom/facebook/ads/redexgen/X/IM;
    int-to-long v3, v3

    add-long/2addr v8, v3

    .line 25207
    add-int/lit8 v5, v5, -0x1

    .line 25208
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 25209
    :cond_13
    const/4 v3, 0x0

    goto :goto_7

    .line 25210
    .end local v0    # "stts":Lcom/facebook/ads/redexgen/X/IM;
    .end local v0
    .end local v0
    .restart local v10    # "offsets":[J
    .restart local v4    # "nextSynchronizationSampleIndex":I
    .restart local v0    # "stts":Lcom/facebook/ads/redexgen/X/IM;
    .local v23, "remainingSamplesAtTimestampDelta":I
    .local v0, "remainingTimestampDeltaChanges":I
    .local v2, "sampleSizeBox":Lcom/facebook/ads/redexgen/X/Cj;
    .local v8, "sampleCount":I
    .local v0, "timestampOffset":I
    .end local v10    # "offsets":[J
    .end local p1    # "remainingSamplesInChunk":I
    .end local v0    # "timestampOffset":I
    .end local v23    # "remainingSamplesAtTimestampDelta":I
    .end local v2    # "sampleSizeBox":Lcom/facebook/ads/redexgen/X/Cj;
    .end local v8    # "sampleCount":I
    .local v0, "sampleSizeBox":Lcom/facebook/ads/redexgen/X/Cj;
    .restart local v0    # "sampleSizeBox":Lcom/facebook/ads/redexgen/X/Cj;
    .restart local v1    # "remainingTimestampDeltaChanges":I
    .restart local v0    # "sampleSizeBox":Lcom/facebook/ads/redexgen/X/Cj;
    .restart local v0    # "sampleSizeBox":Lcom/facebook/ads/redexgen/X/Cj;
    .restart local v0    # "sampleSizeBox":Lcom/facebook/ads/redexgen/X/Cj;
    .end local v0    # "sampleSizeBox":Lcom/facebook/ads/redexgen/X/Cj;
    .local v23, "timestampOffset":I
    :cond_14
    move/from16 v0, v24

    int-to-long v3, v0

    add-long/2addr v1, v3

    .line 25211
    .local v10, "duration":J
    if-nez v26, :cond_16

    const/4 v0, 0x1

    :goto_8
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 25212
    :goto_9
    if-lez v25, :cond_19

    .line 25213
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    :goto_a
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 25214
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    .line 25215
    add-int/lit8 v25, v25, -0x1

    goto :goto_9

    .line 25216
    :cond_15
    const/4 v0, 0x0

    goto :goto_a

    .line 25217
    :cond_16
    const/4 v0, 0x0

    goto :goto_8

    .line 25218
    .end local v4    # "nextSynchronizationSampleIndex":I
    .end local v23    # "timestampOffset":I
    .end local v0
    .end local v4
    .end local v1    # "remainingTimestampDeltaChanges":I
    .end local v0
    .end local v1
    .end local v0
    .end local v0
    .end local v2
    .end local v0
    .end local v0
    .end local v0
    .end local v3    # "timestampDeltaInTimeUnits":I
    .local v4, "ctts":Lcom/facebook/ads/redexgen/X/IM;
    .local v10, "maximumSize":I
    .local p1, "timestampDeltaInTimeUnits":I
    .restart local v0    # "sampleSizeBox":Lcom/facebook/ads/redexgen/X/Cj;
    .local v0, "stsc":Lcom/facebook/ads/redexgen/X/IM;
    .local v15, "chunkOffsetsAreLongs":Z
    .local v15, "chunkOffsets":Lcom/facebook/ads/redexgen/X/IM;
    .local v3, "stszAtom":Lcom/facebook/ads/redexgen/X/VQ;
    .restart local v2    # "sampleSizeBox":Lcom/facebook/ads/redexgen/X/Cj;
    .local v8, "sampleCount":I
    .local v1, "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/VQ;
    .local v18, "remainingTimestampDeltaChanges":I
    .local p1, "remainingSamplesAtTimestampDelta":I
    .local v15, "remainingTimestampOffsetChanges":I
    .restart local v15    # "remainingTimestampOffsetChanges":I
    .local v0, "remainingSynchronizationSamples":I
    .local v0, "nextSynchronizationSampleIndex":I
    :cond_17
    move-object/from16 v0, p1

    .end local v4    # "ctts":Lcom/facebook/ads/redexgen/X/IM;
    .end local v10    # "maximumSize":I
    .end local v0    # "nextSynchronizationSampleIndex":I
    .end local v0
    .end local v15    # "remainingTimestampOffsetChanges":I
    .end local v15
    .end local v3    # "stszAtom":Lcom/facebook/ads/redexgen/X/VQ;
    .end local v2    # "sampleSizeBox":Lcom/facebook/ads/redexgen/X/Cj;
    .end local v8    # "sampleCount":I
    .end local v1    # "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/VQ;
    .restart local v0    # "nextSynchronizationSampleIndex":I
    .local v1, "maximumSize":I
    .restart local v0    # "nextSynchronizationSampleIndex":I
    .restart local v1    # "maximumSize":I
    .restart local v0    # "nextSynchronizationSampleIndex":I
    .restart local v0    # "nextSynchronizationSampleIndex":I
    .restart local v2    # "sampleSizeBox":Lcom/facebook/ads/redexgen/X/Cj;
    .restart local v0    # "nextSynchronizationSampleIndex":I
    .restart local v0    # "nextSynchronizationSampleIndex":I
    .restart local v3    # "stszAtom":Lcom/facebook/ads/redexgen/X/VQ;
    iget v1, v12, Lcom/facebook/ads/redexgen/X/Ci;->A05:I

    new-array v5, v1, [J

    .line 25219
    .local v10, "chunkOffsetsBytes":[J
    iget v1, v12, Lcom/facebook/ads/redexgen/X/Ci;->A05:I

    new-array v4, v1, [I

    .line 25220
    .local v4, "chunkSampleCounts":[I
    :goto_b
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/Ci;->A03()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 25221
    iget v3, v12, Lcom/facebook/ads/redexgen/X/Ci;->A00:I

    iget-wide v1, v12, Lcom/facebook/ads/redexgen/X/Ci;->A02:J

    aput-wide v1, v5, v3

    .line 25222
    iget v2, v12, Lcom/facebook/ads/redexgen/X/Ci;->A00:I

    iget v1, v12, Lcom/facebook/ads/redexgen/X/Ci;->A01:I

    aput v1, v4, v2

    goto :goto_b

    .line 25223
    :cond_18
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget v2, v1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0A:I

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget v1, v1, Lcom/facebook/ads/internal/exoplayer2/Format;->A05:I

    .line 25224
    invoke-static {v2, v1}, Lcom/facebook/ads/redexgen/X/Ic;->A05(II)I

    move-result v3

    .line 25225
    .local v0, "fixedSampleSize":I
    move/from16 v1, v27

    int-to-long v1, v1

    .line 25226
    invoke-static {v3, v5, v4, v1, v2}, Lcom/facebook/ads/redexgen/X/Cq;->A00(I[J[IJ)Lcom/facebook/ads/redexgen/X/Cp;

    move-result-object v2

    .line 25227
    .local v0, "rechunkedResults":Lcom/facebook/ads/redexgen/X/Cp;
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Cp;->A04:[J

    move-object/from16 v19, v1

    .line 25228
    .local v15, "offsets":[J
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Cp;->A03:[I

    move-object/from16 v20, v1

    .line 25229
    .local v15, "sizes":[I
    iget v1, v2, Lcom/facebook/ads/redexgen/X/Cp;->A00:I

    move/from16 v18, v1

    .line 25230
    .end local v1    # "maximumSize":I
    .local v23, "maximumSize":I
    iget-object v7, v2, Lcom/facebook/ads/redexgen/X/Cp;->A05:[J

    .line 25231
    .local v4, "timestamps":[J
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Cp;->A02:[I

    move-object/from16 v21, v1

    .line 25232
    .local v3, "flags":[I
    iget-wide v1, v2, Lcom/facebook/ads/redexgen/X/Cp;->A01:J

    goto :goto_c

    .line 25233
    :cond_19
    if-nez v6, :cond_1a

    if-nez v28, :cond_1a

    if-nez v5, :cond_1a

    if-eqz v11, :cond_1d

    .line 25234
    :cond_1a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0xc6

    const/16 v3, 0x20

    const/16 v0, 0x24

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    .end local v4    # "timestamps":[J
    .end local v0    # "rechunkedResults":Lcom/facebook/ads/redexgen/X/Cp;
    .local v8, "remainingSamplesAtTimestampDelta":I
    .local v3, "ctts":Lcom/facebook/ads/redexgen/X/IM;
    iget v3, v0, Lcom/facebook/ads/redexgen/X/D2;->A00:I

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v9, 0x5e

    const/16 v4, 0x22

    const/16 v3, 0x40

    invoke-static {v9, v4, v3}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    const/16 v4, 0x23

    const/16 v3, 0x1b

    invoke-static {v6, v4, v3}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v28

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x23

    const/16 v4, 0x1a

    const/16 v3, 0xd

    invoke-static {v6, v4, v3}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local p1    # "remainingSamplesAtTimestampDelta":I
    .local v4, "remainingSamplesInChunk":I
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v4    # "remainingSamplesInChunk":I
    .restart local p1    # "remainingSamplesAtTimestampDelta":I
    const/16 v5, 0x3d

    const/16 v4, 0x21

    const/16 v3, 0x6c

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v1
    .local v4, "remainingTimestampDeltaChanges":I
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v4    # "remainingTimestampDeltaChanges":I
    .restart local v1    # "maximumSize":I
    move-object/from16 v3, v22

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25235
    .end local v10    # "chunkOffsetsBytes":[J
    .end local p1    # "remainingSamplesAtTimestampDelta":I
    .end local v4
    .end local v0
    .end local v3    # "ctts":Lcom/facebook/ads/redexgen/X/IM;
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
    .local v1, "remainingTimestampDeltaChanges":I
    :goto_c
    const-wide/32 v10, 0xf4240

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/D2;->A06:J

    move-wide v8, v1

    move-wide v12, v3

    invoke-static/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/Ic;->A0F(JJJ)J

    move-result-wide v15

    .line 25236
    .local v29, "durationUs":J
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/D2;->A08:[J

    if-eqz v3, :cond_1b

    move-object/from16 v10, p2

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/CK;->A03()Z

    move-result v6

    sget-object v4, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v4, v4, v3

    const/16 v3, 0x8

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v3, 0x37

    if-eq v4, v3, :cond_1c

    if-eqz v6, :cond_1e

    .line 25237
    .end local p1    # "maximumSize":I
    .end local v0    # "flags":[I
    .end local v15    # "timestamps":[J
    .end local v15
    .end local v8    # "remainingSamplesAtTimestampDelta":I
    .end local v1    # "remainingTimestampDeltaChanges":I
    .end local v0
    .end local v0
    .local v23, "timestamps":[J
    .local v0, "flags":[I
    .local v4, "sizes":[I
    .restart local v15    # "timestamps":[J
    .local v1, "chunkOffsets":Lcom/facebook/ads/redexgen/X/IM;
    .local v0, "chunkOffsetsAreLongs":Z
    .restart local v1    # "chunkOffsets":Lcom/facebook/ads/redexgen/X/IM;
    .restart local v0    # "chunkOffsetsAreLongs":Z
    .restart local v0    # "chunkOffsetsAreLongs":Z
    .restart local v2    # "sampleSizeBox":Lcom/facebook/ads/redexgen/X/Cj;
    .restart local v0    # "chunkOffsetsAreLongs":Z
    .restart local v1    # "chunkOffsets":Lcom/facebook/ads/redexgen/X/IM;
    .restart local v0    # "chunkOffsetsAreLongs":Z
    :cond_1b
    :goto_d
    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/D2;->A06:J

    const-wide/32 v0, 0xf4240

    invoke-static {v7, v0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/Ic;->A0b([JJJ)V

    .line 25238
    new-instance v8, Lcom/facebook/ads/redexgen/X/D5;

    move-object/from16 v9, p1

    move-object/from16 v10, v19

    move-object/from16 v11, v20

    move/from16 v12, v18

    move-object v13, v7

    move-object/from16 v14, v21

    invoke-direct/range {v8 .. v16}, Lcom/facebook/ads/redexgen/X/D5;-><init>(Lcom/facebook/ads/redexgen/X/D2;[J[II[J[IJ)V

    return-object v8

    :cond_1c
    sget-object v5, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v4, "ANfEBjS7py"

    const/4 v3, 0x7

    aput-object v4, v5, v3

    if-eqz v6, :cond_1e

    goto :goto_d

    .line 25239
    :cond_1d
    move-object/from16 v0, p1

    goto :goto_c

    .line 25240
    :cond_1e
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/D2;->A08:[J

    array-length v3, v3

    const-wide/16 v13, 0x0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_20

    iget v3, v0, Lcom/facebook/ads/redexgen/X/D2;->A03:I

    if-ne v3, v4, :cond_20

    array-length v4, v7

    const/4 v3, 0x2

    if-lt v4, v3, :cond_20

    .line 25241
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/D2;->A09:[J

    const/4 v4, 0x0

    aget-wide v27, v3, v4

    .line 25242
    .local v14, "editStartTime":J
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/D2;->A08:[J

    aget-wide v29, v3, v4

    iget-wide v5, v0, Lcom/facebook/ads/redexgen/X/D2;->A06:J

    .end local v0    # "chunkOffsetsAreLongs":Z
    .local v15, "flags":[I
    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/D2;->A05:J

    .line 25243
    move-wide/from16 v31, v5

    move-wide/from16 v33, v3

    invoke-static/range {v29 .. v34}, Lcom/facebook/ads/redexgen/X/Ic;->A0F(JJJ)J

    move-result-wide v3

    add-long v29, v27, v3

    .line 25244
    .local v1, "editEndTime":J
    move-object/from16 v24, v7

    move-wide/from16 v25, v1

    invoke-static/range {v24 .. v30}, Lcom/facebook/ads/redexgen/X/Cm;->A0O([JJJJ)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 25245
    sub-long v24, v1, v29

    .line 25246
    .local v11, "paddingTimeUnits":J
    const/4 v3, 0x0

    aget-wide v3, v7, v3

    sub-long v27, v27, v3

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget v3, v3, Lcom/facebook/ads/internal/exoplayer2/Format;->A0C:I

    int-to-long v5, v3

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/D2;->A06:J

    .line 25247
    move-wide/from16 v29, v5

    move-wide/from16 v31, v3

    invoke-static/range {v27 .. v32}, Lcom/facebook/ads/redexgen/X/Ic;->A0F(JJJ)J

    move-result-wide v3

    .line 25248
    .local v0, "encoderDelay":J
    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget v5, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0C:I

    int-to-long v8, v5

    .end local v23    # "timestamps":[J
    .end local v0    # "encoderDelay":J
    .local v1, "sampleSizeBox":Lcom/facebook/ads/redexgen/X/Cj;
    .local v0, "timestampDeltaInTimeUnits":I
    iget-wide v5, v0, Lcom/facebook/ads/redexgen/X/D2;->A06:J

    .line 25249
    move-wide/from16 v26, v8

    move-wide/from16 v28, v5

    invoke-static/range {v24 .. v29}, Lcom/facebook/ads/redexgen/X/Ic;->A0F(JJJ)J

    move-result-wide v5

    .line 25250
    .local v23, "encoderPadding":J
    cmp-long v8, v3, v13

    if-nez v8, :cond_1f

    cmp-long v8, v5, v13

    if-eqz v8, :cond_21

    :cond_1f
    const-wide/32 v11, 0x7fffffff

    cmp-long v8, v3, v11

    if-gtz v8, :cond_21

    cmp-long v8, v5, v11

    if-gtz v8, :cond_21

    .line 25251
    long-to-int v1, v3

    iput v1, v10, Lcom/facebook/ads/redexgen/X/CK;->A00:I

    .line 25252
    long-to-int v1, v5

    iput v1, v10, Lcom/facebook/ads/redexgen/X/CK;->A01:I

    .line 25253
    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/D2;->A06:J

    const-wide/32 v0, 0xf4240

    invoke-static {v7, v0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/Ic;->A0b([JJJ)V

    .line 25254
    new-instance v8, Lcom/facebook/ads/redexgen/X/D5;

    .end local p1
    .local v0, "chunkIterator":Lcom/facebook/ads/redexgen/X/Ci;
    .end local v0    # "chunkIterator":Lcom/facebook/ads/redexgen/X/Ci;
    .local v2, "encoderDelay":J
    .local v15, "stsc":Lcom/facebook/ads/redexgen/X/IM;
    .local v0, "flags":[I
    .end local v15    # "stsc":Lcom/facebook/ads/redexgen/X/IM;
    .end local v15
    .local v23, "timestamps":[J
    .local v1, "chunkOffsets":Lcom/facebook/ads/redexgen/X/IM;
    .local v0, "chunkOffsetsAreLongs":Z
    .local v0, "sizes":[I
    .local v1, "encoderPadding":J
    move-object/from16 v9, p1

    move-object/from16 v10, v19

    move-object/from16 v11, v20

    move/from16 v12, v18

    move-object v13, v7

    move-object/from16 v14, v21

    invoke-direct/range {v8 .. v16}, Lcom/facebook/ads/redexgen/X/D5;-><init>(Lcom/facebook/ads/redexgen/X/D2;[J[II[J[IJ)V

    return-object v8

    .line 25255
    .end local v15
    .end local v1    # "encoderPadding":J
    .end local v0    # "sizes":[I
    .end local v0
    .end local v0
    .end local v14    # "editStartTime":J
    .end local v1
    .restart local p1    # "maximumSize":I
    .restart local v0    # "sizes":[I
    .restart local v15    # "stsc":Lcom/facebook/ads/redexgen/X/IM;
    .restart local v15    # "stsc":Lcom/facebook/ads/redexgen/X/IM;
    .local v23, "timestampDeltaInTimeUnits":I
    .restart local v0    # "sizes":[I
    .local v0, "stsc":Lcom/facebook/ads/redexgen/X/IM;
    .local v1, "chunkOffsetsAreLongs":Z
    .local v0, "chunkOffsets":Lcom/facebook/ads/redexgen/X/IM;
    :cond_20
    sget-object v4, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v3, 0x9

    if-eq v4, v3, :cond_35

    sget-object v5, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v4, "MH1MbqSl5Dzr7uFUXMF0BuwuR5Ckg5BW"

    const/4 v3, 0x2

    aput-object v4, v5, v3

    .line 25256
    .end local p1    # "maximumSize":I
    .end local v0    # "chunkOffsets":Lcom/facebook/ads/redexgen/X/IM;
    .end local v15    # "stsc":Lcom/facebook/ads/redexgen/X/IM;
    .end local v15
    .end local v0
    .local v23, "timestamps":[J
    .restart local v15    # "stsc":Lcom/facebook/ads/redexgen/X/IM;
    .local v0, "flags":[I
    .local v1, "chunkOffsets":Lcom/facebook/ads/redexgen/X/IM;
    .local v0, "chunkOffsetsAreLongs":Z
    .restart local v1    # "chunkOffsets":Lcom/facebook/ads/redexgen/X/IM;
    .restart local v0    # "chunkOffsetsAreLongs":Z
    .restart local v0    # "chunkOffsetsAreLongs":Z
    .restart local v0    # "chunkOffsetsAreLongs":Z
    :cond_21
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/D2;->A08:[J

    array-length v4, v3

    const/4 v3, 0x1

    if-ne v4, v3, :cond_23

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/D2;->A08:[J

    const/4 v6, 0x0

    aget-wide v8, v3, v6

    sget-object v4, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v4, v4, v3

    const/16 v3, 0xd

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v3, 0x75

    if-eq v4, v3, :cond_22

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_22
    sget-object v5, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v4, "DoGaofob7xQj5Y3T4ciqzxAfvqYvUdEQ"

    const/4 v3, 0x6

    aput-object v4, v5, v3

    cmp-long v3, v8, v13

    if-nez v3, :cond_23

    .line 25257
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/D2;->A09:[J

    aget-wide v8, v3, v6

    .line 25258
    .local v2, "editStartTime":J
    const/4 v5, 0x0

    .local p1, "i":I
    :goto_e
    array-length v3, v7

    if-ge v5, v3, :cond_27

    .line 25259
    aget-wide v10, v7, v5

    sub-long/2addr v10, v8

    const-wide/32 v12, 0xf4240

    iget-wide v14, v0, Lcom/facebook/ads/redexgen/X/D2;->A06:J

    .line 25260
    invoke-static/range {v10 .. v15}, Lcom/facebook/ads/redexgen/X/Ic;->A0F(JJJ)J

    move-result-wide v3

    aput-wide v3, v7, v5

    .line 25261
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 25262
    .end local v2    # "editStartTime":J
    .end local v1    # "chunkOffsets":Lcom/facebook/ads/redexgen/X/IM;
    .restart local v29    # "durationUs":J
    :cond_23
    iget v2, v0, Lcom/facebook/ads/redexgen/X/D2;->A03:I

    const/4 v1, 0x1

    if-ne v2, v1, :cond_26

    const/4 v8, 0x1

    .line 25263
    .local v0, "omitClippedSample":Z
    :goto_f
    const/4 v9, 0x0

    .line 25264
    .local p1, "editedSampleCount":I
    const/4 v11, 0x0

    .line 25265
    .local v10, "nextSampleIndex":I
    const/16 v17, 0x0

    .line 25266
    .local p1, "copyMetadata":Z
    const/4 v10, 0x0

    .end local p1    # "copyMetadata":Z
    .end local v10    # "nextSampleIndex":I
    .local v4, "i":I
    .local v15, "editedSampleCount":I
    .local v15, "nextSampleIndex":I
    :goto_10
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/D2;->A08:[J

    array-length v4, v1

    sget-object v3, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v2, v3, v1

    const/4 v1, 0x3

    aget-object v3, v3, v1

    const/4 v1, 0x3

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v2, v1, :cond_2

    sget-object v3, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v2, "BzjoYiDAPD7JruHGpiclSlQV5TsIMG3C"

    const/4 v1, 0x2

    aput-object v2, v3, v1

    const-wide/16 v5, -0x1

    if-ge v10, v4, :cond_28

    .line 25267
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/D2;->A09:[J

    .end local v4    # "i":I
    .local v2, "duration":J
    aget-wide v3, v1, v10

    .line 25268
    .local v4, "editMediaTime":J
    cmp-long v1, v3, v5

    if-eqz v1, :cond_24

    .line 25269
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/D2;->A08:[J

    aget-wide v24, v1, v10

    iget-wide v5, v0, Lcom/facebook/ads/redexgen/X/D2;->A06:J

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/D2;->A05:J

    .line 25270
    move-wide/from16 v26, v5

    move-wide/from16 v28, v1

    invoke-static/range {v24 .. v29}, Lcom/facebook/ads/redexgen/X/Ic;->A0F(JJJ)J

    move-result-wide v12

    .line 25271
    .local p1, "editDuration":J
    const/4 v1, 0x1

    invoke-static {v7, v3, v4, v1, v1}, Lcom/facebook/ads/redexgen/X/Ic;->A0A([JJZZ)I

    move-result v5

    .line 25272
    .local v0, "startIndex":I
    .end local v8
    .end local v1
    .local v1, "remainingSamplesAtTimestampDelta":I
    .local v0, "offsets":[J
    add-long/2addr v3, v12

    .line 25273
    const/4 v1, 0x0

    invoke-static {v7, v3, v4, v8, v1}, Lcom/facebook/ads/redexgen/X/Ic;->A0A([JJZZ)I

    move-result v2

    .line 25274
    .local v8, "endIndex":I
    sub-int v1, v2, v5

    add-int/2addr v9, v1

    .line 25275
    if-eq v11, v5, :cond_25

    const/4 v1, 0x1

    :goto_11
    or-int v17, v17, v1

    .line 25276
    move v11, v2

    .line 25277
    .end local v15    # "nextSampleIndex":I
    .local v0, "nextSampleIndex":I
    .end local v4    # "editMediaTime":J
    .end local v8    # "endIndex":I
    .end local v1    # "remainingSamplesAtTimestampDelta":I
    .restart local v1    # "remainingSamplesAtTimestampDelta":I
    .restart local v0    # "nextSampleIndex":I
    :cond_24
    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    .line 25278
    :cond_25
    const/4 v1, 0x0

    goto :goto_11

    .line 25279
    :cond_26
    const/4 v8, 0x0

    goto :goto_f

    .line 25280
    .end local p1    # "editDuration":J
    :cond_27
    sub-long/2addr v1, v8

    const-wide/32 v10, 0xf4240

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/D2;->A06:J

    .line 25281
    move-wide v8, v1

    move-wide v12, v3

    invoke-static/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/Ic;->A0F(JJJ)J

    move-result-wide v8

    .line 25282
    .end local v29    # "durationUs":J
    .local v1, "durationUs":J
    new-instance v1, Lcom/facebook/ads/redexgen/X/D5;

    move-object/from16 v2, p1

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    move/from16 v5, v18

    move-object v6, v7

    move-object/from16 v7, v21

    invoke-direct/range {v1 .. v9}, Lcom/facebook/ads/redexgen/X/D5;-><init>(Lcom/facebook/ads/redexgen/X/D2;[J[II[J[IJ)V

    return-object v1

    .line 25283
    .end local v2    # "duration":J
    .end local v1    # "durationUs":J
    .end local v0    # "nextSampleIndex":I
    .local v4, "duration":J
    .restart local v8    # "endIndex":I
    .restart local v1    # "durationUs":J
    :cond_28
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v1, 0x9

    if-eq v2, v1, :cond_34

    sget-object v3, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v2, "WWunqWYO7OV3KMD1BYUpNLYvleM1uwq4"

    const/4 v1, 0x6

    aput-object v2, v3, v1

    .line 25284
    .end local v4    # "duration":J
    .end local v4
    .end local v8    # "endIndex":I
    .end local v1    # "durationUs":J
    .restart local v2    # "duration":J
    .restart local v1    # "durationUs":J
    .restart local v0    # "nextSampleIndex":I
    .end local v0    # "nextSampleIndex":I
    .local v4, "sampleCount":I
    move/from16 v1, v23

    if-eq v9, v1, :cond_31

    const/4 v1, 0x1

    :goto_12
    or-int v17, v17, v1

    .line 25285
    .end local p1
    .local v3, "copyMetadata":Z
    if-eqz v17, :cond_30

    new-array v1, v9, [J

    move-object/from16 p0, v1

    .line 25286
    .local v8, "editedOffsets":[J
    :goto_13
    if-eqz v17, :cond_2f

    new-array v13, v9, [I

    .line 25287
    .local v1, "editedSizes":[I
    :goto_14
    if-eqz v17, :cond_29

    const/16 v18, 0x0

    .line 25288
    .local p1, "editedMaximumSize":I
    :cond_29
    if-eqz v17, :cond_2e

    new-array v12, v9, [I

    .line 25289
    .local v4, "editedFlags":[I
    :goto_15
    new-array v11, v9, [J

    .line 25290
    .local p1, "editedTimestamps":[J
    const-wide/16 v34, 0x0

    .line 25291
    .local v0, "pts":J
    const/16 v16, 0x0

    .line 25292
    .local v4, "sampleIndex":I
    const/4 v6, 0x0

    .end local v0    # "pts":J
    .local p1, "i":I
    .local v0, "editedMaximumSize":I
    .local v1, "pts":J
    :goto_16
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/D2;->A08:[J

    array-length v1, v1

    if-ge v6, v1, :cond_33

    .line 25293
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/D2;->A09:[J

    .end local v15
    .local v0, "editedSampleCount":I
    aget-wide v1, v1, v6

    .line 25294
    .local v0, "editMediaTime":J
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/D2;->A08:[J

    aget-wide v28, v3, v6

    .line 25295
    .local v27, "editDuration":J
    const-wide/16 v4, -0x1

    cmp-long v3, v1, v4

    if-eqz v3, :cond_2d

    .line 25296
    .end local p1    # "i":I
    .local v25, "editedTimestamps":[J
    iget-wide v9, v0, Lcom/facebook/ads/redexgen/X/D2;->A06:J

    .end local v4    # "sampleIndex":I
    .local v24, "editedFlags":[I
    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/D2;->A05:J

    .line 25297
    move-wide/from16 v30, v9

    move-wide/from16 v32, v3

    invoke-static/range {v28 .. v33}, Lcom/facebook/ads/redexgen/X/Ic;->A0F(JJJ)J

    move-result-wide v3

    add-long/2addr v3, v1

    .line 25298
    .local v10, "endMediaTime":J
    const/4 v5, 0x1

    invoke-static {v7, v1, v2, v5, v5}, Lcom/facebook/ads/redexgen/X/Ic;->A0A([JJZZ)I

    move-result v5

    .line 25299
    .local v0, "startIndex":I
    const/4 v9, 0x0

    .end local v15
    .local v0, "nextSampleIndex":I
    invoke-static {v7, v3, v4, v8, v9}, Lcom/facebook/ads/redexgen/X/Ic;->A0A([JJZZ)I

    move-result v3

    .line 25300
    .local v15, "endIndex":I
    if-eqz v17, :cond_2a

    .line 25301
    sub-int v4, v3, v5

    .line 25302
    .local v4, "count":I
    .end local v0    # "nextSampleIndex":I
    .local v0, "offsets":[J
    .local v10, "omitClippedSample":Z
    move-object/from16 v23, v19

    move/from16 v24, v5

    move-object/from16 v25, p0

    move/from16 v26, v16

    move/from16 v27, v4

    invoke-static/range {v23 .. v27}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25303
    .end local v0    # "offsets":[J
    .local v4, "sizes":[I
    .local v0, "sampleCount":I
    move-object/from16 v23, v20

    move/from16 v24, v5

    move-object/from16 v25, v13

    move/from16 v26, v16

    move/from16 v27, v4

    invoke-static/range {v23 .. v27}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25304
    .end local v10    # "omitClippedSample":Z
    .end local v0    # "sampleCount":I
    .end local v24    # "editedFlags":[I
    .local p1, "editedFlags":[I
    .local v0, "flags":[I
    .local v0, "offsets":[J
    .local v6, "endMediaTime":J
    move-object/from16 v23, v21

    move/from16 v24, v5

    move-object/from16 v25, v12

    move/from16 v26, v16

    move/from16 v27, v4

    invoke-static/range {v23 .. v27}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25305
    .end local v10
    .end local v0    # "offsets":[J
    .end local v24
    .restart local p1    # "editedFlags":[I
    .local v0, "flags":[I
    .local v4, "sizes":[I
    .local v0, "offsets":[J
    .local v0, "sampleCount":I
    .restart local v10    # "omitClippedSample":Z
    .restart local v6    # "endMediaTime":J
    :cond_2a
    if-ge v5, v3, :cond_2b

    aget v9, v12, v16

    const/4 v4, 0x1

    and-int/2addr v9, v4

    if-eqz v9, :cond_32

    .line 25306
    .end local v0    # "sampleCount":I
    .local v4, "j":I
    .local v4, "editedMaximumSize":I
    .local v0, "sampleIndex":I
    :cond_2b
    :goto_17
    if-ge v5, v3, :cond_2d

    .line 25307
    const-wide/32 v36, 0xf4240

    .end local p1    # "editedFlags":[I
    .restart local v24    # "editedFlags":[I
    iget-wide v9, v0, Lcom/facebook/ads/redexgen/X/D2;->A05:J

    move-wide/from16 v38, v9

    invoke-static/range {v34 .. v39}, Lcom/facebook/ads/redexgen/X/Ic;->A0F(JJJ)J

    move-result-wide v14

    .line 25308
    .local v10, "ptsUs":J
    aget-wide v36, v7, v5

    sub-long v36, v36, v1

    const-wide/32 v38, 0xf4240

    .end local v0    # "sampleIndex":I
    .end local v0
    .local v15, "startIndex":I
    .local v0, "editMediaTime":J
    iget-wide v9, v0, Lcom/facebook/ads/redexgen/X/D2;->A06:J

    .line 25309
    move-wide/from16 v40, v9

    invoke-static/range {v36 .. v41}, Lcom/facebook/ads/redexgen/X/Ic;->A0F(JJJ)J

    move-result-wide v9

    .line 25310
    .local v0, "timeInSegmentUs":J
    add-long/2addr v14, v9

    aput-wide v14, v11, v16

    .line 25311
    if-eqz v17, :cond_2c

    .end local v10    # "ptsUs":J
    .local v14, "ptsUs":J
    aget v9, v13, v16

    move/from16 v4, v18

    if-le v9, v4, :cond_2c

    .line 25312
    aget v18, v20, v5

    .line 25313
    .end local v10
    .restart local v14    # "ptsUs":J
    .end local v0    # "timeInSegmentUs":J
    .end local v14    # "ptsUs":J
    :cond_2c
    add-int/lit8 v16, v16, 0x1

    .line 25314
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 25315
    .end local p1
    .end local v4    # "editedMaximumSize":I
    .end local v0
    .end local v15    # "startIndex":I
    .end local v0
    .local v0, "flags":[I
    .local v4, "sizes":[I
    .restart local v0    # "flags":[I
    .local v0, "offsets":[J
    .local v0, "sampleCount":I
    .restart local v0    # "sampleCount":I
    .restart local v25    # "editedTimestamps":[J
    .restart local v24    # "editedFlags":[I
    .restart local v10    # "ptsUs":J
    :cond_2d
    add-long v34, v34, v28

    .line 25316
    .end local v0    # "sampleCount":I
    .end local v27    # "editDuration":J
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_16

    .line 25317
    :cond_2e
    move-object/from16 v12, v21

    goto/16 :goto_15

    .line 25318
    :cond_2f
    move-object/from16 v13, v20

    goto/16 :goto_14

    .line 25319
    :cond_30
    move-object/from16 p0, v19

    goto/16 :goto_13

    .line 25320
    :cond_31
    const/4 v1, 0x0

    goto/16 :goto_12

    .line 25321
    :cond_32
    const/16 v2, 0x8b

    const/16 v1, 0x3b

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25322
    new-instance v0, Lcom/facebook/ads/redexgen/X/VN;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/VN;-><init>()V

    throw v0

    .line 25323
    .end local v0
    .end local v0
    .end local v25    # "editedTimestamps":[J
    .end local v24    # "editedFlags":[I
    .end local v10    # "ptsUs":J
    .restart local p1    # "editedFlags":[I
    .restart local v4    # "sizes":[I
    .local v15, "editedSampleCount":I
    .restart local v15    # "editedSampleCount":I
    .local v0, "omitClippedSample":Z
    .local v4, "sampleCount":I
    .restart local v0    # "omitClippedSample":Z
    .local v0, "sizes":[I
    .local v0, "offsets":[J
    .end local p1    # "editedFlags":[I
    .end local p1
    .end local v4    # "sampleCount":I
    .end local v15    # "editedSampleCount":I
    .end local v15
    .end local v0    # "offsets":[J
    .local v0, "flags":[I
    .local v4, "sizes":[I
    .restart local v0    # "flags":[I
    .local v0, "offsets":[J
    .local v0, "sampleCount":I
    .restart local v0    # "sampleCount":I
    .restart local v25    # "editedTimestamps":[J
    .restart local v24    # "editedFlags":[I
    .restart local v10    # "ptsUs":J
    :cond_33
    const-wide/32 v36, 0xf4240

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/D2;->A06:J

    move-wide/from16 v38, v0

    invoke-static/range {v34 .. v39}, Lcom/facebook/ads/redexgen/X/Ic;->A0F(JJJ)J

    move-result-wide v7

    .line 25324
    .local v0, "editedDurationUs":J
    new-instance v0, Lcom/facebook/ads/redexgen/X/D5;

    .end local v4    # "sizes":[I
    .local v0, "sampleIndex":I
    .end local v25    # "editedTimestamps":[J
    .end local v24    # "editedFlags":[I
    .restart local v4    # "sizes":[I
    .local v14, "editedTimestamps":[J
    .end local v4    # "sizes":[I
    .local v0, "editedFlags":[I
    .local v0, "editedSampleCount":I
    .local v0, "nextSampleIndex":I
    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move-object v3, v13

    move/from16 v4, v18

    move-object v5, v11

    move-object v6, v12

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/redexgen/X/D5;-><init>(Lcom/facebook/ads/redexgen/X/D2;[J[II[J[IJ)V

    return-object v0

    :cond_34
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_35
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 25325
    .end local v23    # "timestamps":[J
    .end local v0    # "nextSampleIndex":I
    .end local v4
    .end local v11    # "paddingTimeUnits":J
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
    .end local v1    # "pts":J
    .end local v1
    .end local v1
    .end local v0
    .end local v0
    .end local v2    # "duration":J
    .end local v1
    .end local v0
    .end local v0
    .end local v3
    .end local v0
    .end local v2
    .end local v0
    .end local v1
    .end local v0
    .end local v29
    .local p1, "stz2Atom":Lcom/facebook/ads/redexgen/X/VQ;
    .local v3, "stszAtom":Lcom/facebook/ads/redexgen/X/VQ;
    :cond_36
    const/16 v2, 0xe6

    const/16 v1, 0x2a

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A0F(Lcom/facebook/ads/redexgen/X/VQ;Z)Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;
    .locals 7

    .line 25326
    const/4 v6, 0x0

    if-eqz p1, :cond_0

    .line 25327
    return-object v6

    .line 25328
    :cond_0
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/VQ;->A00:Lcom/facebook/ads/redexgen/X/IM;

    .line 25329
    .local p1, "udtaData":Lcom/facebook/ads/redexgen/X/IM;
    const/16 v4, 0x8

    invoke-virtual {v5, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 25330
    :goto_0
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    if-lt v0, v4, :cond_3

    .line 25331
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v3

    .line 25332
    .local v5, "atomPosition":I
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v2

    .line 25333
    .local v4, "atomSize":I
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v1

    .line 25334
    .local v0, "atomType":I
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0h:I

    if-ne v1, v0, :cond_1

    .line 25335
    invoke-virtual {v5, v3}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 25336
    add-int/2addr v3, v2

    invoke-static {v5, v3}, Lcom/facebook/ads/redexgen/X/Cm;->A0H(Lcom/facebook/ads/redexgen/X/IM;I)Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    move-result-object v0

    return-object v0

    .line 25337
    :cond_1
    add-int/lit8 v3, v2, -0x8

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x75

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "fhWiQEJqaJnnbPvCCb6eZVqmZUT14XcA"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "LCRxKUo6Z4LCRUnCFGmjALTPVZQXiM1w"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v5, v3}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 25338
    .end local v5    # "atomPosition":I
    .end local v4    # "atomSize":I
    .end local v0    # "atomType":I
    goto :goto_0

    .line 25339
    :cond_3
    return-object v6
.end method

.method public static A0G(Lcom/facebook/ads/redexgen/X/IM;I)Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;
    .locals 2

    .line 25340
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 25341
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25342
    .local p0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata$Entry;>;"
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 25343
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Cu;->A01(Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata$Entry;

    move-result-object v0

    .line 25344
    .local p1, "entry":Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata$Entry;
    if-eqz v0, :cond_0

    .line 25345
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 25346
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

    .line 25347
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 25348
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 25349
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v3

    .line 25350
    .local p0, "atomPosition":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v2

    .line 25351
    .local p1, "atomSize":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v1

    .line 25352
    .local v0, "atomType":I
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0a:I

    if-ne v1, v0, :cond_0

    .line 25353
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 25354
    add-int/2addr v3, v2

    invoke-static {p0, v3}, Lcom/facebook/ads/redexgen/X/Cm;->A0G(Lcom/facebook/ads/redexgen/X/IM;I)Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    move-result-object v0

    return-object v0

    .line 25355
    :cond_0
    add-int/lit8 v0, v2, -0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 25356
    .end local p0    # "atomPosition":I
    .end local p1    # "atomSize":I
    .end local v0    # "atomType":I
    goto :goto_0

    .line 25357
    :cond_1
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "RWme"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
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

    add-int/lit8 v0, v0, -0x74

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
        -0x45t
        -0x51t
        0x1t
        -0xct
        -0x4t
        -0x10t
        -0x8t
        -0x3t
        -0x8t
        -0x3t
        -0xat
        -0x1et
        -0x10t
        -0x4t
        -0x1t
        -0x5t
        -0xct
        0x2t
        -0x30t
        0x3t
        -0x1dt
        -0x8t
        -0x4t
        -0xct
        0x2t
        0x3t
        -0x10t
        -0x4t
        -0x1t
        -0x2dt
        -0xct
        -0x5t
        0x3t
        -0x10t
        -0x51t
        -0x53t
        -0x5ft
        -0xdt
        -0x1at
        -0x12t
        -0x1et
        -0x16t
        -0x11t
        -0x16t
        -0x11t
        -0x18t
        -0x2ct
        -0x1et
        -0x12t
        -0xft
        -0x13t
        -0x1at
        -0xct
        -0x36t
        -0x11t
        -0x3ct
        -0x17t
        -0xat
        -0x11t
        -0x14t
        -0x5ft
        0xct
        0x0t
        0x52t
        0x45t
        0x4dt
        0x41t
        0x49t
        0x4et
        0x49t
        0x4et
        0x47t
        0x34t
        0x49t
        0x4dt
        0x45t
        0x53t
        0x54t
        0x41t
        0x4dt
        0x50t
        0x24t
        0x45t
        0x4ct
        0x54t
        0x41t
        0x23t
        0x48t
        0x41t
        0x4et
        0x47t
        0x45t
        0x53t
        0x0t
        -0x12t
        -0x2ct
        0x26t
        0x19t
        0x21t
        0x15t
        0x1dt
        0x22t
        0x1dt
        0x22t
        0x1bt
        0x7t
        0x2dt
        0x22t
        0x17t
        0x1ct
        0x26t
        0x23t
        0x22t
        0x1dt
        0x2et
        0x15t
        0x28t
        0x1dt
        0x23t
        0x22t
        0x7t
        0x15t
        0x21t
        0x24t
        0x20t
        0x19t
        0x27t
        -0x2ct
        -0x34t
        -0x1t
        -0x6t
        -0x8t
        -0x25t
        -0x14t
        -0x3t
        -0x2t
        -0x10t
        -0x3t
        -0x2t
        0x2at
        0x48t
        0x4ft
        0x50t
        0x53t
        0x4at
        0x4ft
        0x48t
        0x1t
        0x46t
        0x45t
        0x4at
        0x55t
        0x1t
        0x4dt
        0x4at
        0x54t
        0x55t
        0x1bt
        0x1t
        0x46t
        0x45t
        0x4at
        0x55t
        0x1t
        0x45t
        0x50t
        0x46t
        0x54t
        0x1t
        0x4ft
        0x50t
        0x55t
        0x1t
        0x54t
        0x55t
        0x42t
        0x53t
        0x55t
        0x1t
        0x58t
        0x4at
        0x55t
        0x49t
        0x1t
        0x42t
        0x1t
        0x54t
        0x5at
        0x4ft
        0x44t
        0x1t
        0x54t
        0x42t
        0x4et
        0x51t
        0x4dt
        0x46t
        0xft
        -0x1ft
        0x6t
        -0x5t
        0x7t
        0x6t
        0xbt
        0x1t
        0xbt
        0xct
        -0x3t
        0x6t
        0xct
        -0x48t
        0xbt
        0xct
        -0x6t
        0x4t
        -0x48t
        -0x6t
        0x7t
        0x10t
        -0x48t
        -0x2t
        0x7t
        0xat
        -0x48t
        0xct
        0xat
        -0x7t
        -0x5t
        0x3t
        -0x48t
        0x3ft
        0x5dt
        0x4ct
        0x4et
        0x56t
        0xbt
        0x53t
        0x4ct
        0x5et
        0xbt
        0x59t
        0x5at
        0xbt
        0x5et
        0x4ct
        0x58t
        0x5bt
        0x57t
        0x50t
        0xbt
        0x5ft
        0x4ct
        0x4dt
        0x57t
        0x50t
        0xbt
        0x5et
        0x54t
        0x65t
        0x50t
        0xbt
        0x54t
        0x59t
        0x51t
        0x5at
        0x5dt
        0x58t
        0x4ct
        0x5ft
        0x54t
        0x5at
        0x59t
        -0xft
        0xat
        0xft
        0x11t
        0xct
        0xct
        0xbt
        0xet
        0x10t
        0x1t
        0x0t
        -0x44t
        0x9t
        0x1t
        0x0t
        0x5t
        -0x3t
        -0x44t
        0xet
        -0x3t
        0x10t
        0x1t
        -0x36t
        0x44t
        0x53t
        0x53t
        0x4ft
        0x4ct
        0x46t
        0x44t
        0x57t
        0x4ct
        0x52t
        0x51t
        0x12t
        0x57t
        0x57t
        0x50t
        0x4ft
        0xet
        0x5bt
        0x50t
        0x4ft
        0x1ct
        0x2bt
        0x2bt
        0x27t
        0x24t
        0x1et
        0x1ct
        0x2ft
        0x24t
        0x2at
        0x29t
        -0x16t
        0x33t
        -0x18t
        0x1et
        0x1ct
        0x28t
        0x20t
        0x2dt
        0x1ct
        -0x18t
        0x28t
        0x2at
        0x2ft
        0x24t
        0x2at
        0x29t
        -0x13t
        -0x4t
        -0x4t
        -0x8t
        -0xbt
        -0x11t
        -0x13t
        0x0t
        -0xbt
        -0x5t
        -0x6t
        -0x45t
        0x4t
        -0x47t
        -0x7t
        -0x4t
        -0x40t
        -0x47t
        -0x11t
        -0xft
        -0x13t
        -0x47t
        -0x3et
        -0x44t
        -0x3ct
        0xbt
        0x1at
        0x1at
        0x16t
        0x13t
        0xdt
        0xbt
        0x1et
        0x13t
        0x19t
        0x18t
        -0x27t
        0x22t
        -0x29t
        0x17t
        0x1at
        -0x22t
        -0x29t
        0x20t
        0x1et
        0x1et
        0x3dt
        0x4ct
        0x4ct
        0x48t
        0x45t
        0x3ft
        0x3dt
        0x50t
        0x45t
        0x4bt
        0x4at
        0xbt
        0x54t
        0x9t
        0x4dt
        0x51t
        0x45t
        0x3ft
        0x47t
        0x50t
        0x45t
        0x49t
        0x41t
        0x9t
        0x50t
        0x54t
        0xft
        0x43t
        0x1ct
        0x30t
        0x1ft
        0x24t
        0x2at
        -0x16t
        -0x12t
        0x22t
        0x2bt
        0x2bt
        0x45t
        0x59t
        0x48t
        0x4dt
        0x53t
        0x13t
        0x45t
        0x47t
        0x17t
        0xat
        0x1et
        0xdt
        0x12t
        0x18t
        -0x28t
        0xat
        0x15t
        0xat
        0xct
        -0x22t
        -0xet
        -0x1ft
        -0x1at
        -0x14t
        -0x54t
        -0x22t
        -0x16t
        -0x11t
        -0x56t
        -0xct
        -0x21t
        0x3ft
        0x53t
        0x42t
        0x47t
        0x4dt
        0xdt
        0x43t
        0x3ft
        0x41t
        0x11t
        0x1bt
        0x2ft
        0x1et
        0x23t
        0x29t
        -0x17t
        0x27t
        0x2at
        -0x12t
        0x1bt
        -0x19t
        0x26t
        0x1bt
        0x2et
        0x27t
        0x42t
        0x56t
        0x45t
        0x4at
        0x50t
        0x10t
        0x4et
        0x51t
        0x46t
        0x48t
        0x4dt
        0x61t
        0x50t
        0x55t
        0x5bt
        0x1bt
        0x5et
        0x4dt
        0x63t
        0x3bt
        0x4ft
        0x3et
        0x43t
        0x49t
        0x9t
        0x50t
        0x48t
        0x3et
        0x8t
        0x3et
        0x4et
        0x4dt
        -0xat
        0xat
        -0x7t
        -0x2t
        0x4t
        -0x3ct
        0xbt
        0x3t
        -0x7t
        -0x3dt
        -0x7t
        0x9t
        0x8t
        -0x3dt
        -0x3t
        -0x7t
        0x52t
        0x66t
        0x55t
        0x5at
        0x60t
        0x20t
        0x67t
        0x5ft
        0x55t
        0x1ft
        0x55t
        0x65t
        0x64t
        0x1ft
        0x59t
        0x55t
        0x2ct
        0x61t
        0x63t
        0x60t
        0x57t
        0x5at
        0x5dt
        0x56t
        0x2et
        0x5dt
        0x53t
        0x63t
        -0xdt
        -0xet
        -0xdt
        -0x3ft
        -0xet
        -0xft
        -0xet
        0x2t
        -0xat
        -0x8t
        0x1t
        -0xat
        -0x6t
        -0x4t
        0x5t
        0xat
        0x35t
        0x3at
        0x3bt
        0x3et
        0x36t
        0x13t
        0x46t
        0x41t
        0x3ft
        0x25t
        0x3bt
        0x4ct
        0x37t
        -0xet
        0x45t
        0x3at
        0x41t
        0x47t
        0x3et
        0x36t
        -0xet
        0x34t
        0x37t
        -0xet
        0x42t
        0x41t
        0x45t
        0x3bt
        0x46t
        0x3bt
        0x48t
        0x37t
        -0x9t
        0x0t
        -0x9t
        0x4t
        0x4bt
        0x57t
        0x52t
        0x46t
        0x5t
        0x46t
        0x59t
        0x54t
        0x52t
        0x5t
        0x4et
        0x58t
        0x5t
        0x52t
        0x46t
        0x53t
        0x49t
        0x46t
        0x59t
        0x54t
        0x57t
        0x5et
        0xdt
        0x5t
        0x14t
        0x1t
        0x19t
        0x8t
        0x1at
        0x12t
        0x38t
        0x28t
        0x2dt
        0x2et
        -0x1bt
        0x26t
        0x39t
        0x34t
        0x32t
        -0x1bt
        0x2et
        0x38t
        -0x1bt
        0x32t
        0x26t
        0x33t
        0x29t
        0x26t
        0x39t
        0x34t
        0x37t
        0x3et
        -0x12t
        -0x16t
        -0x10t
        -0x17t
        0x54t
        0x56t
        0x43t
        0x55t
        0xet
        -0x1t
        0x8t
        -0x3t
        -0x46t
        -0x5t
        0xet
        0x9t
        0x7t
        -0x46t
        0x3t
        0xdt
        -0x46t
        0x7t
        -0x5t
        0x8t
        -0x2t
        -0x5t
        0xet
        0x9t
        0xct
        0x13t
        0xft
        0x0t
        0x13t
        0xft
        0x50t
        0x43t
        0x3et
        0x3ft
        0x19t
        0xct
        0x7t
        0x8t
        0x12t
        -0x2et
        -0x2at
        0xat
        0x13t
        0x13t
        0x1ct
        0xft
        0xat
        0xbt
        0x15t
        -0x2bt
        0x7t
        0x1ct
        0x9t
        0x19t
        0xct
        0x7t
        0x8t
        0x12t
        -0x2et
        0xbt
        0x8t
        0x19t
        0x6t
        0x33t
        0x26t
        0x21t
        0x22t
        0x2ct
        -0x14t
        0x35t
        -0x16t
        0x33t
        0x2bt
        0x21t
        -0x15t
        0x2ct
        0x2bt
        -0x11t
        -0x15t
        0x33t
        0x2dt
        -0xbt
        0x2dt
        0x20t
        0x1bt
        0x1ct
        0x26t
        -0x1at
        0x2ft
        -0x1ct
        0x2dt
        0x25t
        0x1bt
        -0x1bt
        0x26t
        0x25t
        -0x17t
        -0x1bt
        0x2dt
        0x27t
        -0x10t
    .end array-data
.end method

.method public static A0K()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "UWnioH7"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "IBbKwwUnvR6ko"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ozMkwnBzPJgdSuuIBPsmftZUewk9EE2p"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "xiwl9gmdaBGn5yTiLIVUWziVKpzp7VUf"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "00lefutQ2lWHSCMV5ikSz7PZmIwg0Mps"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "jcdclol"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "93hOdmIn7UTTNBz0mIoHYzMa8L1U6oY5"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "y4Np0XZt9Ue8J"

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

    .line 25358
    move/from16 v9, p2

    add-int/lit8 v0, v9, 0x8

    add-int/lit8 v0, v0, 0x8

    move-object/from16 v10, p0

    invoke-virtual {v10, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 25359
    const/16 v0, 0x10

    invoke-virtual {v10, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 25360
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v21

    .line 25361
    .local p0, "width":I
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v22

    .line 25362
    .local v0, "height":I
    const/16 v18, 0x0

    .line 25363
    .local v4, "pixelWidthHeightRatioFromPasp":Z
    const/high16 v17, 0x3f800000    # 1.0f

    .line 25364
    .local v3, "pixelWidthHeightRatio":F
    const/16 v0, 0x32

    invoke-virtual {v10, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 25365
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v7

    .line 25366
    .local p8, "childPosition":I
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0S:I

    move-object/from16 v3, p7

    move/from16 v8, p3

    if-ne v14, v0, :cond_1

    .line 25367
    invoke-static {v10, v9, v8}, Lcom/facebook/ads/redexgen/X/Cm;->A09(Lcom/facebook/ads/redexgen/X/IM;II)Landroid/util/Pair;

    move-result-object v2

    .line 25368
    .local v10, "sampleEntryEncryptionData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/TrackEncryptionBox;>;"
    if-eqz v2, :cond_0

    .line 25369
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 25370
    .end local v0    # "height":I
    .local v9, "atomType":I
    if-nez v4, :cond_2

    .line 25371
    const/4 v4, 0x0

    .line 25372
    .end local p3    # null:I
    .local v8, "drmInitData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
    :goto_0
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/Ck;->A03:[Lcom/facebook/ads/redexgen/X/D3;

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/D3;

    aput-object v0, v1, p8

    .line 25373
    :cond_0
    invoke-virtual {v10, v7}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 25374
    .end local v0
    .end local p3
    .restart local v8    # "drmInitData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
    .local v0, "atomType":I
    :cond_1
    const/4 v5, 0x0

    .line 25375
    .local v10, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v0, 0x0

    .line 25376
    .local v9, "mimeType":Ljava/lang/String;
    const/16 p2, 0x0

    .line 25377
    .local v8, "projectionData":[B
    const/16 p3, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v2, v2, v1

    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v1, 0x37

    if-eq v2, v1, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 25378
    :cond_2
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/D3;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/D3;->A02:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;->A03(Ljava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    move-result-object v4

    goto :goto_0

    .line 25379
    :cond_3
    sget-object v6, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v2, "eAN2IADc8aOJtujYDDFJprou2jXNauoP"

    const/4 v1, 0x2

    aput-object v2, v6, v1

    .line 25380
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

    .line 25381
    invoke-virtual {v10, v7}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 25382
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v11

    .line 25383
    .local v4, "childStartPosition":I
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v6

    .line 25384
    .local v3, "childAtomSize":I
    if-nez v6, :cond_5

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v1

    sub-int/2addr v1, v9

    if-ne v1, v8, :cond_5

    .line 25385
    :cond_4
    if-nez v0, :cond_1a

    .line 25386
    return-void

    .line 25387
    :cond_5
    const/16 v16, 0x0

    const/4 v15, 0x1

    if-lez v6, :cond_19

    const/4 v2, 0x1

    :goto_2
    const/16 v13, 0x23e

    const/16 v12, 0x20

    const/16 v1, 0x5e

    invoke-static {v13, v12, v1}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/facebook/ads/redexgen/X/Hx;->A05(ZLjava/lang/Object;)V

    .line 25388
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v2

    .line 25389
    .local v9, "childAtomType":I
    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A09:I

    if-ne v2, v1, :cond_8

    .line 25390
    if-nez v0, :cond_6

    const/16 v16, 0x1

    :cond_6
    invoke-static/range {v16 .. v16}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 25391
    const/16 v2, 0x2c6

    const/16 v1, 0x9

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    .line 25392
    add-int/lit8 v1, v11, 0x8

    invoke-virtual {v10, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 25393
    invoke-static {v10}, Lcom/facebook/ads/redexgen/X/Ie;->A00(Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/Ie;

    move-result-object v2

    .line 25394
    .local p8, "avcConfig":Lcom/facebook/ads/redexgen/X/Ie;
    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/Ie;->A04:Ljava/util/List;

    .line 25395
    .end local v2    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v10    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget v1, v2, Lcom/facebook/ads/redexgen/X/Ie;->A02:I

    iput v1, v3, Lcom/facebook/ads/redexgen/X/Ck;->A00:I

    .line 25396
    if-nez v18, :cond_7

    .line 25397
    iget v1, v2, Lcom/facebook/ads/redexgen/X/Ie;->A00:F

    move/from16 v17, v1

    .line 25398
    .end local p8    # "avcConfig":Lcom/facebook/ads/redexgen/X/Ie;
    .end local v4    # "childStartPosition":I
    :cond_7
    :goto_3
    add-int/2addr v7, v6

    .line 25399
    .end local v4
    .end local v3    # "childAtomSize":I
    .end local v9    # "childAtomType":I
    goto :goto_1

    .line 25400
    .end local v10    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v2    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_8
    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A0Z:I

    if-ne v2, v1, :cond_a

    .line 25401
    if-nez v0, :cond_9

    const/16 v16, 0x1

    :cond_9
    invoke-static/range {v16 .. v16}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 25402
    const/16 v2, 0x2cf

    const/16 v1, 0xa

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    .line 25403
    add-int/lit8 v1, v11, 0x8

    invoke-virtual {v10, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 25404
    invoke-static {v10}, Lcom/facebook/ads/redexgen/X/Ik;->A00(Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/Ik;

    move-result-object v1

    .line 25405
    .local p8, "hevcConfig":Lcom/facebook/ads/redexgen/X/Ik;
    iget-object v5, v1, Lcom/facebook/ads/redexgen/X/Ik;->A01:Ljava/util/List;

    .line 25406
    .end local v2    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v10    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget v1, v1, Lcom/facebook/ads/redexgen/X/Ik;->A00:I

    iput v1, v3, Lcom/facebook/ads/redexgen/X/Ck;->A00:I

    .line 25407
    .end local p8    # "hevcConfig":Lcom/facebook/ads/redexgen/X/Ik;
    goto :goto_3

    .end local v10    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v2    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_a
    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A1V:I

    if-ne v2, v1, :cond_d

    .line 25408
    if-nez v0, :cond_b

    const/16 v16, 0x1

    :cond_b
    invoke-static/range {v16 .. v16}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 25409
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1T:I

    if-ne v14, v0, :cond_c

    const/16 v2, 0x2d9

    const/16 v1, 0x13

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_c
    const/16 v2, 0x2ec

    const/16 v1, 0x13

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 25410
    :cond_d
    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A0E:I

    if-ne v2, v1, :cond_f

    .line 25411
    if-nez v0, :cond_e

    const/16 v16, 0x1

    :cond_e
    invoke-static/range {v16 .. v16}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 25412
    const/16 v2, 0x2bc

    const/16 v1, 0xa

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 25413
    :cond_f
    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A0T:I

    if-ne v2, v1, :cond_12

    .line 25414
    if-nez v0, :cond_10

    const/16 v16, 0x1

    :cond_10
    invoke-static/range {v16 .. v16}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 25415
    invoke-static {v10, v11}, Lcom/facebook/ads/redexgen/X/Cm;->A07(Lcom/facebook/ads/redexgen/X/IM;I)Landroid/util/Pair;

    move-result-object v5

    .line 25416
    .local p8, "mimeTypeAndInitializationData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    sget-object v11, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v2, v11, v1

    const/4 v1, 0x5

    aget-object v1, v11, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v2, v1, :cond_11

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_11
    sget-object v11, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v2, "gR6Tu877LRsDOUE"

    const/4 v1, 0x1

    aput-object v2, v11, v1

    check-cast v0, Ljava/lang/String;

    .line 25417
    iget-object v1, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 25418
    .end local p8    # "mimeTypeAndInitializationData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    goto/16 :goto_3

    :cond_12
    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A0q:I

    if-ne v2, v1, :cond_13

    .line 25419
    invoke-static {v10, v11}, Lcom/facebook/ads/redexgen/X/Cm;->A00(Lcom/facebook/ads/redexgen/X/IM;I)F

    move-result v17

    .line 25420
    const/16 v18, 0x1

    .end local v7    # "pixelWidthHeightRatioFromPasp":Z
    .local p8, "pixelWidthHeightRatioFromPasp":Z
    goto/16 :goto_3

    .line 25421
    .end local p8    # "pixelWidthHeightRatioFromPasp":Z
    .restart local v7    # "pixelWidthHeightRatioFromPasp":Z
    :cond_13
    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A1G:I

    if-ne v2, v1, :cond_14

    .line 25422
    invoke-static {v10, v11, v6}, Lcom/facebook/ads/redexgen/X/Cm;->A0P(Lcom/facebook/ads/redexgen/X/IM;II)[B

    move-result-object p2

    goto/16 :goto_3

    .line 25423
    :cond_14
    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A16:I

    if-ne v2, v1, :cond_7

    .line 25424
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v1

    .line 25425
    .local p8, "version":I
    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 25426
    if-nez v1, :cond_7

    .line 25427
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v2

    .line 25428
    .local v4, "layout":I
    if-eqz v2, :cond_18

    if-eq v2, v15, :cond_17

    const/4 v1, 0x2

    if-eq v2, v1, :cond_16

    if-eq v2, v11, :cond_15

    goto/16 :goto_3

    .line 25429
    :cond_15
    const/16 p3, 0x3

    .line 25430
    goto/16 :goto_3

    .line 25431
    :cond_16
    const/16 p3, 0x2

    .line 25432
    goto/16 :goto_3

    .line 25433
    :cond_17
    const/16 p3, 0x1

    .line 25434
    goto/16 :goto_3

    .line 25435
    :cond_18
    const/16 p3, 0x0

    goto/16 :goto_3

    .line 25436
    :cond_19
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 25437
    :cond_1a
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0x0

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/high16 v23, -0x40800000    # -1.0f

    const/16 p4, 0x0

    .line 25438
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

    .line 25439
    return-void
.end method

.method public static A0M(Lcom/facebook/ads/redexgen/X/IM;IIIILjava/lang/String;Lcom/facebook/ads/redexgen/X/Ck;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 25440
    add-int/lit8 v0, p2, 0x8

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 25441
    const/4 v13, 0x0

    .line 25442
    .local p3, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const-wide v11, 0x7fffffffffffffffL

    .line 25443
    .local p4, "subsampleOffsetUs":J
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A03:I

    move-object/from16 v1, p6

    if-ne p1, v0, :cond_0

    .line 25444
    const/16 v3, 0x127

    const/16 v2, 0x14

    const/16 v0, 0x6f

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v4

    .line 25445
    .local v1, "mimeType":Ljava/lang/String;
    :goto_0
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    .line 25446
    move-object/from16 v8, p5

    invoke-static/range {v3 .. v13}, Lcom/facebook/ads/internal/exoplayer2/Format;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;JLjava/util/List;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/Ck;->A02:Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 25447
    return-void

    .line 25448
    .end local v1    # "mimeType":Ljava/lang/String;
    :cond_0
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1P:I

    if-ne p1, v0, :cond_1

    .line 25449
    const/16 v3, 0x184

    const/16 v2, 0x1c

    const/16 v0, 0x68

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v4

    .line 25450
    .restart local v1    # "mimeType":Ljava/lang/String;
    add-int/lit8 v0, p3, -0x8

    add-int/lit8 v3, v0, -0x8

    .line 25451
    .local p0, "sampleDescriptionLength":I
    new-array v2, v3, [B

    .line 25452
    .local p1, "sampleDescriptionData":[B
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v3}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 25453
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    .line 25454
    .end local p0    # "sampleDescriptionLength":I
    .end local p1    # "sampleDescriptionData":[B
    goto :goto_0

    .end local v1    # "mimeType":Ljava/lang/String;
    :cond_1
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1X:I

    if-ne p1, v0, :cond_2

    .line 25455
    const/16 v3, 0x16f

    const/16 v2, 0x15

    const/16 v0, 0x36

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v4

    .restart local v1    # "mimeType":Ljava/lang/String;
    goto :goto_0

    .line 25456
    .end local v1    # "mimeType":Ljava/lang/String;
    :cond_2
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A19:I

    if-ne p1, v0, :cond_3

    .line 25457
    const/16 v3, 0x127

    const/16 v2, 0x14

    const/16 v0, 0x6f

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v4

    .line 25458
    .restart local v1    # "mimeType":Ljava/lang/String;
    const-wide/16 v11, 0x0

    goto :goto_0

    .line 25459
    .end local v1    # "mimeType":Ljava/lang/String;
    :cond_3
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0A:I

    if-ne p1, v0, :cond_4

    .line 25460
    const/16 v3, 0x156

    const/16 v2, 0x19

    const/16 v0, 0x18

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v4

    .line 25461
    .restart local v1    # "mimeType":Ljava/lang/String;
    const/4 v0, 0x1

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Ck;->A01:I

    goto :goto_0

    .line 25462
    .end local v1    # "mimeType":Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static A0N(Lcom/facebook/ads/redexgen/X/IM;IIIILjava/lang/String;ZLcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;Lcom/facebook/ads/redexgen/X/Ck;I)V
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    move-object/from16 v3, p7

    move/from16 v6, p1

    .line 25463
    move/from16 v7, p2

    add-int/lit8 v1, v7, 0x8

    const/16 v0, 0x8

    add-int/2addr v1, v0

    move-object/from16 v5, p0

    invoke-virtual {v5, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 25464
    const/4 v9, 0x0

    .line 25465
    .local p4, "quickTimeSoundDescriptionVersion":I
    const/4 v10, 0x6

    if-eqz p6, :cond_20

    .line 25466
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v9

    .line 25467
    invoke-virtual {v5, v10}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 25468
    .end local p4    # "quickTimeSoundDescriptionVersion":I
    .local v28, "quickTimeSoundDescriptionVersion":I
    :goto_0
    const/4 v11, 0x2

    const/16 v8, 0x10

    const/4 v4, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_28

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "tYYNaQDZ7Gbc4t5NlvdSiEqxpT2NjNYa"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v9, :cond_0

    if-ne v9, v4, :cond_1f

    .line 25469
    :cond_0
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v19

    .line 25470
    .local v28, "channelCount":I
    invoke-virtual {v5, v10}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 25471
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A0G()I

    move-result v15

    .line 25472
    .local p6, "sampleRate":I
    if-ne v9, v4, :cond_1

    .line 25473
    invoke-virtual {v5, v8}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 25474
    .end local v28    # "channelCount":I
    .restart local p4    # "quickTimeSoundDescriptionVersion":I
    :cond_1
    :goto_1
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v4

    .line 25475
    .local v28, "childPosition":I
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0R:I

    const/16 v22, 0x0

    move-object/from16 v2, p8

    move/from16 v17, p3

    if-ne v6, v0, :cond_3

    .line 25476
    move/from16 v0, v17

    invoke-static {v5, v7, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A09(Lcom/facebook/ads/redexgen/X/IM;II)Landroid/util/Pair;

    move-result-object v8

    .line 25477
    .local v3, "sampleEntryEncryptionData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/TrackEncryptionBox;>;"
    if-eqz v8, :cond_2

    .line 25478
    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 25479
    .end local v0
    .local v2, "atomType":I
    if-nez v3, :cond_1e

    .line 25480
    move-object/from16 v3, v22

    .line 25481
    :goto_2
    sget-object v9, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v9, v0

    const/4 v0, 0x5

    aget-object v0, v9, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1d

    .line 25482
    .end local v19
    .local v17, "drmInitData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
    sget-object v9, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "yxnJyqj"

    const/4 v0, 0x0

    aput-object v1, v9, v0

    const-string v1, "AbzQ1KR"

    const/4 v0, 0x5

    aput-object v1, v9, v0

    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Ck;->A03:[Lcom/facebook/ads/redexgen/X/D3;

    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/D3;

    aput-object v0, v1, p9

    .line 25483
    :cond_2
    :goto_3
    invoke-virtual {v5, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 25484
    .end local v0
    .end local v19
    .local p9, "drmInitData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
    .local v5, "atomType":I
    :cond_3
    const/4 v0, 0x0

    .line 25485
    .local v17, "mimeType":Ljava/lang/String;
    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A05:I

    if-ne v6, v1, :cond_f

    .line 25486
    const/16 v6, 0x1aa

    const/16 v1, 0x9

    const/16 v0, 0x70

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    .line 25487
    :cond_4
    :goto_4
    const/4 v1, 0x0

    .line 25488
    .end local v17    # "mimeType":Ljava/lang/String;
    .end local p4    # "quickTimeSoundDescriptionVersion":I
    .end local v28    # "childPosition":I
    .end local p6    # "sampleRate":I
    .local v3, "mimeType":Ljava/lang/String;
    .local v2, "childPosition":I
    .local v0, "channelCount":I
    .local v1, "sampleRate":I
    .local v9, "initializationData":[B
    :goto_5
    sub-int v8, v4, v7

    const/4 v14, -0x1

    move-object/from16 v28, p5

    move/from16 v6, v17

    if-ge v8, v6, :cond_22

    .line 25489
    invoke-virtual {v5, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 25490
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v6

    .line 25491
    .local p6, "childAtomSize":I
    const/4 v13, 0x0

    if-lez v6, :cond_e

    const/4 v12, 0x1

    :goto_6
    const/16 v11, 0x23e

    const/16 v10, 0x20

    sget-object v9, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v8, 0x6

    aget-object v9, v9, v8

    const/16 v8, 0x8

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v8, 0x37

    if-eq v9, v8, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    sget-object v16, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v9, "ChuIpMLEkoorBZUB6EvdPbbeXxFCqi"

    const/4 v8, 0x7

    aput-object v9, v16, v8

    const/16 v8, 0x5e

    invoke-static {v11, v10, v8}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Lcom/facebook/ads/redexgen/X/Hx;->A05(ZLjava/lang/Object;)V

    .line 25492
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v10

    .line 25493
    .local v7, "childAtomType":I
    sget v8, Lcom/facebook/ads/redexgen/X/Ch;->A0T:I

    if-eq v10, v8, :cond_6

    if-eqz p6, :cond_9

    sget v8, Lcom/facebook/ads/redexgen/X/Ch;->A1W:I

    if-ne v10, v8, :cond_9

    .line 25494
    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v2    # "childPosition":I
    .end local p9    # "drmInitData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
    .end local v5    # "atomType":I
    .end local v7    # "childAtomType":I
    .restart local v28    # "childPosition":I
    .local v28, "childPosition":I
    .restart local v9    # "initializationData":[B
    .restart local v9    # "initializationData":[B
    .restart local v8
    .restart local v1    # "sampleRate":I
    :cond_6
    sget v8, Lcom/facebook/ads/redexgen/X/Ch;->A0T:I

    if-ne v10, v8, :cond_8

    .line 25495
    move v8, v4

    .line 25496
    .local v17, "esdsAtomPosition":I
    :goto_7
    if-eq v8, v14, :cond_7

    .line 25497
    invoke-static {v5, v8}, Lcom/facebook/ads/redexgen/X/Cm;->A07(Lcom/facebook/ads/redexgen/X/IM;I)Landroid/util/Pair;

    move-result-object v1

    .line 25498
    .local p4, "mimeTypeAndInitializationData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 25499
    .end local v1    # "sampleRate":I
    .restart local v3    # "mimeType":Ljava/lang/String;
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [B

    .line 25500
    const/16 v10, 0x1d3

    const/16 v9, 0xf

    const/16 v8, 0x46

    invoke-static {v10, v9, v8}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 25501
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/I1;->A03([B)Landroid/util/Pair;

    move-result-object v9

    .line 25502
    .local v2, "audioSpecificConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v8, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 25503
    iget-object v8, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 25504
    :cond_7
    :goto_8
    add-int/2addr v4, v6

    .line 25505
    .end local v28    # "childPosition":I
    .end local p6    # "childAtomSize":I
    .end local v28
    .local v2, "childPosition":I
    goto/16 :goto_5

    .line 25506
    :cond_8
    invoke-static {v5, v4, v6}, Lcom/facebook/ads/redexgen/X/Cm;->A03(Lcom/facebook/ads/redexgen/X/IM;II)I

    move-result v8

    goto :goto_7

    .line 25507
    :cond_9
    sget v8, Lcom/facebook/ads/redexgen/X/Ch;->A0F:I

    if-ne v10, v8, :cond_a

    .line 25508
    add-int/lit8 v8, v4, 0x8

    invoke-virtual {v5, v8}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 25509
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v8, v28

    invoke-static {v5, v9, v8, v3}, Lcom/facebook/ads/redexgen/X/Ao;->A07(Lcom/facebook/ads/redexgen/X/IM;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v8

    iput-object v8, v2, Lcom/facebook/ads/redexgen/X/Ck;->A02:Lcom/facebook/ads/internal/exoplayer2/Format;

    goto :goto_8

    .line 25510
    :cond_a
    sget v8, Lcom/facebook/ads/redexgen/X/Ch;->A0I:I

    if-ne v10, v8, :cond_b

    .line 25511
    add-int/lit8 v8, v4, 0x8

    invoke-virtual {v5, v8}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 25512
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v8, v28

    invoke-static {v5, v9, v8, v3}, Lcom/facebook/ads/redexgen/X/Ao;->A08(Lcom/facebook/ads/redexgen/X/IM;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v8

    iput-object v8, v2, Lcom/facebook/ads/redexgen/X/Ck;->A02:Lcom/facebook/ads/internal/exoplayer2/Format;

    goto :goto_8

    .line 25513
    :cond_b
    sget v11, Lcom/facebook/ads/redexgen/X/Ch;->A0H:I

    sget-object v9, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v8, 0x6

    aget-object v9, v9, v8

    const/16 v8, 0x8

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v8, 0x37

    if-eq v9, v8, :cond_c

    if-ne v10, v11, :cond_d

    .line 25514
    :goto_9
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v25, 0x0

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 p0, 0x0

    const/16 p2, 0x0

    .line 25515
    move-object/from16 v24, v0

    .end local p6
    .local v4, "childAtomSize":I
    .end local v3    # "mimeType":Ljava/lang/String;
    .local v1, "mimeType":Ljava/lang/String;
    .end local v2    # "childPosition":I
    .local v0, "childPosition":I
    .end local p9
    .local v9, "drmInitData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
    .end local v5
    .local v9, "atomType":I
    .end local v7
    .local v0, "childAtomType":I
    .end local v28
    .local v8, "quickTimeSoundDescriptionVersion":I
    move-object/from16 p3, v28

    move/from16 v28, v19

    move/from16 v29, v15

    move-object/from16 p1, v3

    invoke-static/range {v23 .. v33}, Lcom/facebook/ads/internal/exoplayer2/Format;->A07(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v8

    iput-object v8, v2, Lcom/facebook/ads/redexgen/X/Ck;->A02:Lcom/facebook/ads/internal/exoplayer2/Format;

    goto :goto_8

    :cond_c
    sget-object v12, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v9, "kIM1LFEZyvsMlurHCeVlC2nvKfjLEwer"

    const/4 v8, 0x2

    aput-object v9, v12, v8

    if-ne v10, v11, :cond_d

    goto :goto_9

    .line 25516
    .end local v9    # "atomType":I
    .end local v9
    .end local v8    # "quickTimeSoundDescriptionVersion":I
    .end local v4    # "childAtomSize":I
    .end local v1    # "mimeType":Ljava/lang/String;
    .end local v0    # "childAtomType":I
    .end local v0
    .restart local p6    # "childAtomSize":I
    .restart local v3    # "mimeType":Ljava/lang/String;
    .restart local v2    # "childPosition":I
    .restart local p9    # "drmInitData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
    .restart local v5    # "atomType":I
    .restart local v7    # "childAtomType":I
    .restart local v28    # "childPosition":I
    .end local p6    # "childAtomSize":I
    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v2    # "childPosition":I
    .end local p9    # "drmInitData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
    .end local v5    # "atomType":I
    .end local v7    # "childAtomType":I
    .end local v28    # "childPosition":I
    .restart local v9    # "atomType":I
    .restart local v9    # "atomType":I
    .restart local v8    # "quickTimeSoundDescriptionVersion":I
    .restart local v4    # "childAtomSize":I
    .restart local v1    # "mimeType":Ljava/lang/String;
    .restart local v0    # "childAtomType":I
    .restart local v0    # "childAtomType":I
    :cond_d
    sget v8, Lcom/facebook/ads/redexgen/X/Ch;->A06:I

    .end local v0    # "childAtomType":I
    .local v28, "childAtomType":I
    if-ne v10, v8, :cond_7

    .line 25517
    .end local v4    # "childAtomSize":I
    .restart local p6    # "childAtomSize":I
    new-array v1, v6, [B

    .line 25518
    .end local v9    # "atomType":I
    .local p4, "initializationData":[B
    .end local v0
    .local v28, "childPosition":I
    invoke-virtual {v5, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 25519
    invoke-virtual {v5, v1, v13, v6}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    sget-object v9, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v8, 0x1

    aget-object v8, v9, v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v8, 0x9

    if-eq v9, v8, :cond_21

    sget-object v10, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v9, "2cvlB78820FBnXqFmvAK9MUfswugy9QH"

    const/4 v8, 0x1

    aput-object v9, v10, v8

    goto/16 :goto_8

    .line 25520
    :cond_e
    const/4 v12, 0x0

    goto/16 :goto_6

    .line 25521
    :cond_f
    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A0N:I

    if-ne v6, v1, :cond_11

    .line 25522
    const/16 v8, 0x1c9

    const/16 v6, 0xa

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_10

    sget-object v9, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "fOL9XPP"

    const/4 v0, 0x0

    aput-object v1, v9, v0

    const-string v1, "z7ZBSXg"

    const/4 v0, 0x5

    aput-object v1, v9, v0

    const/16 v0, 0x6a

    invoke-static {v8, v6, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_10
    const/16 v0, 0x6a

    invoke-static {v8, v6, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 25523
    :cond_11
    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A0J:I

    if-ne v6, v1, :cond_12

    .line 25524
    const/16 v6, 0x1f5

    const/16 v1, 0xd

    const/16 v0, 0x66

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 25525
    :cond_12
    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A0L:I

    if-eq v6, v1, :cond_13

    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A0M:I

    if-ne v6, v1, :cond_14

    .line 25526
    :cond_13
    const/16 v6, 0x202

    const/16 v1, 0x10

    const/16 v0, 0x21

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 25527
    :cond_14
    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A0K:I

    if-ne v6, v1, :cond_16

    .line 25528
    const/16 v6, 0x212

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_15

    sget-object v8, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "fAxoZFAjf2JKk1GdUDgreNKER2q2mvMV"

    const/4 v0, 0x4

    aput-object v1, v8, v0

    const-string v1, "JDMHh5swQ2vQ3tCt0nsO4WaFdQUldHs6"

    const/4 v0, 0x3

    aput-object v1, v8, v0

    const/16 v1, 0x1c

    const/16 v0, 0x7d

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_15
    sget-object v8, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "1q4WdGC"

    const/4 v0, 0x0

    aput-object v1, v8, v0

    const-string v1, "D0yH4jp"

    const/4 v0, 0x5

    aput-object v1, v8, v0

    const/4 v1, 0x6

    const/16 v0, 0x4f

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 25529
    :cond_16
    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A0w:I

    if-ne v6, v1, :cond_17

    .line 25530
    const/16 v6, 0x1a0

    const/16 v1, 0xa

    const/16 v0, 0x47

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 25531
    :cond_17
    sget v10, Lcom/facebook/ads/redexgen/X/Ch;->A0x:I

    sget-object v8, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v8, v8, v1

    const/16 v1, 0xd

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v1, 0x75

    if-eq v8, v1, :cond_18

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_18
    sget-object v9, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v8, "n2YgXqYd791JE36UUWucOPlm8skKkKG5"

    const/4 v1, 0x6

    aput-object v8, v9, v1

    if-ne v6, v10, :cond_19

    .line 25532
    const/16 v6, 0x1bd

    const/16 v1, 0xc

    const/16 v0, 0x9

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 25533
    :cond_19
    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A0b:I

    if-eq v6, v1, :cond_1a

    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A15:I

    if-ne v6, v1, :cond_1b

    .line 25534
    :cond_1a
    const/16 v6, 0x1ec

    const/16 v1, 0x9

    const/16 v0, 0x78

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 25535
    :cond_1b
    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A04:I

    if-ne v6, v1, :cond_1c

    .line 25536
    const/16 v6, 0x1e2

    const/16 v1, 0xa

    const/16 v0, 0x6d

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 25537
    :cond_1c
    sget v1, Lcom/facebook/ads/redexgen/X/Ch;->A06:I

    if-ne v6, v1, :cond_4

    .line 25538
    const/16 v6, 0x1b3

    const/16 v1, 0xa

    const/16 v0, 0x35

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 25539
    .end local v19
    .local v17, "drmInitData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
    :cond_1d
    sget-object v9, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "kpIRcBmNj6nIcGU22x7NgA"

    const/4 v0, 0x7

    aput-object v1, v9, v0

    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Ck;->A03:[Lcom/facebook/ads/redexgen/X/D3;

    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/D3;

    aput-object v0, v1, p9

    goto/16 :goto_3

    .line 25540
    :cond_1e
    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/D3;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/D3;->A02:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;->A03(Ljava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    move-result-object v3

    goto/16 :goto_2

    .line 25541
    :cond_1f
    if-ne v9, v11, :cond_27

    .line 25542
    invoke-virtual {v5, v8}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 25543
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A04()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v15, v0

    .line 25544
    .local v28, "sampleRate":I
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v19

    .line 25545
    .local p4, "channelCount":I
    const/16 v0, 0x14

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    goto/16 :goto_1

    .line 25546
    :cond_20
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    goto/16 :goto_0

    :cond_21
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 25547
    .end local v9
    .end local v9
    .end local v8    # "quickTimeSoundDescriptionVersion":I
    .restart local p9    # "drmInitData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
    .restart local v5    # "atomType":I
    .local v28, "quickTimeSoundDescriptionVersion":I
    .end local v3
    .end local v2
    .end local p9    # "drmInitData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
    .end local v5    # "atomType":I
    .local v28, "childPosition":I
    .restart local v9    # "atomType":I
    .restart local v9    # "atomType":I
    .restart local v8    # "quickTimeSoundDescriptionVersion":I
    .restart local v1    # "mimeType":Ljava/lang/String;
    :cond_22
    iget-object v7, v2, Lcom/facebook/ads/redexgen/X/Ck;->A02:Lcom/facebook/ads/internal/exoplayer2/Format;

    sget-object v5, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v4, v5, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v4, 0x9

    if-eq v5, v4, :cond_26

    sget-object v6, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v5, "zyAkSPMWEDDhiuDFx7rgqeznQGbM3qfN"

    const/4 v4, 0x2

    aput-object v5, v6, v4

    if-nez v7, :cond_23

    .end local v1    # "mimeType":Ljava/lang/String;
    .local v17, "mimeType":Ljava/lang/String;
    :goto_a
    if-eqz v0, :cond_23

    .line 25548
    const/16 v6, 0x1ec

    const/16 v5, 0x9

    const/16 v4, 0x78

    invoke-static {v6, v5, v4}, Lcom/facebook/ads/redexgen/X/Cm;->A0I(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    const/16 v21, 0x2

    .line 25549
    .local v5, "pcmEncoding":I
    :goto_b
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v18, -0x1

    .line 25550
    if-nez v1, :cond_24

    :goto_c
    const/16 v24, 0x0

    .line 25551
    .end local v17    # "mimeType":Ljava/lang/String;
    .local v10, "mimeType":Ljava/lang/String;
    .end local v28    # "childPosition":I
    .local v11, "childPosition":I
    move/from16 v20, v15

    move-object/from16 v23, v3

    move-object/from16 v25, v28

    move-object v15, v0

    invoke-static/range {v14 .. v25}, Lcom/facebook/ads/internal/exoplayer2/Format;->A06(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Ck;->A02:Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 25552
    .end local v28
    .end local v1
    .restart local v10    # "mimeType":Ljava/lang/String;
    .restart local v11    # "childPosition":I
    :cond_23
    return-void

    .line 25553
    :cond_24
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    goto :goto_c

    .line 25554
    :cond_25
    const/16 v21, -0x1

    goto :goto_b

    :cond_26
    if-nez v7, :cond_23

    goto :goto_a

    .line 25555
    .end local p4    # "channelCount":I
    .end local v28
    :cond_27
    return-void

    :cond_28
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0O([JJJJ)Z
    .locals 6

    .line 25556
    array-length v3, p0

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    .line 25557
    .local p0, "lastIndex":I
    const/4 v2, 0x3

    const/4 v1, 0x0

    invoke-static {v2, v1, v3}, Lcom/facebook/ads/redexgen/X/Ic;->A06(III)I

    move-result v4

    .line 25558
    .local v4, "latestDelayIndex":I
    array-length v0, p0

    sub-int/2addr v0, v2

    .line 25559
    invoke-static {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/Ic;->A06(III)I

    move-result v3

    .line 25560
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
    .locals 6

    .line 25561
    add-int/lit8 v4, p1, 0x8

    .line 25562
    .local p0, "childPosition":I
    :goto_0
    sub-int v0, v4, p1

    if-ge v0, p2, :cond_2

    .line 25563
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 25564
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v5

    .line 25565
    .local p1, "childAtomSize":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_1

    .line 25566
    .local p2, "childAtomType":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cm;->A01:[Ljava/lang/String;

    const-string v1, "QRP03zcCOFaI4uVtR7AXoXYCiDXRAC5Q"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0r:I

    if-ne v3, v0, :cond_0

    .line 25567
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    add-int v0, v4, v5

    invoke-static {v1, v4, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0

    .line 25568
    :cond_0
    add-int/2addr v4, v5

    .line 25569
    .end local p1    # "childAtomSize":I
    .end local p2    # "childAtomType":I
    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 25570
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
