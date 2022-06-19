.class public final Lcom/facebook/ads/redexgen/X/YV;
.super Lcom/facebook/ads/redexgen/X/Nx;
.source ""


# static fields
.field public static A0P:Lcom/facebook/ads/redexgen/X/YV;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static A0Q:[B

.field public static A0R:[Ljava/lang/String;

.field public static final A0S:I

.field public static final A0T:I

.field public static final A0U:I

.field public static final A0V:I

.field public static final A0W:I


# instance fields
.field public A00:F

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:Landroid/view/View;

.field public A07:Landroid/widget/LinearLayout;

.field public A08:Landroid/widget/LinearLayout;

.field public A09:Landroid/widget/TextView;

.field public A0A:Lcom/facebook/ads/redexgen/X/16;

.field public A0B:Lcom/facebook/ads/redexgen/X/NE;

.field public A0C:Lcom/facebook/ads/redexgen/X/NF;

.field public A0D:Lcom/facebook/ads/redexgen/X/aO;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0E:Lcom/facebook/ads/redexgen/X/O1;

.field public A0F:Lcom/facebook/ads/redexgen/X/OA;

.field public A0G:Z

.field public A0H:Z

.field public A0I:Z

.field public A0J:Z

.field public A0K:Z

.field public final A0L:Landroid/view/View;

.field public final A0M:Lcom/facebook/ads/redexgen/X/0f;

.field public final A0N:Lcom/facebook/ads/redexgen/X/JJ;

.field public final A0O:Lcom/facebook/ads/redexgen/X/IB;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 60456
    invoke-static {}, Lcom/facebook/ads/redexgen/X/YV;->A0L()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/YV;->A0K()V

    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x41d00000    # 26.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/YV;->A0U:I

    .line 60457
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/YV;->A0S:I

    .line 60458
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/YV;->A0W:I

    .line 60459
    const/4 v1, -0x1

    const/16 v0, 0x4d

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2L;->A01(II)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/YV;->A0T:I

    .line 60460
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/YV;->A0V:I

    .line 60461
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/YV;->A0P:Lcom/facebook/ads/redexgen/X/YV;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/O1;)V
    .locals 10

    .line 60462
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Nx;-><init>(Lcom/facebook/ads/redexgen/X/O1;Z)V

    .line 60463
    const/4 v2, 0x0

    iput v2, p0, Lcom/facebook/ads/redexgen/X/YV;->A01:I

    .line 60464
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/YV;->A0G:Z

    .line 60465
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/YV;->A0I:Z

    .line 60466
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/YV;->A0K:Z

    .line 60467
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/YV;->A0J:Z

    .line 60468
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YV;->A0E:Lcom/facebook/ads/redexgen/X/O1;

    .line 60469
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0E:Lcom/facebook/ads/redexgen/X/O1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O1;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0A:Lcom/facebook/ads/redexgen/X/16;

    .line 60470
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O1;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O1;->A06()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/JJ;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/JJ;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0N:Lcom/facebook/ads/redexgen/X/JJ;

    .line 60471
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0E:Lcom/facebook/ads/redexgen/X/O1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O1;->A0A()Lcom/facebook/ads/redexgen/X/IB;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0O:Lcom/facebook/ads/redexgen/X/IB;

    .line 60472
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0O:Lcom/facebook/ads/redexgen/X/IB;

    if-eqz v0, :cond_0

    .line 60473
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 60474
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0E:Lcom/facebook/ads/redexgen/X/O1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O1;->A03()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0L:Landroid/view/View;

    .line 60475
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O1;->A05()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v3

    .line 60476
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O1;->A06()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v4

    .line 60477
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O1;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v5

    .line 60478
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O1;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0G()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 60479
    invoke-static/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/0g;->A01(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;ZZ)Lcom/facebook/ads/redexgen/X/0f;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0M:Lcom/facebook/ads/redexgen/X/0f;

    .line 60480
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O1;->A05()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v1

    .line 60481
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O1;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A07()Ljava/lang/String;

    move-result-object v0

    .line 60482
    invoke-static {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/Nv;->A00(Lcom/facebook/ads/redexgen/X/XJ;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 60483
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/YV;->setupLayoutConfiguration(Z)V

    .line 60484
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YV;->A0G()V

    .line 60485
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YV;->A0C()V

    .line 60486
    new-instance v2, Lcom/facebook/ads/redexgen/X/Yi;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/Yi;-><init>(Lcom/facebook/ads/redexgen/X/YV;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/YV;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 60487
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YV;->A0J()V

    .line 60488
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/YV;)F
    .locals 0

    .line 60489
    iget p0, p0, Lcom/facebook/ads/redexgen/X/YV;->A00:F

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/YV;F)F
    .locals 0

    .line 60490
    iput p1, p0, Lcom/facebook/ads/redexgen/X/YV;->A00:F

    return p1
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/YV;)Landroid/view/View;
    .locals 0

    .line 60491
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/YV;->A06:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/YV;)Lcom/facebook/ads/redexgen/X/0f;
    .locals 0

    .line 60492
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0M:Lcom/facebook/ads/redexgen/X/0f;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/YV;)Lcom/facebook/ads/redexgen/X/JJ;
    .locals 0

    .line 60493
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0N:Lcom/facebook/ads/redexgen/X/JJ;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/YV;)Lcom/facebook/ads/redexgen/X/NE;
    .locals 0

    .line 60494
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0B:Lcom/facebook/ads/redexgen/X/NE;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/YV;)Lcom/facebook/ads/redexgen/X/NF;
    .locals 0

    .line 60495
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0C:Lcom/facebook/ads/redexgen/X/NF;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/YV;)Lcom/facebook/ads/redexgen/X/aO;
    .locals 0

    .line 60496
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0D:Lcom/facebook/ads/redexgen/X/aO;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/YV;)Lcom/facebook/ads/redexgen/X/O1;
    .locals 0

    .line 60497
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0E:Lcom/facebook/ads/redexgen/X/O1;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/YV;)Lcom/facebook/ads/redexgen/X/OA;
    .locals 0

    .line 60498
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0F:Lcom/facebook/ads/redexgen/X/OA;

    return-object p0
.end method

.method public static A0A(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/YV;->A0Q:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0B()V
    .locals 3

    .line 60499
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A08:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0M(Landroid/view/View;)V

    .line 60500
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0E:Lcom/facebook/ads/redexgen/X/O1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O1;->A05()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A08:Landroid/widget/LinearLayout;

    .line 60501
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YV;->A08:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nx;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0W(Landroid/view/View;Landroid/content/Context;)V

    .line 60502
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0G:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A02:I

    div-int/lit8 v2, v0, 0x4

    :goto_0
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 60503
    .local p0, "descriptionOverlayParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 60504
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A08:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60505
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YV;->A08:Landroid/widget/LinearLayout;

    const/4 v0, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/YV;->addView(Landroid/view/View;I)V

    .line 60506
    return-void

    .line 60507
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A02:I

    div-int/lit8 v2, v0, 0x5

    goto :goto_0
.end method

.method private A0C()V
    .locals 2

    .line 60508
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A07:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0M(Landroid/view/View;)V

    .line 60509
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0E:Lcom/facebook/ads/redexgen/X/O1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O1;->A05()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A07:Landroid/widget/LinearLayout;

    .line 60510
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YV;->A07:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 60511
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A07:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 60512
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YV;->A0H()V

    .line 60513
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YV;->A07:Landroid/widget/LinearLayout;

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 60514
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A07:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/YV;->addView(Landroid/view/View;)V

    .line 60515
    return-void
.end method

.method private A0D()V
    .locals 5

    .line 60516
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0L:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 60517
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0M(Landroid/view/View;)V

    .line 60518
    sget v1, Lcom/facebook/ads/redexgen/X/Nx;->A09:I

    sget v0, Lcom/facebook/ads/redexgen/X/Nx;->A09:I

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 60519
    .local p0, "muteParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xa

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 60520
    const/16 v0, 0xb

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 60521
    sget v3, Lcom/facebook/ads/redexgen/X/Nx;->A08:I

    iget v2, p0, Lcom/facebook/ads/redexgen/X/YV;->A05:I

    sget v1, Lcom/facebook/ads/redexgen/X/Nx;->A08:I

    sget v0, Lcom/facebook/ads/redexgen/X/Nx;->A08:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 60522
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0L:Landroid/view/View;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/YV;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60523
    .end local p0    # "muteParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private A0E()V
    .locals 5

    .line 60524
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0O:Lcom/facebook/ads/redexgen/X/IB;

    if-eqz v0, :cond_0

    .line 60525
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0M(Landroid/view/View;)V

    .line 60526
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YV;->A0O:Lcom/facebook/ads/redexgen/X/IB;

    sget v0, Lcom/facebook/ads/redexgen/X/YV;->A0V:I

    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/IB;->setPadding(IIII)V

    .line 60527
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YV;->A0O:Lcom/facebook/ads/redexgen/X/IB;

    sget v0, Lcom/facebook/ads/redexgen/X/YV;->A0T:I

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/IB;->A09(II)V

    .line 60528
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YV;->A0O:Lcom/facebook/ads/redexgen/X/IB;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IB;->setTranslationY(F)V

    .line 60529
    sget v0, Lcom/facebook/ads/redexgen/X/YV;->A0U:I

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 60530
    .local p0, "progressBarLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0H:Z

    if-eqz v0, :cond_1

    .line 60531
    const/16 v1, 0x8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A06:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 60532
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0O:Lcom/facebook/ads/redexgen/X/IB;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/YV;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60533
    .end local p0    # "progressBarLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void

    .line 60534
    :cond_1
    const/16 v3, 0xc

    sget-object v2, Lcom/facebook/ads/redexgen/X/YV;->A0R:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/YV;->A0R:[Ljava/lang/String;

    const-string v1, "zjul6o0OG2Ezis8Q"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "LmcEL"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0F()V
    .locals 2

    .line 60535
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0E:Lcom/facebook/ads/redexgen/X/O1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O1;->A08()Lcom/facebook/ads/redexgen/X/M4;

    move-result-object v1

    .line 60536
    .local p0, "toolbar":Lcom/facebook/ads/redexgen/X/M4;
    if-nez v1, :cond_0

    .line 60537
    return-void

    .line 60538
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0H:Z

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/M4;->A07()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M4;->setPageDetailsVisible(Z)V

    .line 60539
    return-void

    .line 60540
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0G()V
    .locals 5

    .line 60541
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0E:Lcom/facebook/ads/redexgen/X/O1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O1;->A02()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A06:Landroid/view/View;

    .line 60542
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A06:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0M(Landroid/view/View;)V

    .line 60543
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A06:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 60544
    const/4 v4, -0x2

    const/4 v2, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 60545
    .local p0, "mediaLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 60546
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A06:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3, v1}, Lcom/facebook/ads/redexgen/X/YV;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 60547
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0E:Lcom/facebook/ads/redexgen/X/O1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O1;->A05()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A09:Landroid/widget/TextView;

    .line 60548
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A09:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 60549
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YV;->A09:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 60550
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YV;->A09:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nx;->getColors()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/1I;->A05(Z)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60551
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YV;->A09:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 60552
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YV;->A09:Landroid/widget/TextView;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 60553
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 60554
    .local v0, "descriptionLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 60555
    sget v2, Lcom/facebook/ads/redexgen/X/YV;->A0W:I

    div-int/lit8 v1, v2, 0x2

    .line 60556
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0O:Lcom/facebook/ads/redexgen/X/IB;

    if-nez v0, :cond_0

    move v0, v2

    .line 60557
    :goto_0
    invoke-virtual {v3, v2, v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 60558
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A09:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/YV;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60559
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A09:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 60560
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/YV;->A0E:Lcom/facebook/ads/redexgen/X/O1;

    .line 60561
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/O1;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0G()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A03()Ljava/lang/String;

    move-result-object v3

    .line 60562
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nx;->getColors()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/Yh;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/Yh;-><init>(Lcom/facebook/ads/redexgen/X/YV;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/OA;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/OA;-><init>(Lcom/facebook/ads/redexgen/X/O1;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1I;Lcom/facebook/ads/redexgen/X/Ni;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0F:Lcom/facebook/ads/redexgen/X/OA;

    .line 60563
    const/16 v1, 0x3e9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0F:Lcom/facebook/ads/redexgen/X/OA;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0J(ILandroid/view/View;)V

    .line 60564
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0F:Lcom/facebook/ads/redexgen/X/OA;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/YV;->addView(Landroid/view/View;)V

    .line 60565
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YV;->A0I()V

    .line 60566
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YV;->A0B()V

    .line 60567
    return-void

    .line 60568
    :cond_0
    sget v0, Lcom/facebook/ads/redexgen/X/YV;->A0U:I

    goto :goto_0
.end method

.method private A0H()V
    .locals 5

    .line 60569
    iget v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A03:I

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v1, v0, 0x5

    const/4 v0, -0x1

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 60570
    .local p0, "browserParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/YV;->A0c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 60571
    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 60572
    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 60573
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/YV;->A07:Landroid/widget/LinearLayout;

    sget-object v2, Lcom/facebook/ads/redexgen/X/YV;->A0R:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/YV;->A0R:[Ljava/lang/String;

    const-string v1, "mOqhFUC5R4"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "x2rQdK"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60574
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YV;->A07:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 60575
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A07:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60576
    return-void

    .line 60577
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A03:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v1, v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0I()V
    .locals 3

    .line 60578
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0G:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A02:I

    div-int/lit8 v1, v0, 0x4

    :goto_0
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 60579
    .local p0, "ctaButtonLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xe

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 60580
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A09:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 60581
    const/4 v0, 0x0

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 60582
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0F:Lcom/facebook/ads/redexgen/X/OA;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/OA;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60583
    return-void

    .line 60584
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A02:I

    div-int/lit8 v1, v0, 0x5

    goto :goto_0
.end method

.method private A0J()V
    .locals 0

    .line 60585
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YV;->A0E()V

    .line 60586
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YV;->A0D()V

    .line 60587
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YV;->A0F()V

    .line 60588
    return-void
.end method

.method public static A0K()V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/YV;->A0Q:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x24t
    .end array-data
.end method

.method public static A0L()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "E7d9V"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "HfiTPdnQE6JsOHdYoOA4lRNnbQ3"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "7AVXCU5oRbsgBqmorHmAVCwb6r5tuTQ8"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "hoWzaZbN7yXesQFa"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "a3ZYa3"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "EXUfJIeYYGyfdCGOPOS2l0on83CPH94Z"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "MYJwByDzw5bCUSkxw6qgTJ7WJbI"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "X3l5ZIwYV4"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/YV;->A0R:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic A0M(Lcom/facebook/ads/redexgen/X/YV;)V
    .locals 0

    .line 60589
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YV;->A0H()V

    return-void
.end method

.method public static synthetic A0N(Lcom/facebook/ads/redexgen/X/YV;Ljava/lang/String;)V
    .locals 0

    .line 60590
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/YV;->A0P(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic A0O(Lcom/facebook/ads/redexgen/X/YV;Z)V
    .locals 0

    .line 60591
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/YV;->A0Q(Z)V

    return-void
.end method

.method private A0P(Ljava/lang/String;)V
    .locals 4

    .line 60592
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0D:Lcom/facebook/ads/redexgen/X/aO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0M(Landroid/view/View;)V

    .line 60593
    new-instance v3, Lcom/facebook/ads/redexgen/X/Yd;

    invoke-direct {v3, p0}, Lcom/facebook/ads/redexgen/X/Yd;-><init>(Lcom/facebook/ads/redexgen/X/YV;)V

    .line 60594
    .local p0, "browserListener":Lcom/facebook/ads/redexgen/X/NM;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0E:Lcom/facebook/ads/redexgen/X/O1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O1;->A05()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A09()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 60595
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0E:Lcom/facebook/ads/redexgen/X/O1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O1;->A05()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A7g()V

    .line 60596
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0E:Lcom/facebook/ads/redexgen/X/O1;

    .line 60597
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O1;->A05()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J5;->A02(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0E:Lcom/facebook/ads/redexgen/X/O1;

    .line 60598
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O1;->A05()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A09()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 60599
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0E:Lcom/facebook/ads/redexgen/X/O1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O1;->A05()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    new-instance v2, Lcom/facebook/ads/redexgen/X/aO;

    invoke-direct {v2, v0, v3}, Lcom/facebook/ads/redexgen/X/aO;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/NM;)V

    .line 60600
    :goto_0
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/YV;->A0D:Lcom/facebook/ads/redexgen/X/aO;

    .line 60601
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0D:Lcom/facebook/ads/redexgen/X/aO;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/YV;->setUpBrowserControls(Lcom/facebook/ads/redexgen/X/aO;)V

    .line 60602
    const/4 v0, -0x1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 60603
    .local p1, "webViewParams":Landroid/widget/LinearLayout$LayoutParams;
    const v0, 0x3f666666    # 0.9f

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 60604
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YV;->A07:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0D:Lcom/facebook/ads/redexgen/X/aO;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60605
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0D:Lcom/facebook/ads/redexgen/X/aO;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/aO;->loadUrl(Ljava/lang/String;)V

    .line 60606
    return-void

    .line 60607
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0E:Lcom/facebook/ads/redexgen/X/O1;

    .line 60608
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O1;->A05()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0E:Lcom/facebook/ads/redexgen/X/O1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O1;->A05()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A09()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Lcom/facebook/ads/redexgen/X/aO;

    invoke-direct {v2, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/aO;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Landroid/app/Activity;Lcom/facebook/ads/redexgen/X/NM;)V

    goto :goto_0
.end method

.method private A0Q(Z)V
    .locals 16

    .line 60609
    move-object/from16 v6, p0

    move/from16 v7, p1

    iput-boolean v7, v6, Lcom/facebook/ads/redexgen/X/YV;->A0H:Z

    .line 60610
    new-instance v2, Lcom/facebook/ads/redexgen/X/Yc;

    invoke-direct {v2, v6, v7}, Lcom/facebook/ads/redexgen/X/Yc;-><init>(Lcom/facebook/ads/redexgen/X/YV;Z)V

    const-wide/16 v0, 0xfa

    invoke-virtual {v6, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/YV;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 60611
    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YV;->A0A(III)Ljava/lang/String;

    move-result-object v10

    const/4 v15, 0x1

    const/4 v9, 0x2

    const/4 v14, 0x0

    if-eqz v7, :cond_6

    .line 60612
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/YV;->A0F:Lcom/facebook/ads/redexgen/X/OA;

    new-array v1, v9, [F

    .line 60613
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/OA;->getY()F

    move-result v0

    aput v0, v1, v14

    iget v0, v6, Lcom/facebook/ads/redexgen/X/YV;->A03:I

    div-int/lit8 v0, v0, 0x5

    int-to-float v0, v0

    aput v0, v1, v15

    .line 60614
    invoke-static {v2, v10, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 60615
    .local v8, "ctaTransAnim":Landroid/animation/ObjectAnimator;
    :goto_0
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/YV;->A07:Landroid/widget/LinearLayout;

    new-array v1, v9, [F

    .line 60616
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getY()F

    move-result v0

    aput v0, v1, v14

    .line 60617
    iget v0, v6, Lcom/facebook/ads/redexgen/X/YV;->A03:I

    if-eqz v7, :cond_0

    div-int/lit8 v0, v0, 0x5

    :cond_0
    int-to-float v0, v0

    aput v0, v1, v15

    .line 60618
    invoke-static {v2, v10, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 60619
    .local v2, "browserTransAnim":Landroid/animation/ObjectAnimator;
    const-wide/16 v0, 0x1f4

    invoke-virtual {v3, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 60620
    iget v12, v6, Lcom/facebook/ads/redexgen/X/YV;->A03:I

    div-int/2addr v12, v9

    iget v2, v6, Lcom/facebook/ads/redexgen/X/YV;->A01:I

    div-int/2addr v2, v9

    sub-int/2addr v12, v2

    .line 60621
    .local v10, "mediaViewTop":I
    iget-object v11, v6, Lcom/facebook/ads/redexgen/X/YV;->A06:Landroid/view/View;

    new-array v4, v9, [F

    .line 60622
    invoke-virtual {v11}, Landroid/view/View;->getY()F

    move-result v2

    aput v2, v4, v14

    if-nez v7, :cond_1

    iget-boolean v2, v6, Lcom/facebook/ads/redexgen/X/YV;->A0G:Z

    if-eqz v2, :cond_5

    :cond_1
    const/4 v2, 0x0

    :goto_1
    aput v2, v4, v15

    .line 60623
    invoke-static {v11, v10, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 60624
    .local v15, "mediaViewTransAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 60625
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/YV;->A0O:Lcom/facebook/ads/redexgen/X/IB;

    if-nez v0, :cond_4

    const/4 v13, 0x0

    .line 60626
    .local v9, "mediaProgressbarHeight":I
    :goto_2
    if-eqz v7, :cond_3

    .line 60627
    iget v11, v6, Lcom/facebook/ads/redexgen/X/YV;->A02:I

    sget-object v4, Lcom/facebook/ads/redexgen/X/YV;->A0R:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v4, v0

    const/4 v0, 0x1

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    :goto_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v4, Lcom/facebook/ads/redexgen/X/YV;->A0R:[Ljava/lang/String;

    const-string v1, "g83HcTndNM"

    const/4 v0, 0x7

    aput-object v1, v4, v0

    const-string v1, "KO02it"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    div-int/lit8 v12, v11, 0x5

    sub-int/2addr v12, v13

    goto :goto_4

    .line 60628
    :cond_3
    iget v12, v6, Lcom/facebook/ads/redexgen/X/YV;->A03:I

    sget v0, Lcom/facebook/ads/redexgen/X/YV;->A0U:I

    sub-int/2addr v12, v0

    sget v0, Lcom/facebook/ads/redexgen/X/YV;->A0W:I

    sub-int/2addr v12, v0

    .line 60629
    .local v14, "mediaTransAnimToY":I
    :goto_4
    iget-object v11, v6, Lcom/facebook/ads/redexgen/X/YV;->A0O:Lcom/facebook/ads/redexgen/X/IB;

    if-eqz v11, :cond_8

    .line 60630
    new-array v8, v9, [F

    .line 60631
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/IB;->getY()F

    move-result v0

    aput v0, v8, v14

    sget-object v4, Lcom/facebook/ads/redexgen/X/YV;->A0R:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v4, v0

    const/4 v0, 0x1

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    goto :goto_3

    .line 60632
    :cond_4
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IB;->getHeight()I

    move-result v13

    goto :goto_2

    .line 60633
    :cond_5
    int-to-float v2, v12

    goto :goto_1

    .line 60634
    :cond_6
    move-object v5, v8

    goto/16 :goto_0

    :cond_7
    sget-object v4, Lcom/facebook/ads/redexgen/X/YV;->A0R:[Ljava/lang/String;

    const-string v1, "uMAfPHErUq8gYLqYGWwvrPw2H7I5hxcd"

    const/4 v0, 0x2

    aput-object v1, v4, v0

    int-to-float v0, v12

    aput v0, v8, v15

    .line 60635
    invoke-static {v11, v10, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 60636
    .local v6, "mediaProgressbarTransAnim":Landroid/animation/ObjectAnimator;
    :cond_8
    new-array v1, v9, [I

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/YV;->A06:Landroid/view/View;

    .line 60637
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    aput v0, v1, v14

    .line 60638
    if-eqz v7, :cond_b

    iget v0, v6, Lcom/facebook/ads/redexgen/X/YV;->A03:I

    div-int/lit8 v0, v0, 0x5

    :goto_5
    aput v0, v1, v15

    .line 60639
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 60640
    const-wide/16 v0, 0x1f4

    invoke-virtual {v4, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 60641
    .local v7, "mediaViewScaleAnim":Landroid/animation/ValueAnimator;
    new-instance v0, Lcom/facebook/ads/redexgen/X/O6;

    invoke-direct {v0, v6}, Lcom/facebook/ads/redexgen/X/O6;-><init>(Lcom/facebook/ads/redexgen/X/YV;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 60642
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 60643
    .local v1, "animatorSet":Landroid/animation/AnimatorSet;
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 60644
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v3, v0, v14

    aput-object v2, v0, v15

    aput-object v1, v0, v9

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 60645
    if-eqz v5, :cond_a

    .line 60646
    const-wide/16 v2, 0x1f4

    invoke-virtual {v5, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 60647
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/animation/Animator;

    aput-object v5, v0, v14

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 60648
    :goto_6
    if-eqz v8, :cond_9

    .line 60649
    invoke-virtual {v8, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 60650
    new-array v0, v1, [Landroid/animation/Animator;

    aput-object v8, v0, v14

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 60651
    :cond_9
    new-instance v0, Lcom/facebook/ads/redexgen/X/O7;

    invoke-direct {v0, v6, v7}, Lcom/facebook/ads/redexgen/X/O7;-><init>(Lcom/facebook/ads/redexgen/X/YV;Z)V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 60652
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 60653
    return-void

    .line 60654
    :cond_a
    const-wide/16 v2, 0x1f4

    const/4 v1, 0x1

    goto :goto_6

    .line 60655
    :cond_b
    iget v0, v6, Lcom/facebook/ads/redexgen/X/YV;->A01:I

    goto :goto_5
.end method

.method private A0R(Z)V
    .locals 4

    .line 60656
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/YV;->setupLayoutConfiguration(Z)V

    .line 60657
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A06:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0M(Landroid/view/View;)V

    .line 60658
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0E:Lcom/facebook/ads/redexgen/X/O1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O1;->A02()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A06:Landroid/view/View;

    .line 60659
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A06:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 60660
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0H:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 60661
    iget v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A03:I

    div-int/lit8 v0, v0, 0x5

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 60662
    .local p0, "mediaLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xe

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 60663
    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 60664
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YV;->A06:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/YV;->A0R:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 60665
    sget-object v2, Lcom/facebook/ads/redexgen/X/YV;->A0R:[Ljava/lang/String;

    const-string v1, "FZuJEB1DgE"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "ioAK5D"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YV;->A06:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/YV;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 60666
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YV;->A0B()V

    .line 60667
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YV;->A0I()V

    .line 60668
    return-void

    .line 60669
    .end local p0    # "mediaLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    const/4 v0, -0x2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 60670
    .restart local p0    # "mediaLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 60671
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YV;->A0C()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A0S(Lcom/facebook/ads/redexgen/X/YV;)Z
    .locals 0

    .line 60672
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0I:Z

    return p0
.end method

.method public static synthetic A0T(Lcom/facebook/ads/redexgen/X/YV;Z)Z
    .locals 0

    .line 60673
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/YV;->A0I:Z

    return p1
.end method

.method private getUrl()Ljava/lang/String;
    .locals 1

    .line 60714
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0E:Lcom/facebook/ads/redexgen/X/O1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O1;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0G()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A04()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setUpBrowserControls(Lcom/facebook/ads/redexgen/X/aO;)V
    .locals 5

    .line 60721
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0B:Lcom/facebook/ads/redexgen/X/NE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0M(Landroid/view/View;)V

    .line 60722
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0E:Lcom/facebook/ads/redexgen/X/O1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O1;->A05()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/NE;

    invoke-direct {v0, v1, p1}, Lcom/facebook/ads/redexgen/X/NE;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0B:Lcom/facebook/ads/redexgen/X/NE;

    .line 60723
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0B:Lcom/facebook/ads/redexgen/X/NE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NE;->getBrowserNavigationListener()Lcom/facebook/ads/redexgen/X/NN;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/aO;->setBrowserNavigationListener(Lcom/facebook/ads/redexgen/X/NN;)V

    .line 60724
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0B:Lcom/facebook/ads/redexgen/X/NE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 60725
    const/4 v4, -0x1

    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 60726
    .local p0, "controlsViewParams":Landroid/widget/LinearLayout$LayoutParams;
    const v0, 0x3dcccccd    # 0.1f

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 60727
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YV;->A0B:Lcom/facebook/ads/redexgen/X/NE;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Yg;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Yg;-><init>(Lcom/facebook/ads/redexgen/X/YV;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NE;->setListener(Lcom/facebook/ads/redexgen/X/ND;)V

    .line 60728
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YV;->A0B:Lcom/facebook/ads/redexgen/X/NE;

    new-instance v0, Lcom/facebook/ads/redexgen/X/O5;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/O5;-><init>(Lcom/facebook/ads/redexgen/X/YV;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NE;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 60729
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YV;->A07:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0B:Lcom/facebook/ads/redexgen/X/NE;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60730
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0C:Lcom/facebook/ads/redexgen/X/NF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0M(Landroid/view/View;)V

    .line 60731
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0E:Lcom/facebook/ads/redexgen/X/O1;

    .line 60732
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O1;->A05()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v3

    const/4 v2, 0x0

    const v1, 0x1010078

    new-instance v0, Lcom/facebook/ads/redexgen/X/NF;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/NF;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0C:Lcom/facebook/ads/redexgen/X/NF;

    .line 60733
    sget v0, Lcom/facebook/ads/redexgen/X/YV;->A0S:I

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 60734
    .local p1, "browserProgressBarParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YV;->A07:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0C:Lcom/facebook/ads/redexgen/X/NF;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60735
    return-void
.end method

.method private setupLayoutConfiguration(Z)V
    .locals 3

    .line 60736
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/YV;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0G:Z

    .line 60737
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0E:Lcom/facebook/ads/redexgen/X/O1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O1;->A08()Lcom/facebook/ads/redexgen/X/M4;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A05:I

    .line 60738
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/YV;->A0H:Z

    .line 60739
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A02:I

    .line 60740
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A04:I

    .line 60741
    iget v1, p0, Lcom/facebook/ads/redexgen/X/YV;->A02:I

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0G:Z

    if-eqz v0, :cond_0

    :goto_2
    add-int/2addr v1, v2

    iput v1, p0, Lcom/facebook/ads/redexgen/X/YV;->A03:I

    .line 60742
    iget v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A02:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A01:I

    .line 60743
    return-void

    .line 60744
    :cond_0
    iget v2, p0, Lcom/facebook/ads/redexgen/X/YV;->A05:I

    goto :goto_2

    .line 60745
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0E:Lcom/facebook/ads/redexgen/X/O1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O1;->A08()Lcom/facebook/ads/redexgen/X/M4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/M4;->getToolbarHeight()I

    move-result v0

    goto :goto_1

    .line 60746
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A0U()V
    .locals 1

    .line 60674
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Nx;->A0U()V

    .line 60675
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/YV;->A0P:Lcom/facebook/ads/redexgen/X/YV;

    .line 60676
    return-void
.end method

.method public final A0V()V
    .locals 3

    .line 60677
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0E:Lcom/facebook/ads/redexgen/X/O1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O1;->A08()Lcom/facebook/ads/redexgen/X/M4;

    move-result-object v2

    .line 60678
    .local p0, "toolbar":Lcom/facebook/ads/redexgen/X/M4;
    const/4 v1, 0x0

    if-eqz v2, :cond_0

    .line 60679
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/YV;->A0c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/M4;->A07()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/M4;->setPageDetailsVisible(Z)V

    .line 60680
    :cond_0
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/YV;->A0J:Z

    .line 60681
    return-void

    .line 60682
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0W()V
    .locals 4

    .line 60683
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0E:Lcom/facebook/ads/redexgen/X/O1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O1;->A08()Lcom/facebook/ads/redexgen/X/M4;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 60684
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0E:Lcom/facebook/ads/redexgen/X/O1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O1;->A08()Lcom/facebook/ads/redexgen/X/M4;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/YV;->A0R:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/YV;->A0R:[Ljava/lang/String;

    const-string v1, "MMiJw7TNUivh7iTB"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "GEB80"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/M4;->setPageDetailsVisible(Z)V

    .line 60685
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0J:Z

    .line 60686
    return-void
.end method

.method public final A0X()V
    .locals 1

    .line 60687
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0K:Z

    .line 60688
    return-void
.end method

.method public final A0Y()V
    .locals 1

    .line 60689
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0K:Z

    .line 60690
    return-void
.end method

.method public final A0Z(Lcom/facebook/ads/redexgen/X/19;Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 3
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 60691
    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/Nx;->A0Z(Lcom/facebook/ads/redexgen/X/19;Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 60692
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A05()Ljava/lang/String;

    move-result-object v1

    .line 60693
    .local p0, "description":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 60694
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YV;->A08:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0Q(Landroid/view/View;I)V

    .line 60695
    :goto_0
    const-wide/16 v1, 0x0

    cmpl-double v0, p3, v1

    if-lez v0, :cond_1

    .line 60696
    iget v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A04:I

    int-to-double v1, v0

    div-double/2addr v1, p3

    double-to-int v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A01:I

    .line 60697
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0G:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A02:I

    :goto_1
    iput v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A01:I

    .line 60698
    return-void

    .line 60699
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A01:I

    goto :goto_1

    .line 60700
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A09:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final A0a()Z
    .locals 1

    .line 60701
    const/4 v0, 0x1

    return v0
.end method

.method public final A0b(Z)Z
    .locals 2

    .line 60702
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/YV;->A0c()Z

    move-result v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    .line 60703
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/YV;->A0Q(Z)V

    .line 60704
    const/4 v0, 0x1

    return v0

    .line 60705
    :cond_0
    return v0
.end method

.method public final A0c()Z
    .locals 1

    .line 60706
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0H:Z

    return v0
.end method

.method public getCloseButtonStyle()I
    .locals 1
    .annotation build Lcom/facebook/ads/internal/view/ToolbarActionView$ToolbarActionMode;
    .end annotation

    .line 60707
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/YV;->A0c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60708
    const/4 v0, 0x3

    return v0

    .line 60709
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0K:Z

    if-eqz v0, :cond_1

    .line 60710
    const/4 v0, 0x2

    return v0

    .line 60711
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A0J:Z

    if-eqz v0, :cond_2

    .line 60712
    const/4 v0, 0x4

    return v0

    .line 60713
    :cond_2
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Nx;->getCloseButtonStyle()I

    move-result v0

    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 60715
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Nx;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 60716
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/YV;->A0c()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/YV;->A0R(Z)V

    .line 60717
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YV;->A0J()V

    .line 60718
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/YV;->A0c()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/YV;->setupLayoutConfiguration(Z)V

    .line 60719
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YV;->A0H()V

    .line 60720
    return-void
.end method
