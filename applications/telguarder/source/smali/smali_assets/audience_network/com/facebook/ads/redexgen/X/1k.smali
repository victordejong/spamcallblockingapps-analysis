.class public final Lcom/facebook/ads/redexgen/X/1k;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/1i;,
        Lcom/facebook/ads/redexgen/X/1j;,
        Lcom/facebook/ads/redexgen/X/bn;
    }
.end annotation


# static fields
.field public static A00:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/1k;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/1k;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x73

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/1k;->A00:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xbt
        0x4dt
        0x51t
        0x48t
        0x49t
    .end array-data
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/16;ZLcom/facebook/ads/redexgen/X/1i;)V
    .locals 11

    .line 3672
    move-object v7, p0

    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/J4;->A1K(Landroid/content/Context;)Z

    move-result v0

    move-object v8, p3

    if-eqz v0, :cond_0

    .line 3673
    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/1i;->AB6()V

    .line 3674
    return-void

    .line 3675
    :cond_0
    new-instance v9, Lcom/facebook/ads/redexgen/X/7D;

    invoke-direct {v9, v7}, Lcom/facebook/ads/redexgen/X/7D;-><init>(Lcom/facebook/ads/redexgen/X/8D;)V

    .line 3676
    .local v7, "cacheManager":Lcom/facebook/ads/redexgen/X/7D;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A06()Lcom/facebook/ads/redexgen/X/1U;

    move-result-object v10

    .line 3677
    .local v0, "playableAdData":Lcom/facebook/ads/redexgen/X/1U;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/16;->A0R()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/8D;->A06()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/JK;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/JK;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;)V

    .line 3678
    .local v10, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/JK;
    invoke-virtual {v9, v0}, Lcom/facebook/ads/redexgen/X/7D;->A0c(Lcom/facebook/ads/redexgen/X/JK;)V

    .line 3679
    if-nez v10, :cond_1

    .line 3680
    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v8, v0}, Lcom/facebook/ads/redexgen/X/1i;->AB5(Lcom/facebook/ads/AdError;)V

    .line 3681
    return-void

    .line 3682
    :cond_1
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/1U;->A0J()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3683
    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/1i;->AB6()V

    .line 3684
    return-void

    .line 3685
    :cond_2
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/1U;->A0E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/16;->A0W()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/16;->A0V()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/facebook/ads/redexgen/X/7C;

    invoke-direct {v4, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7C;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3686
    .local v1, "videoData":Lcom/facebook/ads/redexgen/X/7C;
    const/4 v3, 0x1

    iput-boolean v3, v4, Lcom/facebook/ads/redexgen/X/7C;->A04:Z

    .line 3687
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/J4;->A1F(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3688
    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1k;->A00(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/7C;->A03:Ljava/lang/String;

    .line 3689
    :cond_3
    sget-object v1, Lcom/facebook/ads/redexgen/X/1h;->A00:[I

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/1U;->A09()Lcom/facebook/ads/redexgen/X/1V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1V;->ordinal()I

    move-result v0

    aget v1, v1, v0

    if-eq v1, v3, :cond_4

    const/4 v0, 0x2

    if-eq v1, v0, :cond_4

    .line 3690
    :goto_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/7A;

    .line 3691
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/16;->A0O()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1S;->A01()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, -0x1

    .line 3692
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/16;->A0W()Ljava/lang/String;

    move-result-object v5

    .line 3693
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/16;->A0V()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/7A;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 3694
    invoke-virtual {v9, v1}, Lcom/facebook/ads/redexgen/X/7D;->A0W(Lcom/facebook/ads/redexgen/X/7A;)V

    .line 3695
    new-instance v0, Lcom/facebook/ads/redexgen/X/7A;

    .line 3696
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/1U;->A0D()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, -0x1

    .line 3697
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/16;->A0W()Ljava/lang/String;

    move-result-object v4

    .line 3698
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/16;->A0V()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/7A;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 3699
    invoke-virtual {v9, v0}, Lcom/facebook/ads/redexgen/X/7D;->A0W(Lcom/facebook/ads/redexgen/X/7A;)V

    .line 3700
    new-instance v6, Lcom/facebook/ads/redexgen/X/bn;

    move p0, p2

    invoke-direct/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/bn;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/1i;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/1U;Z)V

    .line 3701
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/16;->A0W()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/16;->A0V()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/76;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/76;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3702
    invoke-virtual {v9, v6, v0}, Lcom/facebook/ads/redexgen/X/7D;->A0V(Lcom/facebook/ads/redexgen/X/75;Lcom/facebook/ads/redexgen/X/76;)V

    .line 3703
    return-void

    .line 3704
    :cond_4
    invoke-virtual {v9, v4}, Lcom/facebook/ads/redexgen/X/7D;->A0Y(Lcom/facebook/ads/redexgen/X/7C;)V

    goto :goto_0
.end method
