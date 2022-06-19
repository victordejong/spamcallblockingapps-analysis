.class public final Lcom/facebook/ads/redexgen/X/Mw;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field public static final A03:I

.field public static final A04:I

.field public static final A05:I


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/2B;

.field public final A01:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A02:Lcom/facebook/ads/redexgen/X/Mg;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 44472
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x42200000    # 40.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Mw;->A03:I

    .line 44473
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Mw;->A04:I

    .line 44474
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Mw;->A05:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/2B;Lcom/facebook/ads/redexgen/X/Mg;Lcom/facebook/ads/redexgen/X/Lr;)V
    .locals 6

    .line 44475
    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p4

    move-object v3, p3

    move-object v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Mw;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/2B;Lcom/facebook/ads/redexgen/X/Mg;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Lr;)V

    .line 44476
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/2B;Lcom/facebook/ads/redexgen/X/Mg;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Lr;)V
    .locals 7
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 44477
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44478
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Mw;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    .line 44479
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Mw;->A00:Lcom/facebook/ads/redexgen/X/2B;

    .line 44480
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Mw;->A02:Lcom/facebook/ads/redexgen/X/Mg;

    .line 44481
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/Mw;->setOrientation(I)V

    .line 44482
    const/4 v5, -0x1

    const/4 v0, -0x2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44483
    .local p1, "itemParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 44484
    invoke-direct {p0, p4}, Lcom/facebook/ads/redexgen/X/Mw;->A01(Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    .line 44485
    .local p3, "headerView":Landroid/view/View;
    invoke-virtual {v4, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 44486
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mw;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 44487
    .local p5, "separator":Landroid/view/View;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44488
    const v0, -0x9f9890

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0O(Landroid/view/View;I)V

    .line 44489
    invoke-virtual {p0, v4, v3}, Lcom/facebook/ads/redexgen/X/Mw;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44490
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/Mw;->addView(Landroid/view/View;)V

    .line 44491
    .end local p3    # "headerView":Landroid/view/View;
    .end local p5    # "separator":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mw;->A00:Lcom/facebook/ads/redexgen/X/2B;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2B;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 44492
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mw;->A00:Lcom/facebook/ads/redexgen/X/2B;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2B;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p5, v0}, Lcom/facebook/ads/redexgen/X/Mw;->A00(Lcom/facebook/ads/redexgen/X/Lr;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 44493
    .local p0, "subHeaderView":Landroid/view/View;
    sget v0, Lcom/facebook/ads/redexgen/X/Mw;->A05:I

    invoke-virtual {v1, v2, v0, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 44494
    invoke-virtual {p0, v1, v3}, Lcom/facebook/ads/redexgen/X/Mw;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44495
    .end local p0    # "subHeaderView":Landroid/view/View;
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Mw;->A02()Landroid/view/ViewGroup;

    move-result-object v1

    .line 44496
    .local p0, "optionsView":Landroid/view/View;
    sget v0, Lcom/facebook/ads/redexgen/X/Mw;->A05:I

    invoke-virtual {v1, v2, v0, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 44497
    invoke-virtual {p0, v1, v3}, Lcom/facebook/ads/redexgen/X/Mw;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44498
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/Lr;Ljava/lang/String;)Landroid/view/View;
    .locals 8

    .line 44499
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mw;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 44500
    .local p0, "iconView":Landroid/widget/ImageView;
    const v1, -0x9f9890

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 44501
    sget v0, Lcom/facebook/ads/redexgen/X/Mw;->A04:I

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44502
    .local p2, "iconParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x10

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 44503
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ls;->A01(Lcom/facebook/ads/redexgen/X/Lr;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 44504
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mw;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 44505
    .local v0, "textView":Landroid/widget/TextView;
    const/4 v4, 0x1

    const/16 v0, 0xe

    invoke-static {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0Z(Landroid/widget/TextView;ZI)V

    .line 44506
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44507
    const/4 v1, -0x1

    const/4 v0, -0x2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44508
    .local p1, "textViewParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44509
    sget v0, Lcom/facebook/ads/redexgen/X/Mw;->A05:I

    const/4 v2, 0x0

    invoke-virtual {v5, v0, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 44510
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 44511
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mw;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44512
    .local v7, "subHeaderView":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 44513
    invoke-virtual {v0, v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44514
    invoke-virtual {v0, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44515
    return-object v0
.end method

.method private A01(Ljava/lang/String;)Landroid/view/View;
    .locals 8

    .line 44516
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mw;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 44517
    .local p0, "arrowImageView":Landroid/widget/ImageView;
    const v0, -0x9f9890

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 44518
    sget-object v0, Lcom/facebook/ads/redexgen/X/Lr;->A08:Lcom/facebook/ads/redexgen/X/Lr;

    .line 44519
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ls;->A01(Lcom/facebook/ads/redexgen/X/Lr;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 44520
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 44521
    sget v1, Lcom/facebook/ads/redexgen/X/Mw;->A05:I

    mul-int/lit8 v0, v1, 0x2

    const/4 v6, 0x0

    invoke-virtual {v7, v6, v1, v0, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 44522
    sget v0, Lcom/facebook/ads/redexgen/X/Mw;->A03:I

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44523
    .local p1, "arrowParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mu;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Mu;-><init>(Lcom/facebook/ads/redexgen/X/Mw;)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44524
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mw;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 44525
    .local v0, "titleView":Landroid/widget/TextView;
    const/16 v3, 0x11

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 44526
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44527
    const/4 v1, 0x1

    const/16 v0, 0x10

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0Z(Landroid/widget/TextView;ZI)V

    .line 44528
    const v0, -0xe3e1df

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44529
    const/4 v1, -0x1

    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44530
    .local v0, "titleParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Mw;->A03:I

    invoke-virtual {v2, v6, v6, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 44531
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 44532
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mw;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44533
    .local v0, "header":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 44534
    invoke-virtual {v0, v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44535
    invoke-virtual {v0, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44536
    return-object v0
.end method

.method private A02()Landroid/view/ViewGroup;
    .locals 6

    .line 44537
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mw;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v5, Lcom/facebook/ads/redexgen/X/N2;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/N2;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 44538
    .local p0, "reportOptionsView":Lcom/facebook/ads/redexgen/X/N2;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mw;->A00:Lcom/facebook/ads/redexgen/X/2B;

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

    .line 44539
    .local v5, "reason":Lcom/facebook/ads/redexgen/X/2B;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mw;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Mi;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/Mi;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 44540
    .local v0, "chipView":Lcom/facebook/ads/redexgen/X/Mi;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/2B;->A04()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Mi;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Lr;)V

    .line 44541
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mv;

    invoke-direct {v0, p0, v2, v3}, Lcom/facebook/ads/redexgen/X/Mv;-><init>(Lcom/facebook/ads/redexgen/X/Mw;Lcom/facebook/ads/redexgen/X/Mi;Lcom/facebook/ads/redexgen/X/2B;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Mi;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44542
    invoke-virtual {v5, v2}, Lcom/facebook/ads/redexgen/X/N2;->addView(Landroid/view/View;)V

    .line 44543
    .end local v5    # "reason":Lcom/facebook/ads/redexgen/X/2B;
    .end local v0    # "chipView":Lcom/facebook/ads/redexgen/X/Mi;
    goto :goto_0

    .line 44544
    :cond_0
    return-object v5
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Mw;)Lcom/facebook/ads/redexgen/X/Mg;
    .locals 0

    .line 44545
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Mw;->A02:Lcom/facebook/ads/redexgen/X/Mg;

    return-object p0
.end method
