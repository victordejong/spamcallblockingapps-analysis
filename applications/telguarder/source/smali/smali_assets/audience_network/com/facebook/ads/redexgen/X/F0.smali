.class public final Lcom/facebook/ads/redexgen/X/F0;
.super Lcom/facebook/ads/redexgen/X/bh;
.source ""


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/1m;)V
    .locals 0

    .line 32189
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/bh;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/1m;)V

    .line 32190
    return-void
.end method

.method private A00(Ljava/lang/Runnable;)Lcom/facebook/ads/redexgen/X/0x;
    .locals 1

    .line 32191
    new-instance v0, Lcom/facebook/ads/redexgen/X/bf;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/bf;-><init>(Lcom/facebook/ads/redexgen/X/F0;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/F0;)V
    .locals 0

    .line 32192
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/bh;->A0H()V

    return-void
.end method


# virtual methods
.method public final A0L()V
    .locals 1

    .line 32193
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A01:Lcom/facebook/ads/redexgen/X/0n;

    check-cast v0, Lcom/facebook/ads/redexgen/X/cB;

    .line 32194
    .local p0, "interstitialAdapter":Lcom/facebook/ads/redexgen/X/cB;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cB;->A0B()Z

    .line 32195
    return-void
.end method

.method public final A0N(Lcom/facebook/ads/redexgen/X/0n;Lcom/facebook/ads/redexgen/X/8w;Lcom/facebook/ads/redexgen/X/8u;Lcom/facebook/ads/redexgen/X/1n;)V
    .locals 12

    move-object v4, p1

    .line 32196
    check-cast v4, Lcom/facebook/ads/redexgen/X/cB;

    .line 32197
    .local v3, "adapter":Lcom/facebook/ads/redexgen/X/cB;
    new-instance v3, Lcom/facebook/ads/redexgen/X/bg;

    move-object/from16 v7, p4

    invoke-direct {v3, p0, v7, v4}, Lcom/facebook/ads/redexgen/X/bg;-><init>(Lcom/facebook/ads/redexgen/X/F0;Lcom/facebook/ads/redexgen/X/1n;Lcom/facebook/ads/redexgen/X/cB;)V

    .line 32198
    .local v2, "interstitialTimeout":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/bh;->A0E()Landroid/os/Handler;

    move-result-object v2

    .line 32199
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/8w;->A06()Lcom/facebook/ads/redexgen/X/8x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8x;->A05()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32200
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/bh;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    .line 32201
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/F0;->A00(Ljava/lang/Runnable;)Lcom/facebook/ads/redexgen/X/0x;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A07:Lcom/facebook/ads/redexgen/X/1m;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/1m;->A09:Ljava/util/EnumSet;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A07:Lcom/facebook/ads/redexgen/X/1m;

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/1m;->A03:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A07:Lcom/facebook/ads/redexgen/X/1m;

    iget-object v10, v0, Lcom/facebook/ads/redexgen/X/1m;->A04:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A07:Lcom/facebook/ads/redexgen/X/1m;

    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/1m;->A01:Lcom/facebook/ads/RewardData;

    .line 32202
    invoke-virtual/range {v4 .. v11}, Lcom/facebook/ads/redexgen/X/cB;->A0A(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/0x;Lcom/facebook/ads/redexgen/X/1n;Ljava/util/EnumSet;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/RewardData;)V

    .line 32203
    return-void
.end method
