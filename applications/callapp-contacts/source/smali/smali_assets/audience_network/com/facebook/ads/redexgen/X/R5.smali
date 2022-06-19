.class public final Lcom/facebook/ads/redexgen/X/R5;
.super Lcom/facebook/ads/redexgen/X/QD;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/R0;->A09(Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/La;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/JC;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/La;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Ot;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/R0;

.field public final synthetic A04:Ljava/lang/String;

.field public final synthetic A05:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/R0;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ot;Lcom/facebook/ads/redexgen/X/JC;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/La;)V
    .locals 0

    .line 49721
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/R5;->A03:Lcom/facebook/ads/redexgen/X/R0;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/R5;->A04:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/R5;->A02:Lcom/facebook/ads/redexgen/X/Ot;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/R5;->A00:Lcom/facebook/ads/redexgen/X/JC;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/R5;->A05:Ljava/util/Map;

    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/R5;->A01:Lcom/facebook/ads/redexgen/X/La;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QD;-><init>()V

    return-void
.end method


# virtual methods
.method public final A04()V
    .locals 4

    .line 49722
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R5;->A03:Lcom/facebook/ads/redexgen/X/R0;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/R0;->A04(Lcom/facebook/ads/redexgen/X/R0;)Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QE;->A0a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R5;->A04:Ljava/lang/String;

    .line 49723
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R5;->A03:Lcom/facebook/ads/redexgen/X/R0;

    .line 49724
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/R0;->A03(Lcom/facebook/ads/redexgen/X/R0;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R5;->A02:Lcom/facebook/ads/redexgen/X/Ot;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ot;->A02()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49725
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/R5;->A00:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/R5;->A04:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R5;->A05:Ljava/util/Map;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Nc;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Nc;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R5;->A03:Lcom/facebook/ads/redexgen/X/R0;

    .line 49726
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/R0;->A05(Lcom/facebook/ads/redexgen/X/R0;)Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nc;->A04(Lcom/facebook/ads/redexgen/X/QE;)Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R5;->A01:Lcom/facebook/ads/redexgen/X/La;

    .line 49727
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nc;->A03(Lcom/facebook/ads/redexgen/X/La;)Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v0

    .line 49728
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nc;->A06()Ljava/util/Map;

    move-result-object v0

    .line 49729
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/JC;->A8a(Ljava/lang/String;Ljava/util/Map;)V

    .line 49730
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R5;->A03:Lcom/facebook/ads/redexgen/X/R0;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/R0;->A03(Lcom/facebook/ads/redexgen/X/R0;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R5;->A02:Lcom/facebook/ads/redexgen/X/Ot;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ot;->A02()I

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 49731
    :cond_0
    return-void
.end method
