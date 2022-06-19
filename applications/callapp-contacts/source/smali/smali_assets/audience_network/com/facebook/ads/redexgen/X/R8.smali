.class public final Lcom/facebook/ads/redexgen/X/R8;
.super Lcom/facebook/ads/redexgen/X/QD;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/83;->A0C(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/83;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/R8;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/83;)V
    .locals 0

    .line 49743
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/R8;->A00:Lcom/facebook/ads/redexgen/X/83;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QD;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "CpCyZvYN17gNmAQ1givZaykBHbBCI0"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "baAiIYpH9tIHD9Hq3KBwll8oAmkyQ8xl"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "hp5aOEdOqEU6GiXiS60G5d0hHyMpyV1a"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "IUgHQDqsqxHz1mzYV3DDezd8Se6QNlb3"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "t3r1dh"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "acpOTUhFXhF5KXRgHcTwRDquCRAX3B4B"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "vBBXWUuvNhVPpjYLTmNeNUi0KYkvu1ac"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "0lv69t5ZeKsEoatoiZcazlrJUHKSZnbi"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/R8;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A04()V
    .locals 4

    .line 49744
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R8;->A00:Lcom/facebook/ads/redexgen/X/83;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/83;->A04(Lcom/facebook/ads/redexgen/X/83;)Lcom/facebook/ads/redexgen/X/La;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/La;->A08()Z

    move-result v0

    if-nez v0, :cond_2

    .line 49745
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R8;->A00:Lcom/facebook/ads/redexgen/X/83;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/83;->A0H(Lcom/facebook/ads/redexgen/X/83;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49746
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R8;->A00:Lcom/facebook/ads/redexgen/X/83;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/83;->A04(Lcom/facebook/ads/redexgen/X/83;)Lcom/facebook/ads/redexgen/X/La;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/83;->A0F(Lcom/facebook/ads/redexgen/X/83;Lcom/facebook/ads/redexgen/X/La;)V

    .line 49747
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R8;->A00:Lcom/facebook/ads/redexgen/X/83;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/83;->A08(Lcom/facebook/ads/redexgen/X/83;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 49748
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/R8;->A00:Lcom/facebook/ads/redexgen/X/83;

    sget-object v2, Lcom/facebook/ads/redexgen/X/R8;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/R8;->A01:[Ljava/lang/String;

    const-string v1, "qFM5CsrXBvzat0ibNvOjXRfMXPaEXtma"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/83;->A0K(Lcom/facebook/ads/redexgen/X/83;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49749
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R8;->A00:Lcom/facebook/ads/redexgen/X/83;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/83;->A04(Lcom/facebook/ads/redexgen/X/83;)Lcom/facebook/ads/redexgen/X/La;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/83;->A0G(Lcom/facebook/ads/redexgen/X/83;Lcom/facebook/ads/redexgen/X/La;)V

    .line 49750
    :cond_1
    new-instance v1, Lcom/facebook/ads/redexgen/X/Nc;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Nc;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R8;->A00:Lcom/facebook/ads/redexgen/X/83;

    .line 49751
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/83;->A06(Lcom/facebook/ads/redexgen/X/83;)Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nc;->A04(Lcom/facebook/ads/redexgen/X/QE;)Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R8;->A00:Lcom/facebook/ads/redexgen/X/83;

    .line 49752
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/83;->A04(Lcom/facebook/ads/redexgen/X/83;)Lcom/facebook/ads/redexgen/X/La;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nc;->A03(Lcom/facebook/ads/redexgen/X/La;)Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R8;->A00:Lcom/facebook/ads/redexgen/X/83;

    .line 49753
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/83;->A01(Lcom/facebook/ads/redexgen/X/83;)Lcom/facebook/ads/redexgen/X/S1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0W()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nc;->A05(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v0

    .line 49754
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nc;->A06()Ljava/util/Map;

    move-result-object v2

    .line 49755
    .local p0, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R8;->A00:Lcom/facebook/ads/redexgen/X/83;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/83;->A03(Lcom/facebook/ads/redexgen/X/83;)Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R8;->A00:Lcom/facebook/ads/redexgen/X/83;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/83;->A08(Lcom/facebook/ads/redexgen/X/83;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/JC;->A8a(Ljava/lang/String;Ljava/util/Map;)V

    .line 49756
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R8;->A00:Lcom/facebook/ads/redexgen/X/83;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/83;->A02(Lcom/facebook/ads/redexgen/X/83;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2a()V

    .line 49757
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R8;->A00:Lcom/facebook/ads/redexgen/X/83;

    .line 49758
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/83;->A00(Lcom/facebook/ads/redexgen/X/83;)Lcom/facebook/ads/redexgen/X/S1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0V()Ljava/lang/String;

    move-result-object v0

    .line 49759
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/24;->A00(Ljava/lang/String;)V

    .line 49760
    .end local p0    # "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
