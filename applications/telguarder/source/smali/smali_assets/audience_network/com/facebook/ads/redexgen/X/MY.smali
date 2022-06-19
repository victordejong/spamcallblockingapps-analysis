.class public final Lcom/facebook/ads/redexgen/X/MY;
.super Landroid/view/View;
.source ""


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/MX;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/MX;)V
    .locals 2

    .line 44086
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 44087
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/MY;->A00:Lcom/facebook/ads/redexgen/X/MX;

    .line 44088
    const/4 v1, 0x0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/MY;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44089
    return-void
.end method


# virtual methods
.method public final onWindowVisibilityChanged(I)V
    .locals 1

    .line 44090
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MY;->A00:Lcom/facebook/ads/redexgen/X/MX;

    .line 44091
    return-void
.end method
