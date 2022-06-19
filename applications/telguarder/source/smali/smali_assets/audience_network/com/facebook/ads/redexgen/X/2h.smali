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

    .line 5857
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5858
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2h;->A04:Landroid/view/View;

    .line 5859
    return-void
.end method

.method private A00(I)Landroid/view/ViewParent;
    .locals 1

    .line 5860
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 5861
    const/4 v0, 0x0

    return-object v0

    .line 5862
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2h;->A00:Landroid/view/ViewParent;

    return-object v0

    .line 5863
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2h;->A01:Landroid/view/ViewParent;

    return-object v0
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "HMLUAMeWTnTdrFyTRCB7w3ZhJ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "1Aun6"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "yTavC3hBHsVyJRra79jdVUTW7IEAkuRz"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "tJ693OcumSOXrVCtzwSe90nGcRRSjuPr"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "DrEyERnZlKSQp8AkPycUbQNlm94xmy5e"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "2BUIq1m7obUXC577xarT453dfNaADk5N"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "yJUqjpNvvORIKjYa1o1Wy5wtSjtgR6zYd"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "0hzYa3ofwknJpPrn6YTjRWoRNT8nV8gu"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2h;->A05:[Ljava/lang/String;

    return-void
.end method

.method private A02(ILandroid/view/ViewParent;)V
    .locals 1

    .line 5864
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 5865
    :goto_0
    return-void

    .line 5866
    :cond_0
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/2h;->A00:Landroid/view/ViewParent;

    goto :goto_0

    .line 5867
    :cond_1
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/2h;->A01:Landroid/view/ViewParent;

    .line 5868
    goto :goto_0
.end method


# virtual methods
.method public final A03()V
    .locals 1

    .line 5869
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/2h;->A04(I)V

    .line 5870
    return-void
.end method

.method public final A04(I)V
    .locals 2

    .line 5871
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2h;->A00(I)Landroid/view/ViewParent;

    move-result-object v1

    .line 5872
    .local p0, "parent":Landroid/view/ViewParent;
    if-eqz v1, :cond_0

    .line 5873
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2h;->A04:Landroid/view/View;

    invoke-static {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/3F;->A01(Landroid/view/ViewParent;Landroid/view/View;I)V

    .line 5874
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A02(ILandroid/view/ViewParent;)V

    .line 5875
    :cond_0
    return-void
.end method

.method public final A05(Z)V
    .locals 4

    .line 5876
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2h;->A02:Z

    if-eqz v0, :cond_1

    .line 5877
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2h;->A04:Landroid/view/View;

    sget-object v1, Lcom/facebook/ads/redexgen/X/2h;->A05:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A05:[Ljava/lang/String;

    const-string v1, "sPOLp35TsNHusY6V5G0bvTSrJPIVSPnr"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "EPAyi3E2WcCopkomgXFhWqOsQM7C57d6"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/2z;->A08(Landroid/view/View;)V

    .line 5878
    :cond_1
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/2h;->A02:Z

    .line 5879
    return-void
.end method

.method public final A06()Z
    .locals 1

    .line 5880
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/2h;->A0A(I)Z

    move-result v0

    return v0
.end method

.method public final A07()Z
    .locals 1

    .line 5881
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2h;->A02:Z

    return v0
.end method

.method public final A08(FF)Z
    .locals 2

    .line 5882
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2h;->A07()Z

    move-result v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    .line 5883
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/2h;->A00(I)Landroid/view/ViewParent;

    move-result-object v1

    .line 5884
    .local p0, "parent":Landroid/view/ViewParent;
    if-eqz v1, :cond_0

    .line 5885
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2h;->A04:Landroid/view/View;

    invoke-static {v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/3F;->A05(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result v0

    return v0

    .line 5886
    .end local p0    # "parent":Landroid/view/ViewParent;
    :cond_0
    return v0
.end method

.method public final A09(FFZ)Z
    .locals 2

    .line 5887
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2h;->A07()Z

    move-result v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    .line 5888
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/2h;->A00(I)Landroid/view/ViewParent;

    move-result-object v1

    .line 5889
    .local p0, "parent":Landroid/view/ViewParent;
    if-eqz v1, :cond_0

    .line 5890
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2h;->A04:Landroid/view/View;

    invoke-static {v1, v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/3F;->A06(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result v0

    return v0

    .line 5891
    .end local p0    # "parent":Landroid/view/ViewParent;
    :cond_0
    return v0
.end method

.method public final A0A(I)Z
    .locals 1

    .line 5892
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

    .line 5893
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A0C(II)Z

    move-result v0

    return v0
.end method

.method public final A0C(II)Z
    .locals 7

    .line 5894
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/2h;->A0A(I)Z

    move-result v0

    const/4 v6, 0x1

    if-eqz v0, :cond_0

    .line 5895
    return v6

    .line 5896
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2h;->A07()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5897
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2h;->A04:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 5898
    .local p0, "p":Landroid/view/ViewParent;
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/2h;->A04:Landroid/view/View;

    .line 5899
    .local p2, "child":Landroid/view/View;
    :goto_0
    if-eqz v5, :cond_4

    .line 5900
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2h;->A04:Landroid/view/View;

    invoke-static {v5, v4, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/3F;->A07(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5901
    invoke-direct {p0, p2, v5}, Lcom/facebook/ads/redexgen/X/2h;->A02(ILandroid/view/ViewParent;)V

    .line 5902
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2h;->A04:Landroid/view/View;

    invoke-static {v5, v4, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/3F;->A04(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V

    .line 5903
    return v6

    .line 5904
    :cond_1
    instance-of v3, v5, Landroid/view/View;

    sget-object v1, Lcom/facebook/ads/redexgen/X/2h;->A05:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A05:[Ljava/lang/String;

    const-string v1, "7BAbpT06x25B1B2yqAUEO7iBu"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    .line 5905
    move-object v4, v5

    check-cast v4, Landroid/view/View;

    .line 5906
    :cond_3
    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    goto :goto_0

    .line 5907
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

    .line 5908
    const/4 v6, 0x0

    move-object v0, p0

    move-object v5, p5

    move v4, p4

    move v3, p3

    move v2, p2

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/2h;->A0E(IIII[II)Z

    move-result v0

    return v0
.end method

.method public final A0E(IIII[II)Z
    .locals 16
    .param p5    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5909
    move-object/from16 v1, p0

    move-object v4, v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/2h;->A07()Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_6

    .line 5910
    move/from16 v15, p6

    invoke-direct {v1, v15}, Lcom/facebook/ads/redexgen/X/2h;->A00(I)Landroid/view/ViewParent;

    move-result-object v9

    .line 5911
    .local v15, "parent":Landroid/view/ViewParent;
    if-nez v9, :cond_0

    .line 5912
    return v8

    .line 5913
    :cond_0
    const/4 v7, 0x1

    move-object/from16 v3, p5

    move/from16 v14, p4

    move/from16 v13, p3

    move/from16 v12, p2

    move/from16 v11, p1

    if-nez v11, :cond_1

    if-nez v12, :cond_1

    if-nez v13, :cond_1

    if-eqz v14, :cond_5

    .line 5914
    :cond_1
    const/4 v6, 0x0

    .line 5915
    .local v14, "startX":I
    const/4 v5, 0x0

    .line 5916
    .local v3, "startY":I
    if-eqz v3, :cond_2

    .line 5917
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/2h;->A04:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 5918
    aget v6, v3, v8

    .line 5919
    aget v5, v3, v7

    .line 5920
    .end local v14    # "startX":I
    .end local v3    # "startY":I
    .local v7, "startX":I
    .local v6, "startY":I
    :cond_2
    iget-object v10, v4, Lcom/facebook/ads/redexgen/X/2h;->A04:Landroid/view/View;

    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 5921
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A05:[Ljava/lang/String;

    const-string v1, "CJefiU87NJ7XNqmbcPXjJdErx"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-static/range {v9 .. v15}, Lcom/facebook/ads/redexgen/X/3F;->A02(Landroid/view/ViewParent;Landroid/view/View;IIIII)V

    .line 5922
    if-eqz v3, :cond_4

    .line 5923
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/2h;->A04:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 5924
    aget v0, v3, v8

    sub-int/2addr v0, v6

    aput v0, v3, v8

    .line 5925
    aget v0, v3, v7

    sub-int/2addr v0, v5

    aput v0, v3, v7

    .line 5926
    :cond_4
    return v7

    .line 5927
    :cond_5
    if-eqz v3, :cond_6

    .line 5928
    aput v8, v3, v8

    .line 5929
    aput v8, v3, v7

    .line 5930
    :cond_6
    return v8
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

    .line 5931
    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p4

    move-object v3, p3

    move v2, p2

    move v1, p1

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

    .line 5932
    move-object/from16 v1, p0

    move-object v4, v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/2h;->A07()Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_a

    .line 5933
    move/from16 v15, p5

    invoke-direct {v1, v15}, Lcom/facebook/ads/redexgen/X/2h;->A00(I)Landroid/view/ViewParent;

    move-result-object v10

    .line 5934
    .local v15, "parent":Landroid/view/ViewParent;
    if-nez v10, :cond_0

    .line 5935
    return v9

    .line 5936
    :cond_0
    const/4 v8, 0x1

    move-object/from16 v3, p4

    move/from16 v13, p2

    move/from16 v12, p1

    if-nez v12, :cond_1

    if-eqz v13, :cond_9

    .line 5937
    :cond_1
    const/4 v7, 0x0

    .line 5938
    .local v3, "startX":I
    const/4 v6, 0x0

    .line 5939
    .local v15, "startY":I
    if-eqz v3, :cond_2

    .line 5940
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/2h;->A04:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 5941
    aget v7, v3, v9

    .line 5942
    aget v6, v3, v8

    .line 5943
    .end local v3    # "startX":I
    .end local v15    # "startY":I
    .local v8, "startX":I
    .local v7, "startY":I
    :cond_2
    if-nez v14, :cond_4

    .line 5944
    iget-object v5, v4, Lcom/facebook/ads/redexgen/X/2h;->A03:[I

    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A05:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A05:[Ljava/lang/String;

    const-string v1, "EXwhuqfa8PSenPC96DfC6aE38"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v5, :cond_3

    .line 5945
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/2h;->A03:[I

    .line 5946
    :cond_3
    iget-object v14, v4, Lcom/facebook/ads/redexgen/X/2h;->A03:[I

    .line 5947
    .end local v7    # "startY":I
    .local v3, "consumed":[I
    .end local v7
    .local v6, "consumed":[I
    :cond_4
    aput v9, v14, v9

    .line 5948
    aput v9, v14, v8

    .line 5949
    iget-object v11, v4, Lcom/facebook/ads/redexgen/X/2h;->A04:Landroid/view/View;

    invoke-static/range {v10 .. v15}, Lcom/facebook/ads/redexgen/X/3F;->A03(Landroid/view/ViewParent;Landroid/view/View;II[II)V

    .line 5950
    if-eqz v3, :cond_5

    .line 5951
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/2h;->A04:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 5952
    aget v0, v3, v9

    sub-int/2addr v0, v7

    aput v0, v3, v9

    .line 5953
    aget v0, v3, v8

    sub-int/2addr v0, v6

    aput v0, v3, v8

    .line 5954
    :cond_5
    aget v0, v14, v9

    if-nez v0, :cond_6

    aget v0, v14, v8

    if-eqz v0, :cond_7

    :cond_6
    :goto_0
    return v8

    :cond_7
    const/4 v8, 0x0

    goto :goto_0

    .line 5955
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 5956
    :cond_9
    if-eqz v3, :cond_a

    .line 5957
    aput v9, v3, v9

    .line 5958
    aput v9, v3, v8

    .line 5959
    :cond_a
    return v9
.end method
