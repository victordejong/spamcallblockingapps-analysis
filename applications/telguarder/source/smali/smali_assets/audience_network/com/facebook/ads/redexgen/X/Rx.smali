.class public final Lcom/facebook/ads/redexgen/X/Rx;
.super Lcom/facebook/ads/redexgen/X/Kd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Nh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Nh;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Nh;)V
    .locals 0

    .line 51024
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rx;->A00:Lcom/facebook/ads/redexgen/X/Nh;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .line 51025
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rx;->A00:Lcom/facebook/ads/redexgen/X/Nh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nh;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51026
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Rx;->A00:Lcom/facebook/ads/redexgen/X/Nh;

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Nh;->A01(Lcom/facebook/ads/redexgen/X/Nh;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Nh;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 51027
    return-void

    .line 51028
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rx;->A00:Lcom/facebook/ads/redexgen/X/Nh;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nh;->setPressed(Z)V

    .line 51029
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rx;->A00:Lcom/facebook/ads/redexgen/X/Nh;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Nh;->A02(Lcom/facebook/ads/redexgen/X/Nh;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v0, 0xfa

    invoke-virtual {v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Nh;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 51030
    return-void
.end method
