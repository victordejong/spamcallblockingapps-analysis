.class public final Lcom/facebook/ads/redexgen/X/Eh;
.super Lcom/facebook/ads/redexgen/X/ab;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/50;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RewardedAdListener"
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/50;)V
    .locals 1

    .line 29760
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/ab;-><init>(Lcom/facebook/ads/redexgen/X/50;Lcom/facebook/ads/redexgen/X/4w;)V

    .line 29761
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/50;Lcom/facebook/ads/redexgen/X/4w;)V
    .locals 0

    .line 29762
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Eh;-><init>(Lcom/facebook/ads/redexgen/X/50;)V

    return-void
.end method


# virtual methods
.method public final A3p(Ljava/lang/String;)V
    .locals 3

    .line 29763
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 29764
    return-void

    .line 29765
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/50;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/50;->A0B(Lcom/facebook/ads/redexgen/X/50;Ljava/lang/String;)V

    .line 29766
    sget-object v0, Lcom/facebook/ads/redexgen/X/PM;->A08:Lcom/facebook/ads/redexgen/X/PM;

    .line 29767
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PM;->A02()Ljava/lang/String;

    move-result-object v2

    .line 29768
    .local p0, "rewardedVideoEndActivity":Ljava/lang/String;
    sget-object v0, Lcom/facebook/ads/redexgen/X/PM;->A09:Lcom/facebook/ads/redexgen/X/PM;

    .line 29769
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PM;->A02()Ljava/lang/String;

    move-result-object v1

    .line 29770
    .local p1, "rewardedVideoError":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29771
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/50;

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/50;->finish(I)V

    .line 29772
    return-void

    .line 29773
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29774
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/50;

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/50;->finish(I)V

    .line 29775
    :cond_2
    return-void
.end method

.method public final A3q(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 29776
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/ab;->A3q(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/9E;)V

    .line 29777
    return-void
.end method
