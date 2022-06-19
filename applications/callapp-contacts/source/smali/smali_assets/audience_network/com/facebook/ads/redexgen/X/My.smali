.class public final Lcom/facebook/ads/redexgen/X/My;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field public static final A03:Landroid/widget/LinearLayout$LayoutParams;

.field public static final A04:I

.field public static final A05:I

.field public static final A06:I


# instance fields
.field public final A00:Landroid/widget/ImageView;

.field public final A01:Landroid/widget/LinearLayout;

.field public final A02:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 44473
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/My;->A05:I

    .line 44474
    sget v0, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    float-to-double v2, v0

    const-wide/high16 v0, 0x402d000000000000L    # 14.5

    mul-double/2addr v2, v0

    double-to-int v0, v2

    sput v0, Lcom/facebook/ads/redexgen/X/My;->A06:I

    .line 44475
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/My;->A04:I

    .line 44476
    const/4 v2, -0x1

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/My;->A03:Landroid/widget/LinearLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;)V
    .locals 5

    .line 44477
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44478
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/My;->A00:Landroid/widget/ImageView;

    .line 44479
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/My;->A00:Landroid/widget/ImageView;

    const v0, -0x9f9890

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 44480
    sget v0, Lcom/facebook/ads/redexgen/X/My;->A04:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44481
    .local p0, "iconParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0x10

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 44482
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/My;->A00:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44483
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/My;->A01:Landroid/widget/LinearLayout;

    .line 44484
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/My;->A01:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 44485
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/My;->A01:Landroid/widget/LinearLayout;

    sget v0, Lcom/facebook/ads/redexgen/X/My;->A05:I

    mul-int/lit8 v0, v0, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 44486
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/My;->A01:Landroid/widget/LinearLayout;

    sget-object v0, Lcom/facebook/ads/redexgen/X/My;->A03:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44487
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/My;->A02:Landroid/widget/TextView;

    .line 44488
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/My;->A02:Landroid/widget/TextView;

    invoke-static {v0, v2, v4}, Lcom/facebook/ads/redexgen/X/Lh;->A0c(Landroid/widget/TextView;ZI)V

    .line 44489
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/My;->A02:Landroid/widget/TextView;

    const v0, -0xe3e1df

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44490
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/My;->A01:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/My;->A02:Landroid/widget/TextView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/My;->A03:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44491
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/My;->setOrientation(I)V

    .line 44492
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/My;->A00:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/My;->addView(Landroid/view/View;)V

    .line 44493
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/My;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/My;->addView(Landroid/view/View;)V

    .line 44494
    return-void
.end method


# virtual methods
.method public setInfo(Lcom/facebook/ads/redexgen/X/Lp;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 44495
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/My;->A00:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Lq;->A01(Lcom/facebook/ads/redexgen/X/Lp;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 44496
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/My;->A02:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44497
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 44498
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/My;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 44499
    .local p0, "subtitleTextView":Landroid/widget/TextView;
    const/16 v0, 0xe

    invoke-static {v2, v3, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0c(Landroid/widget/TextView;ZI)V

    .line 44500
    const v0, -0x9f9890

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44501
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44502
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/My;->A01:Landroid/widget/LinearLayout;

    sget-object v0, Lcom/facebook/ads/redexgen/X/My;->A03:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44503
    sget v0, Lcom/facebook/ads/redexgen/X/My;->A05:I

    invoke-virtual {p0, v3, v0, v3, v0}, Lcom/facebook/ads/redexgen/X/My;->setPadding(IIII)V

    .line 44504
    .end local p0    # "subtitleTextView":Landroid/widget/TextView;
    :goto_0
    return-void

    .line 44505
    :cond_0
    sget v0, Lcom/facebook/ads/redexgen/X/My;->A06:I

    invoke-virtual {p0, v3, v0, v3, v0}, Lcom/facebook/ads/redexgen/X/My;->setPadding(IIII)V

    goto :goto_0
.end method
