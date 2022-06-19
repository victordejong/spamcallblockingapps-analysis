.class public final Lcom/facebook/ads/redexgen/X/XF;
.super Lcom/facebook/ads/redexgen/X/Kb;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/7D;->A0S(Lcom/facebook/ads/redexgen/X/75;Lcom/facebook/ads/redexgen/X/76;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/75;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/76;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/7D;

.field public final synthetic A03:Ljava/util/ArrayList;

.field public final synthetic A04:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7D;Ljava/util/ArrayList;Lcom/facebook/ads/redexgen/X/75;Lcom/facebook/ads/redexgen/X/76;Ljava/util/ArrayList;)V
    .locals 0

    .line 57669
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/XF;->A02:Lcom/facebook/ads/redexgen/X/7D;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/XF;->A03:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/XF;->A00:Lcom/facebook/ads/redexgen/X/75;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/XF;->A01:Lcom/facebook/ads/redexgen/X/76;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/XF;->A04:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kb;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 57670
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XF;->A03:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7D;->A0C(Ljava/util/ArrayList;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    .line 57671
    .local p0, "result":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XF;->A02:Lcom/facebook/ads/redexgen/X/7D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7D;->A07(Lcom/facebook/ads/redexgen/X/7D;)Lcom/facebook/ads/redexgen/X/8D;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/XJ;

    if-eqz v0, :cond_0

    .line 57672
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XF;->A02:Lcom/facebook/ads/redexgen/X/7D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7D;->A07(Lcom/facebook/ads/redexgen/X/7D;)Lcom/facebook/ads/redexgen/X/8D;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/XJ;

    .line 57673
    .local v0, "adContext":Lcom/facebook/ads/redexgen/X/XJ;
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57674
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XF;->A02:Lcom/facebook/ads/redexgen/X/7D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7D;->A00(Lcom/facebook/ads/redexgen/X/7D;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LZ;->A01(J)J

    move-result-wide v0

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->A3x(J)V

    .line 57675
    .end local v0    # "adContext":Lcom/facebook/ads/redexgen/X/XJ;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XF;->A02:Lcom/facebook/ads/redexgen/X/7D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7D;->A01(Lcom/facebook/ads/redexgen/X/7D;)Landroid/os/Handler;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/XE;

    invoke-direct {v0, p0, v3}, Lcom/facebook/ads/redexgen/X/XE;-><init>(Lcom/facebook/ads/redexgen/X/XF;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57676
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XF;->A04:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7D;->A0C(Ljava/util/ArrayList;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57677
    return-void

    .line 57678
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XF;->A02:Lcom/facebook/ads/redexgen/X/7D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7D;->A00(Lcom/facebook/ads/redexgen/X/7D;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LZ;->A01(J)J

    move-result-wide v0

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->A3w(J)V

    goto :goto_0
.end method
