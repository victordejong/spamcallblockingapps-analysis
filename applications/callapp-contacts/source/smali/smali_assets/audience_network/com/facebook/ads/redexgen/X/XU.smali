.class public final Lcom/facebook/ads/redexgen/X/XU;
.super Lcom/facebook/ads/redexgen/X/QD;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/XM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/XM;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XM;)V
    .locals 0

    .line 57913
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/XU;->A00:Lcom/facebook/ads/redexgen/X/XM;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QD;-><init>()V

    return-void
.end method


# virtual methods
.method public final A04()V
    .locals 3

    .line 57914
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XU;->A00:Lcom/facebook/ads/redexgen/X/XM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/XM;->A06:Lcom/facebook/ads/redexgen/X/La;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/La;->A08()Z

    move-result v0

    if-nez v0, :cond_2

    .line 57915
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XU;->A00:Lcom/facebook/ads/redexgen/X/XM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/XM;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A19(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57916
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XU;->A00:Lcom/facebook/ads/redexgen/X/XM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/XM;->A06:Lcom/facebook/ads/redexgen/X/La;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/La;->A06()V

    .line 57917
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XU;->A00:Lcom/facebook/ads/redexgen/X/XM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/XM;->A01:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 57918
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XU;->A00:Lcom/facebook/ads/redexgen/X/XM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/XM;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A19(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57919
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XU;->A00:Lcom/facebook/ads/redexgen/X/XM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/XM;->A06:Lcom/facebook/ads/redexgen/X/La;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/La;->A06()V

    .line 57920
    :cond_1
    new-instance v1, Lcom/facebook/ads/redexgen/X/Nc;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Nc;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XU;->A00:Lcom/facebook/ads/redexgen/X/XM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/XM;->A0A:Lcom/facebook/ads/redexgen/X/QE;

    .line 57921
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nc;->A04(Lcom/facebook/ads/redexgen/X/QE;)Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XU;->A00:Lcom/facebook/ads/redexgen/X/XM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/XM;->A06:Lcom/facebook/ads/redexgen/X/La;

    .line 57922
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nc;->A03(Lcom/facebook/ads/redexgen/X/La;)Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XU;->A00:Lcom/facebook/ads/redexgen/X/XM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/XM;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 57923
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0W()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nc;->A05(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v0

    .line 57924
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nc;->A06()Ljava/util/Map;

    move-result-object v2

    .line 57925
    .local p0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XU;->A00:Lcom/facebook/ads/redexgen/X/XM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/XM;->A04:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XU;->A00:Lcom/facebook/ads/redexgen/X/XM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/XM;->A01:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/JC;->A8a(Ljava/lang/String;Ljava/util/Map;)V

    .line 57926
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XU;->A00:Lcom/facebook/ads/redexgen/X/XM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/XM;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2a()V

    .line 57927
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XU;->A00:Lcom/facebook/ads/redexgen/X/XM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/XM;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 57928
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0V()Ljava/lang/String;

    move-result-object v0

    .line 57929
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/24;->A00(Ljava/lang/String;)V

    .line 57930
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XU;->A00:Lcom/facebook/ads/redexgen/X/XM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/XM;->A08:Lcom/facebook/ads/redexgen/X/M9;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XU;->A00:Lcom/facebook/ads/redexgen/X/XM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/XM;->A09:Lcom/facebook/ads/redexgen/X/Me;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Me;->A6b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/M9;->A3t(Ljava/lang/String;)V

    .line 57931
    .end local p0    # "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    return-void
.end method
