.class public final Lcom/facebook/ads/redexgen/X/Nv;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A00:I

.field public static final A01:I

.field public static final A02:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 45947
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Lh;->A00()I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Nv;->A00:I

    .line 45948
    const/high16 v1, -0x1000000

    const/16 v0, 0x73

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2L;->A01(II)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Nv;->A02:I

    .line 45949
    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2L;->A01(II)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Nv;->A01:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45950
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/XJ;Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 3

    .line 45951
    new-instance v0, Lcom/facebook/ads/redexgen/X/aA;

    invoke-direct {v0, p1, p0}, Lcom/facebook/ads/redexgen/X/aA;-><init>(Landroid/view/ViewGroup;Lcom/facebook/ads/redexgen/X/XJ;)V

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/aA;->A08(Ljava/lang/String;)V

    .line 45952
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 45953
    .local p0, "backgroundOverlay":Landroid/view/View;
    sget v0, Lcom/facebook/ads/redexgen/X/Nv;->A00:I

    invoke-virtual {v2, v0}, Landroid/view/View;->setId(I)V

    .line 45954
    const/4 v1, -0x1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45955
    invoke-static {v2, p0}, Lcom/facebook/ads/redexgen/X/Lh;->A0W(Landroid/view/View;Landroid/content/Context;)V

    .line 45956
    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 45957
    return-void
.end method
