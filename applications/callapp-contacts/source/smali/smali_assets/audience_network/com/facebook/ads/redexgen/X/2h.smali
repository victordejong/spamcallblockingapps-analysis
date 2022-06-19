.class public final Lcom/facebook/ads/redexgen/X/2h;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/view/ViewParent;

.field public A01:Landroid/view/ViewParent;

.field public A02:Z

.field public A03:[I

.field public final A04:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2h;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5747
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2h;->A04:Landroid/view/View;

    .line 5748
    return-void
.end method

.method private A00(I)Landroid/view/ViewParent;
    .locals 1

    .line 5749
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 5750
    const/4 v0, 0x0

    return-object v0

    .line 5751
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2h;->A00:Landroid/view/ViewParent;

    return-object v0

    .line 5752
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2h;->A01:Landroid/view/ViewParent;

    return-object v0
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "efs8eZdEWHsCfUb6qOzicmMnQm4SneBY"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "GPD1kjm6fR3i7blABsL8PkfqVt5tQ0ec"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "1ZMAOqgxiysbgCK2QhJ8YR6mzQdOOVTU"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "tADzoHnDRwqyF4JfOWpRm"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "2dCxtsKJi8key4A0"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "YZUwpVg0T4azRRaUQd2X9mlkfrI9cQeh"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "C6BrW2LKkOXM7XSn"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2h;->A05:[Ljava/lang/String;

    return-void
.end method

.method private A02(ILandroid/view/ViewParent;)V
    .locals 1

    .line 5753
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 5754
    :goto_0
    return-void

    .line 5755
    :cond_0
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/2h;->A00:Landroid/view/ViewParent;

    goto :goto_0

    .line 5756
    :cond_1
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/2h;->A01:Landroid/view/ViewParent;

    .line 5757
    goto :goto_0
.end method


# virtual methods
.method public final A03()V
    .locals 1

    .line 5758
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/2h;->A04(I)V

    .line 5759
    return-void
.end method

.method public final A04(I)V
    .locals 2

    .line 5760
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2h;->A00(I)Landroid/view/ViewParent;

    move-result-object v1

    .line 5761
    .local p0, "parent":Landroid/view/ViewParent;
    if-eqz v1, :cond_0

    .line 5762
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2h;->A04:Landroid/view/View;

    invoke-static {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/3F;->A00(Landroid/view/ViewParent;Landroid/view/View;I)V

    .line 5763
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A02(ILandroid/view/ViewParent;)V

    .line 5764
    :cond_0
    return-void
.end method

.method public final A05(Z)V
    .locals 1

    .line 5765
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2h;->A02:Z

    if-eqz v0, :cond_0

    .line 5766
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2h;->A04:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2z;->A08(Landroid/view/View;)V

    .line 5767
    :cond_0
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/2h;->A02:Z

    .line 5768
    return-void
.end method

.method public final A06()Z
    .locals 1

    .line 5769
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/2h;->A0A(I)Z

    move-result v0

    return v0
.end method

.method public final A07()Z
    .locals 1

    .line 5770
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2h;->A02:Z

    return v0
.end method

.method public final A08(FF)Z
    .locals 2

    .line 5771
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2h;->A07()Z

    move-result v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    .line 5772
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/2h;->A00(I)Landroid/view/ViewParent;

    move-result-object v1

    .line 5773
    .local p0, "parent":Landroid/view/ViewParent;
    if-eqz v1, :cond_0

    .line 5774
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2h;->A04:Landroid/view/View;

    invoke-static {v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/3F;->A04(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result v0

    return v0

    .line 5775
    .end local p0    # "parent":Landroid/view/ViewParent;
    :cond_0
    return v0
.end method

.method public final A09(FFZ)Z
    .locals 2

    .line 5776
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2h;->A07()Z

    move-result v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    .line 5777
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/2h;->A00(I)Landroid/view/ViewParent;

    move-result-object v1

    .line 5778
    .local p0, "parent":Landroid/view/ViewParent;
    if-eqz v1, :cond_0

    .line 5779
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2h;->A04:Landroid/view/View;

    invoke-static {v1, v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/3F;->A05(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result v0

    return v0

    .line 5780
    .end local p0    # "parent":Landroid/view/ViewParent;
    :cond_0
    return v0
.end method

.method public final A0A(I)Z
    .locals 1

    .line 5781
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2h;->A00(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0B(I)Z
    .locals 1

    .line 5782
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A0C(II)Z

    move-result v0

    return v0
.end method

.method public final A0C(II)Z
    .locals 5

    .line 5783
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/2h;->A0A(I)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 5784
    return v4

    .line 5785
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2h;->A07()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5786
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2h;->A04:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/2h;->A05:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x74

    if-eq v1, v0, :cond_3

    .line 5787
    .local p0, "p":Landroid/view/ViewParent;
    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A05:[Ljava/lang/String;

    const-string v1, "WHooJguTbRSPJrOooyt3LEnarcCTCzBe"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "8Bjeqw0rr3DdKBFvYwfvH0FxnGa8049d"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2h;->A04:Landroid/view/View;

    .line 5788
    .local p2, "child":Landroid/view/View;
    :goto_0
    if-eqz v3, :cond_4

    .line 5789
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2h;->A04:Landroid/view/View;

    invoke-static {v3, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/3F;->A06(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5790
    invoke-direct {p0, p2, v3}, Lcom/facebook/ads/redexgen/X/2h;->A02(ILandroid/view/ViewParent;)V

    .line 5791
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2h;->A04:Landroid/view/View;

    invoke-static {v3, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/3F;->A03(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V

    .line 5792
    return v4

    .line 5793
    :cond_1
    instance-of v0, v3, Landroid/view/View;

    if-eqz v0, :cond_2

    .line 5794
    move-object v1, v3

    check-cast v1, Landroid/view/View;

    .line 5795
    :cond_2
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 5796
    .end local p0    # "p":Landroid/view/ViewParent;
    .end local p2    # "child":Landroid/view/View;
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public final A0D(IIII[I)Z
    .locals 7
    .param p5    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5797
    const/4 v6, 0x0

    move-object v0, p0

    move v2, p2

    move v1, p1

    move v3, p3

    move-object v5, p5

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/2h;->A0E(IIII[II)Z

    move-result v0

    return v0
.end method

.method public final A0E(IIII[II)Z
    .locals 14
    .param p5    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5798
    move-object v6, p0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2h;->A07()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_5

    .line 5799
    move/from16 v13, p6

    invoke-direct {p0, v13}, Lcom/facebook/ads/redexgen/X/2h;->A00(I)Landroid/view/ViewParent;

    move-result-object v7

    .line 5800
    .local v13, "parent":Landroid/view/ViewParent;
    if-nez v7, :cond_0

    .line 5801
    return v5

    .line 5802
    :cond_0
    const/4 v3, 0x1

    move/from16 v10, p2

    move v9, p1

    move/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v4, p5

    if-nez v9, :cond_1

    if-nez v10, :cond_1

    if-nez v11, :cond_1

    if-eqz v12, :cond_4

    .line 5803
    :cond_1
    const/4 v2, 0x0

    .line 5804
    .local v12, "startX":I
    const/4 v1, 0x0

    .line 5805
    .local v4, "startY":I
    if-eqz v4, :cond_2

    .line 5806
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/2h;->A04:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 5807
    aget v2, v4, v5

    .line 5808
    aget v1, v4, v3

    .line 5809
    .end local v12    # "startX":I
    .end local v4    # "startY":I
    .local v3, "startX":I
    .local v2, "startY":I
    :cond_2
    iget-object v8, v6, Lcom/facebook/ads/redexgen/X/2h;->A04:Landroid/view/View;

    invoke-static/range {v7 .. v13}, Lcom/facebook/ads/redexgen/X/3F;->A01(Landroid/view/ViewParent;Landroid/view/View;IIIII)V

    .line 5810
    if-eqz v4, :cond_3

    .line 5811
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/2h;->A04:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 5812
    aget v0, v4, v5

    sub-int/2addr v0, v2

    aput v0, v4, v5

    .line 5813
    aget v0, v4, v3

    sub-int/2addr v0, v1

    aput v0, v4, v3

    .line 5814
    :cond_3
    return v3

    .line 5815
    :cond_4
    if-eqz v4, :cond_5

    .line 5816
    aput v5, v4, v5

    .line 5817
    aput v5, v4, v3

    .line 5818
    :cond_5
    return v5
.end method

.method public final A0F(II[I[I)Z
    .locals 6
    .param p3    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5819
    const/4 v5, 0x0

    move-object v0, p0

    move v2, p2

    move v1, p1

    move-object v4, p4

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/2h;->A0G(II[I[II)Z

    move-result v0

    return v0
.end method

.method public final A0G(II[I[II)Z
    .locals 16
    .param p3    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v14, p3

    .line 5820
    move-object/from16 v1, p0

    move-object v4, v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/2h;->A07()Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_b

    .line 5821
    move/from16 v15, p5

    invoke-direct {v1, v15}, Lcom/facebook/ads/redexgen/X/2h;->A00(I)Landroid/view/ViewParent;

    move-result-object v10

    .line 5822
    .local v15, "parent":Landroid/view/ViewParent;
    if-nez v10, :cond_0

    .line 5823
    return v9

    .line 5824
    :cond_0
    const/4 v8, 0x1

    move/from16 v13, p2

    move/from16 v12, p1

    move-object/from16 v3, p4

    if-nez v12, :cond_1

    if-eqz v13, :cond_a

    .line 5825
    :cond_1
    const/4 v7, 0x0

    .line 5826
    .local v3, "startX":I
    const/4 v6, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/2h;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_9

    .line 5827
    .local v15, "startY":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A05:[Ljava/lang/String;

    const-string v1, "3VbjZKhXDsexEmt2meqPVZABMNEQkFPW"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 5828
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/2h;->A04:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 5829
    aget v7, v3, v9

    .line 5830
    aget v6, v3, v8

    .line 5831
    .end local v3    # "startX":I
    .end local v15    # "startY":I
    .local v8, "startX":I
    .local v7, "startY":I
    :cond_2
    if-nez v14, :cond_4

    .line 5832
    iget-object v5, v4, Lcom/facebook/ads/redexgen/X/2h;->A03:[I

    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A05:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v5, :cond_3

    .line 5833
    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/2h;->A03:[I

    .line 5834
    :cond_3
    iget-object v14, v4, Lcom/facebook/ads/redexgen/X/2h;->A03:[I

    .line 5835
    .end local v1
    .local v3, "consumed":[I
    .end local v1
    .local v6, "consumed":[I
    :cond_4
    aput v9, v14, v9

    .line 5836
    aput v9, v14, v8

    .line 5837
    iget-object v11, v4, Lcom/facebook/ads/redexgen/X/2h;->A04:Landroid/view/View;

    invoke-static/range {v10 .. v15}, Lcom/facebook/ads/redexgen/X/3F;->A02(Landroid/view/ViewParent;Landroid/view/View;II[II)V

    .line 5838
    if-eqz v3, :cond_5

    .line 5839
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/2h;->A04:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 5840
    aget v0, v3, v9

    sub-int/2addr v0, v7

    aput v0, v3, v9

    .line 5841
    aget v0, v3, v8

    sub-int/2addr v0, v6

    aput v0, v3, v8

    .line 5842
    :cond_5
    aget v0, v14, v9

    if-nez v0, :cond_6

    aget v0, v14, v8

    if-eqz v0, :cond_7

    :cond_6
    :goto_1
    return v8

    :cond_7
    const/4 v8, 0x0

    goto :goto_1

    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A05:[Ljava/lang/String;

    const-string v1, "gHL5QaZEq3qu3ZW6"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "on2hgQBHubksAtN0"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-nez v5, :cond_3

    goto :goto_0

    .line 5843
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 5844
    :cond_a
    if-eqz v3, :cond_b

    .line 5845
    aput v9, v3, v9

    .line 5846
    aput v9, v3, v8

    .line 5847
    :cond_b
    return v9
.end method
