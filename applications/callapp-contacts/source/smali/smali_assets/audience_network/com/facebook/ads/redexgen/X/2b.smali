.class public final Lcom/facebook/ads/redexgen/X/2b;
.super Landroid/view/View$AccessibilityDelegate;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/2c;->A00(Lcom/facebook/ads/redexgen/X/2d;)Landroid/view/View$AccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/2c;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/2d;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/2c;Lcom/facebook/ads/redexgen/X/2d;)V
    .locals 0

    .line 5681
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2b;->A00:Lcom/facebook/ads/redexgen/X/2c;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/2b;->A01:Lcom/facebook/ads/redexgen/X/2d;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 5682
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2b;->A01:Lcom/facebook/ads/redexgen/X/2d;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2d;->A05(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 5683
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2b;->A01:Lcom/facebook/ads/redexgen/X/2d;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2d;->A07(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 5684
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 5685
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2b;->A01:Lcom/facebook/ads/redexgen/X/2d;

    .line 5686
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/3O;->A01(Landroid/view/accessibility/AccessibilityNodeInfo;)Lcom/facebook/ads/redexgen/X/3O;

    move-result-object v0

    .line 5687
    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/2d;->A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3O;)V

    .line 5688
    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 5689
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2b;->A01:Lcom/facebook/ads/redexgen/X/2d;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2d;->A03(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 5690
    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 5691
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2b;->A01:Lcom/facebook/ads/redexgen/X/2d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/2d;->A06(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    .line 5692
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2b;->A01:Lcom/facebook/ads/redexgen/X/2d;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2d;->A02(Landroid/view/View;I)V

    .line 5693
    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 5694
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2b;->A01:Lcom/facebook/ads/redexgen/X/2d;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2d;->A04(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 5695
    return-void
.end method
