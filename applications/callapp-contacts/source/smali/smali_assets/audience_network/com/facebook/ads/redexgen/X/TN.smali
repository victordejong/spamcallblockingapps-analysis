.class public final Lcom/facebook/ads/redexgen/X/TN;
.super Lcom/facebook/ads/redexgen/X/Kb;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/8s;->A0R()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/8s;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8s;)V
    .locals 0

    .line 54723
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TN;->A00:Lcom/facebook/ads/redexgen/X/8s;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kb;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 54724
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TN;->A00:Lcom/facebook/ads/redexgen/X/8s;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8s;->A02(Lcom/facebook/ads/redexgen/X/8s;)Lcom/facebook/ads/redexgen/X/Nx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54725
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TN;->A00:Lcom/facebook/ads/redexgen/X/8s;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8s;->A02(Lcom/facebook/ads/redexgen/X/8s;)Lcom/facebook/ads/redexgen/X/Nx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nx;->A0X()V

    .line 54726
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TN;->A00:Lcom/facebook/ads/redexgen/X/8s;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/XM;->A07:Lcom/facebook/ads/redexgen/X/M4;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TN;->A00:Lcom/facebook/ads/redexgen/X/8s;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8s;->A00(Lcom/facebook/ads/redexgen/X/8s;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M4;->setToolbarActionMode(I)V

    .line 54727
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TN;->A00:Lcom/facebook/ads/redexgen/X/8s;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8s;->A03(Lcom/facebook/ads/redexgen/X/8s;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 54728
    return-void
.end method
