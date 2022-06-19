.class public final Lcom/facebook/ads/redexgen/X/b5;
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


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:Landroid/graphics/Rect;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/3D;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/b5;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/3D;)V
    .locals 1

    .line 69071
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/b5;->A01:Lcom/facebook/ads/redexgen/X/3D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69072
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b5;->A00:Landroid/graphics/Rect;

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "gru2Lda4S7GCbNBLtOIdQEnlbYeRFwfL"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "XnGCgKT7Pg2"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "mKUX8sgZfunspLF5wjmFH8sDBtb3K48d"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "jKk7kH4cQGBiDg5TKe33YqGV3AsPygQR"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "TZdQK9usf81OKXIWMb61JsmxOZFMnA3k"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "eyC2dzaRwXiJKVGsgdgz1meLL5sRgImY"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "S4mkNNYHIh7xNNZ0OEskqLhCY0hDyySt"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ZXfiglEYlIOoTIuj216uQxYNuz12aQjw"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/b5;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A9Q(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3G;)Lcom/facebook/ads/redexgen/X/3G;
    .locals 8

    .line 69073
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/2z;->A06(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3G;)Lcom/facebook/ads/redexgen/X/3G;

    move-result-object v7

    .line 69074
    .local p0, "applied":Lcom/facebook/ads/redexgen/X/3G;
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/3G;->A08()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69075
    return-object v7

    .line 69076
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/b5;->A00:Landroid/graphics/Rect;

    .line 69077
    .local p1, "res":Landroid/graphics/Rect;
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/3G;->A04()I

    move-result v0

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 69078
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/3G;->A06()I

    move-result v0

    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 69079
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/3G;->A05()I

    move-result v0

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 69080
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/3G;->A03()I

    move-result v0

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 69081
    const/4 v4, 0x0

    .local p2, "i":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b5;->A01:Lcom/facebook/ads/redexgen/X/3D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3D;->getChildCount()I

    move-result v3

    .local v7, "count":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 69082
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b5;->A01:Lcom/facebook/ads/redexgen/X/3D;

    .line 69083
    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/3D;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/facebook/ads/redexgen/X/2z;->A05(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3G;)Lcom/facebook/ads/redexgen/X/3G;

    move-result-object v5

    .line 69084
    .local v0, "childInsets":Lcom/facebook/ads/redexgen/X/3G;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/3G;->A04()I

    move-result v1

    iget v0, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 69085
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/3G;->A06()I

    move-result v1

    iget v0, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 69086
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/3G;->A05()I

    move-result v1

    iget v0, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 69087
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/3G;->A03()I

    move-result v1

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 69088
    .end local v0    # "childInsets":Lcom/facebook/ads/redexgen/X/3G;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 69089
    .end local p2    # "i":I
    .end local v7    # "count":I
    :cond_1
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/b5;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/b5;->A02:[Ljava/lang/String;

    const-string v1, "4mRHs0uPE72ppwyI9I2NgTpzqE63n9j5"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "Zp0DshFYJF7gm0rY227qRNMYobzVhEjB"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v7, v6, v5, v4, v3}, Lcom/facebook/ads/redexgen/X/3G;->A07(IIII)Lcom/facebook/ads/redexgen/X/3G;

    move-result-object v0

    return-object v0
.end method
