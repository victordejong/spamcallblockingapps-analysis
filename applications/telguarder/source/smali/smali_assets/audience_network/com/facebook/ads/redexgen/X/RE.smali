.class public final Lcom/facebook/ads/redexgen/X/RE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/O9;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/RD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/RD;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/RD;)V
    .locals 0

    .line 49948
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RE;->A00:Lcom/facebook/ads/redexgen/X/RD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AC3(Landroid/view/View;)V
    .locals 2

    .line 49949
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RE;->A00:Lcom/facebook/ads/redexgen/X/RD;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/RD;->A09:Z

    if-eqz v0, :cond_0

    .line 49950
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RE;->A00:Lcom/facebook/ads/redexgen/X/RD;

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/RD;->A07:Z

    .line 49951
    :cond_0
    return-void
.end method

.method public final AC5(Landroid/view/View;)V
    .locals 2

    .line 49952
    check-cast p1, Lcom/facebook/ads/redexgen/X/Rj;

    .line 49953
    .local p0, "cardLayout":Lcom/facebook/ads/redexgen/X/Rj;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Rj;->A0e()V

    .line 49954
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RE;->A00:Lcom/facebook/ads/redexgen/X/RD;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/RD;->A09:Z

    if-eqz v0, :cond_0

    .line 49955
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RE;->A00:Lcom/facebook/ads/redexgen/X/RD;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/RD;->A07:Z

    .line 49956
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RE;->A00:Lcom/facebook/ads/redexgen/X/RD;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/RD;->A04:Lcom/facebook/ads/redexgen/X/Q9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0a()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, -0x5f000010

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Rj;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 49957
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RE;->A00:Lcom/facebook/ads/redexgen/X/RD;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/RD;->A04:Lcom/facebook/ads/redexgen/X/Q9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0V()V

    .line 49958
    :cond_1
    return-void
.end method
