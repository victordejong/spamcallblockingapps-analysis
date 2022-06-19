.class public final Lcom/facebook/ads/redexgen/X/Zx;
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

    .line 66400
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zx;->A00:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kb;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 3

    .line 66401
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zx;->A00:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->clearAnimation()V

    .line 66402
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zx;->A00:Lcom/facebook/ads/redexgen/X/Nm;

    .line 66403
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A00(Lcom/facebook/ads/redexgen/X/Nm;)F

    move-result v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zx;->A00:Lcom/facebook/ads/redexgen/X/Nm;

    .line 66404
    const/16 v0, 0x3e8

    invoke-static {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Lh;->A0H(IFLandroid/view/View;)V

    .line 66405
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Zx;->A00:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Nm;->A01(Lcom/facebook/ads/redexgen/X/Nm;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Nm;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 66406
    return-void
.end method
