.class public final Lcom/facebook/ads/redexgen/X/ca;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/LO;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/LQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WindowLineProcessor"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/LN;

.field public final A01:Lcom/facebook/ads/redexgen/X/LO;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/LO;II)V
    .locals 1

    .line 72627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72628
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ca;->A01:Lcom/facebook/ads/redexgen/X/LO;

    .line 72629
    new-instance v0, Lcom/facebook/ads/redexgen/X/LN;

    invoke-direct {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/LN;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ca;->A00:Lcom/facebook/ads/redexgen/X/LN;

    .line 72630
    return-void
.end method


# virtual methods
.method public final ACZ(Ljava/lang/String;)V
    .locals 2

    .line 72631
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ca;->A00:Lcom/facebook/ads/redexgen/X/LN;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/LN;->A05(Ljava/lang/String;)V

    .line 72632
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ca;->A00:Lcom/facebook/ads/redexgen/X/LN;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LN;->A03()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ca;->A00:Lcom/facebook/ads/redexgen/X/LN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LQ;->A09(Lcom/facebook/ads/redexgen/X/LN;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72633
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ca;->A01:Lcom/facebook/ads/redexgen/X/LO;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ca;->A00:Lcom/facebook/ads/redexgen/X/LN;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LN;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/LO;->ACZ(Ljava/lang/String;)V

    .line 72634
    :cond_0
    return-void
.end method

.method public final flush()V
    .locals 2

    .line 72635
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ca;->A00:Lcom/facebook/ads/redexgen/X/LN;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LN;->A04()V

    .line 72636
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ca;->A00:Lcom/facebook/ads/redexgen/X/LN;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LN;->A03()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 72637
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ca;->A00:Lcom/facebook/ads/redexgen/X/LN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LQ;->A09(Lcom/facebook/ads/redexgen/X/LN;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72638
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ca;->A01:Lcom/facebook/ads/redexgen/X/LO;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ca;->A00:Lcom/facebook/ads/redexgen/X/LN;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LN;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/LO;->ACZ(Ljava/lang/String;)V

    .line 72639
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ca;->A00:Lcom/facebook/ads/redexgen/X/LN;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LN;->A04()V

    goto :goto_0

    .line 72640
    :cond_1
    return-void
.end method
