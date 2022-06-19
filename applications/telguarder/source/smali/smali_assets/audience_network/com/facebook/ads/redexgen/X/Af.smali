.class public abstract Lcom/facebook/ads/redexgen/X/Af;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ad;,
        Lcom/facebook/ads/redexgen/X/Ae;
    }
.end annotation


# static fields
.field public static final A00:Lcom/facebook/ads/redexgen/X/Af;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 21588
    new-instance v0, Lcom/facebook/ads/redexgen/X/W5;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/W5;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Af;->A00:Lcom/facebook/ads/redexgen/X/Af;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract A00()I
.end method

.method public abstract A01()I
.end method

.method public A02(IIZ)I
    .locals 1

    .line 21590
    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 21591
    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/Af;->A06(Z)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 21592
    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/Af;->A05(Z)I

    move-result v0

    .line 21593
    :goto_0
    return v0

    .line 21594
    :cond_0
    add-int/lit8 v0, p1, 0x1

    goto :goto_0

    .line 21595
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 21596
    :cond_2
    return p1

    .line 21597
    :cond_3
    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/Af;->A06(Z)I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 21598
    const/4 v0, -0x1

    .line 21599
    :goto_1
    return v0

    .line 21600
    :cond_4
    add-int/lit8 v0, p1, 0x1

    goto :goto_1
.end method

.method public final A03(ILcom/facebook/ads/redexgen/X/Ad;Lcom/facebook/ads/redexgen/X/Ae;IZ)I
    .locals 2

    .line 21601
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Af;->A09(ILcom/facebook/ads/redexgen/X/Ad;)Lcom/facebook/ads/redexgen/X/Ad;

    move-result-object v0

    iget v1, v0, Lcom/facebook/ads/redexgen/X/Ad;->A00:I

    .line 21602
    .local p0, "windowIndex":I
    invoke-virtual {p0, v1, p3}, Lcom/facebook/ads/redexgen/X/Af;->A0B(ILcom/facebook/ads/redexgen/X/Ae;)Lcom/facebook/ads/redexgen/X/Ae;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ae;->A01:I

    if-ne v0, p1, :cond_1

    .line 21603
    invoke-virtual {p0, v1, p4, p5}, Lcom/facebook/ads/redexgen/X/Af;->A02(IIZ)I

    move-result v1

    .line 21604
    .local p1, "nextWindowIndex":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 21605
    return v0

    .line 21606
    :cond_0
    invoke-virtual {p0, v1, p3}, Lcom/facebook/ads/redexgen/X/Af;->A0B(ILcom/facebook/ads/redexgen/X/Ae;)Lcom/facebook/ads/redexgen/X/Ae;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ae;->A00:I

    return v0

    .line 21607
    .end local p1    # "nextWindowIndex":I
    :cond_1
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method public abstract A04(Ljava/lang/Object;)I
.end method

.method public A05(Z)I
    .locals 1

    .line 21608
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Af;->A0E()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public A06(Z)I
    .locals 1

    .line 21609
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Af;->A0E()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Af;->A01()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/Ae;Lcom/facebook/ads/redexgen/X/Ad;IJ)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Ae;",
            "Lcom/facebook/ads/redexgen/X/Ad;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 21610
    const-wide/16 v6, 0x0

    move-object v0, p0

    move-wide v4, p4

    move v3, p3

    move-object v2, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/Af;->A08(Lcom/facebook/ads/redexgen/X/Ae;Lcom/facebook/ads/redexgen/X/Ad;IJJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public final A08(Lcom/facebook/ads/redexgen/X/Ae;Lcom/facebook/ads/redexgen/X/Ad;IJJ)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Ae;",
            "Lcom/facebook/ads/redexgen/X/Ad;",
            "IJJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 21611
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Af;->A01()I

    move-result v1

    const/4 v0, 0x0

    move v7, p3

    invoke-static {v7, v0, v1}, Lcom/facebook/ads/redexgen/X/Hx;->A00(III)I

    .line 21612
    const/4 v9, 0x0

    move-object v6, p0

    move-wide/from16 v10, p6

    move-object v8, p1

    invoke-virtual/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/Af;->A0D(ILcom/facebook/ads/redexgen/X/Ae;ZJ)Lcom/facebook/ads/redexgen/X/Ae;

    .line 21613
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p4, v6

    if-nez v0, :cond_0

    .line 21614
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Ae;->A01()J

    move-result-wide p4

    .line 21615
    cmp-long v0, p4, v6

    if-nez v0, :cond_0

    .line 21616
    const/4 v0, 0x0

    return-object v0

    .line 21617
    :cond_0
    iget v5, v8, Lcom/facebook/ads/redexgen/X/Ae;->A00:I

    .line 21618
    .local p2, "periodIndex":I
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Ae;->A03()J

    move-result-wide v3

    add-long v3, v3, p4

    .line 21619
    .local v7, "periodPositionUs":J
    invoke-virtual {p0, v5, p2}, Lcom/facebook/ads/redexgen/X/Af;->A09(ILcom/facebook/ads/redexgen/X/Ad;)Lcom/facebook/ads/redexgen/X/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ad;->A07()J

    move-result-wide v1

    .line 21620
    .local v5, "periodDurationUs":J
    :goto_0
    cmp-long v0, v1, v6

    if-eqz v0, :cond_1

    cmp-long v0, v3, v1

    if-ltz v0, :cond_1

    iget v0, v8, Lcom/facebook/ads/redexgen/X/Ae;->A01:I

    if-ge v5, v0, :cond_1

    .line 21621
    sub-long/2addr v3, v1

    .line 21622
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5, p2}, Lcom/facebook/ads/redexgen/X/Af;->A09(ILcom/facebook/ads/redexgen/X/Ad;)Lcom/facebook/ads/redexgen/X/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ad;->A07()J

    move-result-wide v1

    goto :goto_0

    .line 21623
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public final A09(ILcom/facebook/ads/redexgen/X/Ad;)Lcom/facebook/ads/redexgen/X/Ad;
    .locals 1

    .line 21624
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/Af;->A0A(ILcom/facebook/ads/redexgen/X/Ad;Z)Lcom/facebook/ads/redexgen/X/Ad;

    move-result-object v0

    return-object v0
.end method

.method public abstract A0A(ILcom/facebook/ads/redexgen/X/Ad;Z)Lcom/facebook/ads/redexgen/X/Ad;
.end method

.method public final A0B(ILcom/facebook/ads/redexgen/X/Ae;)Lcom/facebook/ads/redexgen/X/Ae;
    .locals 1

    .line 21625
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/Af;->A0C(ILcom/facebook/ads/redexgen/X/Ae;Z)Lcom/facebook/ads/redexgen/X/Ae;

    move-result-object v0

    return-object v0
.end method

.method public final A0C(ILcom/facebook/ads/redexgen/X/Ae;Z)Lcom/facebook/ads/redexgen/X/Ae;
    .locals 6

    .line 21626
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v3, p3

    move-object v2, p2

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Af;->A0D(ILcom/facebook/ads/redexgen/X/Ae;ZJ)Lcom/facebook/ads/redexgen/X/Ae;

    move-result-object v0

    return-object v0
.end method

.method public abstract A0D(ILcom/facebook/ads/redexgen/X/Ae;ZJ)Lcom/facebook/ads/redexgen/X/Ae;
.end method

.method public final A0E()Z
    .locals 1

    .line 21627
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Af;->A01()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0F(ILcom/facebook/ads/redexgen/X/Ad;Lcom/facebook/ads/redexgen/X/Ae;IZ)Z
    .locals 2

    .line 21628
    invoke-virtual/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/Af;->A03(ILcom/facebook/ads/redexgen/X/Ad;Lcom/facebook/ads/redexgen/X/Ae;IZ)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
