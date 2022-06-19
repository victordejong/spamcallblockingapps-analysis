.class public final Lcom/facebook/ads/redexgen/X/Y5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Oj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Y4;->A0B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Y4;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Y4;)V
    .locals 0

    .line 58811
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Y5;->A00:Lcom/facebook/ads/redexgen/X/Y4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAW()V
    .locals 3

    .line 58812
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y5;->A00:Lcom/facebook/ads/redexgen/X/Y4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Y4;->A04(Lcom/facebook/ads/redexgen/X/Y4;)Lcom/facebook/ads/redexgen/X/JJ;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/JI;->A0M:Lcom/facebook/ads/redexgen/X/JI;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JJ;->A03(Lcom/facebook/ads/redexgen/X/JI;Ljava/util/Map;)V

    .line 58813
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y5;->A00:Lcom/facebook/ads/redexgen/X/Y4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Y4;->A02(Lcom/facebook/ads/redexgen/X/Y4;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A4x()V

    .line 58814
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y5;->A00:Lcom/facebook/ads/redexgen/X/Y4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Y4;->A09(Lcom/facebook/ads/redexgen/X/Y4;)Lcom/facebook/ads/redexgen/X/OS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OS;->A0V()V

    .line 58815
    return-void
.end method
