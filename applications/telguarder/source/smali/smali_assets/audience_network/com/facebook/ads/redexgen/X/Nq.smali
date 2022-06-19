.class public final Lcom/facebook/ads/redexgen/X/Nq;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A00:I

.field public static final A01:I

.field public static final A02:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 45940
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Lj;->A00()I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Nq;->A00:I

    .line 45941
    const/high16 v1, -0x1000000

    const/16 v0, 0x73

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2L;->A01(II)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Nq;->A02:I

    .line 45942
    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2L;->A01(II)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Nq;->A01:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45943
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Wm;Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 3

    .line 45944
    new-instance v0, Lcom/facebook/ads/redexgen/X/Rz;

    invoke-direct {v0, p1, p0}, Lcom/facebook/ads/redexgen/X/Rz;-><init>(Landroid/view/ViewGroup;Lcom/facebook/ads/redexgen/X/Wm;)V

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/Rz;->A08(Ljava/lang/String;)V

    .line 45945
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 45946
    .local p0, "backgroundOverlay":Landroid/view/View;
    sget v0, Lcom/facebook/ads/redexgen/X/Nq;->A00:I

    invoke-virtual {v2, v0}, Landroid/view/View;->setId(I)V

    .line 45947
    const/4 v1, -0x1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45948
    invoke-static {v2, p0}, Lcom/facebook/ads/redexgen/X/Lj;->A0T(Landroid/view/View;Landroid/content/Context;)V

    .line 45949
    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 45950
    return-void
.end method
