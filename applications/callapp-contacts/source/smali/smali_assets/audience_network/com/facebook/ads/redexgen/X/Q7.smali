.class public final Lcom/facebook/ads/redexgen/X/Q7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/HO;->setFullScreen(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/HO;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/HO;)V
    .locals 0

    .line 48785
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Q7;->A00:Lcom/facebook/ads/redexgen/X/HO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 48786
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q7;->A00:Lcom/facebook/ads/redexgen/X/HO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HO;->A0B(Lcom/facebook/ads/redexgen/X/HO;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 48787
    return v1

    .line 48788
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q7;->A00:Lcom/facebook/ads/redexgen/X/HO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HO;->A01(Lcom/facebook/ads/redexgen/X/HO;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 48789
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q7;->A00:Lcom/facebook/ads/redexgen/X/HO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HO;->A01(Lcom/facebook/ads/redexgen/X/HO;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48790
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q7;->A00:Lcom/facebook/ads/redexgen/X/HO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HO;->A01(Lcom/facebook/ads/redexgen/X/HO;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 48791
    :cond_1
    :goto_0
    return v1

    .line 48792
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q7;->A00:Lcom/facebook/ads/redexgen/X/HO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HO;->A01(Lcom/facebook/ads/redexgen/X/HO;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method
