.class public abstract Lcom/facebook/ads/redexgen/X/af;
.super Lcom/facebook/ads/redexgen/X/4G;
.source ""


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public A00:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/af;->A08()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 67550
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4G;-><init>()V

    .line 67551
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/af;->A00:Z

    return-void
.end method

.method public static A08()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ofgeN"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "GcYePxlnDkyLzFZQt8gXTfFAd"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "bIohWxIGlUqKJ41hMBKnFxYrg"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ROugplE3NXuve66PKoPS6E1ZAyp"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "eD20R2wAf"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "s8oLKbIochRuLWrY7HR296xJjla"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "faP6eJ6K6STeOEuOEXCJ6OuUaXzDbpLW"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "oXM2gF3tn"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/af;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A0H(Lcom/facebook/ads/redexgen/X/4c;)Z
    .locals 1
    .param p1    # Lcom/facebook/ads/redexgen/X/4c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 67552
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/af;->A00:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4c;->A0c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0I(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4F;Lcom/facebook/ads/redexgen/X/4F;)Z
    .locals 7
    .param p1    # Lcom/facebook/ads/redexgen/X/4c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/redexgen/X/4F;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/ads/redexgen/X/4F;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 67553
    move-object v2, p1

    if-eqz p2, :cond_1

    iget v1, p2, Lcom/facebook/ads/redexgen/X/4F;->A01:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/4F;->A01:I

    if-ne v1, v0, :cond_0

    iget v1, p2, Lcom/facebook/ads/redexgen/X/4F;->A03:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/4F;->A03:I

    if-eq v1, v0, :cond_1

    .line 67554
    :cond_0
    iget v3, p2, Lcom/facebook/ads/redexgen/X/4F;->A01:I

    iget v4, p2, Lcom/facebook/ads/redexgen/X/4F;->A03:I

    iget v5, p3, Lcom/facebook/ads/redexgen/X/4F;->A01:I

    iget v6, p3, Lcom/facebook/ads/redexgen/X/4F;->A03:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/af;->A0S(Lcom/facebook/ads/redexgen/X/4c;IIII)Z

    move-result v0

    return v0

    .line 67555
    :cond_1
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/af;->A0Q(Lcom/facebook/ads/redexgen/X/4c;)Z

    move-result v0

    return v0
.end method

.method public final A0J(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4F;Lcom/facebook/ads/redexgen/X/4F;)Z
    .locals 9
    .param p1    # Lcom/facebook/ads/redexgen/X/4c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/redexgen/X/4F;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/ads/redexgen/X/4F;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 67556
    iget v5, p2, Lcom/facebook/ads/redexgen/X/4F;->A01:I

    .line 67557
    .local v3, "oldLeft":I
    iget v6, p2, Lcom/facebook/ads/redexgen/X/4F;->A03:I

    .line 67558
    .local v7, "oldTop":I
    move-object v4, p1

    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    .line 67559
    .local v7, "disappearingItemView":Landroid/view/View;
    if-nez p3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v7

    :goto_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/af;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    iget v7, p3, Lcom/facebook/ads/redexgen/X/4F;->A01:I

    goto :goto_0

    .line 67560
    .local v2, "newLeft":I
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/af;->A01:[Ljava/lang/String;

    const-string v1, "jyZdeafgD"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "NUmje91r8"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez p3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    .line 67561
    .local v0, "newTop":I
    :goto_1
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4c;->A0d()Z

    move-result v0

    if-nez v0, :cond_4

    if-ne v5, v7, :cond_2

    if-eq v6, v8, :cond_4

    .line 67562
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v7

    .line 67563
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v8

    .line 67564
    invoke-virtual {v3, v7, v8, v1, v0}, Landroid/view/View;->layout(IIII)V

    .line 67565
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/af;->A0S(Lcom/facebook/ads/redexgen/X/4c;IIII)Z

    move-result v0

    return v0

    .line 67566
    :cond_3
    iget v8, p3, Lcom/facebook/ads/redexgen/X/4F;->A03:I

    goto :goto_1

    .line 67567
    :cond_4
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/af;->A0R(Lcom/facebook/ads/redexgen/X/4c;)Z

    move-result v0

    return v0
.end method

.method public final A0K(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4F;Lcom/facebook/ads/redexgen/X/4F;)Z
    .locals 7
    .param p1    # Lcom/facebook/ads/redexgen/X/4c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/redexgen/X/4F;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/ads/redexgen/X/4F;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 67568
    iget v1, p2, Lcom/facebook/ads/redexgen/X/4F;->A01:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/4F;->A01:I

    move-object v2, p1

    if-ne v1, v0, :cond_0

    iget v1, p2, Lcom/facebook/ads/redexgen/X/4F;->A03:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/4F;->A03:I

    if-eq v1, v0, :cond_1

    .line 67569
    :cond_0
    iget v3, p2, Lcom/facebook/ads/redexgen/X/4F;->A01:I

    iget v4, p2, Lcom/facebook/ads/redexgen/X/4F;->A03:I

    iget v5, p3, Lcom/facebook/ads/redexgen/X/4F;->A01:I

    iget v6, p3, Lcom/facebook/ads/redexgen/X/4F;->A03:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/af;->A0S(Lcom/facebook/ads/redexgen/X/4c;IIII)Z

    move-result v0

    return v0

    .line 67570
    :cond_1
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/af;->A0N(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 67571
    const/4 v0, 0x0

    return v0
.end method

.method public final A0L(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4F;Lcom/facebook/ads/redexgen/X/4F;)Z
    .locals 7
    .param p1    # Lcom/facebook/ads/redexgen/X/4c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/redexgen/X/4c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/ads/redexgen/X/4F;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/ads/redexgen/X/4F;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 67572
    iget v3, p3, Lcom/facebook/ads/redexgen/X/4F;->A01:I

    .line 67573
    .local v0, "fromLeft":I
    iget v4, p3, Lcom/facebook/ads/redexgen/X/4F;->A03:I

    .line 67574
    .local v5, "fromTop":I
    move-object v2, p2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4c;->A0i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67575
    iget v5, p3, Lcom/facebook/ads/redexgen/X/4F;->A01:I

    .line 67576
    .local p0, "toLeft":I
    iget v6, p3, Lcom/facebook/ads/redexgen/X/4F;->A03:I

    .line 67577
    .local v1, "toTop":I
    .end local p0    # "toLeft":I
    .local v6, "toLeft":I
    .local v5, "toTop":I
    :goto_0
    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/af;->A0T(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4c;IIII)Z

    move-result v0

    return v0

    .line 67578
    .end local p0
    .end local v1    # "toTop":I
    :cond_0
    iget v5, p4, Lcom/facebook/ads/redexgen/X/4F;->A01:I

    .line 67579
    .restart local p0    # "toLeft":I
    iget v6, p4, Lcom/facebook/ads/redexgen/X/4F;->A03:I

    goto :goto_0
.end method

.method public final A0M(Lcom/facebook/ads/redexgen/X/4c;)V
    .locals 0

    .line 67580
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4G;->A0B(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 67581
    return-void
.end method

.method public final A0N(Lcom/facebook/ads/redexgen/X/4c;)V
    .locals 0

    .line 67582
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4G;->A0B(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 67583
    return-void
.end method

.method public final A0O(Lcom/facebook/ads/redexgen/X/4c;)V
    .locals 0

    .line 67584
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4G;->A0B(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 67585
    return-void
.end method

.method public final A0P(Lcom/facebook/ads/redexgen/X/4c;Z)V
    .locals 0

    .line 67586
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4G;->A0B(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 67587
    return-void
.end method

.method public abstract A0Q(Lcom/facebook/ads/redexgen/X/4c;)Z
.end method

.method public abstract A0R(Lcom/facebook/ads/redexgen/X/4c;)Z
.end method

.method public abstract A0S(Lcom/facebook/ads/redexgen/X/4c;IIII)Z
.end method

.method public abstract A0T(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4c;IIII)Z
.end method
