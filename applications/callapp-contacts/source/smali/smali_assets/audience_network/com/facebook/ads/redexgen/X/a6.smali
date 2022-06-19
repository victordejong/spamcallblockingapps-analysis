.class public final Lcom/facebook/ads/redexgen/X/a6;
.super Lcom/facebook/ads/redexgen/X/Kb;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Nm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Nm;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Nm;)V
    .locals 0

    .line 66864
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/a6;->A00:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kb;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .line 66865
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a6;->A00:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66866
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/a6;->A00:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Nm;->A01(Lcom/facebook/ads/redexgen/X/Nm;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Nm;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 66867
    return-void

    .line 66868
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/a6;->A00:Lcom/facebook/ads/redexgen/X/Nm;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nm;->setPressed(Z)V

    .line 66869
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/a6;->A00:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Nm;->A02(Lcom/facebook/ads/redexgen/X/Nm;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v0, 0xfa

    invoke-virtual {v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Nm;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 66870
    return-void
.end method
