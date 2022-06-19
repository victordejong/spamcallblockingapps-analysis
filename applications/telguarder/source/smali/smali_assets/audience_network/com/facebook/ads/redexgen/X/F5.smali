.class public final Lcom/facebook/ads/redexgen/X/F5;
.super Lcom/facebook/ads/redexgen/X/bl;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/F4;->A0C(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/F4;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/c2;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/bt;

.field public final synthetic A03:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/F4;ZZLcom/facebook/ads/redexgen/X/bt;Lcom/facebook/ads/redexgen/X/c2;)V
    .locals 0

    .line 32380
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/F5;->A00:Lcom/facebook/ads/redexgen/X/F4;

    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/F5;->A03:Z

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/F5;->A02:Lcom/facebook/ads/redexgen/X/bt;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/F5;->A01:Lcom/facebook/ads/redexgen/X/c2;

    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/bl;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 3

    .line 32381
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F5;->A00:Lcom/facebook/ads/redexgen/X/F4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F4;->A00(Lcom/facebook/ads/redexgen/X/F4;)Lcom/facebook/ads/redexgen/X/12;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/F5;->A01:Lcom/facebook/ads/redexgen/X/c2;

    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/12;->ABY(Lcom/facebook/ads/redexgen/X/c2;Lcom/facebook/ads/AdError;)V

    .line 32382
    return-void
.end method

.method public final A01(Z)V
    .locals 5

    .line 32383
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F5;->A00:Lcom/facebook/ads/redexgen/X/F4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F4;->A01(Lcom/facebook/ads/redexgen/X/F4;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A18(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/F5;->A03:Z

    if-eqz v0, :cond_0

    .line 32384
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/F5;->A00:Lcom/facebook/ads/redexgen/X/F4;

    .line 32385
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/F4;->A01(Lcom/facebook/ads/redexgen/X/F4;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v3

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/F5;->A02:Lcom/facebook/ads/redexgen/X/bt;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/c8;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/c8;-><init>(Lcom/facebook/ads/redexgen/X/F5;)V

    .line 32386
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OO;->A01(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/16;ILcom/facebook/ads/redexgen/X/OL;)Lcom/facebook/ads/redexgen/X/ON;

    move-result-object v0

    .line 32387
    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/F4;->A02(Lcom/facebook/ads/redexgen/X/F4;Lcom/facebook/ads/redexgen/X/ON;)Lcom/facebook/ads/redexgen/X/ON;

    .line 32388
    :goto_0
    return-void

    .line 32389
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F5;->A00:Lcom/facebook/ads/redexgen/X/F4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F4;->A04(Lcom/facebook/ads/redexgen/X/F4;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 32390
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F5;->A00:Lcom/facebook/ads/redexgen/X/F4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F4;->A00(Lcom/facebook/ads/redexgen/X/F4;)Lcom/facebook/ads/redexgen/X/12;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F5;->A01:Lcom/facebook/ads/redexgen/X/c2;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/12;->ABV(Lcom/facebook/ads/redexgen/X/c2;)V

    goto :goto_0
.end method
