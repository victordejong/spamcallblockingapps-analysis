.class public final Lcom/facebook/ads/redexgen/X/ak;
.super Lcom/facebook/ads/redexgen/X/QD;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/ah;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/PD;Lcom/facebook/ads/redexgen/X/M9;Lcom/facebook/ads/redexgen/X/S5;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ah;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ak;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ah;)V
    .locals 0

    .line 68673
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ak;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QD;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "r1Qo3G0acQP9G90IdvhAo3HFTjZ5SydI"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "qm3gC"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "TCmhR"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "E4ahW0CjAiop2M7AIgY7y1ZiLbUQe2fx"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "mXvvs7C7wolmR3EIOyKvx9drm4P6eOOG"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "CTdCniPubZN"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "25pQI77d72Gk7OiKaUDbOu8B"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "A528XA3JCpwqqjTqo7CqKKSxgmd"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ak;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A04()V
    .locals 4

    .line 68674
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ak;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A08(Lcom/facebook/ads/redexgen/X/ah;)Lcom/facebook/ads/redexgen/X/La;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/La;->A08()Z

    move-result v0

    if-nez v0, :cond_2

    .line 68675
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ak;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A0j(Lcom/facebook/ads/redexgen/X/ah;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68676
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ak;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A0W(Lcom/facebook/ads/redexgen/X/ah;)V

    .line 68677
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ak;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A04(Lcom/facebook/ads/redexgen/X/ah;)Lcom/facebook/ads/redexgen/X/S5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 68678
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ak;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A0j(Lcom/facebook/ads/redexgen/X/ah;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68679
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ak;->A00:Lcom/facebook/ads/redexgen/X/ah;

    sget-object v1, Lcom/facebook/ads/redexgen/X/ak;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/ak;->A01:[Ljava/lang/String;

    const-string v1, "JKAv6PElY7i"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "iAODJPr03xOiPaEllQg3AbvYwen"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/ah;->A0W(Lcom/facebook/ads/redexgen/X/ah;)V

    .line 68680
    :cond_1
    new-instance v1, Lcom/facebook/ads/redexgen/X/Nc;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Nc;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ak;->A00:Lcom/facebook/ads/redexgen/X/ah;

    .line 68681
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A0D(Lcom/facebook/ads/redexgen/X/ah;)Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nc;->A04(Lcom/facebook/ads/redexgen/X/QE;)Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ak;->A00:Lcom/facebook/ads/redexgen/X/ah;

    .line 68682
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A08(Lcom/facebook/ads/redexgen/X/ah;)Lcom/facebook/ads/redexgen/X/La;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nc;->A03(Lcom/facebook/ads/redexgen/X/La;)Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ak;->A00:Lcom/facebook/ads/redexgen/X/ah;

    .line 68683
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A04(Lcom/facebook/ads/redexgen/X/ah;)Lcom/facebook/ads/redexgen/X/S5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0W()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nc;->A05(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v0

    .line 68684
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nc;->A06()Ljava/util/Map;

    move-result-object v2

    .line 68685
    .local p0, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ak;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A06(Lcom/facebook/ads/redexgen/X/ah;)Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ak;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A04(Lcom/facebook/ads/redexgen/X/ah;)Lcom/facebook/ads/redexgen/X/S5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/JC;->A8a(Ljava/lang/String;Ljava/util/Map;)V

    .line 68686
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ak;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A05(Lcom/facebook/ads/redexgen/X/ah;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2a()V

    .line 68687
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ak;->A00:Lcom/facebook/ads/redexgen/X/ah;

    .line 68688
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A04(Lcom/facebook/ads/redexgen/X/ah;)Lcom/facebook/ads/redexgen/X/S5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0V()Ljava/lang/String;

    move-result-object v0

    .line 68689
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/24;->A00(Ljava/lang/String;)V

    .line 68690
    .end local p0    # "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
