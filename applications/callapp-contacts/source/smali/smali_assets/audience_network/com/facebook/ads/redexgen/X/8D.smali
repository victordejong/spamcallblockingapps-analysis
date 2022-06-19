.class public Lcom/facebook/ads/redexgen/X/8D;
.super Landroid/content/ContextWrapper;
.source ""


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/8F;

.field public final A01:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8F;)V
    .locals 1

    .line 17584
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 17585
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8D;->A01:Ljava/util/concurrent/atomic/AtomicReference;

    .line 17586
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/8D;->A00:Lcom/facebook/ads/redexgen/X/8F;

    .line 17587
    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/XK;
    .locals 2

    .line 17588
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8C;->A00()Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v0

    .line 17589
    .local p0, "sdkContext":Lcom/facebook/ads/redexgen/X/XK;
    if-nez v0, :cond_0

    .line 17590
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8D;->A00:Lcom/facebook/ads/redexgen/X/8F;

    new-instance v0, Lcom/facebook/ads/redexgen/X/XK;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/XK;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8F;)V

    .line 17591
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8C;->A01(Lcom/facebook/ads/redexgen/X/XK;)V

    .line 17592
    :cond_0
    return-object v0
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/8E;
    .locals 1

    .line 17593
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8D;->A00:Lcom/facebook/ads/redexgen/X/8F;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/8F;->A5j(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/8E;

    move-result-object v0

    return-object v0
.end method

.method public final A02()Lcom/facebook/ads/redexgen/X/8G;
    .locals 1

    .line 17594
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8D;->A00:Lcom/facebook/ads/redexgen/X/8F;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/8F;->A6M(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/8G;

    move-result-object v0

    return-object v0
.end method

.method public final A03()Lcom/facebook/ads/redexgen/X/8H;
    .locals 1

    .line 17595
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8D;->A00:Lcom/facebook/ads/redexgen/X/8F;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/8F;->A76(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/8H;

    move-result-object v0

    return-object v0
.end method

.method public final A04()Lcom/facebook/ads/redexgen/X/8d;
    .locals 1

    .line 17596
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8D;->A00:Lcom/facebook/ads/redexgen/X/8F;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/8F;->A6D(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v0

    return-object v0
.end method

.method public final A05()Lcom/facebook/ads/redexgen/X/93;
    .locals 1

    .line 17597
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8D;->A00:Lcom/facebook/ads/redexgen/X/8F;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8F;->A7C()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    return-object v0
.end method

.method public final A06()Lcom/facebook/ads/redexgen/X/JC;
    .locals 2

    .line 17598
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8D;->A00:Lcom/facebook/ads/redexgen/X/8F;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/8F;->A5V(Lcom/facebook/ads/redexgen/X/XK;)Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v0

    return-object v0
.end method

.method public final A07()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 17599
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8D;->A01:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final A08(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 17600
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8D;->A01:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 17601
    return-void
.end method
