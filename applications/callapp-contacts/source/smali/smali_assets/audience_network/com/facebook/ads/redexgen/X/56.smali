.class public final Lcom/facebook/ads/redexgen/X/56;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12867
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8F;)Lcom/facebook/ads/redexgen/X/0R;
    .locals 0

    .line 12868
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/56;->A07(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/XK;

    move-result-object p0

    .line 12869
    .local p0, "sdkContext":Lcom/facebook/ads/redexgen/X/XK;
    invoke-interface {p1, p0}, Lcom/facebook/ads/redexgen/X/8F;->A6Y(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/0U;

    move-result-object p0

    .line 12870
    .local p1, "funnelModule":Lcom/facebook/ads/redexgen/X/0U;
    if-eqz p0, :cond_0

    .line 12871
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/0U;->A8w()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object p0

    return-object p0

    .line 12872
    :cond_0
    new-instance p0, Lcom/facebook/ads/redexgen/X/Rd;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rd;-><init>()V

    return-object p0
.end method

.method public static A01(Landroid/app/Activity;)Lcom/facebook/ads/redexgen/X/XJ;
    .locals 3

    .line 12873
    invoke-static {}, Lcom/facebook/ads/redexgen/X/56;->A08()Lcom/facebook/ads/redexgen/X/8F;

    move-result-object v2

    invoke-static {}, Lcom/facebook/ads/redexgen/X/56;->A08()Lcom/facebook/ads/redexgen/X/8F;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/56;->A00(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8F;)Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/XJ;

    invoke-direct {v0, p0, v2, v1}, Lcom/facebook/ads/redexgen/X/XJ;-><init>(Landroid/app/Activity;Lcom/facebook/ads/redexgen/X/8F;Lcom/facebook/ads/redexgen/X/0R;)V

    .line 12874
    return-object v0
.end method

.method public static A02(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/XJ;
    .locals 3

    .line 12875
    invoke-static {}, Lcom/facebook/ads/redexgen/X/56;->A08()Lcom/facebook/ads/redexgen/X/8F;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/Rd;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Rd;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/XJ;

    invoke-direct {v0, p0, v2, v1}, Lcom/facebook/ads/redexgen/X/XJ;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8F;Lcom/facebook/ads/redexgen/X/0R;)V

    return-object v0
.end method

.method public static A03(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/XJ;
    .locals 3

    .line 12876
    invoke-static {}, Lcom/facebook/ads/redexgen/X/56;->A08()Lcom/facebook/ads/redexgen/X/8F;

    move-result-object v2

    invoke-static {}, Lcom/facebook/ads/redexgen/X/56;->A08()Lcom/facebook/ads/redexgen/X/8F;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/56;->A00(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8F;)Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/XJ;

    invoke-direct {v0, p0, v2, v1}, Lcom/facebook/ads/redexgen/X/XJ;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8F;Lcom/facebook/ads/redexgen/X/0R;)V

    return-object v0
.end method

.method public static A04(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/XJ;
    .locals 3

    .line 12877
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J4;->A0o(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12878
    invoke-static {}, Lcom/facebook/ads/redexgen/X/56;->A08()Lcom/facebook/ads/redexgen/X/8F;

    move-result-object v2

    invoke-static {}, Lcom/facebook/ads/redexgen/X/56;->A08()Lcom/facebook/ads/redexgen/X/8F;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/56;->A00(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8F;)Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/XJ;

    invoke-direct {v0, p0, v2, v1}, Lcom/facebook/ads/redexgen/X/XJ;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8F;Lcom/facebook/ads/redexgen/X/0R;)V

    .line 12879
    return-object v0

    .line 12880
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/56;->A02(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    return-object v0
.end method

.method public static A05(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/XJ;
    .locals 3

    .line 12881
    invoke-static {}, Lcom/facebook/ads/redexgen/X/56;->A08()Lcom/facebook/ads/redexgen/X/8F;

    move-result-object v2

    invoke-static {}, Lcom/facebook/ads/redexgen/X/56;->A08()Lcom/facebook/ads/redexgen/X/8F;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/56;->A00(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8F;)Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/XJ;

    invoke-direct {v0, p0, v2, v1}, Lcom/facebook/ads/redexgen/X/XJ;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8F;Lcom/facebook/ads/redexgen/X/0R;)V

    return-object v0
.end method

.method public static A06(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/ES;
    .locals 3

    .line 12882
    invoke-static {}, Lcom/facebook/ads/redexgen/X/56;->A08()Lcom/facebook/ads/redexgen/X/8F;

    move-result-object v2

    invoke-static {}, Lcom/facebook/ads/redexgen/X/56;->A08()Lcom/facebook/ads/redexgen/X/8F;

    move-result-object v1

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/56;->A07(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/8F;->A6Y(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/0U;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/ES;

    invoke-direct {v0, p0, v2, v1}, Lcom/facebook/ads/redexgen/X/ES;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8F;Lcom/facebook/ads/redexgen/X/0U;)V

    .line 12883
    return-object v0
.end method

.method public static A07(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/XK;
    .locals 2

    .line 12884
    invoke-static {}, Lcom/facebook/ads/redexgen/X/56;->A08()Lcom/facebook/ads/redexgen/X/8F;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/XK;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/XK;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8F;)V

    return-object v0
.end method

.method public static declared-synchronized A08()Lcom/facebook/ads/redexgen/X/8F;
    .locals 2

    const-class v1, Lcom/facebook/ads/redexgen/X/56;

    monitor-enter v1

    .line 12885
    :try_start_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Xs;->A02()Lcom/facebook/ads/redexgen/X/Xs;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
