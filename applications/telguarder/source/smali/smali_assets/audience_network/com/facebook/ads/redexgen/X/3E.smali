.class public Lcom/facebook/ads/redexgen/X/3E;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/3F;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewParentCompatBaseImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A03(Landroid/view/ViewParent;Landroid/view/View;)V
    .locals 1

    .line 8183
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/2i;

    if-eqz v0, :cond_0

    .line 8184
    const/4 v0, 0x0

    throw v0

    .line 8185
    :cond_0
    return-void
.end method

.method public A04(Landroid/view/ViewParent;Landroid/view/View;IIII)V
    .locals 1

    .line 8186
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/2i;

    if-eqz v0, :cond_0

    .line 8187
    const/4 v0, 0x0

    throw v0

    .line 8188
    :cond_0
    return-void
.end method

.method public A05(Landroid/view/ViewParent;Landroid/view/View;II[I)V
    .locals 1

    .line 8189
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/2i;

    if-eqz v0, :cond_0

    .line 8190
    const/4 v0, 0x0

    throw v0

    .line 8191
    :cond_0
    return-void
.end method

.method public A06(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    .line 8192
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/2i;

    if-eqz v0, :cond_0

    .line 8193
    const/4 v0, 0x0

    throw v0

    .line 8194
    :cond_0
    return-void
.end method

.method public A07(Landroid/view/ViewParent;Landroid/view/View;FF)Z
    .locals 1

    .line 8195
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/2i;

    if-eqz v0, :cond_0

    .line 8196
    check-cast p1, Lcom/facebook/ads/redexgen/X/2i;

    invoke-interface {p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/2i;->onNestedPreFling(Landroid/view/View;FF)Z

    move-result v0

    return v0

    .line 8197
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public A08(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
    .locals 1

    .line 8198
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/2i;

    if-eqz v0, :cond_0

    .line 8199
    check-cast p1, Lcom/facebook/ads/redexgen/X/2i;

    invoke-interface {p1, p2, p3, p4, p5}, Lcom/facebook/ads/redexgen/X/2i;->onNestedFling(Landroid/view/View;FFZ)Z

    move-result v0

    return v0

    .line 8200
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public A09(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    .line 8201
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/2i;

    if-eqz v0, :cond_0

    .line 8202
    check-cast p1, Lcom/facebook/ads/redexgen/X/2i;

    invoke-interface {p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/2i;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    return v0

    .line 8203
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
