.class public final Lcom/facebook/ads/redexgen/X/F5;
.super Lcom/facebook/ads/redexgen/X/SJ;
.source ""


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/1m;)V
    .locals 0

    .line 32167
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/SJ;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/1m;)V

    .line 32168
    return-void
.end method

.method private A00(Ljava/lang/Runnable;)Lcom/facebook/ads/redexgen/X/0x;
    .locals 1

    .line 32169
    new-instance v0, Lcom/facebook/ads/redexgen/X/SL;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/SL;-><init>(Lcom/facebook/ads/redexgen/X/F5;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/F5;)V
    .locals 0

    .line 32170
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SJ;->A0J()V

    return-void
.end method


# virtual methods
.method public final A0N()V
    .locals 1

    .line 32171
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A02:Lcom/facebook/ads/redexgen/X/0n;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Rn;

    .line 32172
    .local p0, "interstitialAdapter":Lcom/facebook/ads/redexgen/X/Rn;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rn;->A0B()Z

    .line 32173
    return-void
.end method

.method public final A0Q(Lcom/facebook/ads/redexgen/X/0n;Lcom/facebook/ads/redexgen/X/8w;Lcom/facebook/ads/redexgen/X/8u;Lcom/facebook/ads/redexgen/X/1n;)V
    .locals 12

    move-object v4, p1

    .line 32174
    check-cast v4, Lcom/facebook/ads/redexgen/X/Rn;

    .line 32175
    .local v3, "adapter":Lcom/facebook/ads/redexgen/X/Rn;
    new-instance v3, Lcom/facebook/ads/redexgen/X/SK;

    move-object/from16 v7, p4

    invoke-direct {v3, p0, v7, v4}, Lcom/facebook/ads/redexgen/X/SK;-><init>(Lcom/facebook/ads/redexgen/X/F5;Lcom/facebook/ads/redexgen/X/1n;Lcom/facebook/ads/redexgen/X/Rn;)V

    .line 32176
    .local v2, "interstitialTimeout":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SJ;->A0G()Landroid/os/Handler;

    move-result-object v2

    .line 32177
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/8w;->A05()Lcom/facebook/ads/redexgen/X/8x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8x;->A05()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32178
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/SJ;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    .line 32179
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/F5;->A00(Ljava/lang/Runnable;)Lcom/facebook/ads/redexgen/X/0x;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A08:Lcom/facebook/ads/redexgen/X/1m;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/1m;->A09:Ljava/util/EnumSet;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A08:Lcom/facebook/ads/redexgen/X/1m;

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/1m;->A03:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A08:Lcom/facebook/ads/redexgen/X/1m;

    iget-object v10, v0, Lcom/facebook/ads/redexgen/X/1m;->A04:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A08:Lcom/facebook/ads/redexgen/X/1m;

    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/1m;->A01:Lcom/facebook/ads/RewardData;

    .line 32180
    invoke-virtual/range {v4 .. v11}, Lcom/facebook/ads/redexgen/X/Rn;->A0A(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/0x;Lcom/facebook/ads/redexgen/X/1n;Ljava/util/EnumSet;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/RewardData;)V

    .line 32181
    return-void
.end method
