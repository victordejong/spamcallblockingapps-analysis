.class public final Lcom/facebook/ads/redexgen/X/Sv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/2j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/3D;->A0E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final A00:Landroid/graphics/Rect;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/3D;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/3D;)V
    .locals 1

    .line 53240
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sv;->A01:Lcom/facebook/ads/redexgen/X/3D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53241
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sv;->A00:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final A9Q(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3G;)Lcom/facebook/ads/redexgen/X/3G;
    .locals 7

    .line 53242
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/2z;->A06(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3G;)Lcom/facebook/ads/redexgen/X/3G;

    move-result-object v4

    .line 53243
    .local p0, "applied":Lcom/facebook/ads/redexgen/X/3G;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/3G;->A08()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53244
    return-object v4

    .line 53245
    :cond_0
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Sv;->A00:Landroid/graphics/Rect;

    .line 53246
    .local p1, "res":Landroid/graphics/Rect;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/3G;->A04()I

    move-result v0

    iput v0, v5, Landroid/graphics/Rect;->left:I

    .line 53247
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/3G;->A06()I

    move-result v0

    iput v0, v5, Landroid/graphics/Rect;->top:I

    .line 53248
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/3G;->A05()I

    move-result v0

    iput v0, v5, Landroid/graphics/Rect;->right:I

    .line 53249
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/3G;->A03()I

    move-result v0

    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    .line 53250
    const/4 v3, 0x0

    .local p2, "i":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sv;->A01:Lcom/facebook/ads/redexgen/X/3D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3D;->getChildCount()I

    move-result v2

    .local v4, "count":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 53251
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sv;->A01:Lcom/facebook/ads/redexgen/X/3D;

    .line 53252
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/3D;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/2z;->A05(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3G;)Lcom/facebook/ads/redexgen/X/3G;

    move-result-object v6

    .line 53253
    .local v0, "childInsets":Lcom/facebook/ads/redexgen/X/3G;
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/3G;->A04()I

    move-result v1

    iget v0, v5, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v5, Landroid/graphics/Rect;->left:I

    .line 53254
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/3G;->A06()I

    move-result v1

    iget v0, v5, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v5, Landroid/graphics/Rect;->top:I

    .line 53255
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/3G;->A05()I

    move-result v1

    iget v0, v5, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v5, Landroid/graphics/Rect;->right:I

    .line 53256
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/3G;->A03()I

    move-result v1

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    .line 53257
    .end local v0    # "childInsets":Lcom/facebook/ads/redexgen/X/3G;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 53258
    .end local p2    # "i":I
    .end local v4    # "count":I
    :cond_1
    iget v3, v5, Landroid/graphics/Rect;->left:I

    iget v2, v5, Landroid/graphics/Rect;->top:I

    iget v1, v5, Landroid/graphics/Rect;->right:I

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3G;->A07(IIII)Lcom/facebook/ads/redexgen/X/3G;

    move-result-object v0

    return-object v0
.end method
