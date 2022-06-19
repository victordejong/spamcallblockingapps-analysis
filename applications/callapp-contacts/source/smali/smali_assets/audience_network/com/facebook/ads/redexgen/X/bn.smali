.class public final Lcom/facebook/ads/redexgen/X/bn;
.super Lcom/facebook/ads/redexgen/X/Kb;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/bo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/bo;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/bo;)V
    .locals 0

    .line 70790
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bn;->A00:Lcom/facebook/ads/redexgen/X/bo;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kb;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 70791
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bn;->A00:Lcom/facebook/ads/redexgen/X/bo;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/bo;->A0A(Lcom/facebook/ads/redexgen/X/bo;Z)Z

    .line 70792
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bn;->A00:Lcom/facebook/ads/redexgen/X/bo;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bo;->A04(Lcom/facebook/ads/redexgen/X/bo;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70793
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bn;->A00:Lcom/facebook/ads/redexgen/X/bo;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bo;->A04(Lcom/facebook/ads/redexgen/X/bo;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bn;->A00:Lcom/facebook/ads/redexgen/X/bo;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bo;->A02(Lcom/facebook/ads/redexgen/X/bo;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 70794
    :cond_0
    return-void
.end method
