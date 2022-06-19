.class public final Lcom/facebook/ads/redexgen/X/F1;
.super Lcom/facebook/ads/redexgen/X/bh;
.source ""


# instance fields
.field public A00:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/Dz;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Dz;Lcom/facebook/ads/redexgen/X/1m;)V
    .locals 0

    .line 32204
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/bh;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/1m;)V

    .line 32205
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/F1;->A01:Lcom/facebook/ads/redexgen/X/Dz;

    .line 32206
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/F1;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 32207
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/F1;->A00:Landroid/view/View;

    return-object p1
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/F1;)Lcom/facebook/ads/redexgen/X/Dz;
    .locals 0

    .line 32208
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/F1;->A01:Lcom/facebook/ads/redexgen/X/Dz;

    return-object p0
.end method


# virtual methods
.method public final A0L()V
    .locals 2

    .line 32209
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F1;->A00:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 32210
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F1;->A01:Lcom/facebook/ads/redexgen/X/Dz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0G()Lcom/facebook/ads/redexgen/X/cQ;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/cQ;->A3l()V

    .line 32211
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bh;->A06:Lcom/facebook/ads/redexgen/X/0o;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F1;->A00:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/0o;->A0E(Landroid/view/View;)V

    .line 32212
    :goto_0
    return-void

    .line 32213
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F1;->A01:Lcom/facebook/ads/redexgen/X/Dz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0G()Lcom/facebook/ads/redexgen/X/cQ;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/cQ;->A3m()V

    goto :goto_0
.end method

.method public final A0N(Lcom/facebook/ads/redexgen/X/0n;Lcom/facebook/ads/redexgen/X/8w;Lcom/facebook/ads/redexgen/X/8u;Lcom/facebook/ads/redexgen/X/1n;)V
    .locals 10

    move-object v4, p1

    .line 32214
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F1;->A01:Lcom/facebook/ads/redexgen/X/Dz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0G()Lcom/facebook/ads/redexgen/X/cQ;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/cQ;->A3f()V

    .line 32215
    check-cast v4, Lcom/facebook/ads/redexgen/X/cC;

    .line 32216
    .local p0, "adapter":Lcom/facebook/ads/redexgen/X/cC;
    new-instance v3, Lcom/facebook/ads/redexgen/X/bk;

    move-object v9, p4

    invoke-direct {v3, p0, v9, v4}, Lcom/facebook/ads/redexgen/X/bk;-><init>(Lcom/facebook/ads/redexgen/X/F1;Lcom/facebook/ads/redexgen/X/1n;Lcom/facebook/ads/redexgen/X/cC;)V

    .line 32217
    .local v4, "bannerTimeout":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/bh;->A0E()Landroid/os/Handler;

    move-result-object v2

    .line 32218
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/8w;->A06()Lcom/facebook/ads/redexgen/X/8x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8x;->A05()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32219
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/F1;->A01:Lcom/facebook/ads/redexgen/X/Dz;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/bh;->A08:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A07:Lcom/facebook/ads/redexgen/X/1m;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/1m;->A06:Lcom/facebook/ads/redexgen/X/Js;

    new-instance v8, Lcom/facebook/ads/redexgen/X/bj;

    invoke-direct {v8, p0, v3}, Lcom/facebook/ads/redexgen/X/bj;-><init>(Lcom/facebook/ads/redexgen/X/F1;Ljava/lang/Runnable;)V

    invoke-virtual/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/cC;->A0D(Lcom/facebook/ads/redexgen/X/Dz;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/Js;Lcom/facebook/ads/redexgen/X/0v;Lcom/facebook/ads/redexgen/X/1n;)V

    .line 32220
    return-void
.end method

.method public final A0Q(Ljava/lang/String;)V
    .locals 2

    .line 32221
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F1;->A01:Lcom/facebook/ads/redexgen/X/Dz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0G()Lcom/facebook/ads/redexgen/X/cQ;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/cQ;->A3k(Z)V

    .line 32222
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/bh;->A0Q(Ljava/lang/String;)V

    .line 32223
    return-void

    .line 32224
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0T(Z)V
    .locals 1

    .line 32225
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/bh;->A0T(Z)V

    .line 32226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/F1;->A00:Landroid/view/View;

    .line 32227
    return-void
.end method
