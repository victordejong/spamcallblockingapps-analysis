.class public final Lcom/facebook/ads/redexgen/X/ao;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/3h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/El;->A0P()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/El;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ao;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/El;)V
    .locals 0

    .line 67700
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ao;->A00:Lcom/facebook/ads/redexgen/X/El;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/ao;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x48

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x5b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ao;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x1at
        0x4t
        0xft
        0xft
        0x8t
        0x7t
        -0x3dt
        0x4t
        0x17t
        0x17t
        0x4t
        0x6t
        0xbt
        -0x3dt
        0x12t
        0x11t
        -0x3dt
        0x4t
        -0x3dt
        0x6t
        0xbt
        0xct
        0xft
        0x7t
        -0x3dt
        0x1at
        0xbt
        0xct
        0x6t
        0xbt
        -0x3dt
        0xct
        0x16t
        -0x3dt
        0x11t
        0x12t
        0x17t
        -0x3dt
        0x7t
        0x8t
        0x17t
        0x4t
        0x6t
        0xbt
        0x8t
        0x7t
        -0x23t
        -0x3dt
        -0x35t
        -0x37t
        -0x2ct
        -0x2ct
        -0x33t
        -0x34t
        -0x78t
        -0x34t
        -0x33t
        -0x24t
        -0x37t
        -0x35t
        -0x30t
        -0x78t
        -0x29t
        -0x2at
        -0x78t
        -0x37t
        -0x2at
        -0x78t
        -0x37t
        -0x2ct
        -0x26t
        -0x33t
        -0x37t
        -0x34t
        -0x1ft
        -0x78t
        -0x34t
        -0x33t
        -0x24t
        -0x37t
        -0x35t
        -0x30t
        -0x33t
        -0x34t
        -0x78t
        -0x35t
        -0x30t
        -0x2ft
        -0x2ct
        -0x34t
        -0x78t
    .end array-data
.end method


# virtual methods
.method public final A3R(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 5

    .line 67701
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/El;->A0G(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v4

    .line 67702
    .local p0, "vh":Lcom/facebook/ads/redexgen/X/4c;
    if-eqz v4, :cond_1

    .line 67703
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4c;->A0f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4c;->A0i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67704
    :cond_0
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4c;->A0Q()V

    .line 67705
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ao;->A00:Lcom/facebook/ads/redexgen/X/El;

    invoke-static {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/El;->A0y(Lcom/facebook/ads/redexgen/X/El;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 67706
    return-void

    .line 67707
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x30

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ao;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ao;->A00:Lcom/facebook/ads/redexgen/X/El;

    .line 67708
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->A1J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A4j(I)V
    .locals 5

    .line 67709
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/ao;->A5r(I)Landroid/view/View;

    move-result-object v0

    .line 67710
    .local p0, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 67711
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/El;->A0G(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v4

    .line 67712
    .local p1, "vh":Lcom/facebook/ads/redexgen/X/4c;
    if-eqz v4, :cond_1

    .line 67713
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4c;->A0f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4c;->A0i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67714
    :cond_0
    const/16 v0, 0x100

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0U(I)V

    .line 67715
    .end local p1    # "vh":Lcom/facebook/ads/redexgen/X/4c;
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ao;->A00:Lcom/facebook/ads/redexgen/X/El;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/El;->A0w(Lcom/facebook/ads/redexgen/X/El;I)V

    .line 67716
    return-void

    .line 67717
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x30

    const/16 v1, 0x2b

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ao;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ao;->A00:Lcom/facebook/ads/redexgen/X/El;

    .line 67718
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->A1J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A5r(I)Landroid/view/View;
    .locals 1

    .line 67719
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ao;->A00:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/El;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final A5s()I
    .locals 1

    .line 67720
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ao;->A00:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->getChildCount()I

    move-result v0

    return v0
.end method

.method public final A5v(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4c;
    .locals 1

    .line 67721
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/El;->A0G(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v0

    return-object v0
.end method

.method public final A7r(Landroid/view/View;)I
    .locals 1

    .line 67722
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ao;->A00:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/El;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final AA4(Landroid/view/View;)V
    .locals 2

    .line 67723
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/El;->A0G(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v1

    .line 67724
    .local p0, "vh":Lcom/facebook/ads/redexgen/X/4c;
    if-eqz v1, :cond_0

    .line 67725
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ao;->A00:Lcom/facebook/ads/redexgen/X/El;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4c;->A06(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/El;)V

    .line 67726
    :cond_0
    return-void
.end method

.method public final AAY(Landroid/view/View;)V
    .locals 2

    .line 67727
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/El;->A0G(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v1

    .line 67728
    .local p0, "vh":Lcom/facebook/ads/redexgen/X/4c;
    if-eqz v1, :cond_0

    .line 67729
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ao;->A00:Lcom/facebook/ads/redexgen/X/El;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4c;->A07(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/El;)V

    .line 67730
    :cond_0
    return-void
.end method

.method public final AD7()V
    .locals 4

    .line 67731
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ao;->A5s()I

    move-result v3

    .line 67732
    .local p0, "count":I
    const/4 v2, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 67733
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/ao;->A5r(I)Landroid/view/View;

    move-result-object v1

    .line 67734
    .local v2, "child":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ao;->A00:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/El;->A1j(Landroid/view/View;)V

    .line 67735
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 67736
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67737
    .end local v3    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ao;->A00:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->removeAllViews()V

    .line 67738
    return-void
.end method

.method public final ADB(I)V
    .locals 2

    .line 67739
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ao;->A00:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/El;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 67740
    .local p0, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 67741
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ao;->A00:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/El;->A1j(Landroid/view/View;)V

    .line 67742
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 67743
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ao;->A00:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/El;->removeViewAt(I)V

    .line 67744
    return-void
.end method

.method public final addView(Landroid/view/View;I)V
    .locals 1

    .line 67745
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ao;->A00:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/El;->addView(Landroid/view/View;I)V

    .line 67746
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ao;->A00:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/El;->A1i(Landroid/view/View;)V

    .line 67747
    return-void
.end method
