.class public final Lcom/facebook/ads/redexgen/X/an;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/3e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/El;->A0g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/El;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/El;)V
    .locals 0

    .line 67664
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/an;->A00:Lcom/facebook/ads/redexgen/X/El;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/3f;)V
    .locals 5

    .line 67665
    iget v1, p1, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    const/4 v4, 0x1

    if-eq v1, v4, :cond_3

    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_0

    .line 67666
    :goto_0
    return-void

    .line 67667
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/an;->A00:Lcom/facebook/ads/redexgen/X/El;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/El;->A06:Lcom/facebook/ads/redexgen/X/4K;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/an;->A00:Lcom/facebook/ads/redexgen/X/El;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    invoke-virtual {v3, v2, v1, v0, v4}, Lcom/facebook/ads/redexgen/X/4K;->A1T(Lcom/facebook/ads/redexgen/X/El;III)V

    goto :goto_0

    .line 67668
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/an;->A00:Lcom/facebook/ads/redexgen/X/El;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/El;->A06:Lcom/facebook/ads/redexgen/X/4K;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/an;->A00:Lcom/facebook/ads/redexgen/X/El;

    iget v2, p1, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v1, p1, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A03:Ljava/lang/Object;

    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A1U(Lcom/facebook/ads/redexgen/X/El;IILjava/lang/Object;)V

    .line 67669
    goto :goto_0

    .line 67670
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/an;->A00:Lcom/facebook/ads/redexgen/X/El;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/El;->A06:Lcom/facebook/ads/redexgen/X/4K;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/an;->A00:Lcom/facebook/ads/redexgen/X/El;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A1S(Lcom/facebook/ads/redexgen/X/El;II)V

    .line 67671
    goto :goto_0

    .line 67672
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/an;->A00:Lcom/facebook/ads/redexgen/X/El;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/El;->A06:Lcom/facebook/ads/redexgen/X/4K;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/an;->A00:Lcom/facebook/ads/redexgen/X/El;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A1R(Lcom/facebook/ads/redexgen/X/El;II)V

    .line 67673
    goto :goto_0
.end method


# virtual methods
.method public final A5K(I)Lcom/facebook/ads/redexgen/X/4c;
    .locals 4

    .line 67674
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/an;->A00:Lcom/facebook/ads/redexgen/X/El;

    const/4 v0, 0x1

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/El;->A1H(IZ)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v3

    .line 67675
    .local p0, "vh":Lcom/facebook/ads/redexgen/X/4c;
    const/4 v2, 0x0

    if-nez v3, :cond_0

    .line 67676
    return-object v2

    .line 67677
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/an;->A00:Lcom/facebook/ads/redexgen/X/El;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/El;->A01:Lcom/facebook/ads/redexgen/X/3i;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3i;->A0L(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67678
    return-object v2

    .line 67679
    :cond_1
    return-object v3
.end method

.method public final A8z(IILjava/lang/Object;)V
    .locals 2

    .line 67680
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/an;->A00:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/El;->A1g(IILjava/lang/Object;)V

    .line 67681
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/an;->A00:Lcom/facebook/ads/redexgen/X/El;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/El;->A0H:Z

    .line 67682
    return-void
.end method

.method public final A9G(II)V
    .locals 2

    .line 67683
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/an;->A00:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/El;->A1d(II)V

    .line 67684
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/an;->A00:Lcom/facebook/ads/redexgen/X/El;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/El;->A0G:Z

    .line 67685
    return-void
.end method

.method public final A9H(II)V
    .locals 2

    .line 67686
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/an;->A00:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/El;->A1e(II)V

    .line 67687
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/an;->A00:Lcom/facebook/ads/redexgen/X/El;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/El;->A0G:Z

    .line 67688
    return-void
.end method

.method public final A9I(II)V
    .locals 2

    .line 67689
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/an;->A00:Lcom/facebook/ads/redexgen/X/El;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/facebook/ads/redexgen/X/El;->A1h(IIZ)V

    .line 67690
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/an;->A00:Lcom/facebook/ads/redexgen/X/El;

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/El;->A0G:Z

    .line 67691
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/El;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/4Z;->A00:I

    add-int/2addr v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/4Z;->A00:I

    .line 67692
    return-void
.end method

.method public final A9J(II)V
    .locals 2

    .line 67693
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/an;->A00:Lcom/facebook/ads/redexgen/X/El;

    const/4 v0, 0x0

    invoke-virtual {v1, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/El;->A1h(IIZ)V

    .line 67694
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/an;->A00:Lcom/facebook/ads/redexgen/X/El;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/El;->A0G:Z

    .line 67695
    return-void
.end method

.method public final A9t(Lcom/facebook/ads/redexgen/X/3f;)V
    .locals 0

    .line 67696
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/an;->A00(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 67697
    return-void
.end method

.method public final A9v(Lcom/facebook/ads/redexgen/X/3f;)V
    .locals 0

    .line 67698
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/an;->A00(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 67699
    return-void
.end method
