.class public final Lcom/facebook/ads/redexgen/X/3U;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/3W;->A00(Lcom/facebook/ads/redexgen/X/3V;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/3V;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/3V;)V
    .locals 0

    .line 8960
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3U;->A00:Lcom/facebook/ads/redexgen/X/3V;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .line 8961
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3U;->A00:Lcom/facebook/ads/redexgen/X/3V;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/3V;->A4A(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

.method public final findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .line 8962
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3U;->A00:Lcom/facebook/ads/redexgen/X/3V;

    .line 8963
    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/3V;->A5I(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 8964
    return-object v0
.end method

.method public final findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .line 8965
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3U;->A00:Lcom/facebook/ads/redexgen/X/3V;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/3V;->A5J(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

.method public final performAction(IILandroid/os/Bundle;)Z
    .locals 1

    .line 8966
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3U;->A00:Lcom/facebook/ads/redexgen/X/3V;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/3V;->ACO(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
