.class public final Lcom/facebook/ads/redexgen/X/RB;
.super Lcom/facebook/ads/redexgen/X/Q8;
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

    .line 49732
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RB;->A00:Lcom/facebook/ads/redexgen/X/84;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Q8;-><init>()V

    return-void
.end method


# virtual methods
.method public final A04()V
    .locals 3

    .line 49733
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RB;->A00:Lcom/facebook/ads/redexgen/X/84;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/84;->A04(Lcom/facebook/ads/redexgen/X/84;)Lcom/facebook/ads/redexgen/X/Lc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A08()Z

    move-result v0

    if-nez v0, :cond_2

    .line 49734
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RB;->A00:Lcom/facebook/ads/redexgen/X/84;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/84;->A0K(Lcom/facebook/ads/redexgen/X/84;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49735
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RB;->A00:Lcom/facebook/ads/redexgen/X/84;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/84;->A04(Lcom/facebook/ads/redexgen/X/84;)Lcom/facebook/ads/redexgen/X/Lc;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/84;->A0I(Lcom/facebook/ads/redexgen/X/84;Lcom/facebook/ads/redexgen/X/Lc;)V

    .line 49736
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RB;->A00:Lcom/facebook/ads/redexgen/X/84;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/84;->A07(Lcom/facebook/ads/redexgen/X/84;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 49737
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RB;->A00:Lcom/facebook/ads/redexgen/X/84;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/84;->A0N(Lcom/facebook/ads/redexgen/X/84;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49738
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RB;->A00:Lcom/facebook/ads/redexgen/X/84;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/84;->A04(Lcom/facebook/ads/redexgen/X/84;)Lcom/facebook/ads/redexgen/X/Lc;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/84;->A0J(Lcom/facebook/ads/redexgen/X/84;Lcom/facebook/ads/redexgen/X/Lc;)V

    .line 49739
    :cond_1
    new-instance v1, Lcom/facebook/ads/redexgen/X/NX;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/NX;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RB;->A00:Lcom/facebook/ads/redexgen/X/84;

    .line 49740
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/84;->A05(Lcom/facebook/ads/redexgen/X/84;)Lcom/facebook/ads/redexgen/X/Q9;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NX;->A03(Lcom/facebook/ads/redexgen/X/Q9;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RB;->A00:Lcom/facebook/ads/redexgen/X/84;

    .line 49741
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/84;->A04(Lcom/facebook/ads/redexgen/X/84;)Lcom/facebook/ads/redexgen/X/Lc;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NX;->A02(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RB;->A00:Lcom/facebook/ads/redexgen/X/84;

    .line 49742
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/84;->A01(Lcom/facebook/ads/redexgen/X/84;)Lcom/facebook/ads/redexgen/X/bx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0U()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NX;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v0

    .line 49743
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NX;->A05()Ljava/util/Map;

    move-result-object v2

    .line 49744
    .local p0, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RB;->A00:Lcom/facebook/ads/redexgen/X/84;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/84;->A03(Lcom/facebook/ads/redexgen/X/84;)Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RB;->A00:Lcom/facebook/ads/redexgen/X/84;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/84;->A07(Lcom/facebook/ads/redexgen/X/84;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/JC;->A8c(Ljava/lang/String;Ljava/util/Map;)V

    .line 49745
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RB;->A00:Lcom/facebook/ads/redexgen/X/84;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/84;->A02(Lcom/facebook/ads/redexgen/X/84;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2Z()V

    .line 49746
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RB;->A00:Lcom/facebook/ads/redexgen/X/84;

    .line 49747
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/84;->A00(Lcom/facebook/ads/redexgen/X/84;)Lcom/facebook/ads/redexgen/X/bx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v0

    .line 49748
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/24;->A01(Ljava/lang/String;)V

    .line 49749
    .end local p0    # "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    return-void
.end method
