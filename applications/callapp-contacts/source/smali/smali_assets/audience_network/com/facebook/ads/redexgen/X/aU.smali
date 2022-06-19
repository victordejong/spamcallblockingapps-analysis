.class public final Lcom/facebook/ads/redexgen/X/aU;
.super Lcom/facebook/ads/redexgen/X/Mj;
.source ""


# static fields
.field public static A04:[B

.field public static final A05:I

.field public static final A06:I

.field public static final A07:I


# instance fields
.field public final A00:Landroid/widget/ImageView;

.field public final A01:Landroid/widget/LinearLayout;

.field public final A02:Landroid/widget/ScrollView;

.field public final A03:Lcom/facebook/ads/redexgen/X/XJ;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 67461
    invoke-static {}, Lcom/facebook/ads/redexgen/X/aU;->A0B()V

    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/aU;->A07:I

    .line 67462
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/aU;->A06:I

    .line 67463
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x42300000    # 44.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/aU;->A05:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;)V
    .locals 4

    .line 67464
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Mj;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;)V

    .line 67465
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aU;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    .line 67466
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/aU;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aU;->A00:Landroid/widget/ImageView;

    .line 67467
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aU;->A00:Landroid/widget/ImageView;

    sget v0, Lcom/facebook/ads/redexgen/X/aU;->A06:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 67468
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aU;->A00:Landroid/widget/ImageView;

    const v0, -0x9f9890

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 67469
    sget v0, Lcom/facebook/ads/redexgen/X/aU;->A05:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 67470
    .local p0, "closeButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v0, 0x3

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 67471
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aU;->A00:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67472
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/aU;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aU;->A02:Landroid/widget/ScrollView;

    .line 67473
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aU;->A02:Landroid/widget/ScrollView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 67474
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aU;->A02:Landroid/widget/ScrollView;

    const v0, -0xd000001

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0P(Landroid/view/View;I)V

    .line 67475
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/aU;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aU;->A01:Landroid/widget/LinearLayout;

    .line 67476
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aU;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 67477
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aU;->A01:Landroid/widget/LinearLayout;

    sget v0, Lcom/facebook/ads/redexgen/X/aU;->A07:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 67478
    const/4 v3, -0x1

    const/4 v0, -0x2

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 67479
    .local p1, "mainLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aU;->A02:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aU;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67480
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aU;->A02:Landroid/widget/ScrollView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/aU;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67481
    return-void
.end method

.method public static A0A(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/aU;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x37

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0B()V
    .locals 1

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/aU;->A04:[B

    return-void

    :array_0
    .array-data 1
        0x35t
        0x16t
        0x14t
        0x1ct
        0x69t
        0x46t
        0x45t
        0x59t
        0x4ft
        0xat
        0x6bt
        0x4et
        0xat
        0x78t
        0x4ft
        0x5at
        0x45t
        0x58t
        0x5et
        0x43t
        0x44t
        0x4dt
    .end array-data
.end method


# virtual methods
.method public final A0K()V
    .locals 9

    .line 67482
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aU;->A00:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lp;->A0F:Lcom/facebook/ads/redexgen/X/Lp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lq;->A01(Lcom/facebook/ads/redexgen/X/Lp;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 67483
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aU;->A00:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/N2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/N2;-><init>(Lcom/facebook/ads/redexgen/X/aU;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67484
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/aU;->A00:Landroid/widget/ImageView;

    const/4 v2, 0x4

    const/16 v1, 0x12

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aU;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 67485
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aU;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v7, Lcom/facebook/ads/redexgen/X/Mn;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/Mn;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 67486
    .local p0, "hideAdView":Lcom/facebook/ads/redexgen/X/Mn;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aU;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    .line 67487
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A0B(Lcom/facebook/ads/redexgen/X/XK;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lp;->A0K:Lcom/facebook/ads/redexgen/X/Lp;

    .line 67488
    invoke-virtual {v7, v1, v0}, Lcom/facebook/ads/redexgen/X/Mn;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Lp;)V

    .line 67489
    new-instance v0, Lcom/facebook/ads/redexgen/X/N3;

    invoke-direct {v0, p0, v7}, Lcom/facebook/ads/redexgen/X/N3;-><init>(Lcom/facebook/ads/redexgen/X/aU;Lcom/facebook/ads/redexgen/X/Mn;)V

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/Mn;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67490
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aU;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v6, Lcom/facebook/ads/redexgen/X/Mn;

    invoke-direct {v6, v0}, Lcom/facebook/ads/redexgen/X/Mn;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 67491
    .local v1, "reportAdView":Lcom/facebook/ads/redexgen/X/Mn;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aU;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    .line 67492
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A0F(Lcom/facebook/ads/redexgen/X/XK;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lp;->A0P:Lcom/facebook/ads/redexgen/X/Lp;

    .line 67493
    invoke-virtual {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Mn;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Lp;)V

    .line 67494
    new-instance v0, Lcom/facebook/ads/redexgen/X/N4;

    invoke-direct {v0, p0, v6}, Lcom/facebook/ads/redexgen/X/N4;-><init>(Lcom/facebook/ads/redexgen/X/aU;Lcom/facebook/ads/redexgen/X/Mn;)V

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/Mn;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67495
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aU;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v5, Lcom/facebook/ads/redexgen/X/Mn;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/Mn;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 67496
    .local v0, "whyAmISeeingThisView":Lcom/facebook/ads/redexgen/X/Mn;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aU;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    .line 67497
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A0G(Lcom/facebook/ads/redexgen/X/XK;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lp;->A07:Lcom/facebook/ads/redexgen/X/Lp;

    .line 67498
    invoke-virtual {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/Mn;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Lp;)V

    .line 67499
    new-instance v0, Lcom/facebook/ads/redexgen/X/N5;

    invoke-direct {v0, p0, v5}, Lcom/facebook/ads/redexgen/X/N5;-><init>(Lcom/facebook/ads/redexgen/X/aU;Lcom/facebook/ads/redexgen/X/Mn;)V

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Mn;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67500
    const/4 v8, -0x2

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 67501
    .local v0, "menuItemParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/aU;->A07:I

    invoke-virtual {v4, v0, v0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 67502
    const/16 v1, 0x11

    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 67503
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/aU;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 67504
    .local v3, "menuLayout":Landroid/widget/LinearLayout;
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 67505
    const/4 v0, 0x0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 67506
    .local v1, "menuParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 67507
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 67508
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aU;->A01:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0Y(Landroid/view/ViewGroup;)V

    .line 67509
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aU;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 67510
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aU;->A01:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aU;->A00:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 67511
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aU;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67512
    invoke-virtual {v3, v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67513
    invoke-virtual {v3, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67514
    invoke-virtual {v3, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67515
    return-void
.end method

.method public final A0L()V
    .locals 0

    .line 67516
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Lh;->A0L(Landroid/view/View;)V

    .line 67517
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Lh;->A0M(Landroid/view/View;)V

    .line 67518
    return-void
.end method

.method public final A0M(Lcom/facebook/ads/redexgen/X/2B;Lcom/facebook/ads/redexgen/X/29;)V
    .locals 6

    .line 67519
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aU;->A00:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67520
    sget-object v0, Lcom/facebook/ads/redexgen/X/29;->A05:Lcom/facebook/ads/redexgen/X/29;

    if-ne p2, v0, :cond_0

    .line 67521
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aU;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A09(Lcom/facebook/ads/redexgen/X/XK;)Ljava/lang/String;

    move-result-object v5

    .line 67522
    .local p0, "title":Ljava/lang/String;
    sget-object v4, Lcom/facebook/ads/redexgen/X/Lp;->A0P:Lcom/facebook/ads/redexgen/X/Lp;

    .line 67523
    .local p1, "icon":Lcom/facebook/ads/redexgen/X/Lp;
    const v3, -0x86dc5

    .line 67524
    .local p2, "iconBackground":I
    .restart local p2    # "iconBackground":I
    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aU;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mj;->A0A:Lcom/facebook/ads/redexgen/X/Ml;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Mh;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Mh;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/Ml;)V

    .line 67525
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Mh;->A0I(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mh;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aU;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    .line 67526
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A07(Lcom/facebook/ads/redexgen/X/XK;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mh;->A0H(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mh;

    move-result-object v1

    .line 67527
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/2B;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mh;->A0F(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mh;

    move-result-object v0

    .line 67528
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Mh;->A0K(Z)Lcom/facebook/ads/redexgen/X/Mh;

    move-result-object v0

    .line 67529
    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Mh;->A0E(Lcom/facebook/ads/redexgen/X/Lp;)Lcom/facebook/ads/redexgen/X/Mh;

    move-result-object v0

    .line 67530
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Mh;->A0D(I)Lcom/facebook/ads/redexgen/X/Mh;

    move-result-object v0

    .line 67531
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Mh;->A0L(Z)Lcom/facebook/ads/redexgen/X/Mh;

    move-result-object v0

    .line 67532
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Mh;->A0J(Z)Lcom/facebook/ads/redexgen/X/Mh;

    move-result-object v0

    .line 67533
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mh;->A0M()Lcom/facebook/ads/redexgen/X/Mi;

    move-result-object v3

    .line 67534
    .local v1, "adHiddenView":Lcom/facebook/ads/redexgen/X/Mi;
    const/4 v0, -0x1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 67535
    .local v0, "adHiddenViewParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 67536
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 67537
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aU;->A01:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0Y(Landroid/view/ViewGroup;)V

    .line 67538
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aU;->A02:Landroid/widget/ScrollView;

    const/16 v0, 0x21

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 67539
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aU;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 67540
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aU;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67541
    return-void

    .line 67542
    .end local p0    # "title":Ljava/lang/String;
    .end local p1    # "icon":Lcom/facebook/ads/redexgen/X/Lp;
    .end local p2    # "iconBackground":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aU;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A0B(Lcom/facebook/ads/redexgen/X/XK;)Ljava/lang/String;

    move-result-object v5

    .line 67543
    .restart local p0    # "title":Ljava/lang/String;
    sget-object v4, Lcom/facebook/ads/redexgen/X/Lp;->A0K:Lcom/facebook/ads/redexgen/X/Lp;

    .line 67544
    .restart local p1    # "icon":Lcom/facebook/ads/redexgen/X/Lp;
    const v3, -0xca871b

    goto :goto_0
.end method

.method public final A0N(Lcom/facebook/ads/redexgen/X/2B;Lcom/facebook/ads/redexgen/X/29;)V
    .locals 6

    .line 67545
    sget-object v0, Lcom/facebook/ads/redexgen/X/29;->A05:Lcom/facebook/ads/redexgen/X/29;

    const/4 v3, 0x0

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    .line 67546
    .local p0, "isReportFlow":Z
    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aU;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mj;->A0A:Lcom/facebook/ads/redexgen/X/Ml;

    .line 67547
    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lp;->A0P:Lcom/facebook/ads/redexgen/X/Lp;

    :goto_1
    new-instance v4, Lcom/facebook/ads/redexgen/X/N1;

    invoke-direct {v4, v2, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/N1;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/2B;Lcom/facebook/ads/redexgen/X/Ml;Lcom/facebook/ads/redexgen/X/Lp;)V

    .line 67548
    .local p2, "optionChooserView":Landroid/view/View;
    const/4 v0, -0x2

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 67549
    .local p1, "optionChooserParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 67550
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 67551
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aU;->A00:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lp;->A09:Lcom/facebook/ads/redexgen/X/Lp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lq;->A01(Lcom/facebook/ads/redexgen/X/Lp;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 67552
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aU;->A00:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/N6;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/N6;-><init>(Lcom/facebook/ads/redexgen/X/aU;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67553
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/aU;->A00:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aU;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 67554
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aU;->A01:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0Y(Landroid/view/ViewGroup;)V

    .line 67555
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aU;->A02:Landroid/widget/ScrollView;

    const/16 v0, 0x21

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 67556
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aU;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 67557
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aU;->A01:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aU;->A00:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 67558
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aU;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67559
    return-void

    .line 67560
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Lp;->A0K:Lcom/facebook/ads/redexgen/X/Lp;

    goto :goto_1

    .line 67561
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0O()Z
    .locals 1

    .line 67562
    const/4 v0, 0x1

    return v0
.end method
