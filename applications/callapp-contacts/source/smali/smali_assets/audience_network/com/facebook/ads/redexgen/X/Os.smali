.class public final Lcom/facebook/ads/redexgen/X/Os;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field public static final A04:I

.field public static final A05:I


# instance fields
.field public A00:Landroid/widget/TextView;

.field public A01:Landroid/widget/TextView;

.field public A02:Lcom/facebook/ads/redexgen/X/No;

.field public final A03:Lcom/facebook/ads/redexgen/X/XJ;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 47207
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x42000000    # 32.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Os;->A04:I

    .line 47208
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Os;->A05:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;)V
    .locals 0

    .line 47209
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47210
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Os;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    .line 47211
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Os;->A00(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 47212
    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/XJ;)V
    .locals 7

    .line 47213
    const/16 v6, 0x10

    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/Os;->setGravity(I)V

    .line 47214
    new-instance v0, Lcom/facebook/ads/redexgen/X/No;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/No;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Os;->A02:Lcom/facebook/ads/redexgen/X/No;

    .line 47215
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Os;->A02:Lcom/facebook/ads/redexgen/X/No;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/No;->setFullCircleCorners(Z)V

    .line 47216
    sget v0, Lcom/facebook/ads/redexgen/X/Os;->A04:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47217
    .local p1, "pageImageViewParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Os;->A05:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 47218
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Os;->A02:Lcom/facebook/ads/redexgen/X/No;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Os;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47219
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47220
    .local v0, "pageInfoView":Landroid/widget/LinearLayout;
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 47221
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Os;->A00:Landroid/widget/TextView;

    .line 47222
    const/4 v1, -0x1

    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47223
    .local v5, "pageNameViewParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Os;->A00:Landroid/widget/TextView;

    invoke-static {v0, v5, v6}, Lcom/facebook/ads/redexgen/X/Lh;->A0c(Landroid/widget/TextView;ZI)V

    .line 47224
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Os;->A00:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 47225
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Os;->A00:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 47226
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Os;->A01:Landroid/widget/TextView;

    .line 47227
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Os;->A01:Landroid/widget/TextView;

    const/16 v0, 0xe

    invoke-static {v1, v4, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0c(Landroid/widget/TextView;ZI)V

    .line 47228
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Os;->A00:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 47229
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Os;->A01:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 47230
    invoke-virtual {p0, v3, v2}, Lcom/facebook/ads/redexgen/X/Os;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47231
    return-void
.end method


# virtual methods
.method public final A01(II)V
    .locals 1

    .line 47232
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Os;->A00:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47233
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Os;->A01:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47234
    return-void
.end method

.method public setPageDetails(Lcom/facebook/ads/redexgen/X/1S;)V
    .locals 3

    .line 47235
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Os;->A02:Lcom/facebook/ads/redexgen/X/No;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Os;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v1, Lcom/facebook/ads/redexgen/X/aA;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/aA;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 47236
    .local p0, "downloadImageTask":Lcom/facebook/ads/redexgen/X/aA;
    sget v0, Lcom/facebook/ads/redexgen/X/Os;->A04:I

    invoke-virtual {v1, v0, v0}, Lcom/facebook/ads/redexgen/X/aA;->A06(II)Lcom/facebook/ads/redexgen/X/aA;

    .line 47237
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1S;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/aA;->A08(Ljava/lang/String;)V

    .line 47238
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Os;->A00:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1S;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47239
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Os;->A01:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1S;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47240
    return-void
.end method
