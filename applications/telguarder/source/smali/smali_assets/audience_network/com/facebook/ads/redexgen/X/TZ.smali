.class public final Lcom/facebook/ads/redexgen/X/TZ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/IA;


# instance fields
.field public final A00:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 54596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54597
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TZ;->A00:Landroid/os/Handler;

    .line 54598
    return-void
.end method


# virtual methods
.method public final A6j()Landroid/os/Looper;
    .locals 1

    .line 54599
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TZ;->A00:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public final A9C(III)Landroid/os/Message;
    .locals 1

    .line 54600
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TZ;->A00:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final A9D(IIILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    .line 54601
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TZ;->A00:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final A9E(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    .line 54602
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TZ;->A00:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final AD9(I)V
    .locals 1

    .line 54603
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TZ;->A00:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 54604
    return-void
.end method

.method public final ADd(I)Z
    .locals 1

    .line 54605
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TZ;->A00:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result v0

    return v0
.end method

.method public final ADe(IJ)Z
    .locals 1

    .line 54606
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TZ;->A00:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    move-result v0

    return v0
.end method
