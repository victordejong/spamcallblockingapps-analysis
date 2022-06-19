.class public final Lcom/facebook/ads/redexgen/X/Rl;
.super Lcom/facebook/ads/redexgen/X/Kd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Rk;->A0Q(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Rk;

.field public final synthetic A01:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Rk;Z)V
    .locals 0

    .line 50651
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rl;->A00:Lcom/facebook/ads/redexgen/X/Rk;

    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/Rl;->A01:Z

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 50652
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rl;->A00:Lcom/facebook/ads/redexgen/X/Rk;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rk;->A08(Lcom/facebook/ads/redexgen/X/Rk;)Lcom/facebook/ads/redexgen/X/Nw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nw;->A08()Lcom/facebook/ads/redexgen/X/M6;

    move-result-object v1

    .line 50653
    .local p0, "toolbar":Lcom/facebook/ads/redexgen/X/M6;
    if-eqz v1, :cond_0

    .line 50654
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rl;->A01:Z

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/M6;->A06()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M6;->setPageDetailsVisible(Z)V

    .line 50655
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rl;->A00:Lcom/facebook/ads/redexgen/X/Rk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rk;->getCloseButtonStyle()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M6;->setToolbarActionMode(I)V

    .line 50656
    :cond_0
    return-void

    .line 50657
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
