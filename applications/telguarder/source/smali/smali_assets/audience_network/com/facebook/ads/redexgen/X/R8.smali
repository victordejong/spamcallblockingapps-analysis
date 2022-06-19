.class public final Lcom/facebook/ads/redexgen/X/R8;
.super Lcom/facebook/ads/redexgen/X/Q8;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/R6;->A09(Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/Lc;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Oo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/JC;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Lc;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Oo;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/R6;

.field public final synthetic A04:Ljava/lang/String;

.field public final synthetic A05:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/R6;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Oo;Lcom/facebook/ads/redexgen/X/JC;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/Lc;)V
    .locals 0

    .line 49711
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/R8;->A03:Lcom/facebook/ads/redexgen/X/R6;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/R8;->A04:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/R8;->A02:Lcom/facebook/ads/redexgen/X/Oo;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/R8;->A00:Lcom/facebook/ads/redexgen/X/JC;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/R8;->A05:Ljava/util/Map;

    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/R8;->A01:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Q8;-><init>()V

    return-void
.end method


# virtual methods
.method public final A04()V
    .locals 4

    .line 49712
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R8;->A03:Lcom/facebook/ads/redexgen/X/R6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/R6;->A04(Lcom/facebook/ads/redexgen/X/R6;)Lcom/facebook/ads/redexgen/X/Q9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R8;->A04:Ljava/lang/String;

    .line 49713
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R8;->A03:Lcom/facebook/ads/redexgen/X/R6;

    .line 49714
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/R6;->A03(Lcom/facebook/ads/redexgen/X/R6;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R8;->A02:Lcom/facebook/ads/redexgen/X/Oo;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oo;->A02()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49715
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/R8;->A00:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/R8;->A04:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R8;->A05:Ljava/util/Map;

    new-instance v1, Lcom/facebook/ads/redexgen/X/NX;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/NX;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R8;->A03:Lcom/facebook/ads/redexgen/X/R6;

    .line 49716
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/R6;->A05(Lcom/facebook/ads/redexgen/X/R6;)Lcom/facebook/ads/redexgen/X/Q9;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NX;->A03(Lcom/facebook/ads/redexgen/X/Q9;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R8;->A01:Lcom/facebook/ads/redexgen/X/Lc;

    .line 49717
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NX;->A02(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v0

    .line 49718
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NX;->A05()Ljava/util/Map;

    move-result-object v0

    .line 49719
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/JC;->A8c(Ljava/lang/String;Ljava/util/Map;)V

    .line 49720
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R8;->A03:Lcom/facebook/ads/redexgen/X/R6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/R6;->A03(Lcom/facebook/ads/redexgen/X/R6;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R8;->A02:Lcom/facebook/ads/redexgen/X/Oo;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oo;->A02()I

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 49721
    :cond_0
    return-void
.end method
