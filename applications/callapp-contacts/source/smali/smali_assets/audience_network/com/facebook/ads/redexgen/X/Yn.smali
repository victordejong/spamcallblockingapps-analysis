.class public final Lcom/facebook/ads/redexgen/X/Yn;
.super Lcom/facebook/ads/redexgen/X/Nf;
.source ""


# static fields
.field public static A0H:[B

.field public static A0I:[Ljava/lang/String;

.field public static final A0J:I

.field public static final A0K:I

.field public static final A0L:I

.field public static final A0M:I

.field public static final A0N:I

.field public static final A0O:I

.field public static final A0P:I

.field public static final A0Q:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Landroid/widget/LinearLayout;

.field public A03:Landroid/widget/TextView;

.field public A04:Landroid/widget/TextView;

.field public A05:Landroid/widget/TextView;

.field public A06:Lcom/facebook/ads/redexgen/X/1G;

.field public A07:Lcom/facebook/ads/redexgen/X/1J;

.field public A08:Lcom/facebook/ads/redexgen/X/Nq;

.field public A09:Z

.field public A0A:Z

.field public A0B:Z

.field public final A0C:Landroid/widget/LinearLayout;

.field public final A0D:Landroid/widget/RelativeLayout;

.field public final A0E:Landroid/widget/RelativeLayout;

.field public final A0F:Landroid/widget/TextView;

.field public final A0G:Lcom/facebook/ads/redexgen/X/XJ;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 61541
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Yn;->A08()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Yn;->A07()V

    const/4 v1, -0x1

    const/16 v0, 0x4d

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2L;->A01(II)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Yn;->A0P:I

    .line 61542
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Yn;->A0M:I

    .line 61543
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Yn;->A0N:I

    .line 61544
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x41d00000    # 26.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Yn;->A0J:I

    .line 61545
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x43100000    # 144.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Yn;->A0L:I

    .line 61546
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x42400000    # 48.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Yn;->A0K:I

    .line 61547
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Yn;->A0O:I

    .line 61548
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x41600000    # 14.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Yn;->A0Q:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;IZLcom/facebook/ads/redexgen/X/1I;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M9;Lcom/facebook/ads/redexgen/X/QE;Lcom/facebook/ads/redexgen/X/La;)V
    .locals 11

    .line 61549
    const/4 v10, 0x0

    move-object v0, p0

    move-object/from16 v6, p6

    move-object/from16 v5, p5

    move-object v4, p4

    move-object/from16 v8, p8

    move-object v1, p1

    move-object/from16 v9, p9

    move v2, p2

    move-object/from16 v7, p7

    move v3, p3

    invoke-direct/range {v0 .. v10}, Lcom/facebook/ads/redexgen/X/Yn;-><init>(Lcom/facebook/ads/redexgen/X/XJ;IZLcom/facebook/ads/redexgen/X/1I;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M9;Lcom/facebook/ads/redexgen/X/QE;Lcom/facebook/ads/redexgen/X/La;Z)V

    .line 61550
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;IZLcom/facebook/ads/redexgen/X/1I;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M9;Lcom/facebook/ads/redexgen/X/QE;Lcom/facebook/ads/redexgen/X/La;Z)V
    .locals 12

    .line 61551
    move-object v2, p0

    move-object v3, p0

    move-object/from16 v9, p7

    move-object/from16 v8, p6

    move-object/from16 v7, p5

    move-object/from16 v11, p9

    move v5, p2

    move-object/from16 v10, p8

    move-object v4, p1

    move-object/from16 v6, p4

    invoke-direct/range {v3 .. v11}, Lcom/facebook/ads/redexgen/X/Nf;-><init>(Lcom/facebook/ads/redexgen/X/XJ;ILcom/facebook/ads/redexgen/X/1I;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M9;Lcom/facebook/ads/redexgen/X/QE;Lcom/facebook/ads/redexgen/X/La;)V

    .line 61552
    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Yn;->A0A:Z

    .line 61553
    iput v0, v2, Lcom/facebook/ads/redexgen/X/Yn;->A00:I

    .line 61554
    iput v0, v2, Lcom/facebook/ads/redexgen/X/Yn;->A01:I

    .line 61555
    iput-object v4, v2, Lcom/facebook/ads/redexgen/X/Yn;->A0G:Lcom/facebook/ads/redexgen/X/XJ;

    .line 61556
    move/from16 v0, p10

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Yn;->A09:Z

    .line 61557
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Nf;->A04:Lcom/facebook/ads/redexgen/X/No;

    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/No;->setFullCircleCorners(Z)V

    .line 61558
    sget v1, Lcom/facebook/ads/redexgen/X/Yn;->A0M:I

    sget v0, Lcom/facebook/ads/redexgen/X/Yn;->A0J:I

    invoke-virtual {v2, v1, v1, v1, v0}, Lcom/facebook/ads/redexgen/X/Yn;->setPadding(IIII)V

    .line 61559
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Yn;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Yn;->A0D:Landroid/widget/RelativeLayout;

    .line 61560
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Yn;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Yn;->A05:Landroid/widget/TextView;

    .line 61561
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Yn;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Yn;->A02:Landroid/widget/LinearLayout;

    .line 61562
    new-instance v5, Lcom/facebook/ads/redexgen/X/Nq;

    iget-object v6, v2, Lcom/facebook/ads/redexgen/X/Yn;->A0G:Lcom/facebook/ads/redexgen/X/XJ;

    sget v7, Lcom/facebook/ads/redexgen/X/Yn;->A0Q:I

    sget v9, Lcom/facebook/ads/redexgen/X/Yn;->A0P:I

    const/4 v8, 0x5

    const/4 v10, -0x1

    invoke-direct/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/Nq;-><init>(Lcom/facebook/ads/redexgen/X/XJ;IIII)V

    iput-object v5, v2, Lcom/facebook/ads/redexgen/X/Yn;->A08:Lcom/facebook/ads/redexgen/X/Nq;

    .line 61563
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Yn;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Yn;->A0E:Landroid/widget/RelativeLayout;

    .line 61564
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Yn;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Yn;->A0C:Landroid/widget/LinearLayout;

    .line 61565
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Yn;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Yn;->A04:Landroid/widget/TextView;

    .line 61566
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Yn;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Yn;->A03:Landroid/widget/TextView;

    .line 61567
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Nf;->A01:Landroid/widget/RelativeLayout;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Yn;->A0D:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 61568
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Nf;->A01:Landroid/widget/RelativeLayout;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Yn;->A0C:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 61569
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Yn;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Yn;->A0F:Landroid/widget/TextView;

    .line 61570
    invoke-static {p0, v4}, Lcom/facebook/ads/redexgen/X/Lh;->A0W(Landroid/view/View;Landroid/content/Context;)V

    .line 61571
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/J4;->A1S(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61572
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Yn;->A03:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61573
    :cond_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Yn;->A0G:Lcom/facebook/ads/redexgen/X/XJ;

    .line 61574
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1r(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Yn;->A0B:Z

    .line 61575
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Yn;->A05()V

    .line 61576
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Yn;->A0H:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x63

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()V
    .locals 3

    .line 61577
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nf;->A03:Lcom/facebook/ads/redexgen/X/a7;

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/a7;->setPadding(IIII)V

    .line 61578
    sget v2, Lcom/facebook/ads/redexgen/X/Yn;->A0K:I

    const/4 v0, -0x1

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 61579
    .local p0, "ctaButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A03:Lcom/facebook/ads/redexgen/X/a7;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/a7;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61580
    return-void
.end method

.method private A02()V
    .locals 6

    .line 61581
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A0C:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 61582
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A0C:Landroid/widget/LinearLayout;

    sget v0, Lcom/facebook/ads/redexgen/X/Yn;->A0M:I

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5, v5, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 61583
    const/4 v4, -0x2

    const/4 v3, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 61584
    .local p0, "expandableParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A0D:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 61585
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A0C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61586
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A0C:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 61587
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A03:Landroid/widget/TextView;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 61588
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A03:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 61589
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A03:Landroid/widget/TextView;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 61590
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A03:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A0B:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x1000000

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61591
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A03:Landroid/widget/TextView;

    invoke-static {v0, v5, v2}, Lcom/facebook/ads/redexgen/X/Lh;->A0c(Landroid/widget/TextView;ZI)V

    .line 61592
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 61593
    .local v1, "descriptionParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A0C:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A03:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61594
    return-void

    .line 61595
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private A03()V
    .locals 8

    .line 61596
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A0D:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 61597
    const/4 v4, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 61598
    .local p0, "iconAndMetaDataContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Yn;->A0M:I

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 61599
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A0D:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61600
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A0D:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 61601
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Nf;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A00:I

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 61602
    .local v4, "iconParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xf

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 61603
    const/16 v0, 0x9

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 61604
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A0D:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A04:Lcom/facebook/ads/redexgen/X/No;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61605
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 61606
    .local v0, "containerParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Yn;->A0N:I

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 61607
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A04:Lcom/facebook/ads/redexgen/X/No;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/No;->getId()I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {v3, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 61608
    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 61609
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A0D:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A0E:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61610
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A0E:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 61611
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A05:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 61612
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A05:Landroid/widget/TextView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Nf;->A06:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61613
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A05:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A0B:Z

    const/high16 v7, -0x1000000

    const/4 v3, -0x1

    if-eqz v0, :cond_1

    const/high16 v0, -0x1000000

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61614
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A05:Landroid/widget/TextView;

    const/16 v0, 0x12

    invoke-static {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0c(Landroid/widget/TextView;ZI)V

    .line 61615
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A0E:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A05:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 61616
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A02:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 61617
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A02:Landroid/widget/LinearLayout;

    const/16 v6, 0x10

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 61618
    sget v0, Lcom/facebook/ads/redexgen/X/Yn;->A0O:I

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 61619
    .local v1, "ratingInfoContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Yn;->A0N:I

    div-int/lit8 v0, v0, 0x2

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 61620
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A05:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 61621
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A0E:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61622
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 61623
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A08:Lcom/facebook/ads/redexgen/X/Nq;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/Nq;->setGravity(I)V

    .line 61624
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 61625
    .local v2, "starRatingContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A02:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A08:Lcom/facebook/ads/redexgen/X/Nq;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61626
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A04:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A0B:Z

    if-eqz v0, :cond_0

    :goto_1
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61627
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A04:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 61628
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A04:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 61629
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A04:Landroid/widget/TextView;

    const/16 v0, 0xe

    invoke-static {v1, v5, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0c(Landroid/widget/TextView;ZI)V

    .line 61630
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 61631
    .local v0, "ratingCountParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Yn;->A0N:I

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 61632
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A02:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A04:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61633
    return-void

    .line 61634
    :cond_0
    const/4 v7, -0x1

    goto :goto_1

    .line 61635
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private A04()V
    .locals 4

    .line 61636
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A0F:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 61637
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A0F:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 61638
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A0F:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 61639
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A0F:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A0B:Z

    const/4 v3, -0x1

    if-eqz v0, :cond_0

    const/high16 v0, -0x1000000

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61640
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A0F:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 61641
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Yn;->A0F:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0c(Landroid/widget/TextView;ZI)V

    .line 61642
    const/4 v0, -0x2

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 61643
    .local p0, "socialContextParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Yn;->A0M:I

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 61644
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A0F:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61645
    return-void

    .line 61646
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private A05()V
    .locals 2

    .line 61647
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Yn;->removeAllViews()V

    .line 61648
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nf;->A01:Landroid/widget/RelativeLayout;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Nf;->A06:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61649
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Yn;->A03()V

    .line 61650
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Yn;->A02()V

    .line 61651
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Yn;->A01()V

    .line 61652
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Yn;->A04()V

    .line 61653
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Yn;->A06()V

    .line 61654
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A01:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0M(Landroid/view/View;)V

    .line 61655
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A03:Lcom/facebook/ads/redexgen/X/a7;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0M(Landroid/view/View;)V

    .line 61656
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A0F:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0M(Landroid/view/View;)V

    .line 61657
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Yn;->addView(Landroid/view/View;)V

    .line 61658
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A03:Lcom/facebook/ads/redexgen/X/a7;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Yn;->addView(Landroid/view/View;)V

    .line 61659
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A0F:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Yn;->addView(Landroid/view/View;)V

    .line 61660
    return-void
.end method

.method private A06()V
    .locals 5

    .line 61661
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A06:Lcom/facebook/ads/redexgen/X/1G;

    if-nez v0, :cond_0

    .line 61662
    return-void

    .line 61663
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A05:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A06()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61664
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A03:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A06:Lcom/facebook/ads/redexgen/X/1G;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61665
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A0F:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A06:Lcom/facebook/ads/redexgen/X/1G;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61666
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A07:Lcom/facebook/ads/redexgen/X/1J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61667
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A03:Lcom/facebook/ads/redexgen/X/a7;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0K(Landroid/view/View;)V

    .line 61668
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A06:Lcom/facebook/ads/redexgen/X/1G;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61669
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A0F:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0K(Landroid/view/View;)V

    .line 61670
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A06:Lcom/facebook/ads/redexgen/X/1G;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 61671
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A02:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 61672
    :cond_3
    :goto_0
    return-void

    .line 61673
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A02:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 61674
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Yn;->A08:Lcom/facebook/ads/redexgen/X/Nq;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A06:Lcom/facebook/ads/redexgen/X/1G;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A03()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Yn;->A0I:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Yn;->A0I:[Ljava/lang/String;

    const-string v1, "VSVKlO90K15ihGB4A0qZPRqEppX5OU7U"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "xs76xd0mQfWREabMq0mbrfEp6FCRmbTD"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Nq;->setRating(F)V

    .line 61675
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A06:Lcom/facebook/ads/redexgen/X/1G;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A02()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 61676
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Yn;->A04:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Yn;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61677
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A06:Lcom/facebook/ads/redexgen/X/1G;

    .line 61678
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Yn;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61679
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A07()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Yn;->A0H:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x6ft
        -0x14t
    .end array-data
.end method

.method public static A08()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ZYFZvgakVe"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Z9juamcNffZ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "L6NhnuluGVbfOuIZp07EBLc1k7rVfOba"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "poGipFcmqzgO1AN9d1VwktKUuwbeuE2x"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "1MA0bi3k"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "zUZ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "l0mlyabDLiJh1QvHe0VixDkOpEP8aZzg"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "KStQaqdBmF0CfboN9Wjc4"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Yn;->A0I:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A09(I)I
    .locals 2

    .line 61680
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A01:I

    add-int/2addr v1, v0

    sget v0, Lcom/facebook/ads/redexgen/X/Yn;->A0N:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0A()V
    .locals 2

    .line 61681
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A04:Lcom/facebook/ads/redexgen/X/No;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0K(Landroid/view/View;)V

    .line 61682
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A0E:Landroid/widget/RelativeLayout;

    .line 61683
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 61684
    .local p0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v1, :cond_0

    .line 61685
    const/4 v0, 0x0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 61686
    :cond_0
    return-void
.end method

.method public final A0B()V
    .locals 1

    .line 61687
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A0F:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0K(Landroid/view/View;)V

    .line 61688
    return-void
.end method

.method public final A0E(I)V
    .locals 8

    .line 61689
    const/4 v7, 0x1

    const/4 v4, 0x0

    if-ne p1, v7, :cond_4

    const/4 v6, 0x1

    .line 61690
    .local v7, "isPortrait":Z
    :goto_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A09:Z

    const/4 v3, 0x3

    const/4 v5, -0x1

    const/4 v1, -0x2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A0A:Z

    if-eqz v0, :cond_1

    .line 61691
    invoke-virtual {p0, v7}, Lcom/facebook/ads/redexgen/X/Yn;->setOrientation(I)V

    .line 61692
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 61693
    .local v4, "auxContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/Yn;->setBackgroundResource(I)V

    .line 61694
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61695
    sget v0, Lcom/facebook/ads/redexgen/X/Yn;->A0K:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 61696
    .local p1, "buttonParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A03:Lcom/facebook/ads/redexgen/X/a7;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/a7;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61697
    if-nez v6, :cond_0

    .line 61698
    const v0, 0x3f333333    # 0.7f

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 61699
    const v0, -0x40ccd1d2    # -0.6999234f

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0P(Landroid/view/View;I)V

    .line 61700
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Yn;->A04()V

    .line 61701
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A0F:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 61702
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A0F:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0M(Landroid/view/View;)V

    .line 61703
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A0F:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Yn;->addView(Landroid/view/View;)V

    .line 61704
    .end local p1    # "buttonParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "auxContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    :goto_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Yn;->bringToFront()V

    .line 61705
    return-void

    .line 61706
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A0F:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1

    .line 61707
    :cond_1
    if-eqz v6, :cond_2

    :goto_3
    invoke-virtual {p0, v7}, Lcom/facebook/ads/redexgen/X/Yn;->setOrientation(I)V

    .line 61708
    if-nez v6, :cond_3

    .line 61709
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Yn;->setWeightSum(F)V

    .line 61710
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 61711
    .local p0, "auxContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 61712
    sget v1, Lcom/facebook/ads/redexgen/X/Yn;->A0J:I

    sget v0, Lcom/facebook/ads/redexgen/X/Yn;->A0M:I

    sub-int/2addr v1, v0

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 61713
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61714
    sget v0, Lcom/facebook/ads/redexgen/X/Yn;->A0K:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 61715
    .local v4, "ctaButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Yn;->A0J:I

    div-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 61716
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 61717
    const/16 v0, 0x50

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 61718
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A03:Lcom/facebook/ads/redexgen/X/a7;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/a7;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61719
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nf;->A03:Lcom/facebook/ads/redexgen/X/a7;

    sget v0, Lcom/facebook/ads/redexgen/X/Yn;->A0L:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/a7;->setMinWidth(I)V

    .line 61720
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A0F:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0M(Landroid/view/View;)V

    .line 61721
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 61722
    .local v0, "socialContextParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 61723
    sget v0, Lcom/facebook/ads/redexgen/X/Yn;->A0N:I

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 61724
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A0C:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A0F:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61725
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A0C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 61726
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A0F:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 61727
    .end local p0    # "auxContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "ctaButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v0    # "socialContextParams":Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_2

    .line 61728
    :cond_2
    const/4 v7, 0x0

    goto :goto_3

    .line 61729
    :cond_3
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Yn;->A05()V

    goto :goto_2

    .line 61730
    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method public final A0F(Z)V
    .locals 0

    .line 61731
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A0A:Z

    .line 61732
    return-void
.end method

.method public final getExpandableLayout()Landroid/view/View;
    .locals 1

    .line 61733
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A0C:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    .line 61734
    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/Nf;->onLayout(ZIIII)V

    .line 61735
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A00:I

    if-nez v0, :cond_0

    .line 61736
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A03:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A00:I

    .line 61737
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A0F:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A01:I

    .line 61738
    :cond_0
    return-void
.end method

.method public setInfo(Lcom/facebook/ads/redexgen/X/1G;Lcom/facebook/ads/redexgen/X/1J;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ni;)V
    .locals 0
    .param p5    # Lcom/facebook/ads/redexgen/X/Ni;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 61739
    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/Nf;->setInfo(Lcom/facebook/ads/redexgen/X/1G;Lcom/facebook/ads/redexgen/X/1J;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ni;)V

    .line 61740
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A06:Lcom/facebook/ads/redexgen/X/1G;

    .line 61741
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Yn;->A07:Lcom/facebook/ads/redexgen/X/1J;

    .line 61742
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Yn;->A06()V

    .line 61743
    return-void
.end method

.method public setTitleMaxLines(I)V
    .locals 2

    .line 61744
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A05:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 61745
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A05:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 61746
    return-void
.end method
