.class public Lcom/facebook/ads/redexgen/X/TB;
.super Lcom/facebook/ads/redexgen/X/4K;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/4W;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/3y;,
        Lcom/facebook/ads/redexgen/X/3x;,
        Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;,
        Lcom/facebook/ads/redexgen/X/3z;
    }
.end annotation


# static fields
.field public static A0F:[B

.field public static A0G:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

.field public A04:Lcom/facebook/ads/redexgen/X/44;

.field public A05:Z

.field public A06:I

.field public A07:Lcom/facebook/ads/redexgen/X/3z;

.field public A08:Z

.field public A09:Z

.field public A0A:Z

.field public A0B:Z

.field public A0C:Z

.field public final A0D:Lcom/facebook/ads/redexgen/X/3x;

.field public final A0E:Lcom/facebook/ads/redexgen/X/3y;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/TB;->A0X()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/TB;->A0W()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 53705
    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/TB;-><init>(Landroid/content/Context;IZ)V

    .line 53706
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 2

    .line 53707
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4K;-><init>()V

    .line 53708
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A0A:Z

    .line 53709
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A05:Z

    .line 53710
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A0C:Z

    .line 53711
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/TB;->A0B:Z

    .line 53712
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A01:I

    .line 53713
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A02:I

    .line 53714
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    .line 53715
    new-instance v0, Lcom/facebook/ads/redexgen/X/3x;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/3x;-><init>(Lcom/facebook/ads/redexgen/X/TB;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A0D:Lcom/facebook/ads/redexgen/X/3x;

    .line 53716
    new-instance v0, Lcom/facebook/ads/redexgen/X/3y;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/3y;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A0E:Lcom/facebook/ads/redexgen/X/3y;

    .line 53717
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A06:I

    .line 53718
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/TB;->A2F(I)V

    .line 53719
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/TB;->A0j(Z)V

    .line 53720
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4K;->A1W(Z)V

    .line 53721
    return-void
.end method

.method private final A05(ILcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 5

    .line 53722
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 53723
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/TB;
    .end local p1    # null:I
    .end local p2    # null:Lcom/facebook/ads/redexgen/X/4S;
    .end local p3    # null:Lcom/facebook/ads/redexgen/X/4Z;
    :cond_0
    return v4

    .line 53724
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/3z;->A0B:Z

    .line 53725
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TB;->A2E()V

    .line 53726
    if-lez p1, :cond_2

    const/4 v3, 0x1

    .line 53727
    .local p0, "layoutDirection":I
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 53728
    .local p3, "absDy":I
    invoke-direct {p0, v3, v2, v0, p3}, Lcom/facebook/ads/redexgen/X/TB;->A0a(IIZLcom/facebook/ads/redexgen/X/4Z;)V

    .line 53729
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/3z;->A07:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    .line 53730
    invoke-direct {p0, p2, v0, p3, v4}, Lcom/facebook/ads/redexgen/X/TB;->A09(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/3z;Lcom/facebook/ads/redexgen/X/4Z;Z)I

    move-result v0

    add-int/2addr v1, v0

    .line 53731
    .local p2, "consumed":I
    if-gez v1, :cond_3

    .line 53732
    return v4

    .line 53733
    :cond_2
    const/4 v3, -0x1

    goto :goto_0

    .line 53734
    :cond_3
    if-le v2, v1, :cond_4

    mul-int/2addr v3, v1

    .line 53735
    .local p1, "scrolled":I
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    neg-int v0, v3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/44;->A0J(I)V

    .line 53736
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iput v3, v0, Lcom/facebook/ads/redexgen/X/3z;->A04:I

    .line 53737
    return v3

    .line 53738
    :cond_4
    move v3, p1

    goto :goto_1
.end method

.method private A06(ILcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;Z)I
    .locals 5

    .line 53739
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A07()I

    move-result v0

    sub-int/2addr v0, p1

    .line 53740
    .local p0, "gap":I
    .local p1, "fixOffset":I
    if-lez v0, :cond_2

    .line 53741
    neg-int v0, v0

    invoke-direct {p0, v0, p2, p3}, Lcom/facebook/ads/redexgen/X/TB;->A05(ILcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)I

    move-result v0

    neg-int v4, v0

    .line 53742
    add-int/2addr p1, v4

    .line 53743
    if-eqz p4, :cond_1

    .line 53744
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A07()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const-string v1, "DiKLRwr5Jced9h1IWYQQBSe"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sub-int/2addr v3, p1

    .line 53745
    if-lez v3, :cond_1

    .line 53746
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/44;->A0J(I)V

    .line 53747
    add-int/2addr v3, v4

    return v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 53748
    :cond_1
    return v4

    .line 53749
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private A08(ILcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;Z)I
    .locals 3

    .line 53750
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A0A()I

    move-result v0

    sub-int v0, p1, v0

    .line 53751
    .local p0, "gap":I
    .local p1, "fixOffset":I
    if-lez v0, :cond_1

    .line 53752
    invoke-direct {p0, v0, p2, p3}, Lcom/facebook/ads/redexgen/X/TB;->A05(ILcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)I

    move-result v0

    neg-int v2, v0

    .line 53753
    add-int/2addr p1, v2

    .line 53754
    if-eqz p4, :cond_0

    .line 53755
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A0A()I

    move-result v0

    sub-int/2addr p1, v0

    .line 53756
    if-lez p1, :cond_0

    .line 53757
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    neg-int v0, p1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/44;->A0J(I)V

    .line 53758
    sub-int/2addr v2, p1

    return v2

    .line 53759
    :cond_0
    return v2

    .line 53760
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final A09(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/3z;Lcom/facebook/ads/redexgen/X/4Z;Z)I
    .locals 9

    .line 53761
    iget v7, p2, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    .line 53762
    .local p0, "start":I
    iget v0, p2, Lcom/facebook/ads/redexgen/X/3z;->A07:I

    const/high16 v6, -0x80000000

    if-eq v0, v6, :cond_1

    .line 53763
    iget v0, p2, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    if-gez v0, :cond_0

    .line 53764
    iget v1, p2, Lcom/facebook/ads/redexgen/X/3z;->A07:I

    iget v0, p2, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    add-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/3z;->A07:I

    .line 53765
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/TB;->A0g(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/3z;)V

    .line 53766
    :cond_1
    iget v5, p2, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    iget v0, p2, Lcom/facebook/ads/redexgen/X/3z;->A02:I

    add-int/2addr v5, v0

    .line 53767
    .local p1, "remainingSpace":I
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/TB;->A0E:Lcom/facebook/ads/redexgen/X/3y;

    .line 53768
    .local p3, "layoutChunkResult":Lcom/facebook/ads/redexgen/X/3y;
    :cond_2
    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/3z;->A09:Z

    if-nez v0, :cond_3

    if-lez v5, :cond_4

    :cond_3
    invoke-virtual {p2, p3}, Lcom/facebook/ads/redexgen/X/3z;->A05(Lcom/facebook/ads/redexgen/X/4Z;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 53769
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/3y;->A00()V

    .line 53770
    invoke-virtual {p0, p1, p3, p2, v4}, Lcom/facebook/ads/redexgen/X/TB;->A2I(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/3z;Lcom/facebook/ads/redexgen/X/3y;)V

    .line 53771
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/3y;->A01:Z

    if-eqz v0, :cond_5

    .line 53772
    :cond_4
    :goto_0
    iget v0, p2, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    sub-int/2addr v7, v0

    return v7

    .line 53773
    :cond_5
    iget v2, p2, Lcom/facebook/ads/redexgen/X/3z;->A06:I

    iget v1, v4, Lcom/facebook/ads/redexgen/X/3y;->A00:I

    iget v0, p2, Lcom/facebook/ads/redexgen/X/3z;->A05:I

    mul-int/2addr v1, v0

    add-int/2addr v2, v1

    iput v2, p2, Lcom/facebook/ads/redexgen/X/3z;->A06:I

    .line 53774
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/3y;->A03:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/3z;->A08:Ljava/util/List;

    if-nez v0, :cond_6

    .line 53775
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/4Z;->A07()Z

    move-result v0

    if-nez v0, :cond_7

    .line 53776
    :cond_6
    iget v1, p2, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/3y;->A00:I

    sub-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    .line 53777
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3y;->A00:I

    sub-int/2addr v5, v0

    .line 53778
    :cond_7
    iget v0, p2, Lcom/facebook/ads/redexgen/X/3z;->A07:I

    if-eq v0, v6, :cond_9

    .line 53779
    iget v1, p2, Lcom/facebook/ads/redexgen/X/3z;->A07:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/3y;->A00:I

    add-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/3z;->A07:I

    .line 53780
    iget v0, p2, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    if-gez v0, :cond_8

    .line 53781
    iget v8, p2, Lcom/facebook/ads/redexgen/X/3z;->A07:I

    iget v3, p2, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const-string v1, "4Yaap7YPoeEmBfNVznjneaOXF1T3Chf"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    add-int/2addr v8, v3

    iput v8, p2, Lcom/facebook/ads/redexgen/X/3z;->A07:I

    .line 53782
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/TB;->A0g(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/3z;)V

    .line 53783
    :cond_9
    if-eqz p4, :cond_2

    iget-boolean v3, v4, Lcom/facebook/ads/redexgen/X/3y;->A02:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const-string v1, "BoRZmQ3r1kYFEVrzuprqJgVQBsgHE2ov"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 7

    .line 53784
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    if-nez v0, :cond_1

    .line 53785
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const-string v1, "JS1EmTokFkofHdCiZDqGUekHou375gK"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return v3

    .line 53786
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TB;->A2E()V

    .line 53787
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A0B:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 53788
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/TB;->A0S(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A0B:Z

    xor-int/2addr v0, v1

    .line 53789
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/TB;->A0R(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Lcom/facebook/ads/redexgen/X/TB;->A0B:Z

    .line 53790
    move-object v5, p0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/4d;->A00(Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/44;Landroid/view/View;Landroid/view/View;Lcom/facebook/ads/redexgen/X/4K;Z)I

    move-result v0

    return v0
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 8

    .line 53791
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    if-nez v0, :cond_0

    .line 53792
    const/4 v0, 0x0

    return v0

    .line 53793
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TB;->A2E()V

    .line 53794
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A0B:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 53795
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/TB;->A0S(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A0B:Z

    xor-int/2addr v0, v1

    .line 53796
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/TB;->A0R(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Lcom/facebook/ads/redexgen/X/TB;->A0B:Z

    iget-boolean v7, p0, Lcom/facebook/ads/redexgen/X/TB;->A05:Z

    .line 53797
    move-object v5, p0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/4d;->A02(Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/44;Landroid/view/View;Landroid/view/View;Lcom/facebook/ads/redexgen/X/4K;ZZ)I

    move-result v0

    return v0
.end method

.method private A0C(Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 7

    .line 53798
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    if-nez v0, :cond_1

    .line 53799
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const-string v1, "SnDsIEYZVkVP365fclIsQ2wSHS1GnuqA"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "cd1sjhoNq3y2dBxKlbos6To2J3BafTHs"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 53800
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TB;->A2E()V

    .line 53801
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A0B:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 53802
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/TB;->A0S(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A0B:Z

    xor-int/2addr v0, v1

    .line 53803
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/TB;->A0R(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Lcom/facebook/ads/redexgen/X/TB;->A0B:Z

    .line 53804
    move-object v5, p0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/4d;->A01(Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/44;Landroid/view/View;Landroid/view/View;Lcom/facebook/ads/redexgen/X/4K;Z)I

    move-result v0

    return v0
.end method

.method private final A0D(Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 1

    .line 53805
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4Z;->A06()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53806
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A0B()I

    move-result v0

    return v0

    .line 53807
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private A0E()Landroid/view/View;
    .locals 1

    .line 53808
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A05:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private A0F()Landroid/view/View;
    .locals 1

    .line 53809
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A05:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final A0G(II)Landroid/view/View;
    .locals 4

    .line 53810
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TB;->A2E()V

    .line 53811
    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    .line 53812
    .local p0, "next":I
    :goto_0
    if-nez v0, :cond_3

    .line 53813
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 53814
    :cond_0
    if-ge p2, p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const-string v1, "tEP4S10y6AtQbDA9ff3H424KLTnX0k7"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-object v3

    .line 53815
    .local p1, "preferredBoundsFlag":I
    .local p2, "acceptableBoundsFlag":I
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/44;->A0F(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 53816
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A0A()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 53817
    const/16 v2, 0x4104

    .line 53818
    const/16 v1, 0x4004

    .line 53819
    :goto_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A00:I

    if-nez v0, :cond_4

    .line 53820
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A04:Lcom/facebook/ads/redexgen/X/4h;

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/facebook/ads/redexgen/X/4h;->A00(IIII)Landroid/view/View;

    move-result-object v0

    .line 53821
    :goto_2
    return-object v0

    .line 53822
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A05:Lcom/facebook/ads/redexgen/X/4h;

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/facebook/ads/redexgen/X/4h;->A00(IIII)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    .line 53823
    :cond_5
    const/16 v2, 0x1041

    .line 53824
    const/16 v1, 0x1001

    goto :goto_1
.end method

.method private final A0H(IIZZ)Landroid/view/View;
    .locals 6

    .line 53825
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TB;->A2E()V

    .line 53826
    .local p0, "preferredBoundsFlag":I
    const/4 v3, 0x0

    .line 53827
    .local p1, "acceptableBoundsFlag":I
    if-eqz p3, :cond_1

    .line 53828
    const/16 v4, 0x6003

    .line 53829
    :goto_0
    if-eqz p4, :cond_0

    .line 53830
    const/16 v3, 0x140

    .line 53831
    :cond_0
    iget v5, p0, Lcom/facebook/ads/redexgen/X/TB;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 53832
    :cond_1
    const/16 v4, 0x140

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const-string v1, "NnwW0AnvRBQDKBAe7Vp9NN4SqY6y39Zg"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "snWQRfIRwdJNOSPMdDWVpUmegwlUrdsl"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v5, :cond_3

    .line 53833
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A04:Lcom/facebook/ads/redexgen/X/4h;

    invoke-virtual {v0, p1, p2, v4, v3}, Lcom/facebook/ads/redexgen/X/4h;->A00(IIII)Landroid/view/View;

    move-result-object v0

    .line 53834
    :goto_1
    return-object v0

    .line 53835
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A05:Lcom/facebook/ads/redexgen/X/4h;

    invoke-virtual {v0, p1, p2, v4, v3}, Lcom/facebook/ads/redexgen/X/4h;->A00(IIII)Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method

.method private A0I(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/View;
    .locals 2

    .line 53836
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/TB;->A0G(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private A0K(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/View;
    .locals 6

    .line 53837
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v4

    move-object v2, p2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4Z;->A03()I

    move-result v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/TB;->A2D(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private A0L(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/View;
    .locals 2

    .line 53838
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v0, -0x1

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/TB;->A0G(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private A0M(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/View;
    .locals 6

    .line 53839
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    move-object v2, p2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4Z;->A03()I

    move-result v5

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/TB;->A2D(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private A0N(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/View;
    .locals 1

    .line 53840
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A05:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/TB;->A0I(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 53841
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/TB;->A0L(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private A0O(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/View;
    .locals 1

    .line 53842
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A05:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/TB;->A0L(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 53843
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/TB;->A0I(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private A0P(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/View;
    .locals 1

    .line 53844
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A05:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/TB;->A0K(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 53845
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/TB;->A0M(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private A0Q(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/View;
    .locals 1

    .line 53846
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A05:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/TB;->A0M(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 53847
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/TB;->A0K(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private A0R(ZZ)Landroid/view/View;
    .locals 2

    .line 53848
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A05:Z

    if-eqz v0, :cond_0

    .line 53849
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/TB;->A0H(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 53850
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v0, -0x1

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/TB;->A0H(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private A0S(ZZ)Landroid/view/View;
    .locals 2

    .line 53851
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A05:Z

    if-eqz v0, :cond_0

    .line 53852
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v0, -0x1

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/TB;->A0H(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 53853
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/TB;->A0H(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private final A0T()Lcom/facebook/ads/redexgen/X/3z;
    .locals 1

    .line 53854
    new-instance v0, Lcom/facebook/ads/redexgen/X/3z;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/3z;-><init>()V

    return-object v0
.end method

.method public static A0U(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/TB;->A0F:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x76

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0V()V
    .locals 4

    .line 53855
    iget v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A00:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TB;->A2K()Z

    move-result v0

    if-nez v0, :cond_1

    .line 53856
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A0A:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A05:Z

    .line 53857
    :goto_0
    return-void

    .line 53858
    :cond_1
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/TB;->A0A:Z

    xor-int/2addr v3, v1

    sget-object v2, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const-string v1, "rvopS3hSB7itRsuyG"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "9RTUShXs4ZXrU4n03"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/TB;->A05:Z

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0W()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/TB;->A0F:[B

    return-void

    :array_0
    .array-data 1
        0x1et
        0x19t
        0x1t
        0x16t
        0x1bt
        0x1et
        0x13t
        0x57t
        0x18t
        0x5t
        0x1et
        0x12t
        0x19t
        0x3t
        0x16t
        0x3t
        0x1et
        0x18t
        0x19t
        0x4dt
    .end array-data
.end method

.method public static A0X()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "VKH6HNPW"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "5SG7ZkmA1SrYT5HpW6e3lHPIEdQjCnoY"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "GUFAcNFlkHbDslOxTlAKu2zM5da70L8W"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "8EarDdUd0wjX"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ogiAdIZLqFL2ODTGKcli7xbzAuQZVFku"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "k0c9canuweazyFazM74f3pFcokchiBr"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "yJQv9VjGutzUoxdr6"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "vBYUiSK7FkagYmvZS"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    return-void
.end method

.method private A0Y(II)V
    .locals 3

    .line 53859
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A07()I

    move-result v0

    sub-int/2addr v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    .line 53860
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A05:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 53861
    :goto_0
    iput v0, v1, Lcom/facebook/ads/redexgen/X/3z;->A03:I

    .line 53862
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iput p1, v1, Lcom/facebook/ads/redexgen/X/3z;->A01:I

    .line 53863
    iput v2, v1, Lcom/facebook/ads/redexgen/X/3z;->A05:I

    .line 53864
    iput p2, v1, Lcom/facebook/ads/redexgen/X/3z;->A06:I

    .line 53865
    const/high16 v0, -0x80000000

    iput v0, v1, Lcom/facebook/ads/redexgen/X/3z;->A07:I

    .line 53866
    return-void

    .line 53867
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private A0Z(II)V
    .locals 3

    .line 53868
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A0A()I

    move-result v0

    sub-int v0, p2, v0

    iput v0, v1, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    .line 53869
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iput p1, v1, Lcom/facebook/ads/redexgen/X/3z;->A01:I

    .line 53870
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A05:Z

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 53871
    :goto_0
    iput v0, v1, Lcom/facebook/ads/redexgen/X/3z;->A03:I

    .line 53872
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iput v2, v1, Lcom/facebook/ads/redexgen/X/3z;->A05:I

    .line 53873
    iput p2, v1, Lcom/facebook/ads/redexgen/X/3z;->A06:I

    .line 53874
    const/high16 v0, -0x80000000

    iput v0, v1, Lcom/facebook/ads/redexgen/X/3z;->A07:I

    .line 53875
    return-void

    .line 53876
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private A0a(IIZLcom/facebook/ads/redexgen/X/4Z;)V
    .locals 5

    .line 53877
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TB;->A0k()Z

    move-result v0

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/3z;->A09:Z

    .line 53878
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    invoke-direct {p0, p4}, Lcom/facebook/ads/redexgen/X/TB;->A0D(Lcom/facebook/ads/redexgen/X/4Z;)I

    move-result v0

    iput v0, v1, Lcom/facebook/ads/redexgen/X/3z;->A02:I

    .line 53879
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iput p1, v2, Lcom/facebook/ads/redexgen/X/3z;->A05:I

    .line 53880
    const/4 v4, -0x1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 53881
    iget v1, v2, Lcom/facebook/ads/redexgen/X/3z;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A08()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, v2, Lcom/facebook/ads/redexgen/X/3z;->A02:I

    .line 53882
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TB;->A0E()Landroid/view/View;

    move-result-object v3

    .line 53883
    .local p0, "child":Landroid/view/View;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A05:Z

    if-eqz v0, :cond_1

    .line 53884
    :goto_0
    iput v4, v1, Lcom/facebook/ads/redexgen/X/3z;->A03:I

    .line 53885
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/3z;->A03:I

    add-int/2addr v1, v0

    iput v1, v2, Lcom/facebook/ads/redexgen/X/3z;->A01:I

    .line 53886
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/44;->A0C(Landroid/view/View;)I

    move-result v0

    iput v0, v1, Lcom/facebook/ads/redexgen/X/3z;->A06:I

    .line 53887
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/44;->A0C(Landroid/view/View;)I

    move-result v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 53888
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A07()I

    move-result v0

    sub-int/2addr v2, v0

    .line 53889
    .end local p0    # "child":Landroid/view/View;
    .local p1, "scrollingOffset":I
    .end local p0
    .restart local p1    # "scrollingOffset":I
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iput p2, v1, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    .line 53890
    if-eqz p3, :cond_0

    .line 53891
    iget v0, v1, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    sub-int/2addr v0, v2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    .line 53892
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iput v2, v0, Lcom/facebook/ads/redexgen/X/3z;->A07:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_4

    .line 53893
    sget-object v2, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const-string v1, "rmKnvh8FAT7bzRdUkYGsCRYa1fX1DRoz"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-void

    .line 53894
    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    .line 53895
    .end local p1    # "scrollingOffset":I
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TB;->A0F()Landroid/view/View;

    move-result-object v3

    .line 53896
    .restart local p0    # "child":Landroid/view/View;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget v1, v2, Lcom/facebook/ads/redexgen/X/3z;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A0A()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, v2, Lcom/facebook/ads/redexgen/X/3z;->A02:I

    .line 53897
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A05:Z

    if-eqz v0, :cond_3

    const/4 v4, 0x1

    .line 53898
    :cond_3
    iput v4, v1, Lcom/facebook/ads/redexgen/X/3z;->A03:I

    .line 53899
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/3z;->A03:I

    add-int/2addr v1, v0

    iput v1, v2, Lcom/facebook/ads/redexgen/X/3z;->A01:I

    .line 53900
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/44;->A0F(Landroid/view/View;)I

    move-result v0

    iput v0, v1, Lcom/facebook/ads/redexgen/X/3z;->A06:I

    .line 53901
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/44;->A0F(Landroid/view/View;)I

    move-result v0

    neg-int v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 53902
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A0A()I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0b(Lcom/facebook/ads/redexgen/X/3x;)V
    .locals 2

    .line 53903
    iget v1, p1, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3x;->A00:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/TB;->A0Y(II)V

    .line 53904
    return-void
.end method

.method private A0c(Lcom/facebook/ads/redexgen/X/3x;)V
    .locals 2

    .line 53905
    iget v1, p1, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3x;->A00:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/TB;->A0Z(II)V

    .line 53906
    return-void
.end method

.method private A0d(Lcom/facebook/ads/redexgen/X/4S;I)V
    .locals 5

    .line 53907
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v4

    .line 53908
    .local p0, "childCount":I
    if-gez p2, :cond_0

    .line 53909
    return-void

    .line 53910
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A06()I

    move-result v3

    sub-int/2addr v3, p2

    .line 53911
    .local p1, "limit":I
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A05:Z

    if-eqz v0, :cond_3

    .line 53912
    const/4 v2, 0x0

    .local p2, "i":I
    :goto_0
    if-ge v2, v4, :cond_6

    .line 53913
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v1

    .line 53914
    .local v4, "child":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/44;->A0F(Landroid/view/View;)I

    move-result v0

    if-lt v0, v3, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 53915
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/44;->A0H(Landroid/view/View;)I

    move-result v0

    if-ge v0, v3, :cond_2

    .line 53916
    .restart local v4    # "child":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v2}, Lcom/facebook/ads/redexgen/X/TB;->A0f(Lcom/facebook/ads/redexgen/X/4S;II)V

    .line 53917
    return-void

    .line 53918
    .end local v4    # "child":Landroid/view/View;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53919
    :cond_3
    add-int/lit8 v2, v4, -0x1

    .restart local p2    # "i":I
    :goto_1
    if-ltz v2, :cond_6

    .line 53920
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v1

    .line 53921
    .restart local v4    # "child":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/44;->A0F(Landroid/view/View;)I

    move-result v0

    if-lt v0, v3, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 53922
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/44;->A0H(Landroid/view/View;)I

    move-result v0

    if-ge v0, v3, :cond_5

    .line 53923
    .restart local v4    # "child":Landroid/view/View;
    :cond_4
    add-int/lit8 v0, v4, -0x1

    invoke-direct {p0, p1, v0, v2}, Lcom/facebook/ads/redexgen/X/TB;->A0f(Lcom/facebook/ads/redexgen/X/4S;II)V

    .line 53924
    return-void

    .line 53925
    .end local v4    # "child":Landroid/view/View;
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 53926
    .end local p2    # "i":I
    .end local v4
    :cond_6
    return-void
.end method

.method private A0e(Lcom/facebook/ads/redexgen/X/4S;I)V
    .locals 7

    .line 53927
    if-gez p2, :cond_0

    .line 53928
    return-void

    .line 53929
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_9

    .line 53930
    .local p0, "limit":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const-string v1, "66"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v5

    .line 53931
    .local p1, "childCount":I
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A05:Z

    if-eqz v0, :cond_4

    .line 53932
    add-int/lit8 v3, v5, -0x1

    .local p2, "i":I
    :goto_0
    if-ltz v3, :cond_8

    .line 53933
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v6

    .line 53934
    .local p2, "child":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/44;->A0C(Landroid/view/View;)I

    move-result v0

    if-gt v0, p2, :cond_1

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    sget-object v2, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    .line 53935
    invoke-virtual {v4, v6}, Lcom/facebook/ads/redexgen/X/44;->A0G(Landroid/view/View;)I

    move-result v0

    if-le v0, p2, :cond_3

    .line 53936
    .restart local p2    # "child":Landroid/view/View;
    :cond_1
    :goto_1
    add-int/lit8 v0, v5, -0x1

    invoke-direct {p0, p1, v0, v3}, Lcom/facebook/ads/redexgen/X/TB;->A0f(Lcom/facebook/ads/redexgen/X/4S;II)V

    .line 53937
    return-void

    .line 53938
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const-string v1, "uDZbJl3GZvnd0"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v4, v6}, Lcom/facebook/ads/redexgen/X/44;->A0G(Landroid/view/View;)I

    move-result v0

    if-le v0, p2, :cond_3

    goto :goto_1

    .line 53939
    .end local p2    # "child":Landroid/view/View;
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 53940
    :cond_4
    const/4 v4, 0x0

    .restart local p2    # "child":Landroid/view/View;
    :goto_2
    if-ge v4, v5, :cond_8

    .line 53941
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v6

    .line 53942
    .restart local p2    # "child":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/44;->A0C(Landroid/view/View;)I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const-string v1, "ET87P0AumYMcjI6vylu4qFXoEmTHeXod"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-gt v3, p2, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 53943
    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/44;->A0G(Landroid/view/View;)I

    move-result v0

    if-le v0, p2, :cond_6

    .line 53944
    .restart local p2    # "child":Landroid/view/View;
    :cond_5
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v4}, Lcom/facebook/ads/redexgen/X/TB;->A0f(Lcom/facebook/ads/redexgen/X/4S;II)V

    .line 53945
    return-void

    .line 53946
    .end local p2    # "child":Landroid/view/View;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 53947
    .end local p2
    .end local p2
    :cond_8
    return-void

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0f(Lcom/facebook/ads/redexgen/X/4S;II)V
    .locals 1

    .line 53948
    if-ne p2, p3, :cond_0

    .line 53949
    return-void

    .line 53950
    :cond_0
    if-le p3, p2, :cond_1

    .line 53951
    add-int/lit8 v0, p3, -0x1

    .local p0, "i":I
    :goto_0
    if-lt v0, p2, :cond_2

    .line 53952
    invoke-virtual {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A15(ILcom/facebook/ads/redexgen/X/4S;)V

    .line 53953
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 53954
    .restart local p0    # "i":I
    :cond_1
    :goto_1
    if-le p2, p3, :cond_2

    .line 53955
    invoke-virtual {p0, p2, p1}, Lcom/facebook/ads/redexgen/X/4K;->A15(ILcom/facebook/ads/redexgen/X/4S;)V

    .line 53956
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 53957
    .end local p0    # "i":I
    :cond_2
    return-void
.end method

.method private A0g(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/3z;)V
    .locals 4

    .line 53958
    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/3z;->A0B:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/3z;->A09:Z

    if-eqz v0, :cond_1

    .line 53959
    :cond_0
    return-void

    .line 53960
    :cond_1
    iget v3, p2, Lcom/facebook/ads/redexgen/X/3z;->A05:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const-string v1, "M7iaeQoExhHh03f7x1XNzmreS2Lq1zJK"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "3weclwG7n9RXAySrMV3Jn51LrKgutG4n"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v0, -0x1

    if-ne v3, v0, :cond_4

    .line 53961
    iget v3, p2, Lcom/facebook/ads/redexgen/X/3z;->A07:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const-string v1, "CiNTyTfZO3PW6tP"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-direct {p0, p1, v3}, Lcom/facebook/ads/redexgen/X/TB;->A0d(Lcom/facebook/ads/redexgen/X/4S;I)V

    goto :goto_1

    .line 53962
    :cond_4
    iget v0, p2, Lcom/facebook/ads/redexgen/X/3z;->A07:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/TB;->A0e(Lcom/facebook/ads/redexgen/X/4S;I)V

    .line 53963
    :goto_1
    return-void
.end method

.method private A0h(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;II)V
    .locals 13

    .line 53964
    move-object v3, p0

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4Z;->A08()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4Z;->A07()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53965
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TB;->A27()Z

    move-result v0

    if-nez v0, :cond_1

    .line 53966
    :cond_0
    return-void

    .line 53967
    :cond_1
    const/4 v5, 0x0

    .local v1, "scrapExtraStart":I
    const/4 v4, 0x0

    .line 53968
    .local v1, "scrapExtraEnd":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4S;->A0K()Ljava/util/List;

    move-result-object v8

    .line 53969
    .local v3, "scrapList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/androidx/support/v7/widget/RecyclerView$ViewHolder;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .line 53970
    .local p1, "scrapSize":I
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v7

    .line 53971
    .local v0, "firstChildPos":I
    const/4 v6, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v6, v9, :cond_6

    .line 53972
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/ads/redexgen/X/4c;

    .line 53973
    .local v0, "scrap":Lcom/facebook/ads/redexgen/X/4c;
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4c;->A0d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53974
    .end local v0    # "scrap":Lcom/facebook/ads/redexgen/X/4c;
    .end local v0
    .end local v5
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 53975
    :cond_2
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4c;->A0J()I

    move-result v0

    .line 53976
    .local v0, "position":I
    const/4 v12, 0x1

    if-ge v0, v7, :cond_4

    const/4 v10, 0x1

    :goto_2
    iget-boolean v1, v3, Lcom/facebook/ads/redexgen/X/TB;->A05:Z

    const/4 v0, -0x1

    if-eq v10, v1, :cond_3

    .line 53977
    const/4 v12, -0x1

    .line 53978
    .local v5, "direction":I
    :cond_3
    if-ne v12, v0, :cond_5

    .line 53979
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/44;->A0D(Landroid/view/View;)I

    move-result v0

    add-int/2addr v5, v0

    goto :goto_1

    .line 53980
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 53981
    :cond_5
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/44;->A0D(Landroid/view/View;)I

    move-result v0

    add-int/2addr v4, v0

    goto :goto_1

    .line 53982
    .end local v0    # "position":I
    :cond_6
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iput-object v8, v0, Lcom/facebook/ads/redexgen/X/3z;->A08:Ljava/util/List;

    .line 53983
    if-lez v5, :cond_7

    .line 53984
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TB;->A0F()Landroid/view/View;

    move-result-object v0

    .line 53985
    .local v0, "anchor":Landroid/view/View;
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v0

    move/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/TB;->A0Z(II)V

    .line 53986
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iput v5, v0, Lcom/facebook/ads/redexgen/X/3z;->A02:I

    .line 53987
    iput v2, v0, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    .line 53988
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3z;->A04()V

    .line 53989
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    invoke-direct {v3, p1, v0, p2, v2}, Lcom/facebook/ads/redexgen/X/TB;->A09(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/3z;Lcom/facebook/ads/redexgen/X/4Z;Z)I

    .line 53990
    :cond_7
    if-lez v4, :cond_8

    .line 53991
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TB;->A0E()Landroid/view/View;

    move-result-object v0

    .line 53992
    .restart local v0    # "anchor":Landroid/view/View;
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v0

    move/from16 v1, p4

    invoke-direct {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/TB;->A0Y(II)V

    .line 53993
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iput v4, v0, Lcom/facebook/ads/redexgen/X/3z;->A02:I

    .line 53994
    iput v2, v0, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    .line 53995
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3z;->A04()V

    .line 53996
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    invoke-direct {v3, p1, v0, p2, v2}, Lcom/facebook/ads/redexgen/X/TB;->A09(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/3z;Lcom/facebook/ads/redexgen/X/4Z;Z)I

    .line 53997
    :cond_8
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/3z;->A08:Ljava/util/List;

    .line 53998
    return-void
.end method

.method private A0i(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/3x;)V
    .locals 4

    .line 53999
    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/TB;->A0m(Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/3x;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54000
    return-void

    .line 54001
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/TB;->A0l(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/3x;)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const-string v1, "XDJ2jDWhUW9a7iN"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 54002
    return-void

    .line 54003
    :cond_1
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/3x;->A02()V

    .line 54004
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A0C:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4Z;->A03()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iput v0, p3, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    .line 54005
    return-void

    .line 54006
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A0j(Z)V
    .locals 1

    .line 54007
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/TB;->A23(Ljava/lang/String;)V

    .line 54008
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A0A:Z

    if-ne p1, v0, :cond_0

    .line 54009
    return-void

    .line 54010
    :cond_0
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/TB;->A0A:Z

    .line 54011
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0z()V

    .line 54012
    return-void
.end method

.method private final A0k()Z
    .locals 1

    .line 54013
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A09()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 54014
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A06()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 54015
    :goto_0
    return v0

    .line 54016
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0l(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/3x;)Z
    .locals 5

    .line 54017
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 54018
    return v4

    .line 54019
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0t()Landroid/view/View;

    move-result-object v1

    .line 54020
    .local p0, "focused":Landroid/view/View;
    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p3, v1, p2}, Lcom/facebook/ads/redexgen/X/3x;->A06(Landroid/view/View;Lcom/facebook/ads/redexgen/X/4Z;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54021
    invoke-virtual {p3, v1}, Lcom/facebook/ads/redexgen/X/3x;->A05(Landroid/view/View;)V

    .line 54022
    return v3

    .line 54023
    :cond_1
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/TB;->A08:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A0C:Z

    if-eq v1, v0, :cond_2

    .line 54024
    return v4

    .line 54025
    :cond_2
    iget-boolean v0, p3, Lcom/facebook/ads/redexgen/X/3x;->A02:Z

    if-eqz v0, :cond_7

    .line 54026
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/TB;->A0P(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/View;

    move-result-object v2

    .line 54027
    .local p3, "referenceChild":Landroid/view/View;
    :goto_0
    if-eqz v2, :cond_8

    .line 54028
    invoke-virtual {p3, v2}, Lcom/facebook/ads/redexgen/X/3x;->A04(Landroid/view/View;)V

    .line 54029
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4Z;->A07()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TB;->A27()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 54030
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 54031
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/44;->A0F(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 54032
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A07()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 54033
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/44;->A0C(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 54034
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A0A()I

    move-result v0

    if-ge v1, v0, :cond_4

    :cond_3
    const/4 v4, 0x1

    .line 54035
    .local p1, "notVisible":Z
    :cond_4
    if-eqz v4, :cond_5

    .line 54036
    iget-boolean v0, p3, Lcom/facebook/ads/redexgen/X/3x;->A02:Z

    if-eqz v0, :cond_6

    .line 54037
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A07()I

    move-result v0

    .line 54038
    :goto_1
    iput v0, p3, Lcom/facebook/ads/redexgen/X/3x;->A00:I

    .line 54039
    .end local p1    # "notVisible":Z
    :cond_5
    return v3

    .line 54040
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A0A()I

    move-result v0

    goto :goto_1

    .line 54041
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/TB;->A0Q(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 54042
    :cond_8
    return v4
.end method

.method private A0m(Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/3x;)Z
    .locals 7

    .line 54043
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4Z;->A07()Z

    move-result v0

    const/4 v6, 0x0

    if-nez v0, :cond_0

    iget v3, p0, Lcom/facebook/ads/redexgen/X/TB;->A01:I

    const/4 v2, -0x1

    if-ne v3, v2, :cond_1

    .line 54044
    :cond_0
    return v6

    .line 54045
    :cond_1
    const/high16 v1, -0x80000000

    if-ltz v3, :cond_2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4Z;->A03()I

    move-result v0

    if-lt v3, v0, :cond_3

    .line 54046
    :cond_2
    iput v2, p0, Lcom/facebook/ads/redexgen/X/TB;->A01:I

    .line 54047
    iput v1, p0, Lcom/facebook/ads/redexgen/X/TB;->A02:I

    .line 54048
    return v6

    .line 54049
    :cond_3
    iget v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A01:I

    iput v0, p2, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    .line 54050
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 54051
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean v0, v0, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A02:Z

    iput-boolean v0, p2, Lcom/facebook/ads/redexgen/X/3x;->A02:Z

    .line 54052
    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/3x;->A02:Z

    if-eqz v0, :cond_4

    .line 54053
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A07()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iget v0, v0, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00:I

    sub-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/3x;->A00:I

    .line 54054
    :goto_0
    return v3

    .line 54055
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A0A()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iget v0, v0, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00:I

    add-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/3x;->A00:I

    goto :goto_0

    .line 54056
    :cond_5
    iget v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A02:I

    if-ne v0, v1, :cond_10

    .line 54057
    iget v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A01:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/TB;->A1r(I)Landroid/view/View;

    move-result-object v2

    .line 54058
    .local p0, "child":Landroid/view/View;
    if-eqz v2, :cond_8

    .line 54059
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/44;->A0D(Landroid/view/View;)I

    move-result v1

    .line 54060
    .local v0, "childSize":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A0B()I

    move-result v0

    if-le v1, v0, :cond_6

    .line 54061
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/3x;->A02()V

    .line 54062
    return v3

    .line 54063
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/44;->A0F(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 54064
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A0A()I

    move-result v0

    sub-int/2addr v1, v0

    .line 54065
    .local v6, "startGap":I
    if-gez v1, :cond_7

    .line 54066
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A0A()I

    move-result v0

    iput v0, p2, Lcom/facebook/ads/redexgen/X/3x;->A00:I

    .line 54067
    iput-boolean v6, p2, Lcom/facebook/ads/redexgen/X/3x;->A02:Z

    .line 54068
    return v3

    .line 54069
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A07()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 54070
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/44;->A0C(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    .line 54071
    .local p1, "endGap":I
    if-gez v1, :cond_d

    .line 54072
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A07()I

    move-result v0

    iput v0, p2, Lcom/facebook/ads/redexgen/X/3x;->A00:I

    .line 54073
    iput-boolean v3, p2, Lcom/facebook/ads/redexgen/X/3x;->A02:Z

    .line 54074
    return v3

    .line 54075
    :cond_8
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    if-lez v0, :cond_c

    .line 54076
    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v1

    .line 54077
    .local v0, "pos":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A01:I

    if-ge v0, v1, :cond_9

    const/4 v5, 0x1

    :goto_1
    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/TB;->A05:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_a

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_9
    const/4 v5, 0x0

    goto :goto_1

    :cond_a
    sget-object v2, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const-string v1, "1tNDA9T9nSDYektAgKE77gOe81bMFJSk"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "TZYqXNdWGZVKxzfIQyf7YZEk7yb7IRTm"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ne v5, v4, :cond_b

    const/4 v6, 0x1

    :cond_b
    iput-boolean v6, p2, Lcom/facebook/ads/redexgen/X/3x;->A02:Z

    .line 54078
    .end local v0    # "pos":I
    :cond_c
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/3x;->A02()V

    goto :goto_3

    .line 54079
    :cond_d
    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/3x;->A02:Z

    if-eqz v0, :cond_e

    .line 54080
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/44;->A0C(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    sget-object v2, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_f

    .line 54081
    sget-object v2, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const-string v1, "ZbIhQvVoqDIGDPkO0OlvW9zioDplzu"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/44;->A05()I

    move-result v0

    add-int/2addr v4, v0

    .line 54082
    :goto_2
    iput v4, p2, Lcom/facebook/ads/redexgen/X/3x;->A00:I

    .line 54083
    .end local p1    # "endGap":I
    .end local v0
    .end local v6    # "startGap":I
    :goto_3
    return v3

    .line 54084
    :cond_e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/44;->A0F(Landroid/view/View;)I

    move-result v4

    goto :goto_2

    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 54085
    .end local p0    # "child":Landroid/view/View;
    :cond_10
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A05:Z

    iput-boolean v0, p2, Lcom/facebook/ads/redexgen/X/3x;->A02:Z

    .line 54086
    if-eqz v0, :cond_11

    .line 54087
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A07()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A02:I

    sub-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/3x;->A00:I

    .line 54088
    :goto_4
    return v3

    .line 54089
    :cond_11
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A0A()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A02:I

    add-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/3x;->A00:I

    goto :goto_4
.end method


# virtual methods
.method public A1i(ILcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 2

    .line 54090
    iget v1, p0, Lcom/facebook/ads/redexgen/X/TB;->A00:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 54091
    const/4 v0, 0x0

    return v0

    .line 54092
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/TB;->A05(ILcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)I

    move-result v0

    return v0
.end method

.method public A1j(ILcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 4

    .line 54093
    iget v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A00:I

    if-nez v0, :cond_0

    .line 54094
    const/4 v0, 0x0

    return v0

    .line 54095
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/TB;->A05(ILcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const-string v1, "CDnF1shpb"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3
.end method

.method public final A1k(Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 1

    .line 54096
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/TB;->A0A(Lcom/facebook/ads/redexgen/X/4Z;)I

    move-result v0

    return v0
.end method

.method public final A1l(Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 1

    .line 54097
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/TB;->A0B(Lcom/facebook/ads/redexgen/X/4Z;)I

    move-result v0

    return v0
.end method

.method public final A1m(Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 1

    .line 54098
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/TB;->A0C(Lcom/facebook/ads/redexgen/X/4Z;)I

    move-result v0

    return v0
.end method

.method public final A1n(Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 1

    .line 54099
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/TB;->A0A(Lcom/facebook/ads/redexgen/X/4Z;)I

    move-result v0

    return v0
.end method

.method public final A1o(Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 1

    .line 54100
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/TB;->A0B(Lcom/facebook/ads/redexgen/X/4Z;)I

    move-result v0

    return v0
.end method

.method public final A1p(Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 1

    .line 54101
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/TB;->A0C(Lcom/facebook/ads/redexgen/X/4Z;)I

    move-result v0

    return v0
.end method

.method public final A1q()Landroid/os/Parcelable;
    .locals 4

    .line 54102
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 54103
    new-instance v1, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v1, v0}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;-><init>(Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;)V

    new-instance v0, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;-><init>(Landroid/os/Parcelable;)V

    return-object v0

    .line 54104
    :cond_0
    new-instance v3, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v3}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;-><init>()V

    .line 54105
    .local p0, "state":Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    if-lez v0, :cond_2

    .line 54106
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TB;->A2E()V

    .line 54107
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/TB;->A08:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A05:Z

    xor-int/2addr v1, v0

    .line 54108
    .local v0, "didLayoutFromEnd":Z
    iput-boolean v1, v3, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A02:Z

    .line 54109
    if-eqz v1, :cond_1

    .line 54110
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TB;->A0E()Landroid/view/View;

    move-result-object v2

    .line 54111
    .local v1, "refChild":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A07()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 54112
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/44;->A0C(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, v3, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00:I

    .line 54113
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v0

    iput v0, v3, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01:I

    .line 54114
    .end local v1    # "refChild":Landroid/view/View;
    :goto_0
    new-instance v0, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;

    invoke-direct {v0, v3}, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;-><init>(Landroid/os/Parcelable;)V

    return-object v0

    .line 54115
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TB;->A0F()Landroid/view/View;

    move-result-object v1

    .line 54116
    .restart local v1    # "refChild":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v0

    iput v0, v3, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01:I

    .line 54117
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/44;->A0F(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 54118
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A0A()I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, v3, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00:I

    goto :goto_0

    .line 54119
    :cond_2
    invoke-virtual {v3}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00()V

    goto :goto_0
.end method

.method public final A1r(I)Landroid/view/View;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 54120
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v1

    .line 54121
    .local p0, "childCount":I
    if-nez v1, :cond_0

    .line 54122
    const/4 v0, 0x0

    return-object v0

    .line 54123
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v0

    .line 54124
    .local p1, "firstChild":I
    sub-int v0, p1, v0

    .line 54125
    .local v1, "viewPosition":I
    if-ltz v0, :cond_1

    if-ge v0, v1, :cond_1

    .line 54126
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v1

    .line 54127
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 54128
    return-object v1

    .line 54129
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A1r(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public A1s(Landroid/view/View;ILcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/View;
    .locals 7

    .line 54130
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TB;->A0V()V

    .line 54131
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    const/4 v6, 0x0

    if-nez v0, :cond_0

    .line 54132
    return-object v6

    .line 54133
    :cond_0
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/TB;->A2C(I)I

    move-result v3

    .line 54134
    .local p0, "layoutDir":I
    const/high16 v2, -0x80000000

    if-ne v3, v2, :cond_1

    .line 54135
    return-object v6

    .line 54136
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TB;->A2E()V

    .line 54137
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TB;->A2E()V

    .line 54138
    const v1, 0x3eaaaaab

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A0B()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v1, v0

    .line 54139
    .local p3, "maxScroll":I
    const/4 v0, 0x0

    invoke-direct {p0, v3, v1, v0, p4}, Lcom/facebook/ads/redexgen/X/TB;->A0a(IIZLcom/facebook/ads/redexgen/X/4Z;)V

    .line 54140
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iput v2, v1, Lcom/facebook/ads/redexgen/X/3z;->A07:I

    .line 54141
    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/3z;->A0B:Z

    .line 54142
    const/4 v0, 0x1

    invoke-direct {p0, p3, v1, p4, v0}, Lcom/facebook/ads/redexgen/X/TB;->A09(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/3z;Lcom/facebook/ads/redexgen/X/4Z;Z)I

    .line 54143
    const/4 v0, -0x1

    if-ne v3, v0, :cond_3

    .line 54144
    invoke-direct {p0, p3, p4}, Lcom/facebook/ads/redexgen/X/TB;->A0O(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/View;

    move-result-object v5

    .line 54145
    .local p4, "nextCandidate":Landroid/view/View;
    .restart local p4    # "nextCandidate":Landroid/view/View;
    :goto_0
    if-ne v3, v0, :cond_2

    .line 54146
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TB;->A0F()Landroid/view/View;

    move-result-object v4

    .line 54147
    .local p2, "nextFocus":Landroid/view/View;
    .restart local p2    # "nextFocus":Landroid/view/View;
    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const-string v1, "JGtMOr7ZHjmwUVfbInfaZmEhr0nxGN38"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "jCrgpf8bwQbyd1C9u6FfAt5OnK6gBhSa"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_5

    .line 54148
    if-nez v5, :cond_4

    .line 54149
    return-object v6

    .line 54150
    .end local p2    # "nextFocus":Landroid/view/View;
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TB;->A0E()Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 54151
    .end local p4    # "nextCandidate":Landroid/view/View;
    :cond_3
    invoke-direct {p0, p3, p4}, Lcom/facebook/ads/redexgen/X/TB;->A0N(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/View;

    move-result-object v5

    goto :goto_0

    .line 54152
    :cond_4
    return-object v4

    .line 54153
    :cond_5
    return-object v5

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public A1t()Lcom/facebook/ads/redexgen/X/4L;
    .locals 2

    .line 54154
    const/4 v1, -0x2

    new-instance v0, Lcom/facebook/ads/redexgen/X/4L;

    invoke-direct {v0, v1, v1}, Lcom/facebook/ads/redexgen/X/4L;-><init>(II)V

    return-object v0
.end method

.method public A1u(I)V
    .locals 1

    .line 54155
    iput p1, p0, Lcom/facebook/ads/redexgen/X/TB;->A01:I

    .line 54156
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A02:I

    .line 54157
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 54158
    invoke-virtual {v0}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00()V

    .line 54159
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0z()V

    .line 54160
    return-void
.end method

.method public final A1v(IILcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/4I;)V
    .locals 3

    .line 54161
    iget v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A00:I

    if-nez v0, :cond_1

    .line 54162
    .local p0, "delta":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    .line 54163
    .end local p2    # null:I
    .end local p3    # null:Lcom/facebook/ads/redexgen/X/4Z;
    :cond_0
    return-void

    .line 54164
    :cond_1
    move p1, p2

    goto :goto_0

    .line 54165
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TB;->A2E()V

    .line 54166
    const/4 v2, 0x1

    if-lez p1, :cond_3

    const/4 v1, 0x1

    .line 54167
    .local p2, "layoutDirection":I
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 54168
    .local p3, "absDy":I
    invoke-direct {p0, v1, v0, v2, p3}, Lcom/facebook/ads/redexgen/X/TB;->A0a(IIZLcom/facebook/ads/redexgen/X/4Z;)V

    .line 54169
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    invoke-virtual {p0, p3, v0, p4}, Lcom/facebook/ads/redexgen/X/TB;->A2J(Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/3z;Lcom/facebook/ads/redexgen/X/4I;)V

    .line 54170
    return-void

    .line 54171
    :cond_3
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public final A1w(ILcom/facebook/ads/redexgen/X/4I;)V
    .locals 7

    .line 54172
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 v6, 0x0

    const/4 v5, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54173
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean v4, v0, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A02:Z

    .line 54174
    .local p0, "fromEnd":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iget v2, v0, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01:I

    .line 54175
    .local v0, "anchorPos":I
    .restart local v0    # "anchorPos":I
    :goto_0
    if-eqz v4, :cond_0

    .line 54176
    .local p2, "direction":I
    .local v6, "targetPos":I
    :goto_1
    const/4 v1, 0x0

    .local v5, "i":I
    :goto_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A06:I

    if-ge v1, v0, :cond_5

    .line 54177
    if-ltz v2, :cond_5

    if-ge v2, p1, :cond_5

    .line 54178
    invoke-interface {p2, v2, v6}, Lcom/facebook/ads/redexgen/X/4I;->A3K(II)V

    .line 54179
    add-int/2addr v2, v5

    .line 54180
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 54181
    :cond_0
    const/4 v5, 0x1

    goto :goto_1

    .line 54182
    .end local p0    # "fromEnd":Z
    .end local v0    # "anchorPos":I
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TB;->A0V()V

    .line 54183
    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/TB;->A05:Z

    .line 54184
    .restart local p0    # "fromEnd":Z
    iget v3, p0, Lcom/facebook/ads/redexgen/X/TB;->A01:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const-string v1, "j12HxmlCdcFNOCf90EDMVBFIs8rsuaoM"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ne v3, v5, :cond_4

    .line 54185
    if-eqz v4, :cond_3

    add-int/lit8 v2, p1, -0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 54186
    .end local v0
    :cond_4
    iget v2, p0, Lcom/facebook/ads/redexgen/X/TB;->A01:I

    goto :goto_0

    .line 54187
    .end local v5    # "i":I
    :cond_5
    return-void
.end method

.method public final A1x(Landroid/os/Parcelable;)V
    .locals 4

    .line 54188
    instance-of v0, p1, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;

    if-nez v0, :cond_0

    .line 54189
    return-void

    .line 54190
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_1

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 54191
    .local p0, "classLoader":Ljava/lang/ClassLoader;
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const-string v1, "tHEWx5U9TGfOm0s3U2zrO5nR7UMaVIoI"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v3, :cond_2

    .line 54192
    return-void

    .line 54193
    :cond_2
    sget-object v1, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_3

    goto :goto_0

    .line 54194
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const-string v1, "tm"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    check-cast p1, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;

    invoke-virtual {p1, v3}, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;->unwrap(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    .line 54195
    .local p1, "state":Landroid/os/Parcelable;
    instance-of v0, v1, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_4

    .line 54196
    check-cast v1, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/TB;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    .line 54197
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0z()V

    .line 54198
    :cond_4
    return-void
.end method

.method public final A1y(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .line 54199
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A1y(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 54200
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    if-lez v0, :cond_0

    .line 54201
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TB;->A29()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 54202
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TB;->A2A()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const-string v1, "9E5bhv9RVKulu"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 54203
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public A1z(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)V
    .locals 9

    .line 54204
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 v4, -0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A01:I

    if-eq v0, v4, :cond_1

    .line 54205
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4Z;->A03()I

    move-result v0

    if-nez v0, :cond_1

    .line 54206
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A1J(Lcom/facebook/ads/redexgen/X/4S;)V

    .line 54207
    return-void

    .line 54208
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54209
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iget v0, v0, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A01:I

    .line 54210
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TB;->A2E()V

    .line 54211
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/facebook/ads/redexgen/X/3z;->A0B:Z

    .line 54212
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TB;->A0V()V

    .line 54213
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0t()Landroid/view/View;

    move-result-object v5

    .line 54214
    .local p0, "focused":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A0D:Lcom/facebook/ads/redexgen/X/3x;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/3x;->A03:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A01:I

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_15

    .line 54215
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A0D:Lcom/facebook/ads/redexgen/X/3x;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3x;->A03()V

    .line 54216
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/TB;->A0D:Lcom/facebook/ads/redexgen/X/3x;

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/TB;->A05:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A0C:Z

    xor-int/2addr v1, v0

    iput-boolean v1, v5, Lcom/facebook/ads/redexgen/X/3x;->A02:Z

    .line 54217
    invoke-direct {p0, p1, p2, v5}, Lcom/facebook/ads/redexgen/X/TB;->A0i(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/3x;)V

    .line 54218
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/TB;->A0D:Lcom/facebook/ads/redexgen/X/3x;

    sget-object v1, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_17

    sget-object v5, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const-string v1, "pP9DXN24lJAGcvrzmJLzNvbz"

    const/4 v0, 0x0

    aput-object v1, v5, v0

    iput-boolean v2, v6, Lcom/facebook/ads/redexgen/X/3x;->A03:Z

    .line 54219
    :cond_4
    :goto_0
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/TB;->A0D(Lcom/facebook/ads/redexgen/X/4Z;)I

    move-result v7

    .line 54220
    .local v0, "extra":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/3z;->A04:I

    if-ltz v0, :cond_14

    .line 54221
    .local v0, "extraForEnd":I
    const/4 v6, 0x0

    .line 54222
    .local v0, "extraForStart":I
    .restart local v0    # "extraForStart":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A0A()I

    move-result v0

    add-int/2addr v6, v0

    .line 54223
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A08()I

    move-result v0

    add-int/2addr v7, v0

    .line 54224
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4Z;->A07()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v8, p0, Lcom/facebook/ads/redexgen/X/TB;->A01:I

    sget-object v5, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v5, v0

    const/4 v0, 0x7

    aget-object v0, v5, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_13

    sget-object v5, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const-string v1, "HnPzY03honFOjhYT25K5WFAFMhFIclok"

    const/4 v0, 0x1

    aput-object v1, v5, v0

    if-eq v8, v4, :cond_5

    :goto_2
    iget v1, p0, Lcom/facebook/ads/redexgen/X/TB;->A02:I

    const/high16 v0, -0x80000000

    if-eq v1, v0, :cond_5

    .line 54225
    invoke-virtual {p0, v8}, Lcom/facebook/ads/redexgen/X/TB;->A1r(I)Landroid/view/View;

    move-result-object v1

    .line 54226
    .local v0, "existing":Landroid/view/View;
    if-eqz v1, :cond_5

    .line 54227
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A05:Z

    if-eqz v0, :cond_12

    .line 54228
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A07()I

    move-result v8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 54229
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/44;->A0C(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v8, v0

    sget-object v5, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v5, v0

    const/4 v0, 0x4

    aget-object v5, v5, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_11

    .line 54230
    .local v0, "current":I
    sget-object v5, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const-string v1, "r3FnQil1r32czyLALUutLd0XCkxYZ4G"

    const/4 v0, 0x5

    aput-object v1, v5, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A02:I

    sub-int/2addr v8, v0

    .line 54231
    .local v0, "upcomingOffset":I
    .restart local v0    # "upcomingOffset":I
    :goto_3
    if-lez v8, :cond_10

    .line 54232
    add-int/2addr v6, v8

    .line 54233
    .end local v0    # "upcomingOffset":I
    .end local v0
    .end local v0
    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A0D:Lcom/facebook/ads/redexgen/X/3x;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/3x;->A02:Z

    if-eqz v0, :cond_e

    .line 54234
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A05:Z

    if-eqz v0, :cond_6

    const/4 v4, 0x1

    .line 54235
    .restart local p1    # null:Lcom/facebook/ads/redexgen/X/4S;
    :cond_6
    :goto_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A0D:Lcom/facebook/ads/redexgen/X/3x;

    invoke-virtual {p0, p1, p2, v0, v4}, Lcom/facebook/ads/redexgen/X/TB;->A2H(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/3x;I)V

    .line 54236
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A1I(Lcom/facebook/ads/redexgen/X/4S;)V

    .line 54237
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TB;->A0k()Z

    move-result v0

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/3z;->A09:Z

    .line 54238
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4Z;->A07()Z

    move-result v0

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/3z;->A0A:Z

    .line 54239
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A0D:Lcom/facebook/ads/redexgen/X/3x;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/3x;->A02:Z

    if-eqz v0, :cond_c

    .line 54240
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A0D:Lcom/facebook/ads/redexgen/X/3x;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/TB;->A0c(Lcom/facebook/ads/redexgen/X/3x;)V

    .line 54241
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iput v6, v0, Lcom/facebook/ads/redexgen/X/3z;->A02:I

    .line 54242
    invoke-direct {p0, p1, v0, p2, v3}, Lcom/facebook/ads/redexgen/X/TB;->A09(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/3z;Lcom/facebook/ads/redexgen/X/4Z;Z)I

    .line 54243
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/3z;->A06:I

    .line 54244
    .local v0, "startOffset":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/3z;->A01:I

    .line 54245
    .local v0, "firstElement":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    if-lez v0, :cond_7

    .line 54246
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    add-int/2addr v7, v0

    .line 54247
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A0D:Lcom/facebook/ads/redexgen/X/3x;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/TB;->A0b(Lcom/facebook/ads/redexgen/X/3x;)V

    .line 54248
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iput v7, v5, Lcom/facebook/ads/redexgen/X/3z;->A02:I

    .line 54249
    iget v1, v5, Lcom/facebook/ads/redexgen/X/3z;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/3z;->A03:I

    add-int/2addr v1, v0

    iput v1, v5, Lcom/facebook/ads/redexgen/X/3z;->A01:I

    .line 54250
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    invoke-direct {p0, p1, v0, p2, v3}, Lcom/facebook/ads/redexgen/X/TB;->A09(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/3z;Lcom/facebook/ads/redexgen/X/4Z;Z)I

    .line 54251
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget v5, v0, Lcom/facebook/ads/redexgen/X/3z;->A06:I

    .line 54252
    .local v0, "endOffset":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    if-lez v0, :cond_8

    .line 54253
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    .line 54254
    invoke-direct {p0, v4, v6}, Lcom/facebook/ads/redexgen/X/TB;->A0Z(II)V

    .line 54255
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iput v1, v0, Lcom/facebook/ads/redexgen/X/3z;->A02:I

    .line 54256
    invoke-direct {p0, p1, v0, p2, v3}, Lcom/facebook/ads/redexgen/X/TB;->A09(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/3z;Lcom/facebook/ads/redexgen/X/4Z;Z)I

    .line 54257
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/3z;->A06:I

    .line 54258
    .end local v0    # "endOffset":I
    :cond_8
    :goto_6
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    if-lez v0, :cond_9

    .line 54259
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/TB;->A05:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A0C:Z

    xor-int/2addr v1, v0

    if-eqz v1, :cond_b

    .line 54260
    invoke-direct {p0, v5, p1, p2, v2}, Lcom/facebook/ads/redexgen/X/TB;->A06(ILcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;Z)I

    move-result v0

    .line 54261
    .local v4, "fixOffset":I
    add-int/2addr v6, v0

    .line 54262
    add-int/2addr v5, v0

    .line 54263
    invoke-direct {p0, v6, p1, p2, v3}, Lcom/facebook/ads/redexgen/X/TB;->A08(ILcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;Z)I

    move-result v0

    .line 54264
    .end local v4    # "fixOffset":I
    .local p2, "fixOffset":I
    add-int/2addr v6, v0

    .line 54265
    add-int/2addr v5, v0

    .line 54266
    .end local p2    # "fixOffset":I
    .end local p2
    :cond_9
    :goto_7
    invoke-direct {p0, p1, p2, v6, v5}, Lcom/facebook/ads/redexgen/X/TB;->A0h(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;II)V

    .line 54267
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4Z;->A07()Z

    move-result v0

    if-nez v0, :cond_a

    .line 54268
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A0I()V

    .line 54269
    :goto_8
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A0C:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A08:Z

    .line 54270
    return-void

    .line 54271
    :cond_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A0D:Lcom/facebook/ads/redexgen/X/3x;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3x;->A03()V

    goto :goto_8

    .line 54272
    :cond_b
    invoke-direct {p0, v6, p1, p2, v2}, Lcom/facebook/ads/redexgen/X/TB;->A08(ILcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;Z)I

    move-result v0

    .line 54273
    .restart local v4    # "fixOffset":I
    add-int/2addr v6, v0

    .line 54274
    add-int/2addr v5, v0

    .line 54275
    invoke-direct {p0, v5, p1, p2, v3}, Lcom/facebook/ads/redexgen/X/TB;->A06(ILcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;Z)I

    move-result v0

    .line 54276
    .end local v4    # "fixOffset":I
    .restart local p2    # "fixOffset":I
    add-int/2addr v6, v0

    .line 54277
    add-int/2addr v5, v0

    goto :goto_7

    .line 54278
    .end local v0
    .end local v0
    :cond_c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A0D:Lcom/facebook/ads/redexgen/X/3x;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/TB;->A0b(Lcom/facebook/ads/redexgen/X/3x;)V

    .line 54279
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iput v7, v0, Lcom/facebook/ads/redexgen/X/3z;->A02:I

    .line 54280
    invoke-direct {p0, p1, v0, p2, v3}, Lcom/facebook/ads/redexgen/X/TB;->A09(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/3z;Lcom/facebook/ads/redexgen/X/4Z;Z)I

    .line 54281
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget v5, v0, Lcom/facebook/ads/redexgen/X/3z;->A06:I

    .line 54282
    .restart local v0    # "endOffset":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/3z;->A01:I

    .line 54283
    .local v0, "lastElement":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    if-lez v0, :cond_d

    .line 54284
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    add-int/2addr v6, v0

    .line 54285
    :cond_d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A0D:Lcom/facebook/ads/redexgen/X/3x;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/TB;->A0c(Lcom/facebook/ads/redexgen/X/3x;)V

    .line 54286
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iput v6, v7, Lcom/facebook/ads/redexgen/X/3z;->A02:I

    .line 54287
    iget v1, v7, Lcom/facebook/ads/redexgen/X/3z;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/3z;->A03:I

    add-int/2addr v1, v0

    iput v1, v7, Lcom/facebook/ads/redexgen/X/3z;->A01:I

    .line 54288
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    invoke-direct {p0, p1, v0, p2, v3}, Lcom/facebook/ads/redexgen/X/TB;->A09(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/3z;Lcom/facebook/ads/redexgen/X/4Z;Z)I

    .line 54289
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/3z;->A06:I

    .line 54290
    .local v0, "startOffset":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    if-lez v0, :cond_8

    .line 54291
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    .line 54292
    invoke-direct {p0, v4, v5}, Lcom/facebook/ads/redexgen/X/TB;->A0Y(II)V

    .line 54293
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iput v1, v0, Lcom/facebook/ads/redexgen/X/3z;->A02:I

    .line 54294
    invoke-direct {p0, p1, v0, p2, v3}, Lcom/facebook/ads/redexgen/X/TB;->A09(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/3z;Lcom/facebook/ads/redexgen/X/4Z;Z)I

    .line 54295
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget v5, v0, Lcom/facebook/ads/redexgen/X/3z;->A06:I

    goto/16 :goto_6

    .line 54296
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/4S;
    :cond_e
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A05:Z

    if-eqz v0, :cond_f

    goto/16 :goto_5

    .line 54297
    :cond_f
    const/4 v4, 0x1

    goto/16 :goto_5

    .line 54298
    :cond_10
    sub-int/2addr v7, v8

    goto/16 :goto_4

    .line 54299
    .local v0, "current":I
    :cond_11
    sget-object v5, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const-string v1, "sdmiyO1ExKOYMO2wbr6XNnW0K6t4WoaH"

    const/4 v0, 0x2

    aput-object v1, v5, v0

    const-string v1, "ty9AfnxQn4ghzZPCSImQPyrccPhuEwJu"

    const/4 v0, 0x4

    aput-object v1, v5, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A02:I

    sub-int/2addr v8, v0

    .local v0, "upcomingOffset":I
    goto/16 :goto_3

    .line 54300
    .end local v0    # "upcomingOffset":I
    .end local v0
    :cond_12
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/44;->A0F(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 54301
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A0A()I

    move-result v0

    sub-int/2addr v1, v0

    .line 54302
    .restart local v0    # "upcomingOffset":I
    iget v8, p0, Lcom/facebook/ads/redexgen/X/TB;->A02:I

    sub-int/2addr v8, v1

    goto/16 :goto_3

    :cond_13
    sget-object v5, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const-string v1, "wwbDuuRcKwQkcLvBFtW9wuMbOUuGYFzY"

    const/4 v0, 0x2

    aput-object v1, v5, v0

    const-string v1, "YequbpJjhMyIl9uyXvP2gytASLo9xZ7L"

    const/4 v0, 0x4

    aput-object v1, v5, v0

    if-eq v8, v4, :cond_5

    goto/16 :goto_2

    .line 54303
    .end local v0    # "upcomingOffset":I
    .end local v0
    :cond_14
    move v6, v7

    .line 54304
    .restart local v0    # "upcomingOffset":I
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 54305
    :cond_15
    if-eqz v5, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/44;->A0F(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 54306
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A07()I

    move-result v0

    if-ge v1, v0, :cond_16

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 54307
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/44;->A0C(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 54308
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A0A()I

    move-result v0

    if-gt v1, v0, :cond_4

    .line 54309
    :cond_16
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A0D:Lcom/facebook/ads/redexgen/X/3x;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/3x;->A05(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_17
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public A20(Lcom/facebook/ads/redexgen/X/4Z;)V
    .locals 1

    .line 54310
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A20(Lcom/facebook/ads/redexgen/X/4Z;)V

    .line 54311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    .line 54312
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A01:I

    .line 54313
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A02:I

    .line 54314
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A0D:Lcom/facebook/ads/redexgen/X/3x;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3x;->A03()V

    .line 54315
    return-void
.end method

.method public final A21(Lcom/facebook/ads/redexgen/X/Eq;Lcom/facebook/ads/redexgen/X/4S;)V
    .locals 1

    .line 54316
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/4K;->A21(Lcom/facebook/ads/redexgen/X/Eq;Lcom/facebook/ads/redexgen/X/4S;)V

    .line 54317
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A09:Z

    if-eqz v0, :cond_0

    .line 54318
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/4K;->A1J(Lcom/facebook/ads/redexgen/X/4S;)V

    .line 54319
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4S;->A0Q()V

    .line 54320
    :cond_0
    return-void
.end method

.method public A22(Lcom/facebook/ads/redexgen/X/Eq;Lcom/facebook/ads/redexgen/X/4Z;I)V
    .locals 2

    .line 54321
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Eq;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/TC;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/TC;-><init>(Landroid/content/Context;)V

    .line 54322
    .local p0, "linearSmoothScroller":Lcom/facebook/ads/redexgen/X/TC;
    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/4X;->A0B(I)V

    .line 54323
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4K;->A1M(Lcom/facebook/ads/redexgen/X/4X;)V

    .line 54324
    return-void
.end method

.method public final A23(Ljava/lang/String;)V
    .locals 1

    .line 54325
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 54326
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A23(Ljava/lang/String;)V

    .line 54327
    :cond_0
    return-void
.end method

.method public final A24()Z
    .locals 4

    .line 54328
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0Z()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    .line 54329
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0j()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 54330
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A1X()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const-string v1, "ZYU5Lu8KJdo1W8"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 54331
    :goto_0
    return v0

    .line 54332
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A25()Z
    .locals 1

    .line 54333
    iget v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A00:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A26()Z
    .locals 2

    .line 54334
    iget v1, p0, Lcom/facebook/ads/redexgen/X/TB;->A00:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public A27()Z
    .locals 2

    .line 54335
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/TB;->A08:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A0C:Z

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A28()I
    .locals 3

    .line 54336
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v1, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/TB;->A0H(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 54337
    .local p0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public final A29()I
    .locals 3

    .line 54338
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TB;->A0H(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 54339
    .local p0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public final A2A()I
    .locals 4

    .line 54340
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v3

    const/4 v2, 0x1

    sub-int/2addr v3, v2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, v3, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/TB;->A0H(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 54341
    .local p0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method public final A2B()I
    .locals 1

    .line 54342
    iget v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A00:I

    return v0
.end method

.method public final A2C(I)I
    .locals 7

    .line 54343
    const/4 v6, -0x1

    const/4 v3, 0x1

    if-eq p1, v3, :cond_e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_a

    const/16 v5, 0x11

    const/high16 v4, -0x80000000

    sget-object v1, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const-string v1, "6DQtaB3lJkGKNvmH8s9QQc68TsOBLDE"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eq p1, v5, :cond_8

    const/16 v0, 0x21

    if-eq p1, v0, :cond_6

    const/16 v0, 0x42

    if-eq p1, v0, :cond_3

    const/16 v0, 0x82

    if-eq p1, v0, :cond_1

    .line 54344
    return v4

    .line 54345
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A00:I

    if-ne v0, v3, :cond_2

    :goto_0
    return v3

    .line 54346
    :cond_2
    const/high16 v3, -0x80000000

    goto :goto_0

    .line 54347
    :cond_3
    iget v4, p0, Lcom/facebook/ads/redexgen/X/TB;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const-string v1, "iK4U0ZRXzEtdW2fzfe8Bf3AGjQ0TqpV"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-nez v4, :cond_5

    :goto_1
    return v3

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const-string v1, "iGul3AgWfaQLWccPz7lC"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-nez v4, :cond_5

    goto :goto_1

    .line 54348
    :cond_5
    const/high16 v3, -0x80000000

    goto :goto_1

    .line 54349
    :cond_6
    iget v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A00:I

    if-ne v0, v3, :cond_7

    :goto_2
    return v6

    .line 54350
    :cond_7
    const/high16 v6, -0x80000000

    goto :goto_2

    .line 54351
    :cond_8
    iget v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A00:I

    if-nez v0, :cond_9

    :goto_3
    return v6

    .line 54352
    :cond_9
    const/high16 v6, -0x80000000

    goto :goto_3

    .line 54353
    :cond_a
    iget v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A00:I

    if-ne v0, v3, :cond_b

    .line 54354
    return v3

    .line 54355
    :cond_b
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TB;->A2K()Z

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_c

    if-eqz v4, :cond_d

    .line 54356
    :goto_4
    return v6

    :cond_c
    sget-object v2, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const-string v1, "RrOYqAD7qkiKfoMMpmv8yvTfnugso6lX"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "bATvX0yF7VRTLnTu9UqtYEiONslIi7NA"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v4, :cond_d

    goto :goto_4

    .line 54357
    :cond_d
    return v3

    .line 54358
    :cond_e
    iget v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A00:I

    if-ne v0, v3, :cond_f

    .line 54359
    return v6

    .line 54360
    :cond_f
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TB;->A2K()Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_10

    sget-object v2, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const-string v1, "oHMhsTCUvi8O8"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v4, :cond_11

    .line 54361
    :goto_5
    return v3

    :cond_10
    sget-object v2, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const-string v1, "cASVkZ3y2DetEF9G8otARsSwnjimgRtg"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "wDGntkgp6XogcOY7rYz8EKhCse1aHWOv"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v4, :cond_11

    goto :goto_5

    .line 54362
    :cond_11
    return v6
.end method

.method public A2D(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;III)Landroid/view/View;
    .locals 7

    .line 54363
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TB;->A2E()V

    .line 54364
    const/4 v6, 0x0

    .line 54365
    .local p0, "invalidMatch":Landroid/view/View;
    const/4 v5, 0x0

    .line 54366
    .local p1, "outOfBoundsMatch":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A0A()I

    move-result v4

    .line 54367
    .local p2, "boundsStart":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A07()I

    move-result v3

    .line 54368
    .local p3, "boundsEnd":I
    if-le p4, p3, :cond_3

    const/4 v2, 0x1

    .line 54369
    .local p5, "i":I
    :goto_0
    if-eq p3, p4, :cond_5

    .line 54370
    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v1

    .line 54371
    .local v6, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v0

    .line 54372
    .local v5, "position":I
    if-ltz v0, :cond_0

    if-ge v0, p5, :cond_0

    .line 54373
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4L;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4L;->A02()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54374
    if-nez v6, :cond_0

    .line 54375
    move-object v6, v1

    .line 54376
    .end local v6    # "view":Landroid/view/View;
    .end local v5    # "position":I
    :cond_0
    :goto_1
    add-int/2addr p3, v2

    goto :goto_0

    .line 54377
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/44;->A0F(Landroid/view/View;)I

    move-result v0

    if-ge v0, v3, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 54378
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/44;->A0C(Landroid/view/View;)I

    move-result v0

    if-ge v0, v4, :cond_4

    .line 54379
    :cond_2
    if-nez v5, :cond_0

    .line 54380
    move-object v5, v1

    goto :goto_1

    .line 54381
    :cond_3
    const/4 v2, -0x1

    goto :goto_0

    .line 54382
    :cond_4
    return-object v1

    .line 54383
    .end local p5    # "i":I
    :cond_5
    if-eqz v5, :cond_6

    :goto_2
    return-object v5

    :cond_6
    move-object v5, v6

    goto :goto_2
.end method

.method public final A2E()V
    .locals 1

    .line 54384
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    if-nez v0, :cond_0

    .line 54385
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TB;->A0T()Lcom/facebook/ads/redexgen/X/3z;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A07:Lcom/facebook/ads/redexgen/X/3z;

    .line 54386
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    if-nez v0, :cond_1

    .line 54387
    iget v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A00:I

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/44;->A02(Lcom/facebook/ads/redexgen/X/4K;I)Lcom/facebook/ads/redexgen/X/44;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 54388
    :cond_1
    return-void
.end method

.method public final A2F(I)V
    .locals 4

    .line 54389
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 54390
    :cond_0
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const-string v1, "wMuOUB68W5cmyVCUMue198JFnL9Wkeot"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/TB;->A23(Ljava/lang/String;)V

    .line 54391
    iget v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A00:I

    if-ne p1, v0, :cond_2

    .line 54392
    return-void

    .line 54393
    :cond_2
    iput p1, p0, Lcom/facebook/ads/redexgen/X/TB;->A00:I

    .line 54394
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 54395
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0z()V

    .line 54396
    return-void

    .line 54397
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x14

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TB;->A0U(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A2G(II)V
    .locals 3

    .line 54398
    iput p1, p0, Lcom/facebook/ads/redexgen/X/TB;->A01:I

    .line 54399
    iput p2, p0, Lcom/facebook/ads/redexgen/X/TB;->A02:I

    .line 54400
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 54401
    invoke-virtual {v0}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00()V

    .line 54402
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0z()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 54403
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const-string v1, "tDl3kZGUKMTs"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void
.end method

.method public A2H(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/3x;I)V
    .locals 0

    .line 54404
    return-void
.end method

.method public A2I(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/3z;Lcom/facebook/ads/redexgen/X/3y;)V
    .locals 14

    .line 54405
    move-object v7, p0

    move-object/from16 v5, p3

    invoke-virtual {v5, p1}, Lcom/facebook/ads/redexgen/X/3z;->A03(Lcom/facebook/ads/redexgen/X/4S;)Landroid/view/View;

    move-result-object v9

    .line 54406
    .local v3, "view":Landroid/view/View;
    const/4 v3, 0x1

    move-object/from16 v4, p4

    if-nez v9, :cond_0

    .line 54407
    iput-boolean v3, v4, Lcom/facebook/ads/redexgen/X/3y;->A01:Z

    .line 54408
    return-void

    .line 54409
    :cond_0
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/4L;

    .line 54410
    .local v2, "params":Lcom/facebook/ads/redexgen/X/4L;
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/3z;->A08:Ljava/util/List;

    const/4 v6, -0x1

    const/4 v8, 0x0

    if-nez v0, :cond_9

    .line 54411
    iget-boolean v1, v7, Lcom/facebook/ads/redexgen/X/TB;->A05:Z

    iget v0, v5, Lcom/facebook/ads/redexgen/X/3z;->A05:I

    if-ne v0, v6, :cond_8

    const/4 v0, 0x1

    :goto_0
    if-ne v1, v0, :cond_7

    .line 54412
    invoke-virtual {v7, v9}, Lcom/facebook/ads/redexgen/X/4K;->A18(Landroid/view/View;)V

    .line 54413
    :goto_1
    invoke-virtual {v7, v9, v8, v8}, Lcom/facebook/ads/redexgen/X/4K;->A1B(Landroid/view/View;II)V

    .line 54414
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/44;->A0D(Landroid/view/View;)I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/3y;->A00:I

    .line 54415
    iget v0, v7, Lcom/facebook/ads/redexgen/X/TB;->A00:I

    if-ne v0, v3, :cond_5

    .line 54416
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TB;->A2K()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 54417
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0i()I

    move-result v12

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0g()I

    move-result v0

    sub-int/2addr v12, v0

    .line 54418
    .local p0, "right":I
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/44;->A0E(Landroid/view/View;)I

    move-result v0

    sub-int v10, v12, v0

    .line 54419
    .local p2, "left":I
    .restart local p0    # "right":I
    :goto_2
    iget v0, v5, Lcom/facebook/ads/redexgen/X/3z;->A05:I

    if-ne v0, v6, :cond_3

    .line 54420
    iget v13, v5, Lcom/facebook/ads/redexgen/X/3z;->A06:I

    .line 54421
    .local p1, "bottom":I
    iget v11, v5, Lcom/facebook/ads/redexgen/X/3z;->A06:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/3y;->A00:I

    sub-int/2addr v11, v0

    .line 54422
    .local v5, "top":I
    .end local p0    # "right":I
    .end local p1    # "bottom":I
    .end local p2    # "left":I
    .local v2, "left":I
    .local v0, "top":I
    .local v6, "right":I
    .local v8, "bottom":I
    :goto_3
    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/4K;->A1C(Landroid/view/View;IIII)V

    .line 54423
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4L;->A02()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4L;->A01()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54424
    :cond_1
    iput-boolean v3, v4, Lcom/facebook/ads/redexgen/X/3y;->A03:Z

    .line 54425
    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    iput-boolean v0, v4, Lcom/facebook/ads/redexgen/X/3y;->A02:Z

    .line 54426
    return-void

    .line 54427
    .end local p1
    .end local v5    # "top":I
    :cond_3
    iget v11, v5, Lcom/facebook/ads/redexgen/X/3z;->A06:I

    .line 54428
    .local p1, "top":I
    iget v13, v5, Lcom/facebook/ads/redexgen/X/3z;->A06:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/3y;->A00:I

    add-int/2addr v13, v0

    .local v5, "bottom":I
    goto :goto_3

    .line 54429
    .end local p0
    .end local p2
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0f()I

    move-result v10

    .line 54430
    .restart local p2    # "left":I
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/44;->A0E(Landroid/view/View;)I

    move-result v12

    add-int/2addr v12, v10

    goto :goto_2

    .line 54431
    .end local p0
    .end local p1    # "top":I
    .end local p2    # "left":I
    .end local v5    # "bottom":I
    :cond_5
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0h()I

    move-result v11

    .line 54432
    .local p0, "top":I
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/TB;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/44;->A0E(Landroid/view/View;)I

    move-result v13

    add-int/2addr v13, v11

    .line 54433
    .local p2, "bottom":I
    iget v0, v5, Lcom/facebook/ads/redexgen/X/3z;->A05:I

    if-ne v0, v6, :cond_6

    .line 54434
    iget v12, v5, Lcom/facebook/ads/redexgen/X/3z;->A06:I

    .line 54435
    .local p1, "right":I
    iget v10, v5, Lcom/facebook/ads/redexgen/X/3z;->A06:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/3y;->A00:I

    sub-int/2addr v10, v0

    .local v5, "left":I
    goto :goto_3

    .line 54436
    .end local p1    # "right":I
    .end local v5    # "left":I
    :cond_6
    iget v10, v5, Lcom/facebook/ads/redexgen/X/3z;->A06:I

    .line 54437
    .local p1, "left":I
    iget v12, v5, Lcom/facebook/ads/redexgen/X/3z;->A06:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/3y;->A00:I

    add-int/2addr v12, v0

    goto :goto_3

    .line 54438
    :cond_7
    invoke-virtual {v7, v9, v8}, Lcom/facebook/ads/redexgen/X/4K;->A1A(Landroid/view/View;I)V

    goto :goto_1

    .line 54439
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 54440
    :cond_9
    iget-boolean v1, v7, Lcom/facebook/ads/redexgen/X/TB;->A05:Z

    iget v0, v5, Lcom/facebook/ads/redexgen/X/3z;->A05:I

    if-ne v0, v6, :cond_a

    const/4 v0, 0x1

    :goto_4
    if-ne v1, v0, :cond_b

    .line 54441
    invoke-virtual {v7, v9}, Lcom/facebook/ads/redexgen/X/4K;->A17(Landroid/view/View;)V

    goto/16 :goto_1

    .line 54442
    :cond_a
    const/4 v0, 0x0

    goto :goto_4

    .line 54443
    :cond_b
    invoke-virtual {v7, v9, v8}, Lcom/facebook/ads/redexgen/X/4K;->A19(Landroid/view/View;I)V

    goto/16 :goto_1
.end method

.method public A2J(Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/3z;Lcom/facebook/ads/redexgen/X/4I;)V
    .locals 3

    .line 54444
    iget v2, p2, Lcom/facebook/ads/redexgen/X/3z;->A01:I

    .line 54445
    .local p0, "pos":I
    if-ltz v2, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4Z;->A03()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 54446
    const/4 v1, 0x0

    iget v0, p2, Lcom/facebook/ads/redexgen/X/3z;->A07:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-interface {p3, v2, v0}, Lcom/facebook/ads/redexgen/X/4I;->A3K(II)V

    .line 54447
    :cond_0
    return-void
.end method

.method public final A2K()Z
    .locals 2

    .line 54448
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0b()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A46(I)Landroid/graphics/PointF;
    .locals 6

    .line 54449
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    if-nez v0, :cond_0

    .line 54450
    const/4 v0, 0x0

    return-object v0

    .line 54451
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v0

    .line 54452
    .local p1, "firstChildPos":I
    const/4 v5, 0x1

    if-ge p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TB;->A05:Z

    if-eq v1, v0, :cond_2

    const/4 v5, -0x1

    .line 54453
    .local p0, "direction":I
    :cond_2
    iget v4, p0, Lcom/facebook/ads/redexgen/X/TB;->A00:I

    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/TB;->A0G:[Ljava/lang/String;

    const-string v1, "5EjIyJt0kzQOvAP28HqeuGPqaebz9kN"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-nez v4, :cond_3

    .line 54454
    int-to-float v1, v5

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    .line 54455
    :cond_3
    int-to-float v1, v5

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
