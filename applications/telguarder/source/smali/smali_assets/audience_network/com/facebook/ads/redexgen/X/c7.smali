.class public final Lcom/facebook/ads/redexgen/X/c7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/1i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/F4;->A0B(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/F4;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/c2;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/F4;Lcom/facebook/ads/redexgen/X/c2;)V
    .locals 0

    .line 70695
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/c7;->A00:Lcom/facebook/ads/redexgen/X/F4;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/c7;->A01:Lcom/facebook/ads/redexgen/X/c2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AB5(Lcom/facebook/ads/AdError;)V
    .locals 2

    .line 70696
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c7;->A00:Lcom/facebook/ads/redexgen/X/F4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F4;->A00(Lcom/facebook/ads/redexgen/X/F4;)Lcom/facebook/ads/redexgen/X/12;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c7;->A01:Lcom/facebook/ads/redexgen/X/c2;

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/12;->ABY(Lcom/facebook/ads/redexgen/X/c2;Lcom/facebook/ads/AdError;)V

    .line 70697
    return-void
.end method

.method public final AB6()V
    .locals 2

    .line 70698
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c7;->A00:Lcom/facebook/ads/redexgen/X/F4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F4;->A04(Lcom/facebook/ads/redexgen/X/F4;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 70699
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c7;->A00:Lcom/facebook/ads/redexgen/X/F4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F4;->A00(Lcom/facebook/ads/redexgen/X/F4;)Lcom/facebook/ads/redexgen/X/12;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c7;->A01:Lcom/facebook/ads/redexgen/X/c2;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/12;->ABV(Lcom/facebook/ads/redexgen/X/c2;)V

    .line 70700
    return-void
.end method
