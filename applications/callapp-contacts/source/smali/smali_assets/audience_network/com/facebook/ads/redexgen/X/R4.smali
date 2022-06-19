.class public final Lcom/facebook/ads/redexgen/X/R4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/OC;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/R0;->A09(Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/La;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ot;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/R0;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/R0;Lcom/facebook/ads/redexgen/X/Ot;)V
    .locals 0

    .line 49716
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/R4;->A01:Lcom/facebook/ads/redexgen/X/R0;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/R4;->A00:Lcom/facebook/ads/redexgen/X/Ot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A9R()V
    .locals 1

    .line 49717
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R4;->A00:Lcom/facebook/ads/redexgen/X/Ot;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ot;->A02()I

    move-result v0

    if-nez v0, :cond_0

    .line 49718
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R4;->A01:Lcom/facebook/ads/redexgen/X/R0;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/R0;->A04(Lcom/facebook/ads/redexgen/X/R0;)Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QE;->A0V()V

    .line 49719
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R4;->A01:Lcom/facebook/ads/redexgen/X/R0;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/R0;->A05(Lcom/facebook/ads/redexgen/X/R0;)Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QE;->A0V()V

    .line 49720
    return-void
.end method
