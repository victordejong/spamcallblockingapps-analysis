.class public final Lcom/facebook/ads/redexgen/X/Rq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/OQ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Fc;->A01(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Fc;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Fc;)V
    .locals 0

    .line 51608
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rq;->A00:Lcom/facebook/ads/redexgen/X/Fc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACB()V
    .locals 2

    .line 51609
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A00:Lcom/facebook/ads/redexgen/X/Fc;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Fc;->A00:Lcom/facebook/ads/redexgen/X/FU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FU;->A04(Lcom/facebook/ads/redexgen/X/FU;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 51610
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A00:Lcom/facebook/ads/redexgen/X/Fc;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Fc;->A00:Lcom/facebook/ads/redexgen/X/FU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FU;->A00(Lcom/facebook/ads/redexgen/X/FU;)Lcom/facebook/ads/redexgen/X/12;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A00:Lcom/facebook/ads/redexgen/X/Fc;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Fc;->A01:Lcom/facebook/ads/redexgen/X/Rw;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/12;->ABV(Lcom/facebook/ads/redexgen/X/Rw;)V

    .line 51611
    return-void
.end method
