.class public final Lcom/facebook/ads/redexgen/X/PS;
.super Lcom/facebook/ads/redexgen/X/Kb;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/PD;->ABZ(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:I

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/PD;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/PD;II)V
    .locals 0

    .line 48093
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PS;->A02:Lcom/facebook/ads/redexgen/X/PD;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/PS;->A00:I

    iput p3, p0, Lcom/facebook/ads/redexgen/X/PS;->A01:I

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kb;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 48094
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PS;->A02:Lcom/facebook/ads/redexgen/X/PD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PD;->A09(Lcom/facebook/ads/redexgen/X/PD;)Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v3

    iget v2, p0, Lcom/facebook/ads/redexgen/X/PS;->A00:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/PS;->A01:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/K8;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/K8;-><init>(II)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/9F;->A03(Lcom/facebook/ads/redexgen/X/9E;)V

    .line 48095
    return-void
.end method
