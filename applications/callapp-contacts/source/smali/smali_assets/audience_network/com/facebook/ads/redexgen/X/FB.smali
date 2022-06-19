.class public final Lcom/facebook/ads/redexgen/X/FB;
.super Lcom/facebook/ads/redexgen/X/SJ;
.source ""


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/ES;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ES;Lcom/facebook/ads/redexgen/X/1m;)V
    .locals 0

    .line 32211
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/SJ;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/1m;)V

    .line 32212
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FB;->A00:Lcom/facebook/ads/redexgen/X/ES;

    .line 32213
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/FB;)Lcom/facebook/ads/redexgen/X/ES;
    .locals 0

    .line 32214
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/FB;->A00:Lcom/facebook/ads/redexgen/X/ES;

    return-object p0
.end method


# virtual methods
.method public final A0N()V
    .locals 2

    .line 32215
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A00:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 32216
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A00:Lcom/facebook/ads/redexgen/X/ES;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ES;->A0F()Lcom/facebook/ads/redexgen/X/RY;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/RY;->A3p()V

    .line 32217
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SJ;->A07:Lcom/facebook/ads/redexgen/X/0o;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A00:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/0o;->A0D(Landroid/view/View;)V

    .line 32218
    :goto_0
    return-void

    .line 32219
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A00:Lcom/facebook/ads/redexgen/X/ES;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ES;->A0F()Lcom/facebook/ads/redexgen/X/RY;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/RY;->A3q()V

    goto :goto_0
.end method

.method public final A0Q(Lcom/facebook/ads/redexgen/X/0n;Lcom/facebook/ads/redexgen/X/8w;Lcom/facebook/ads/redexgen/X/8u;Lcom/facebook/ads/redexgen/X/1n;)V
    .locals 10

    move-object v4, p1

    .line 32220
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A00:Lcom/facebook/ads/redexgen/X/ES;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ES;->A0F()Lcom/facebook/ads/redexgen/X/RY;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/RY;->A3j()V

    .line 32221
    check-cast v4, Lcom/facebook/ads/redexgen/X/Rm;

    .line 32222
    .local p0, "adapter":Lcom/facebook/ads/redexgen/X/Rm;
    new-instance v3, Lcom/facebook/ads/redexgen/X/SE;

    move-object v9, p4

    invoke-direct {v3, p0, v9, v4}, Lcom/facebook/ads/redexgen/X/SE;-><init>(Lcom/facebook/ads/redexgen/X/FB;Lcom/facebook/ads/redexgen/X/1n;Lcom/facebook/ads/redexgen/X/Rm;)V

    .line 32223
    .local v4, "bannerTimeout":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SJ;->A0G()Landroid/os/Handler;

    move-result-object v2

    .line 32224
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/8w;->A05()Lcom/facebook/ads/redexgen/X/8x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8x;->A05()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32225
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/FB;->A00:Lcom/facebook/ads/redexgen/X/ES;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/SJ;->A09:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A08:Lcom/facebook/ads/redexgen/X/1m;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/1m;->A06:Lcom/facebook/ads/redexgen/X/Jq;

    new-instance v8, Lcom/facebook/ads/redexgen/X/SF;

    invoke-direct {v8, p0, v3}, Lcom/facebook/ads/redexgen/X/SF;-><init>(Lcom/facebook/ads/redexgen/X/FB;Ljava/lang/Runnable;)V

    invoke-virtual/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Rm;->A0D(Lcom/facebook/ads/redexgen/X/ES;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/Jq;Lcom/facebook/ads/redexgen/X/0v;Lcom/facebook/ads/redexgen/X/1n;)V

    .line 32226
    return-void
.end method

.method public final A0T(Ljava/lang/String;)V
    .locals 2

    .line 32227
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FB;->A00:Lcom/facebook/ads/redexgen/X/ES;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ES;->A0F()Lcom/facebook/ads/redexgen/X/RY;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/RY;->A3o(Z)V

    .line 32228
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/SJ;->A0T(Ljava/lang/String;)V

    .line 32229
    return-void

    .line 32230
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
