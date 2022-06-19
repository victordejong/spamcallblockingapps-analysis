.class public final Lcom/facebook/ads/internal/view/FullScreenAdToolbar;
.super Lcom/facebook/ads/redexgen/X/M6;
.source ""


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;

.field public static final A09:I

.field public static final A0A:I

.field public static final A0B:I

.field public static final A0C:I

.field public static final A0D:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/M5;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Landroid/widget/RelativeLayout;

.field public final A02:Lcom/facebook/ads/redexgen/X/JK;

.field public final A03:Lcom/facebook/ads/redexgen/X/M4;

.field public final A04:Lcom/facebook/ads/redexgen/X/M7;

.field public final A05:Lcom/facebook/ads/redexgen/X/MR;

.field public final A06:Lcom/facebook/ads/redexgen/X/On;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1595
    invoke-static {}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A04()V

    invoke-static {}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A03()V

    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:I

    .line 1596
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0D:I

    .line 1597
    sget v2, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0D:I

    sget v1, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:I

    sub-int v0, v2, v1

    sput v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0B:I

    .line 1598
    mul-int/lit8 v0, v2, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0C:I

    .line 1599
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0A:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/M7;Lcom/facebook/ads/redexgen/X/JK;II)V
    .locals 5
    .param p4    # I
        .annotation build Lcom/facebook/ads/internal/view/ToolbarActionView$ToolbarActionMode;
        .end annotation
    .end param

    .line 1600
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/M6;-><init>(Landroid/content/Context;)V

    .line 1601
    iput-object p2, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A04:Lcom/facebook/ads/redexgen/X/M7;

    .line 1602
    iput-object p3, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A02:Lcom/facebook/ads/redexgen/X/JK;

    .line 1603
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->setGravity(I)V

    .line 1604
    new-instance v0, Lcom/facebook/ads/redexgen/X/MR;

    invoke-direct {v0, p1, p4}, Lcom/facebook/ads/redexgen/X/MR;-><init>(Lcom/facebook/ads/redexgen/X/Wm;I)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A05:Lcom/facebook/ads/redexgen/X/MR;

    .line 1605
    iget-object v3, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A05:Lcom/facebook/ads/redexgen/X/MR;

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/MR;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1606
    iget-object v1, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A05:Lcom/facebook/ads/redexgen/X/MR;

    new-instance v0, Lcom/facebook/ads/redexgen/X/MB;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/MB;-><init>(Lcom/facebook/ads/internal/view/FullScreenAdToolbar;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MR;->setActionClickListener(Landroid/view/View$OnClickListener;)V

    .line 1607
    const/4 v2, -0x2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1608
    .local p0, "toolbarActionViewParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0B:I

    sget v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0C:I

    invoke-virtual {v3, v1, v1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1609
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A05:Lcom/facebook/ads/redexgen/X/MR;

    invoke-virtual {p0, v0, v3}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1610
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A01:Landroid/widget/RelativeLayout;

    .line 1611
    const/4 v4, 0x0

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1612
    .local p2, "containerParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1613
    new-instance v0, Lcom/facebook/ads/redexgen/X/On;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/On;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A06:Lcom/facebook/ads/redexgen/X/On;

    .line 1614
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1615
    .local p4, "pageDetailsParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1616
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A06:Lcom/facebook/ads/redexgen/X/On;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/On;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1617
    iget-object v1, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A01:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A06:Lcom/facebook/ads/redexgen/X/On;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1618
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v3}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1619
    new-instance v0, Lcom/facebook/ads/redexgen/X/M4;

    invoke-direct {v0, p1, p5}, Lcom/facebook/ads/redexgen/X/M4;-><init>(Lcom/facebook/ads/redexgen/X/Wm;I)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A03:Lcom/facebook/ads/redexgen/X/M4;

    .line 1620
    const/4 v0, -0x1

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1621
    .local p1, "adReportingViewParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0D:I

    div-int/lit8 v2, v0, 0x2

    div-int/lit8 v1, v0, 0x2

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v3, v4, v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1622
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A03:Lcom/facebook/ads/redexgen/X/M4;

    invoke-virtual {p0, v0, v3}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1623
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/internal/view/FullScreenAdToolbar;)Lcom/facebook/ads/redexgen/X/M5;
    .locals 0

    .line 1624
    iget-object p0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/M5;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/internal/view/FullScreenAdToolbar;)Lcom/facebook/ads/redexgen/X/MR;
    .locals 0

    .line 1625
    iget-object p0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A05:Lcom/facebook/ads/redexgen/X/MR;

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x16

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 4

    const/16 v0, 0x11

    new-array v3, v0, [B

    sget-object v1, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A08:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6c

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A08:[Ljava/lang/String;

    const-string v1, "ATFpsL3dKIxr1CEZIKZeGPZ"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A07:[B

    return-void

    :array_0
    .array-data 1
        0x71t
        -0x66t
        -0x63t
        -0x5ft
        -0x6dt
        0x4et
        0x6ft
        -0x6et
        -0x64t
        -0x51t
        -0x46t
        -0x47t
        -0x44t
        -0x42t
        0x6at
        -0x75t
        -0x52t
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "bFTGQZCDUsZohbmTeIVqSIHEteTzH9ln"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "yXw5A2C"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "1AgOSkHO0Pb00RrFT9UOiqy"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "TxDFqDHdXRoHKl2DTNxbpTLqI26RISWJ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "CWbWmw8OaNX6ff1fhEYiHQW6wjCjGro9"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "znIzyGoGhCcdAsXYdQkLlPNG9alZ5sNL"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "lf2qO9K"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "XEgUxEHpppw1PxIgjlcxmDWHelwWu1Ow"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A08:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A05(Lcom/facebook/ads/redexgen/X/1I;Z)V
    .locals 5

    .line 1626
    invoke-virtual {p1, p2}, Lcom/facebook/ads/redexgen/X/1I;->A04(Z)I

    move-result v4

    .line 1627
    .local p0, "accentColor":I
    iget-object v1, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A06:Lcom/facebook/ads/redexgen/X/On;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/redexgen/X/1I;->A0A(Z)I

    move-result v0

    invoke-virtual {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/On;->A01(II)V

    .line 1628
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A03:Lcom/facebook/ads/redexgen/X/M4;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/M4;->setIconColors(I)V

    .line 1629
    iget-object v3, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A03:Lcom/facebook/ads/redexgen/X/M4;

    const/16 v2, 0x8

    const/16 v1, 0x9

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/M4;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1630
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A05:Lcom/facebook/ads/redexgen/X/MR;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/MR;->setColors(I)V

    .line 1631
    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 1632
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 1633
    .local p2, "gd":Landroid/graphics/drawable/GradientDrawable;
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1634
    invoke-static {p0, v1}, Lcom/facebook/ads/redexgen/X/Lj;->A0U(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1635
    iget-object v2, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A03:Lcom/facebook/ads/redexgen/X/M4;

    const/high16 v1, -0x1000000

    sget v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0A:I

    invoke-static {v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0S(Landroid/view/View;III)V

    .line 1636
    .end local p2    # "gd":Landroid/graphics/drawable/GradientDrawable;
    :goto_0
    return-void

    .line 1637
    :cond_0
    invoke-static {p0, v3}, Lcom/facebook/ads/redexgen/X/Lj;->A0O(Landroid/view/View;I)V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        -0x6a000000
        0x0
    .end array-data
.end method

.method public final A06()Z
    .locals 1

    .line 1638
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A05:Lcom/facebook/ads/redexgen/X/MR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MR;->A02()Z

    move-result v0

    return v0
.end method

.method public getToolbarHeight()I
    .locals 1

    .line 1639
    sget v0, Lcom/facebook/ads/redexgen/X/M6;->A00:I

    return v0
.end method

.method public setAdReportingVisible(Z)V
    .locals 2

    .line 1640
    iget-object v1, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A03:Lcom/facebook/ads/redexgen/X/M4;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M4;->setVisibility(I)V

    .line 1641
    return-void

    .line 1642
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setPageDetails(Lcom/facebook/ads/redexgen/X/1S;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/1Z;)V
    .locals 3

    .line 1643
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A05:Lcom/facebook/ads/redexgen/X/MR;

    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/MR;->setInitialUnskippableSeconds(I)V

    .line 1644
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A06:Lcom/facebook/ads/redexgen/X/On;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/On;->setPageDetails(Lcom/facebook/ads/redexgen/X/1S;)V

    .line 1645
    iget-object v2, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A03:Lcom/facebook/ads/redexgen/X/M4;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A02:Lcom/facebook/ads/redexgen/X/JK;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A04:Lcom/facebook/ads/redexgen/X/M7;

    invoke-virtual {v2, p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/M4;->setAdDetails(Lcom/facebook/ads/redexgen/X/1S;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JK;Lcom/facebook/ads/redexgen/X/M7;)V

    .line 1646
    return-void
.end method

.method public setPageDetailsVisible(Z)V
    .locals 2

    .line 1647
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 1648
    if-eqz p1, :cond_0

    .line 1649
    iget-object v1, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A01:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A06:Lcom/facebook/ads/redexgen/X/On;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1650
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A05:Lcom/facebook/ads/redexgen/X/MR;

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MR;->setToolbarMessageEnabled(Z)V

    .line 1651
    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .line 1652
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A05:Lcom/facebook/ads/redexgen/X/MR;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/MR;->setProgress(F)V

    .line 1653
    return-void
.end method

.method public setProgressSpinnerInvisible(Z)V
    .locals 1

    .line 1654
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A05:Lcom/facebook/ads/redexgen/X/MR;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/MR;->setProgressSpinnerInvisible(Z)V

    .line 1655
    return-void
.end method

.method public setToolbarActionMessage(Ljava/lang/String;)V
    .locals 1

    .line 1656
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A05:Lcom/facebook/ads/redexgen/X/MR;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/MR;->setToolbarMessage(Ljava/lang/String;)V

    .line 1657
    return-void
.end method

.method public setToolbarActionMode(I)V
    .locals 1
    .param p1    # I
        .annotation build Lcom/facebook/ads/internal/view/ToolbarActionView$ToolbarActionMode;
        .end annotation
    .end param

    .line 1658
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A05:Lcom/facebook/ads/redexgen/X/MR;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/MR;->setToolbarActionMode(I)V

    .line 1659
    return-void
.end method

.method public setToolbarListener(Lcom/facebook/ads/redexgen/X/M5;)V
    .locals 0

    .line 1660
    iput-object p1, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/M5;

    .line 1661
    return-void
.end method
