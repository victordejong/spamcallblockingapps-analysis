.class public final Lcom/facebook/ads/redexgen/X/Fc;
.super Lcom/facebook/ads/redexgen/X/SD;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/FU;->A0C(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/FU;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Rw;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/S5;

.field public final synthetic A03:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/FU;ZZLcom/facebook/ads/redexgen/X/S5;Lcom/facebook/ads/redexgen/X/Rw;)V
    .locals 0

    .line 32767
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Fc;->A00:Lcom/facebook/ads/redexgen/X/FU;

    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/Fc;->A03:Z

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Fc;->A02:Lcom/facebook/ads/redexgen/X/S5;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Fc;->A01:Lcom/facebook/ads/redexgen/X/Rw;

    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/SD;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 3

    .line 32768
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fc;->A00:Lcom/facebook/ads/redexgen/X/FU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FU;->A00(Lcom/facebook/ads/redexgen/X/FU;)Lcom/facebook/ads/redexgen/X/12;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fc;->A01:Lcom/facebook/ads/redexgen/X/Rw;

    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/12;->ABY(Lcom/facebook/ads/redexgen/X/Rw;Lcom/facebook/ads/AdError;)V

    .line 32769
    return-void
.end method

.method public final A01(Z)V
    .locals 5

    .line 32770
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fc;->A00:Lcom/facebook/ads/redexgen/X/FU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FU;->A01(Lcom/facebook/ads/redexgen/X/FU;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A17(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Fc;->A03:Z

    if-eqz v0, :cond_0

    .line 32771
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Fc;->A00:Lcom/facebook/ads/redexgen/X/FU;

    .line 32772
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/FU;->A01(Lcom/facebook/ads/redexgen/X/FU;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v3

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Fc;->A02:Lcom/facebook/ads/redexgen/X/S5;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Rq;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Rq;-><init>(Lcom/facebook/ads/redexgen/X/Fc;)V

    .line 32773
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OT;->A01(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/16;ILcom/facebook/ads/redexgen/X/OQ;)Lcom/facebook/ads/redexgen/X/OS;

    move-result-object v0

    .line 32774
    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/FU;->A02(Lcom/facebook/ads/redexgen/X/FU;Lcom/facebook/ads/redexgen/X/OS;)Lcom/facebook/ads/redexgen/X/OS;

    .line 32775
    :goto_0
    return-void

    .line 32776
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fc;->A00:Lcom/facebook/ads/redexgen/X/FU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FU;->A04(Lcom/facebook/ads/redexgen/X/FU;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 32777
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fc;->A00:Lcom/facebook/ads/redexgen/X/FU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FU;->A00(Lcom/facebook/ads/redexgen/X/FU;)Lcom/facebook/ads/redexgen/X/12;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fc;->A01:Lcom/facebook/ads/redexgen/X/Rw;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/12;->ABV(Lcom/facebook/ads/redexgen/X/Rw;)V

    goto :goto_0
.end method
