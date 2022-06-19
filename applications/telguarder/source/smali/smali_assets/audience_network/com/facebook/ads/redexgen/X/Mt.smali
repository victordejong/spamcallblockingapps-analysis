.class public final Lcom/facebook/ads/redexgen/X/Mt;
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

    .line 44432
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Mt;->A05:I

    .line 44433
    sget v0, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    float-to-double v2, v0

    const-wide/high16 v0, 0x402d000000000000L    # 14.5

    mul-double/2addr v2, v0

    double-to-int v0, v2

    sput v0, Lcom/facebook/ads/redexgen/X/Mt;->A06:I

    .line 44434
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Mt;->A04:I

    .line 44435
    const/4 v2, -0x1

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Mt;->A03:Landroid/widget/LinearLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 5

    .line 44436
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44437
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Mt;->A00:Landroid/widget/ImageView;

    .line 44438
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mt;->A00:Landroid/widget/ImageView;

    const v0, -0x9f9890

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 44439
    sget v0, Lcom/facebook/ads/redexgen/X/Mt;->A04:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44440
    .local p0, "iconParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0x10

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 44441
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mt;->A00:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44442
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Mt;->A01:Landroid/widget/LinearLayout;

    .line 44443
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mt;->A01:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 44444
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mt;->A01:Landroid/widget/LinearLayout;

    sget v0, Lcom/facebook/ads/redexgen/X/Mt;->A05:I

    mul-int/lit8 v0, v0, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 44445
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mt;->A01:Landroid/widget/LinearLayout;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Mt;->A03:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44446
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Mt;->A02:Landroid/widget/TextView;

    .line 44447
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mt;->A02:Landroid/widget/TextView;

    invoke-static {v0, v2, v4}, Lcom/facebook/ads/redexgen/X/Lj;->A0Z(Landroid/widget/TextView;ZI)V

    .line 44448
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mt;->A02:Landroid/widget/TextView;

    const v0, -0xe3e1df

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44449
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Mt;->A01:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mt;->A02:Landroid/widget/TextView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Mt;->A03:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44450
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/Mt;->setOrientation(I)V

    .line 44451
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mt;->A00:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Mt;->addView(Landroid/view/View;)V

    .line 44452
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mt;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Mt;->addView(Landroid/view/View;)V

    .line 44453
    return-void
.end method


# virtual methods
.method public setInfo(Lcom/facebook/ads/redexgen/X/Lr;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 44454
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mt;->A00:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ls;->A01(Lcom/facebook/ads/redexgen/X/Lr;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 44455
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mt;->A02:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44456
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 44457
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mt;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 44458
    .local p0, "subtitleTextView":Landroid/widget/TextView;
    const/16 v0, 0xe

    invoke-static {v2, v3, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0Z(Landroid/widget/TextView;ZI)V

    .line 44459
    const v0, -0x9f9890

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44460
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44461
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mt;->A01:Landroid/widget/LinearLayout;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Mt;->A03:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44462
    sget v0, Lcom/facebook/ads/redexgen/X/Mt;->A05:I

    invoke-virtual {p0, v3, v0, v3, v0}, Lcom/facebook/ads/redexgen/X/Mt;->setPadding(IIII)V

    .line 44463
    .end local p0    # "subtitleTextView":Landroid/widget/TextView;
    :goto_0
    return-void

    .line 44464
    :cond_0
    sget v0, Lcom/facebook/ads/redexgen/X/Mt;->A06:I

    invoke-virtual {p0, v3, v0, v3, v0}, Lcom/facebook/ads/redexgen/X/Mt;->setPadding(IIII)V

    goto :goto_0
.end method
