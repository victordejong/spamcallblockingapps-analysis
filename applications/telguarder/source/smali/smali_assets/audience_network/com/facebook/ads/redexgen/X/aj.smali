.class public final Lcom/facebook/ads/redexgen/X/aj;
.super Lcom/facebook/ads/redexgen/X/4A;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/El;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecyclerViewDataObserver"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/El;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/El;)V
    .locals 0

    .line 67628
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aj;->A00:Lcom/facebook/ads/redexgen/X/El;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4A;-><init>()V

    .line 67629
    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 2

    .line 67630
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aj;->A00:Lcom/facebook/ads/redexgen/X/El;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/El;->A1q(Ljava/lang/String;)V

    .line 67631
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aj;->A00:Lcom/facebook/ads/redexgen/X/El;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/El;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0D:Z

    .line 67632
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aj;->A00:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->A1R()V

    .line 67633
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aj;->A00:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A00:Lcom/facebook/ads/redexgen/X/av;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/av;->A0K()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67634
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aj;->A00:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->requestLayout()V

    .line 67635
    :cond_0
    return-void
.end method
