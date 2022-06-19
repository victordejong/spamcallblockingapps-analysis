.class public final Lcom/facebook/ads/redexgen/X/82;
.super Lcom/facebook/ads/redexgen/X/aG;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/P4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/P4;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/P4;)V
    .locals 0

    .line 16940
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/82;->A00:Lcom/facebook/ads/redexgen/X/P4;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aG;-><init>()V

    return-void
.end method


# virtual methods
.method public final A9R()V
    .locals 0

    .line 16941
    return-void
.end method

.method public final AAB(ILjava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 16942
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/82;->A00:Lcom/facebook/ads/redexgen/X/P4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/P4;->A07(Lcom/facebook/ads/redexgen/X/P4;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 16943
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/82;->A00:Lcom/facebook/ads/redexgen/X/P4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/P4;->A05(Lcom/facebook/ads/redexgen/X/P4;)Lcom/facebook/ads/redexgen/X/P2;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/P2;->AAf()V

    .line 16944
    return-void
.end method

.method public final AAL()V
    .locals 3

    .line 16945
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/82;->A00:Lcom/facebook/ads/redexgen/X/P4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/P4;->A07(Lcom/facebook/ads/redexgen/X/P4;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/82;->A00:Lcom/facebook/ads/redexgen/X/P4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/P4;->A08(Lcom/facebook/ads/redexgen/X/P4;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16946
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/82;->A00:Lcom/facebook/ads/redexgen/X/P4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/P4;->A05(Lcom/facebook/ads/redexgen/X/P4;)Lcom/facebook/ads/redexgen/X/P2;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/P2;->AAL()V

    .line 16947
    :cond_0
    return-void
.end method

.method public final ACA()V
    .locals 1

    .line 16948
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/82;->A00:Lcom/facebook/ads/redexgen/X/P4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/P4;->A05(Lcom/facebook/ads/redexgen/X/P4;)Lcom/facebook/ads/redexgen/X/P2;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/P2;->ACA()V

    .line 16949
    return-void
.end method
