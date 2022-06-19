.class public final Lcom/facebook/ads/redexgen/X/82;
.super Lcom/facebook/ads/redexgen/X/S4;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Oz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Oz;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Oz;)V
    .locals 0

    .line 17043
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/82;->A00:Lcom/facebook/ads/redexgen/X/Oz;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/S4;-><init>()V

    return-void
.end method


# virtual methods
.method public final A9R()V
    .locals 0

    .line 17044
    return-void
.end method

.method public final AAA(ILjava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 17045
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/82;->A00:Lcom/facebook/ads/redexgen/X/Oz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oz;->A07(Lcom/facebook/ads/redexgen/X/Oz;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 17046
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/82;->A00:Lcom/facebook/ads/redexgen/X/Oz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oz;->A05(Lcom/facebook/ads/redexgen/X/Oz;)Lcom/facebook/ads/redexgen/X/Ox;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ox;->AAf()V

    .line 17047
    return-void
.end method

.method public final AAK()V
    .locals 3

    .line 17048
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/82;->A00:Lcom/facebook/ads/redexgen/X/Oz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oz;->A07(Lcom/facebook/ads/redexgen/X/Oz;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/82;->A00:Lcom/facebook/ads/redexgen/X/Oz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oz;->A08(Lcom/facebook/ads/redexgen/X/Oz;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17049
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/82;->A00:Lcom/facebook/ads/redexgen/X/Oz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oz;->A05(Lcom/facebook/ads/redexgen/X/Oz;)Lcom/facebook/ads/redexgen/X/Ox;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ox;->AAK()V

    .line 17050
    :cond_0
    return-void
.end method

.method public final ACA()V
    .locals 1

    .line 17051
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/82;->A00:Lcom/facebook/ads/redexgen/X/Oz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oz;->A05(Lcom/facebook/ads/redexgen/X/Oz;)Lcom/facebook/ads/redexgen/X/Ox;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ox;->ACA()V

    .line 17052
    return-void
.end method
