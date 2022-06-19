.class public final Lcom/facebook/ads/redexgen/X/2l;
.super Lcom/facebook/ads/redexgen/X/9o;
.source ""


# static fields
.field public static A06:[Ljava/lang/String;

.field public static final A07:I

.field public static final A08:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Ry;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/Oo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A02:Lcom/facebook/ads/redexgen/X/JC;

.field public final A03:Lcom/facebook/ads/redexgen/X/T6;

.field public final A04:Lcom/facebook/ads/redexgen/X/9v;

.field public final A05:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 5982
    invoke-static {}, Lcom/facebook/ads/redexgen/X/2l;->A00()V

    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, -0x3f800000    # -4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/2l;->A08:I

    .line 5983
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x40c00000    # 6.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/2l;->A07:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Nw;Lcom/facebook/ads/redexgen/X/T6;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/9v;)V
    .locals 1

    .line 5984
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/facebook/ads/redexgen/X/9o;-><init>(Lcom/facebook/ads/redexgen/X/Nw;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/RD;)V

    .line 5985
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/2l;->A03:Lcom/facebook/ads/redexgen/X/T6;

    .line 5986
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/2l;->A05:Ljava/lang/String;

    .line 5987
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/2l;->A04:Lcom/facebook/ads/redexgen/X/9v;

    .line 5988
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0I:Lcom/facebook/ads/redexgen/X/Nw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nw;->A05()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A06()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2l;->A02:Lcom/facebook/ads/redexgen/X/JC;

    .line 5989
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2l;->A03:Lcom/facebook/ads/redexgen/X/T6;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/T6;->A1K(Landroid/view/View;)V

    .line 5990
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "q"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "A73Xi2G3GXsP7eqOYxzIEC2a49UqAHwv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "tzkKnItTrh"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "5yGem34VUXIU78ICazF0QaKYuuceWMlm"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "d26mhKEOwDnFCjn"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "V"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "vFFUszWLQFPwstqQ2PhnuKwIvdRc"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "cQLhl1S6XoLnT945hQssVDVRJiee0FVC"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2l;->A06:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setupNativeCtaExtension(Lcom/facebook/ads/redexgen/X/Oo;)V
    .locals 12

    .line 5991
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2l;->A01:Lcom/facebook/ads/redexgen/X/Oo;

    .line 5992
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0I:Lcom/facebook/ads/redexgen/X/Nw;

    .line 5993
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nw;->A05()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A0K(Landroid/content/Context;)I

    move-result v3

    .line 5994
    .local p0, "extensionVariant":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2l;->A03:Lcom/facebook/ads/redexgen/X/T6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0z()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v7

    .line 5995
    .local p1, "colorInfo":Lcom/facebook/ads/redexgen/X/1I;
    new-instance v4, Lcom/facebook/ads/redexgen/X/Ry;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0I:Lcom/facebook/ads/redexgen/X/Nw;

    .line 5996
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nw;->A05()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2l;->A03:Lcom/facebook/ads/redexgen/X/T6;

    .line 5997
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0z()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/2l;->A02:Lcom/facebook/ads/redexgen/X/JC;

    .line 5998
    invoke-static {}, Lcom/facebook/ads/redexgen/X/NL;->getDummyListener()Lcom/facebook/ads/redexgen/X/M7;

    move-result-object v9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2l;->A04:Lcom/facebook/ads/redexgen/X/9v;

    .line 5999
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9v;->A0e()Lcom/facebook/ads/redexgen/X/Q9;

    move-result-object v10

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2l;->A03:Lcom/facebook/ads/redexgen/X/T6;

    .line 6000
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T6;->A18()Lcom/facebook/ads/redexgen/X/Lc;

    move-result-object v11

    invoke-direct/range {v4 .. v11}, Lcom/facebook/ads/redexgen/X/Ry;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1I;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M7;Lcom/facebook/ads/redexgen/X/Q9;Lcom/facebook/ads/redexgen/X/Lc;)V

    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/2l;->A00:Lcom/facebook/ads/redexgen/X/Ry;

    .line 6001
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/2l;->A00:Lcom/facebook/ads/redexgen/X/Ry;

    .line 6002
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Oo;->A03()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2l;->A05:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6003
    invoke-virtual {v4, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ry;->setCta(Lcom/facebook/ads/redexgen/X/1J;Ljava/lang/String;Ljava/util/Map;)V

    .line 6004
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2l;->A03:Lcom/facebook/ads/redexgen/X/T6;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2l;->A00:Lcom/facebook/ads/redexgen/X/Ry;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/T6;->A1K(Landroid/view/View;)V

    .line 6005
    const/4 v1, -0x1

    const/4 v0, -0x2

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 6006
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v4, 0x0

    const/4 v0, 0x1

    if-ne v3, v0, :cond_1

    .line 6007
    const/16 v0, 0xc

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 6008
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2l;->A00:Lcom/facebook/ads/redexgen/X/Ry;

    sget v2, Lcom/facebook/ads/redexgen/X/2l;->A07:I

    const/4 v1, 0x5

    .line 6009
    invoke-virtual {v7, v4}, Lcom/facebook/ads/redexgen/X/1I;->A09(Z)I

    move-result v0

    .line 6010
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0R(Landroid/view/View;III)V

    .line 6011
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9o;->A06:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2l;->A00:Lcom/facebook/ads/redexgen/X/Ry;

    invoke-virtual {v1, v0, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6012
    :cond_0
    :goto_0
    return-void

    .line 6013
    :cond_1
    const/4 v6, 0x2

    sget-object v1, Lcom/facebook/ads/redexgen/X/2l;->A06:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/2l;->A06:[Ljava/lang/String;

    const-string v1, "H"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "z"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ne v3, v6, :cond_0

    .line 6014
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-virtual {v5, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 6015
    sget v0, Lcom/facebook/ads/redexgen/X/2l;->A08:I

    invoke-virtual {v5, v4, v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 6016
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2l;->A00:Lcom/facebook/ads/redexgen/X/Ry;

    invoke-virtual {p0, v0, v4, v5}, Lcom/facebook/ads/redexgen/X/2l;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 6017
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->bringToFront()V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
