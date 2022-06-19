.class public final Lcom/facebook/ads/redexgen/X/On;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field public static final A04:I

.field public static final A05:I


# instance fields
.field public A00:Landroid/widget/TextView;

.field public A01:Landroid/widget/TextView;

.field public A02:Lcom/facebook/ads/redexgen/X/Nj;

.field public final A03:Lcom/facebook/ads/redexgen/X/Wm;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 47388
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x42000000    # 32.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/On;->A04:I

    .line 47389
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/On;->A05:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 0

    .line 47390
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47391
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/On;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    .line 47392
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/On;->A00(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 47393
    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 7

    .line 47394
    const/16 v6, 0x10

    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/On;->setGravity(I)V

    .line 47395
    new-instance v0, Lcom/facebook/ads/redexgen/X/Nj;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Nj;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/On;->A02:Lcom/facebook/ads/redexgen/X/Nj;

    .line 47396
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/On;->A02:Lcom/facebook/ads/redexgen/X/Nj;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Nj;->setFullCircleCorners(Z)V

    .line 47397
    sget v0, Lcom/facebook/ads/redexgen/X/On;->A04:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47398
    .local p1, "pageImageViewParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/On;->A05:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 47399
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/On;->A02:Lcom/facebook/ads/redexgen/X/Nj;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/On;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47400
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47401
    .local v0, "pageInfoView":Landroid/widget/LinearLayout;
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 47402
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/On;->A00:Landroid/widget/TextView;

    .line 47403
    const/4 v1, -0x1

    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47404
    .local v5, "pageNameViewParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/On;->A00:Landroid/widget/TextView;

    invoke-static {v0, v5, v6}, Lcom/facebook/ads/redexgen/X/Lj;->A0Z(Landroid/widget/TextView;ZI)V

    .line 47405
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/On;->A00:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 47406
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/On;->A00:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 47407
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/On;->A01:Landroid/widget/TextView;

    .line 47408
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/On;->A01:Landroid/widget/TextView;

    const/16 v0, 0xe

    invoke-static {v1, v4, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0Z(Landroid/widget/TextView;ZI)V

    .line 47409
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/On;->A00:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 47410
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/On;->A01:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 47411
    invoke-virtual {p0, v3, v2}, Lcom/facebook/ads/redexgen/X/On;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47412
    return-void
.end method


# virtual methods
.method public final A01(II)V
    .locals 1

    .line 47413
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/On;->A00:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47414
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/On;->A01:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47415
    return-void
.end method

.method public setPageDetails(Lcom/facebook/ads/redexgen/X/1S;)V
    .locals 3

    .line 47416
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/On;->A02:Lcom/facebook/ads/redexgen/X/Nj;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/On;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Rz;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Rz;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 47417
    .local p0, "downloadImageTask":Lcom/facebook/ads/redexgen/X/Rz;
    sget v0, Lcom/facebook/ads/redexgen/X/On;->A04:I

    invoke-virtual {v1, v0, v0}, Lcom/facebook/ads/redexgen/X/Rz;->A06(II)Lcom/facebook/ads/redexgen/X/Rz;

    .line 47418
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1S;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Rz;->A08(Ljava/lang/String;)V

    .line 47419
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/On;->A00:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1S;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47420
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/On;->A01:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1S;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47421
    return-void
.end method
