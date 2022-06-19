.class public final Lcom/facebook/ads/redexgen/X/c1;
.super Lcom/facebook/ads/redexgen/X/Q8;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/bz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/bz;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/bz;)V
    .locals 0

    .line 70507
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/c1;->A00:Lcom/facebook/ads/redexgen/X/bz;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Q8;-><init>()V

    return-void
.end method


# virtual methods
.method public final A04()V
    .locals 1

    .line 70508
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c1;->A00:Lcom/facebook/ads/redexgen/X/bz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bz;->A05(Lcom/facebook/ads/redexgen/X/bz;)Lcom/facebook/ads/redexgen/X/15;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70509
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c1;->A00:Lcom/facebook/ads/redexgen/X/bz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bz;->A05(Lcom/facebook/ads/redexgen/X/bz;)Lcom/facebook/ads/redexgen/X/15;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/15;->A9h()V

    .line 70510
    :cond_0
    return-void
.end method
