.class public final Lcom/facebook/ads/redexgen/X/7d;
.super Lcom/facebook/ads/redexgen/X/K3;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Ia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ia;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ia;)V
    .locals 0

    .line 16714
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7d;->A00:Lcom/facebook/ads/redexgen/X/Ia;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K3;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/K4;)V
    .locals 2

    .line 16715
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7d;->A00:Lcom/facebook/ads/redexgen/X/Ia;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ia;->A02(Lcom/facebook/ads/redexgen/X/Ia;)Lcom/facebook/ads/redexgen/X/PD;

    move-result-object v0

    if-nez v0, :cond_0

    .line 16716
    return-void

    .line 16717
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/K4;->A00()Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 16718
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7d;->A00:Lcom/facebook/ads/redexgen/X/Ia;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ia;->A00(Lcom/facebook/ads/redexgen/X/Ia;)Landroid/os/Handler;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 16719
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7d;->A00:Lcom/facebook/ads/redexgen/X/Ia;

    new-instance v0, Lcom/facebook/ads/redexgen/X/PZ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/PZ;-><init>(Lcom/facebook/ads/redexgen/X/7d;)V

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ia;->A0C(Lcom/facebook/ads/redexgen/X/Ia;Landroid/animation/AnimatorListenerAdapter;)V

    .line 16720
    :cond_1
    return-void
.end method


# virtual methods
.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 16721
    check-cast p1, Lcom/facebook/ads/redexgen/X/K4;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7d;->A00(Lcom/facebook/ads/redexgen/X/K4;)V

    return-void
.end method
