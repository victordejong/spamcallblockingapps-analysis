.class public final Lcom/facebook/ads/redexgen/X/2a;
.super Landroid/view/View$AccessibilityDelegate;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/b9;->A00(Lcom/facebook/ads/redexgen/X/2d;)Landroid/view/View$AccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/b9;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/2d;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/b9;Lcom/facebook/ads/redexgen/X/2d;)V
    .locals 0

    .line 5770
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2a;->A00:Lcom/facebook/ads/redexgen/X/b9;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/2a;->A01:Lcom/facebook/ads/redexgen/X/2d;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 5771
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2a;->A01:Lcom/facebook/ads/redexgen/X/2d;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2d;->A05(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .line 5772
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2a;->A01:Lcom/facebook/ads/redexgen/X/2d;

    .line 5773
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2d;->A01(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/3Q;

    move-result-object v0

    .line 5774
    .local p0, "provider":Lcom/facebook/ads/redexgen/X/3Q;
    if-eqz v0, :cond_0

    .line 5775
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3Q;->A02()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 5776
    :goto_0
    return-object v0

    .line 5777
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 5778
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2a;->A01:Lcom/facebook/ads/redexgen/X/2d;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2d;->A07(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 5779
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 5780
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2a;->A01:Lcom/facebook/ads/redexgen/X/2d;

    .line 5781
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/3O;->A01(Landroid/view/accessibility/AccessibilityNodeInfo;)Lcom/facebook/ads/redexgen/X/3O;

    move-result-object v0

    .line 5782
    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/2d;->A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3O;)V

    .line 5783
    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 5784
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2a;->A01:Lcom/facebook/ads/redexgen/X/2d;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2d;->A03(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 5785
    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 5786
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2a;->A01:Lcom/facebook/ads/redexgen/X/2d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/2d;->A06(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 5787
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2a;->A01:Lcom/facebook/ads/redexgen/X/2d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/2d;->A09(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public final sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    .line 5788
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2a;->A01:Lcom/facebook/ads/redexgen/X/2d;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2d;->A02(Landroid/view/View;I)V

    .line 5789
    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 5790
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2a;->A01:Lcom/facebook/ads/redexgen/X/2d;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2d;->A04(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 5791
    return-void
.end method
