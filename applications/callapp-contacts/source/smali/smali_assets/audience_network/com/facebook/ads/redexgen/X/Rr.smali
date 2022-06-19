.class public final Lcom/facebook/ads/redexgen/X/Rr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/1i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/FU;->A0B(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/FU;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Rw;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/FU;Lcom/facebook/ads/redexgen/X/Rw;)V
    .locals 0

    .line 51612
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rr;->A00:Lcom/facebook/ads/redexgen/X/FU;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Rr;->A01:Lcom/facebook/ads/redexgen/X/Rw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AB5(Lcom/facebook/ads/AdError;)V
    .locals 2

    .line 51613
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rr;->A00:Lcom/facebook/ads/redexgen/X/FU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FU;->A00(Lcom/facebook/ads/redexgen/X/FU;)Lcom/facebook/ads/redexgen/X/12;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rr;->A01:Lcom/facebook/ads/redexgen/X/Rw;

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/12;->ABY(Lcom/facebook/ads/redexgen/X/Rw;Lcom/facebook/ads/AdError;)V

    .line 51614
    return-void
.end method

.method public final AB6()V
    .locals 2

    .line 51615
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rr;->A00:Lcom/facebook/ads/redexgen/X/FU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FU;->A04(Lcom/facebook/ads/redexgen/X/FU;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 51616
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rr;->A00:Lcom/facebook/ads/redexgen/X/FU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FU;->A00(Lcom/facebook/ads/redexgen/X/FU;)Lcom/facebook/ads/redexgen/X/12;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rr;->A01:Lcom/facebook/ads/redexgen/X/Rw;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/12;->ABV(Lcom/facebook/ads/redexgen/X/Rw;)V

    .line 51617
    return-void
.end method
