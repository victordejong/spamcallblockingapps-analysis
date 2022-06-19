.class public final Lcom/facebook/ads/redexgen/X/7m;
.super Lcom/facebook/ads/redexgen/X/K3;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Jj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Jj;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Jj;)V
    .locals 0

    .line 16798
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7m;->A00:Lcom/facebook/ads/redexgen/X/Jj;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K3;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/K4;)V
    .locals 4

    .line 16799
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7m;->A00:Lcom/facebook/ads/redexgen/X/Jj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jj;->A02(Lcom/facebook/ads/redexgen/X/Jj;)Lcom/facebook/ads/redexgen/X/PD;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7m;->A00:Lcom/facebook/ads/redexgen/X/Jj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jj;->A08(Lcom/facebook/ads/redexgen/X/Jj;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16800
    :cond_0
    return-void

    .line 16801
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/K4;->A00()Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 16802
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7m;->A00:Lcom/facebook/ads/redexgen/X/Jj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jj;->A01(Lcom/facebook/ads/redexgen/X/Jj;)Landroid/os/Handler;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 16803
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7m;->A00:Lcom/facebook/ads/redexgen/X/Jj;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pk;->A05:Lcom/facebook/ads/redexgen/X/Pk;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Jj;->A0B(Lcom/facebook/ads/redexgen/X/Jj;Lcom/facebook/ads/redexgen/X/Pk;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16804
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7m;->A00:Lcom/facebook/ads/redexgen/X/Jj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jj;->A05(Lcom/facebook/ads/redexgen/X/Jj;)V

    .line 16805
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7m;->A00:Lcom/facebook/ads/redexgen/X/Jj;

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jj;->A06(Lcom/facebook/ads/redexgen/X/Jj;ZZ)V

    .line 16806
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7m;->A00:Lcom/facebook/ads/redexgen/X/Jj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jj;->A09(Lcom/facebook/ads/redexgen/X/Jj;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16807
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7m;->A00:Lcom/facebook/ads/redexgen/X/Jj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jj;->A01(Lcom/facebook/ads/redexgen/X/Jj;)Landroid/os/Handler;

    move-result-object v3

    new-instance v2, Lcom/facebook/ads/redexgen/X/Js;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/Js;-><init>(Lcom/facebook/ads/redexgen/X/7m;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7m;->A00:Lcom/facebook/ads/redexgen/X/Jj;

    .line 16808
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jj;->A00(Lcom/facebook/ads/redexgen/X/Jj;)I

    move-result v0

    int-to-long v0, v0

    .line 16809
    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16810
    :cond_3
    return-void
.end method


# virtual methods
.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 16811
    check-cast p1, Lcom/facebook/ads/redexgen/X/K4;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7m;->A00(Lcom/facebook/ads/redexgen/X/K4;)V

    return-void
.end method
