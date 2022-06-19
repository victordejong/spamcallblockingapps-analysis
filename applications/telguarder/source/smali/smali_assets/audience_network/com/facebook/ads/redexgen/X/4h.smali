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

    .line 12121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12122
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4h;->A01:Lcom/facebook/ads/redexgen/X/4f;

    .line 12123
    new-instance v0, Lcom/facebook/ads/redexgen/X/4e;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4e;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A00:Lcom/facebook/ads/redexgen/X/4e;

    .line 12124
    return-void
.end method


# virtual methods
.method public final A00(IIII)Landroid/view/View;
    .locals 8

    .line 12125
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A01:Lcom/facebook/ads/redexgen/X/4f;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/4f;->A6u()I

    move-result v3

    .line 12126
    .local p0, "start":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A01:Lcom/facebook/ads/redexgen/X/4f;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/4f;->A6t()I

    move-result v2

    .line 12127
    .local p1, "end":I
    if-le p2, p1, :cond_2

    const/4 v7, 0x1

    .line 12128
    .local p2, "next":I
    :goto_0
    const/4 v6, 0x0

    .line 12129
    .local p3, "acceptableMatch":Landroid/view/View;
    .local p4, "i":I
    :goto_1
    if-eq p1, p2, :cond_3

    .line 12130
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A01:Lcom/facebook/ads/redexgen/X/4f;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/4f;->A5r(I)Landroid/view/View;

    move-result-object v1

    .line 12131
    .local v0, "child":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A01:Lcom/facebook/ads/redexgen/X/4f;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/4f;->A5u(Landroid/view/View;)I

    move-result v5

    .line 12132
    .local v3, "childStart":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A01:Lcom/facebook/ads/redexgen/X/4f;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/4f;->A5t(Landroid/view/View;)I

    move-result v4

    .line 12133
    .local v0, "childEnd":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A00:Lcom/facebook/ads/redexgen/X/4e;

    invoke-virtual {v0, v3, v2, v5, v4}, Lcom/facebook/ads/redexgen/X/4e;->A04(IIII)V

    .line 12134
    if-eqz p3, :cond_0

    .line 12135
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A00:Lcom/facebook/ads/redexgen/X/4e;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4e;->A02()V

    .line 12136
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A00:Lcom/facebook/ads/redexgen/X/4e;

    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/4e;->A03(I)V

    .line 12137
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A00:Lcom/facebook/ads/redexgen/X/4e;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4e;->A05()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12138
    return-object v1

    .line 12139
    :cond_0
    if-eqz p4, :cond_1

    .line 12140
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A00:Lcom/facebook/ads/redexgen/X/4e;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4e;->A02()V

    .line 12141
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A00:Lcom/facebook/ads/redexgen/X/4e;

    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/4e;->A03(I)V

    .line 12142
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A00:Lcom/facebook/ads/redexgen/X/4e;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4e;->A05()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12143
    move-object v6, v1

    .line 12144
    .end local v0    # "childEnd":I
    .end local v3    # "childStart":I
    .end local v0
    :cond_1
    add-int/2addr p1, v7

    goto :goto_1

    .line 12145
    :cond_2
    const/4 v7, -0x1

    goto :goto_0

    .line 12146
    .end local p4    # "i":I
    :cond_3
    return-object v6
.end method
