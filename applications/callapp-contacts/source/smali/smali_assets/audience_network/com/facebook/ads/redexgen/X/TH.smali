.class public final Lcom/facebook/ads/redexgen/X/TH;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/3e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Eq;->A0g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Eq;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Eq;)V
    .locals 0

    .line 54651
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TH;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/3f;)V
    .locals 5

    .line 54652
    iget v1, p1, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    const/4 v4, 0x1

    if-eq v1, v4, :cond_3

    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_0

    .line 54653
    :goto_0
    return-void

    .line 54654
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Eq;->A06:Lcom/facebook/ads/redexgen/X/4K;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/TH;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    invoke-virtual {v3, v2, v1, v0, v4}, Lcom/facebook/ads/redexgen/X/4K;->A1T(Lcom/facebook/ads/redexgen/X/Eq;III)V

    goto :goto_0

    .line 54655
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Eq;->A06:Lcom/facebook/ads/redexgen/X/4K;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/TH;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    iget v2, p1, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v1, p1, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A03:Ljava/lang/Object;

    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A1U(Lcom/facebook/ads/redexgen/X/Eq;IILjava/lang/Object;)V

    .line 54656
    goto :goto_0

    .line 54657
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Eq;->A06:Lcom/facebook/ads/redexgen/X/4K;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/TH;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A1S(Lcom/facebook/ads/redexgen/X/Eq;II)V

    .line 54658
    goto :goto_0

    .line 54659
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Eq;->A06:Lcom/facebook/ads/redexgen/X/4K;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/TH;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A1R(Lcom/facebook/ads/redexgen/X/Eq;II)V

    .line 54660
    goto :goto_0
.end method


# virtual methods
.method public final A5M(I)Lcom/facebook/ads/redexgen/X/4c;
    .locals 4

    .line 54661
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TH;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    const/4 v0, 0x1

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Eq;->A1H(IZ)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v3

    .line 54662
    .local p0, "vh":Lcom/facebook/ads/redexgen/X/4c;
    const/4 v2, 0x0

    if-nez v3, :cond_0

    .line 54663
    return-object v2

    .line 54664
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Eq;->A01:Lcom/facebook/ads/redexgen/X/3i;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3i;->A0L(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54665
    return-object v2

    .line 54666
    :cond_1
    return-object v3
.end method

.method public final A8x(IILjava/lang/Object;)V
    .locals 2

    .line 54667
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Eq;->A1g(IILjava/lang/Object;)V

    .line 54668
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TH;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/Eq;->A0H:Z

    .line 54669
    return-void
.end method

.method public final A9E(II)V
    .locals 2

    .line 54670
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Eq;->A1d(II)V

    .line 54671
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TH;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/Eq;->A0G:Z

    .line 54672
    return-void
.end method

.method public final A9F(II)V
    .locals 2

    .line 54673
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Eq;->A1e(II)V

    .line 54674
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TH;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/Eq;->A0G:Z

    .line 54675
    return-void
.end method

.method public final A9G(II)V
    .locals 2

    .line 54676
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/facebook/ads/redexgen/X/Eq;->A1h(IIZ)V

    .line 54677
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0G:Z

    .line 54678
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/4Z;->A00:I

    add-int/2addr v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/4Z;->A00:I

    .line 54679
    return-void
.end method

.method public final A9H(II)V
    .locals 2

    .line 54680
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TH;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    const/4 v0, 0x0

    invoke-virtual {v1, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/Eq;->A1h(IIZ)V

    .line 54681
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TH;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/Eq;->A0G:Z

    .line 54682
    return-void
.end method

.method public final A9u(Lcom/facebook/ads/redexgen/X/3f;)V
    .locals 0

    .line 54683
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/TH;->A00(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 54684
    return-void
.end method

.method public final A9w(Lcom/facebook/ads/redexgen/X/3f;)V
    .locals 0

    .line 54685
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/TH;->A00(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 54686
    return-void
.end method
