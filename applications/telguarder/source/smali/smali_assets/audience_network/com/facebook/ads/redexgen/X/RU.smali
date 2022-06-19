.class public final Lcom/facebook/ads/redexgen/X/RU;
.super Lcom/facebook/ads/redexgen/X/Q8;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/RQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/RQ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/RQ;)V
    .locals 0

    .line 50101
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RU;->A00:Lcom/facebook/ads/redexgen/X/RQ;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Q8;-><init>()V

    return-void
.end method


# virtual methods
.method public final A04()V
    .locals 3

    .line 50102
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RU;->A00:Lcom/facebook/ads/redexgen/X/RQ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/RQ;->A06:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A08()Z

    move-result v0

    if-nez v0, :cond_2

    .line 50103
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RU;->A00:Lcom/facebook/ads/redexgen/X/RQ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/RQ;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1A(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50104
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RU;->A00:Lcom/facebook/ads/redexgen/X/RQ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/RQ;->A06:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A06()V

    .line 50105
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RU;->A00:Lcom/facebook/ads/redexgen/X/RQ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/RQ;->A01:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0R()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 50106
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RU;->A00:Lcom/facebook/ads/redexgen/X/RQ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/RQ;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1A(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50107
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RU;->A00:Lcom/facebook/ads/redexgen/X/RQ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/RQ;->A06:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A06()V

    .line 50108
    :cond_1
    new-instance v1, Lcom/facebook/ads/redexgen/X/NX;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/NX;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RU;->A00:Lcom/facebook/ads/redexgen/X/RQ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/RQ;->A0A:Lcom/facebook/ads/redexgen/X/Q9;

    .line 50109
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NX;->A03(Lcom/facebook/ads/redexgen/X/Q9;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RU;->A00:Lcom/facebook/ads/redexgen/X/RQ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/RQ;->A06:Lcom/facebook/ads/redexgen/X/Lc;

    .line 50110
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NX;->A02(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RU;->A00:Lcom/facebook/ads/redexgen/X/RQ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/RQ;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 50111
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0U()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NX;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v0

    .line 50112
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NX;->A05()Ljava/util/Map;

    move-result-object v2

    .line 50113
    .local p0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RU;->A00:Lcom/facebook/ads/redexgen/X/RQ;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/RQ;->A04:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RU;->A00:Lcom/facebook/ads/redexgen/X/RQ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/RQ;->A01:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0R()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/JC;->A8c(Ljava/lang/String;Ljava/util/Map;)V

    .line 50114
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RU;->A00:Lcom/facebook/ads/redexgen/X/RQ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/RQ;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2Z()V

    .line 50115
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RU;->A00:Lcom/facebook/ads/redexgen/X/RQ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/RQ;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 50116
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v0

    .line 50117
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/24;->A01(Ljava/lang/String;)V

    .line 50118
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RU;->A00:Lcom/facebook/ads/redexgen/X/RQ;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/RQ;->A08:Lcom/facebook/ads/redexgen/X/M7;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RU;->A00:Lcom/facebook/ads/redexgen/X/RQ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/RQ;->A09:Lcom/facebook/ads/redexgen/X/MZ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MZ;->A6b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/M7;->A3p(Ljava/lang/String;)V

    .line 50119
    .end local p0    # "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    return-void
.end method
