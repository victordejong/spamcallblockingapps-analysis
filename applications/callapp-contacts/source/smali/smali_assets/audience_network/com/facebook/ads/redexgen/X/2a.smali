.class public final Lcom/facebook/ads/redexgen/X/2a;
.super Landroid/view/View$AccessibilityDelegate;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Sr;->A00(Lcom/facebook/ads/redexgen/X/2d;)Landroid/view/View$AccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Sr;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/2d;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2a;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Sr;Lcom/facebook/ads/redexgen/X/2d;)V
    .locals 0

    .line 5659
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2a;->A00:Lcom/facebook/ads/redexgen/X/Sr;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/2a;->A01:Lcom/facebook/ads/redexgen/X/2d;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "5TXwkxGOky4JO26BdMoLZorZ75Qh7TJ1"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "TGpCIVKfg9q9VkptB3w2PfFUtUXuMPxH"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "XWnogg3sW"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "LoblWG2nky8IldTW7marNA4rqywTihhk"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "za5KD6H2U"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Ka0OyPk3mlOgfUpq6xId3QQILfS23GTN"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "DN7QTk2L5QCC7wBdOwuQ1Nom6iZb"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2a;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 5660
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2a;->A01:Lcom/facebook/ads/redexgen/X/2d;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2d;->A05(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 4

    .line 5661
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2a;->A01:Lcom/facebook/ads/redexgen/X/2d;

    .line 5662
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2d;->A01(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/3Q;

    move-result-object v0

    .line 5663
    .local p0, "provider":Lcom/facebook/ads/redexgen/X/3Q;
    if-eqz v0, :cond_0

    .line 5664
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3Q;->A02()Ljava/lang/Object;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/2a;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/2a;->A02:[Ljava/lang/String;

    const-string v1, "uCvPJ7NUfrK1Xmg35VTgFJzpSrozRbu2"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 5665
    :goto_0
    return-object v3

    .line 5666
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 5667
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2a;->A01:Lcom/facebook/ads/redexgen/X/2d;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2d;->A07(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 5668
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 5669
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2a;->A01:Lcom/facebook/ads/redexgen/X/2d;

    .line 5670
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/3O;->A01(Landroid/view/accessibility/AccessibilityNodeInfo;)Lcom/facebook/ads/redexgen/X/3O;

    move-result-object v0

    .line 5671
    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/2d;->A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3O;)V

    .line 5672
    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 5673
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2a;->A01:Lcom/facebook/ads/redexgen/X/2d;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2d;->A03(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 5674
    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 5675
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2a;->A01:Lcom/facebook/ads/redexgen/X/2d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/2d;->A06(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 5676
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2a;->A01:Lcom/facebook/ads/redexgen/X/2d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/2d;->A09(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public final sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    .line 5677
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2a;->A01:Lcom/facebook/ads/redexgen/X/2d;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2d;->A02(Landroid/view/View;I)V

    .line 5678
    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 5679
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2a;->A01:Lcom/facebook/ads/redexgen/X/2d;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2d;->A04(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 5680
    return-void
.end method
