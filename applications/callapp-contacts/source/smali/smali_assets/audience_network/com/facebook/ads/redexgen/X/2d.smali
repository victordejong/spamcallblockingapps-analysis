.class public Lcom/facebook/ads/redexgen/X/2d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Sr;,
        Lcom/facebook/ads/redexgen/X/2c;
    }
.end annotation


# static fields
.field public static final A01:Landroid/view/View$AccessibilityDelegate;

.field public static final A02:Lcom/facebook/ads/redexgen/X/2c;


# instance fields
.field public final A00:Landroid/view/View$AccessibilityDelegate;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 5700
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt v1, v0, :cond_0

    .line 5701
    new-instance v0, Lcom/facebook/ads/redexgen/X/Sr;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Sr;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/2d;->A02:Lcom/facebook/ads/redexgen/X/2c;

    .line 5702
    :goto_0
    new-instance v0, Landroid/view/View$AccessibilityDelegate;

    invoke-direct {v0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/2d;->A01:Landroid/view/View$AccessibilityDelegate;

    .line 5703
    return-void

    .line 5704
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/2c;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2c;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/2d;->A02:Lcom/facebook/ads/redexgen/X/2c;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .line 5705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5706
    sget-object v0, Lcom/facebook/ads/redexgen/X/2d;->A02:Lcom/facebook/ads/redexgen/X/2c;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/2c;->A00(Lcom/facebook/ads/redexgen/X/2d;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2d;->A00:Landroid/view/View$AccessibilityDelegate;

    .line 5707
    return-void
.end method


# virtual methods
.method public final A00()Landroid/view/View$AccessibilityDelegate;
    .locals 1

    .line 5708
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2d;->A00:Landroid/view/View$AccessibilityDelegate;

    return-object v0
.end method

.method public final A01(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/3Q;
    .locals 2

    .line 5709
    sget-object v1, Lcom/facebook/ads/redexgen/X/2d;->A02:Lcom/facebook/ads/redexgen/X/2c;

    sget-object v0, Lcom/facebook/ads/redexgen/X/2d;->A01:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/2c;->A01(Landroid/view/View$AccessibilityDelegate;Landroid/view/View;)Lcom/facebook/ads/redexgen/X/3Q;

    move-result-object v0

    return-object v0
.end method

.method public final A02(Landroid/view/View;I)V
    .locals 1

    .line 5710
    sget-object v0, Lcom/facebook/ads/redexgen/X/2d;->A01:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 5711
    return-void
.end method

.method public final A03(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 5712
    sget-object v0, Lcom/facebook/ads/redexgen/X/2d;->A01:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 5713
    return-void
.end method

.method public final A04(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 5714
    sget-object v0, Lcom/facebook/ads/redexgen/X/2d;->A01:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 5715
    return-void
.end method

.method public final A05(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 5716
    sget-object v0, Lcom/facebook/ads/redexgen/X/2d;->A01:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final A06(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 5717
    sget-object v0, Lcom/facebook/ads/redexgen/X/2d;->A01:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public A07(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 5718
    sget-object v0, Lcom/facebook/ads/redexgen/X/2d;->A01:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 5719
    return-void
.end method

.method public A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3O;)V
    .locals 2

    .line 5720
    sget-object v1, Lcom/facebook/ads/redexgen/X/2d;->A01:Landroid/view/View$AccessibilityDelegate;

    .line 5721
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/3O;->A0N()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 5722
    invoke-virtual {v1, p1, v0}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 5723
    return-void
.end method

.method public A09(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    .line 5724
    sget-object v1, Lcom/facebook/ads/redexgen/X/2d;->A02:Lcom/facebook/ads/redexgen/X/2c;

    sget-object v0, Lcom/facebook/ads/redexgen/X/2d;->A01:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/2c;->A02(Landroid/view/View$AccessibilityDelegate;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
