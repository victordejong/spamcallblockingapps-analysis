.class public final Lcom/facebook/ads/redexgen/X/ag;
.super Lcom/facebook/ads/redexgen/X/2d;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/ah;
    }
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/2d;

.field public final A01:Lcom/facebook/ads/redexgen/X/El;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/El;)V
    .locals 1

    .line 67588
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2d;-><init>()V

    .line 67589
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ag;->A01:Lcom/facebook/ads/redexgen/X/El;

    .line 67590
    new-instance v0, Lcom/facebook/ads/redexgen/X/ah;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ah;-><init>(Lcom/facebook/ads/redexgen/X/ag;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ag;->A00:Lcom/facebook/ads/redexgen/X/2d;

    .line 67591
    return-void
.end method


# virtual methods
.method public final A07(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 67592
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/2d;->A07(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 67593
    const-class v0, Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 67594
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/El;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ag;->A0B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67595
    check-cast p1, Lcom/facebook/ads/redexgen/X/El;

    .line 67596
    .local p0, "rv":Lcom/facebook/ads/redexgen/X/El;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/El;->getLayoutManager()Lcom/facebook/ads/redexgen/X/4K;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67597
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/El;->getLayoutManager()Lcom/facebook/ads/redexgen/X/4K;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/4K;->A1y(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 67598
    .end local p0    # "rv":Lcom/facebook/ads/redexgen/X/El;
    :cond_0
    return-void
.end method

.method public final A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3O;)V
    .locals 1

    .line 67599
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/2d;->A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3O;)V

    .line 67600
    const-class v0, Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/3O;->A0P(Ljava/lang/CharSequence;)V

    .line 67601
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ag;->A0B()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ag;->A01:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->getLayoutManager()Lcom/facebook/ads/redexgen/X/4K;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67602
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ag;->A01:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->getLayoutManager()Lcom/facebook/ads/redexgen/X/4K;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/4K;->A1G(Lcom/facebook/ads/redexgen/X/3O;)V

    .line 67603
    :cond_0
    return-void
.end method

.method public final A09(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 67604
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/2d;->A09(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67605
    const/4 v0, 0x1

    return v0

    .line 67606
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ag;->A0B()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ag;->A01:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->getLayoutManager()Lcom/facebook/ads/redexgen/X/4K;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 67607
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ag;->A01:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->getLayoutManager()Lcom/facebook/ads/redexgen/X/4K;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/4K;->A1a(ILandroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 67608
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final A0A()Lcom/facebook/ads/redexgen/X/2d;
    .locals 1

    .line 67609
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ag;->A00:Lcom/facebook/ads/redexgen/X/2d;

    return-object v0
.end method

.method public final A0B()Z
    .locals 1

    .line 67610
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ag;->A01:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->A1u()Z

    move-result v0

    return v0
.end method
