.class public final Lcom/facebook/ads/redexgen/X/TV;
.super Lcom/facebook/ads/redexgen/X/Kd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/TU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/TU;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/TU;)V
    .locals 0

    .line 54578
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TV;->A00:Lcom/facebook/ads/redexgen/X/TU;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 54579
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TV;->A00:Lcom/facebook/ads/redexgen/X/TU;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/TU;->A0B(Lcom/facebook/ads/redexgen/X/TU;Z)Z

    .line 54580
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TV;->A00:Lcom/facebook/ads/redexgen/X/TU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TU;->A04(Lcom/facebook/ads/redexgen/X/TU;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54581
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TV;->A00:Lcom/facebook/ads/redexgen/X/TU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TU;->A04(Lcom/facebook/ads/redexgen/X/TU;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TV;->A00:Lcom/facebook/ads/redexgen/X/TU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TU;->A02(Lcom/facebook/ads/redexgen/X/TU;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 54582
    :cond_0
    return-void
.end method
