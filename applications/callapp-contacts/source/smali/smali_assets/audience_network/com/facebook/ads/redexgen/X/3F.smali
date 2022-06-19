.class public final Lcom/facebook/ads/redexgen/X/3F;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ey;,
        Lcom/facebook/ads/redexgen/X/Sz;,
        Lcom/facebook/ads/redexgen/X/3E;
    }
.end annotation


# static fields
.field public static final A00:Lcom/facebook/ads/redexgen/X/3E;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 8091
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_0

    .line 8092
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ey;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ey;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/3F;->A00:Lcom/facebook/ads/redexgen/X/3E;

    .line 8093
    :goto_0
    return-void

    .line 8094
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt v1, v0, :cond_1

    .line 8095
    new-instance v0, Lcom/facebook/ads/redexgen/X/Sz;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Sz;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/3F;->A00:Lcom/facebook/ads/redexgen/X/3E;

    goto :goto_0

    .line 8096
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/3E;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/3E;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/3F;->A00:Lcom/facebook/ads/redexgen/X/3E;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .line 8097
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Landroid/view/ViewParent;Landroid/view/View;I)V
    .locals 1

    .line 8098
    instance-of v0, p0, Lcom/facebook/ads/redexgen/X/St;

    if-eqz v0, :cond_0

    .line 8099
    const/4 v0, 0x0

    throw v0

    .line 8100
    :cond_0
    if-nez p2, :cond_1

    .line 8101
    sget-object v0, Lcom/facebook/ads/redexgen/X/3F;->A00:Lcom/facebook/ads/redexgen/X/3E;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/3E;->A03(Landroid/view/ViewParent;Landroid/view/View;)V

    .line 8102
    :cond_1
    return-void
.end method

.method public static A01(Landroid/view/ViewParent;Landroid/view/View;IIIII)V
    .locals 1

    .line 8103
    instance-of v0, p0, Lcom/facebook/ads/redexgen/X/St;

    if-eqz v0, :cond_0

    .line 8104
    const/4 v0, 0x0

    throw v0

    .line 8105
    :cond_0
    if-nez p6, :cond_1

    .line 8106
    sget-object v0, Lcom/facebook/ads/redexgen/X/3F;->A00:Lcom/facebook/ads/redexgen/X/3E;

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/3E;->A04(Landroid/view/ViewParent;Landroid/view/View;IIII)V

    .line 8107
    :cond_1
    return-void
.end method

.method public static A02(Landroid/view/ViewParent;Landroid/view/View;II[II)V
    .locals 1

    .line 8108
    instance-of v0, p0, Lcom/facebook/ads/redexgen/X/St;

    if-eqz v0, :cond_0

    .line 8109
    const/4 v0, 0x0

    throw v0

    .line 8110
    :cond_0
    if-nez p5, :cond_1

    .line 8111
    sget-object v0, Lcom/facebook/ads/redexgen/X/3F;->A00:Lcom/facebook/ads/redexgen/X/3E;

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/3E;->A05(Landroid/view/ViewParent;Landroid/view/View;II[I)V

    .line 8112
    :cond_1
    return-void
.end method

.method public static A03(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V
    .locals 1

    .line 8113
    instance-of v0, p0, Lcom/facebook/ads/redexgen/X/St;

    if-eqz v0, :cond_0

    .line 8114
    const/4 v0, 0x0

    throw v0

    .line 8115
    :cond_0
    if-nez p4, :cond_1

    .line 8116
    sget-object v0, Lcom/facebook/ads/redexgen/X/3F;->A00:Lcom/facebook/ads/redexgen/X/3E;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/3E;->A06(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V

    .line 8117
    :cond_1
    return-void
.end method

.method public static A04(Landroid/view/ViewParent;Landroid/view/View;FF)Z
    .locals 1

    .line 8118
    sget-object v0, Lcom/facebook/ads/redexgen/X/3F;->A00:Lcom/facebook/ads/redexgen/X/3E;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/3E;->A07(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public static A05(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
    .locals 1

    .line 8119
    sget-object v0, Lcom/facebook/ads/redexgen/X/3F;->A00:Lcom/facebook/ads/redexgen/X/3E;

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/3E;->A08(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public static A06(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z
    .locals 1

    .line 8120
    instance-of v0, p0, Lcom/facebook/ads/redexgen/X/St;

    if-eqz v0, :cond_0

    .line 8121
    check-cast p0, Lcom/facebook/ads/redexgen/X/St;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/St;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    return v0

    .line 8122
    :cond_0
    if-nez p4, :cond_1

    .line 8123
    sget-object v0, Lcom/facebook/ads/redexgen/X/3F;->A00:Lcom/facebook/ads/redexgen/X/3E;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/3E;->A09(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    return v0

    .line 8124
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
