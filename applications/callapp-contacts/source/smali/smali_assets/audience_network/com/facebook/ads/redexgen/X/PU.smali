.class public final Lcom/facebook/ads/redexgen/X/PU;
.super Lcom/facebook/ads/redexgen/X/Kb;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/PD;->A0G()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/PD;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/PD;)V
    .locals 0

    .line 48134
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PU;->A00:Lcom/facebook/ads/redexgen/X/PD;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kb;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 3

    .line 48135
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PU;->A00:Lcom/facebook/ads/redexgen/X/PD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PD;->A0Q(Lcom/facebook/ads/redexgen/X/PD;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48136
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PU;->A00:Lcom/facebook/ads/redexgen/X/PD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PD;->A09(Lcom/facebook/ads/redexgen/X/PD;)Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PU;->A00:Lcom/facebook/ads/redexgen/X/PD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->getCurrentPositionInMillis()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/7s;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/7s;-><init>(I)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/9F;->A03(Lcom/facebook/ads/redexgen/X/9E;)V

    .line 48137
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PU;->A00:Lcom/facebook/ads/redexgen/X/PD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PD;->A07(Lcom/facebook/ads/redexgen/X/PD;)Landroid/os/Handler;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PU;->A00:Lcom/facebook/ads/redexgen/X/PD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PD;->A06(Lcom/facebook/ads/redexgen/X/PD;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 48138
    :cond_0
    return-void
.end method
