.class public final Lcom/facebook/ads/redexgen/X/4h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/4f;,
        Lcom/facebook/ads/redexgen/X/4e;,
        Lcom/facebook/ads/internal/androidx/support/v7/widget/ViewBoundsCheck$ViewBounds;
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/4e;

.field public final A01:Lcom/facebook/ads/redexgen/X/4f;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4f;)V
    .locals 1

    .line 12015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12016
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4h;->A01:Lcom/facebook/ads/redexgen/X/4f;

    .line 12017
    new-instance v0, Lcom/facebook/ads/redexgen/X/4e;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4e;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A00:Lcom/facebook/ads/redexgen/X/4e;

    .line 12018
    return-void
.end method


# virtual methods
.method public final A00(IIII)Landroid/view/View;
    .locals 8

    .line 12019
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A01:Lcom/facebook/ads/redexgen/X/4f;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/4f;->A6u()I

    move-result v3

    .line 12020
    .local p0, "start":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A01:Lcom/facebook/ads/redexgen/X/4f;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/4f;->A6t()I

    move-result v2

    .line 12021
    .local p1, "end":I
    if-le p2, p1, :cond_2

    const/4 v7, 0x1

    .line 12022
    .local p2, "next":I
    :goto_0
    const/4 v6, 0x0

    .line 12023
    .local p3, "acceptableMatch":Landroid/view/View;
    .local p4, "i":I
    :goto_1
    if-eq p1, p2, :cond_3

    .line 12024
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A01:Lcom/facebook/ads/redexgen/X/4f;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/4f;->A5r(I)Landroid/view/View;

    move-result-object v1

    .line 12025
    .local v0, "child":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A01:Lcom/facebook/ads/redexgen/X/4f;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/4f;->A5u(Landroid/view/View;)I

    move-result v5

    .line 12026
    .local v3, "childStart":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A01:Lcom/facebook/ads/redexgen/X/4f;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/4f;->A5t(Landroid/view/View;)I

    move-result v4

    .line 12027
    .local v0, "childEnd":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A00:Lcom/facebook/ads/redexgen/X/4e;

    invoke-virtual {v0, v3, v2, v5, v4}, Lcom/facebook/ads/redexgen/X/4e;->A04(IIII)V

    .line 12028
    if-eqz p3, :cond_0

    .line 12029
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A00:Lcom/facebook/ads/redexgen/X/4e;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4e;->A02()V

    .line 12030
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A00:Lcom/facebook/ads/redexgen/X/4e;

    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/4e;->A03(I)V

    .line 12031
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A00:Lcom/facebook/ads/redexgen/X/4e;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4e;->A05()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12032
    return-object v1

    .line 12033
    :cond_0
    if-eqz p4, :cond_1

    .line 12034
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A00:Lcom/facebook/ads/redexgen/X/4e;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4e;->A02()V

    .line 12035
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A00:Lcom/facebook/ads/redexgen/X/4e;

    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/4e;->A03(I)V

    .line 12036
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A00:Lcom/facebook/ads/redexgen/X/4e;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4e;->A05()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12037
    move-object v6, v1

    .line 12038
    .end local v0    # "childEnd":I
    .end local v3    # "childStart":I
    .end local v0
    :cond_1
    add-int/2addr p1, v7

    goto :goto_1

    .line 12039
    :cond_2
    const/4 v7, -0x1

    goto :goto_0

    .line 12040
    .end local p4    # "i":I
    :cond_3
    return-object v6
.end method
