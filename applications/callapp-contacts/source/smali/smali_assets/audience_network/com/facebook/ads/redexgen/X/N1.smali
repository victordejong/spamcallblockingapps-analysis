.class public final Lcom/facebook/ads/redexgen/X/N1;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field public static final A03:I

.field public static final A04:I

.field public static final A05:I


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/2B;

.field public final A01:Lcom/facebook/ads/redexgen/X/XJ;

.field public final A02:Lcom/facebook/ads/redexgen/X/Ml;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 44513
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x42200000    # 40.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/N1;->A03:I

    .line 44514
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/N1;->A04:I

    .line 44515
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/N1;->A05:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/2B;Lcom/facebook/ads/redexgen/X/Ml;Lcom/facebook/ads/redexgen/X/Lp;)V
    .locals 6

    .line 44516
    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v1, p1

    move-object v5, p4

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/N1;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/2B;Lcom/facebook/ads/redexgen/X/Ml;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Lp;)V

    .line 44517
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/2B;Lcom/facebook/ads/redexgen/X/Ml;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Lp;)V
    .locals 7
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 44518
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44519
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/N1;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    .line 44520
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/N1;->A00:Lcom/facebook/ads/redexgen/X/2B;

    .line 44521
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/N1;->A02:Lcom/facebook/ads/redexgen/X/Ml;

    .line 44522
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/N1;->setOrientation(I)V

    .line 44523
    const/4 v5, -0x1

    const/4 v0, -0x2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44524
    .local p1, "itemParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 44525
    invoke-direct {p0, p4}, Lcom/facebook/ads/redexgen/X/N1;->A01(Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    .line 44526
    .local p3, "headerView":Landroid/view/View;
    invoke-virtual {v4, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 44527
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/N1;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 44528
    .local p5, "separator":Landroid/view/View;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44529
    const v0, -0x9f9890

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0P(Landroid/view/View;I)V

    .line 44530
    invoke-virtual {p0, v4, v3}, Lcom/facebook/ads/redexgen/X/N1;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44531
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/N1;->addView(Landroid/view/View;)V

    .line 44532
    .end local p3    # "headerView":Landroid/view/View;
    .end local p5    # "separator":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N1;->A00:Lcom/facebook/ads/redexgen/X/2B;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2B;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 44533
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N1;->A00:Lcom/facebook/ads/redexgen/X/2B;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2B;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p5, v0}, Lcom/facebook/ads/redexgen/X/N1;->A00(Lcom/facebook/ads/redexgen/X/Lp;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 44534
    .local p0, "subHeaderView":Landroid/view/View;
    sget v0, Lcom/facebook/ads/redexgen/X/N1;->A05:I

    invoke-virtual {v1, v2, v0, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 44535
    invoke-virtual {p0, v1, v3}, Lcom/facebook/ads/redexgen/X/N1;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44536
    .end local p0    # "subHeaderView":Landroid/view/View;
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/N1;->A02()Landroid/view/ViewGroup;

    move-result-object v1

    .line 44537
    .local p0, "optionsView":Landroid/view/View;
    sget v0, Lcom/facebook/ads/redexgen/X/N1;->A05:I

    invoke-virtual {v1, v2, v0, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 44538
    invoke-virtual {p0, v1, v3}, Lcom/facebook/ads/redexgen/X/N1;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44539
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/Lp;Ljava/lang/String;)Landroid/view/View;
    .locals 8

    .line 44540
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/N1;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 44541
    .local p0, "iconView":Landroid/widget/ImageView;
    const v1, -0x9f9890

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 44542
    sget v0, Lcom/facebook/ads/redexgen/X/N1;->A04:I

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44543
    .local p2, "iconParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x10

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 44544
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Lq;->A01(Lcom/facebook/ads/redexgen/X/Lp;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 44545
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/N1;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 44546
    .local v0, "textView":Landroid/widget/TextView;
    const/4 v4, 0x1

    const/16 v0, 0xe

    invoke-static {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0c(Landroid/widget/TextView;ZI)V

    .line 44547
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44548
    const/4 v1, -0x1

    const/4 v0, -0x2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44549
    .local p1, "textViewParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44550
    sget v0, Lcom/facebook/ads/redexgen/X/N1;->A05:I

    const/4 v2, 0x0

    invoke-virtual {v5, v0, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 44551
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 44552
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/N1;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44553
    .local v7, "subHeaderView":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 44554
    invoke-virtual {v0, v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44555
    invoke-virtual {v0, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44556
    return-object v0
.end method

.method private A01(Ljava/lang/String;)Landroid/view/View;
    .locals 8

    .line 44557
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/N1;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 44558
    .local p0, "arrowImageView":Landroid/widget/ImageView;
    const v0, -0x9f9890

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 44559
    sget-object v0, Lcom/facebook/ads/redexgen/X/Lp;->A09:Lcom/facebook/ads/redexgen/X/Lp;

    .line 44560
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lq;->A01(Lcom/facebook/ads/redexgen/X/Lp;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 44561
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 44562
    sget v1, Lcom/facebook/ads/redexgen/X/N1;->A05:I

    mul-int/lit8 v0, v1, 0x2

    const/4 v6, 0x0

    invoke-virtual {v7, v6, v1, v0, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 44563
    sget v0, Lcom/facebook/ads/redexgen/X/N1;->A03:I

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44564
    .local p1, "arrowParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mz;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Mz;-><init>(Lcom/facebook/ads/redexgen/X/N1;)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44565
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/N1;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 44566
    .local v0, "titleView":Landroid/widget/TextView;
    const/16 v3, 0x11

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 44567
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44568
    const/4 v1, 0x1

    const/16 v0, 0x10

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0c(Landroid/widget/TextView;ZI)V

    .line 44569
    const v0, -0xe3e1df

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44570
    const/4 v1, -0x1

    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44571
    .local v0, "titleParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/N1;->A03:I

    invoke-virtual {v2, v6, v6, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 44572
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 44573
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/N1;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44574
    .local v0, "header":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 44575
    invoke-virtual {v0, v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44576
    invoke-virtual {v0, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44577
    return-object v0
.end method

.method private A02()Landroid/view/ViewGroup;
    .locals 6

    .line 44578
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N1;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v5, Lcom/facebook/ads/redexgen/X/N7;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/N7;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 44579
    .local p0, "reportOptionsView":Lcom/facebook/ads/redexgen/X/N7;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N1;->A00:Lcom/facebook/ads/redexgen/X/2B;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2B;->A05()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/2B;

    .line 44580
    .local v5, "reason":Lcom/facebook/ads/redexgen/X/2B;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N1;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Mn;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/Mn;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 44581
    .local v0, "chipView":Lcom/facebook/ads/redexgen/X/Mn;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/2B;->A04()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Mn;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Lp;)V

    .line 44582
    new-instance v0, Lcom/facebook/ads/redexgen/X/N0;

    invoke-direct {v0, p0, v2, v3}, Lcom/facebook/ads/redexgen/X/N0;-><init>(Lcom/facebook/ads/redexgen/X/N1;Lcom/facebook/ads/redexgen/X/Mn;Lcom/facebook/ads/redexgen/X/2B;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Mn;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44583
    invoke-virtual {v5, v2}, Lcom/facebook/ads/redexgen/X/N7;->addView(Landroid/view/View;)V

    .line 44584
    .end local v5    # "reason":Lcom/facebook/ads/redexgen/X/2B;
    .end local v0    # "chipView":Lcom/facebook/ads/redexgen/X/Mn;
    goto :goto_0

    .line 44585
    :cond_0
    return-object v5
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/N1;)Lcom/facebook/ads/redexgen/X/Ml;
    .locals 0

    .line 44586
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/N1;->A02:Lcom/facebook/ads/redexgen/X/Ml;

    return-object p0
.end method
