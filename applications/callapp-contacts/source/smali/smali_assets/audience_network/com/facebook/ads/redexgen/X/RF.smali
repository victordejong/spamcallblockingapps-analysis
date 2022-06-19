.class public final Lcom/facebook/ads/redexgen/X/RF;
.super Lcom/facebook/ads/redexgen/X/QD;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/84;->A0E(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/84;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/84;)V
    .locals 0

    .line 49863
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RF;->A00:Lcom/facebook/ads/redexgen/X/84;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QD;-><init>()V

    return-void
.end method


# virtual methods
.method public final A04()V
    .locals 3

    .line 49864
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A00:Lcom/facebook/ads/redexgen/X/84;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/84;->A04(Lcom/facebook/ads/redexgen/X/84;)Lcom/facebook/ads/redexgen/X/La;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/La;->A08()Z

    move-result v0

    if-nez v0, :cond_2

    .line 49865
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A00:Lcom/facebook/ads/redexgen/X/84;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/84;->A0K(Lcom/facebook/ads/redexgen/X/84;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49866
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RF;->A00:Lcom/facebook/ads/redexgen/X/84;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/84;->A04(Lcom/facebook/ads/redexgen/X/84;)Lcom/facebook/ads/redexgen/X/La;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/84;->A0I(Lcom/facebook/ads/redexgen/X/84;Lcom/facebook/ads/redexgen/X/La;)V

    .line 49867
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A00:Lcom/facebook/ads/redexgen/X/84;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/84;->A07(Lcom/facebook/ads/redexgen/X/84;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 49868
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A00:Lcom/facebook/ads/redexgen/X/84;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/84;->A0N(Lcom/facebook/ads/redexgen/X/84;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49869
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RF;->A00:Lcom/facebook/ads/redexgen/X/84;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/84;->A04(Lcom/facebook/ads/redexgen/X/84;)Lcom/facebook/ads/redexgen/X/La;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/84;->A0J(Lcom/facebook/ads/redexgen/X/84;Lcom/facebook/ads/redexgen/X/La;)V

    .line 49870
    :cond_1
    new-instance v1, Lcom/facebook/ads/redexgen/X/Nc;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Nc;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A00:Lcom/facebook/ads/redexgen/X/84;

    .line 49871
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/84;->A05(Lcom/facebook/ads/redexgen/X/84;)Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nc;->A04(Lcom/facebook/ads/redexgen/X/QE;)Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A00:Lcom/facebook/ads/redexgen/X/84;

    .line 49872
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/84;->A04(Lcom/facebook/ads/redexgen/X/84;)Lcom/facebook/ads/redexgen/X/La;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nc;->A03(Lcom/facebook/ads/redexgen/X/La;)Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A00:Lcom/facebook/ads/redexgen/X/84;

    .line 49873
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/84;->A01(Lcom/facebook/ads/redexgen/X/84;)Lcom/facebook/ads/redexgen/X/S1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0W()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nc;->A05(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v0

    .line 49874
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nc;->A06()Ljava/util/Map;

    move-result-object v2

    .line 49875
    .local p0, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A00:Lcom/facebook/ads/redexgen/X/84;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/84;->A03(Lcom/facebook/ads/redexgen/X/84;)Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A00:Lcom/facebook/ads/redexgen/X/84;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/84;->A07(Lcom/facebook/ads/redexgen/X/84;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/JC;->A8a(Ljava/lang/String;Ljava/util/Map;)V

    .line 49876
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A00:Lcom/facebook/ads/redexgen/X/84;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/84;->A02(Lcom/facebook/ads/redexgen/X/84;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2a()V

    .line 49877
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A00:Lcom/facebook/ads/redexgen/X/84;

    .line 49878
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/84;->A00(Lcom/facebook/ads/redexgen/X/84;)Lcom/facebook/ads/redexgen/X/S1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0V()Ljava/lang/String;

    move-result-object v0

    .line 49879
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/24;->A00(Ljava/lang/String;)V

    .line 49880
    .end local p0    # "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    return-void
.end method
