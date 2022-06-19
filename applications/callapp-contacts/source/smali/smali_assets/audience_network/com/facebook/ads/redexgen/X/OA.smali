.class public final Lcom/facebook/ads/redexgen/X/OA;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field public static final A04:I

.field public static final A05:I

.field public static final A06:I

.field public static final A07:I

.field public static final A08:I

.field public static final A09:I


# instance fields
.field public final A00:I

.field public final A01:Landroid/widget/RelativeLayout;

.field public final A02:Lcom/facebook/ads/redexgen/X/a7;

.field public final A03:Lcom/facebook/ads/redexgen/X/O1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 46202
    sget v0, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v1, 0x42100000    # 36.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/OA;->A07:I

    .line 46203
    sget v0, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/OA;->A08:I

    .line 46204
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x41b80000    # 23.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/OA;->A04:I

    .line 46205
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/OA;->A06:I

    .line 46206
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/OA;->A05:I

    .line 46207
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/OA;->A09:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/O1;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1I;Lcom/facebook/ads/redexgen/X/Ni;)V
    .locals 13

    .line 46208
    move-object v2, p0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O1;->A05()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 46209
    iput-object p1, v2, Lcom/facebook/ads/redexgen/X/OA;->A03:Lcom/facebook/ads/redexgen/X/O1;

    .line 46210
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/1I;->A08(Z)I

    move-result v0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/OA;->A00:I

    .line 46211
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O1;->A05()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/OA;->A01:Landroid/widget/RelativeLayout;

    .line 46212
    const/4 v3, -0x1

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 46213
    .local v7, "containerParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/OA;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/OA;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46214
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/OA;->A01:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 46215
    move-object v0, p2

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/OA;->A01(Ljava/lang/String;)V

    .line 46216
    new-instance v5, Lcom/facebook/ads/redexgen/X/a7;

    .line 46217
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O1;->A05()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v6

    .line 46218
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O1;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0S()Ljava/lang/String;

    move-result-object v7

    .line 46219
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O1;->A06()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v9

    .line 46220
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O1;->A09()Lcom/facebook/ads/redexgen/X/M9;

    move-result-object v10

    .line 46221
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O1;->A0B()Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v11

    .line 46222
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O1;->A07()Lcom/facebook/ads/redexgen/X/La;

    move-result-object v12

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v12}, Lcom/facebook/ads/redexgen/X/a7;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1I;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M9;Lcom/facebook/ads/redexgen/X/QE;Lcom/facebook/ads/redexgen/X/La;)V

    iput-object v5, v2, Lcom/facebook/ads/redexgen/X/OA;->A02:Lcom/facebook/ads/redexgen/X/a7;

    .line 46223
    iget-object v6, v2, Lcom/facebook/ads/redexgen/X/OA;->A02:Lcom/facebook/ads/redexgen/X/a7;

    .line 46224
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O1;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0G()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v5

    .line 46225
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O1;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 46226
    move-object/from16 v7, p4

    invoke-virtual {v6, v5, v1, v0, v7}, Lcom/facebook/ads/redexgen/X/a7;->setCta(Lcom/facebook/ads/redexgen/X/1J;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/Ni;)V

    .line 46227
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/OA;->A02:Lcom/facebook/ads/redexgen/X/a7;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/a7;->setIsInAppBrowser(Z)V

    .line 46228
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 46229
    .local v0, "ctaButtonParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/OA;->A02:Lcom/facebook/ads/redexgen/X/a7;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/OA;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46230
    return-void
.end method

.method private A00(Landroid/view/View;)V
    .locals 4

    .line 46231
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OA;->A03:Lcom/facebook/ads/redexgen/X/O1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O1;->A05()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 46232
    .local p0, "arrowButton":Landroid/widget/ImageView;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Lp;->A0M:Lcom/facebook/ads/redexgen/X/Lp;

    .line 46233
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lq;->A01(Lcom/facebook/ads/redexgen/X/Lp;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 46234
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 46235
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 46236
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 46237
    iget v0, p0, Lcom/facebook/ads/redexgen/X/OA;->A00:I

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 46238
    sget v0, Lcom/facebook/ads/redexgen/X/OA;->A04:I

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 46239
    .local p1, "arrowParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/OA;->A05:I

    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 46240
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v0, 0x2

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 46241
    const/16 v0, 0xe

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 46242
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OA;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46243
    return-void
.end method

.method private A01(Ljava/lang/String;)V
    .locals 4

    .line 46244
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OA;->A03:Lcom/facebook/ads/redexgen/X/O1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O1;->A05()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 46245
    .local p0, "innerCta":Landroid/widget/TextView;
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 46246
    sget v1, Lcom/facebook/ads/redexgen/X/OA;->A08:I

    const/4 v0, 0x0

    invoke-virtual {v3, v1, v0, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 46247
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46248
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 46249
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 46250
    iget v1, p0, Lcom/facebook/ads/redexgen/X/OA;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/OA;->A09:I

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0S(Landroid/view/View;II)V

    .line 46251
    const/high16 v0, -0x1000000

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46252
    sget v2, Lcom/facebook/ads/redexgen/X/OA;->A07:I

    const/4 v0, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 46253
    .local p1, "ctaParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 46254
    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 46255
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OA;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46256
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/OA;->A00(Landroid/view/View;)V

    .line 46257
    return-void
.end method


# virtual methods
.method public final performClick()Z
    .locals 1

    .line 46258
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OA;->A02:Lcom/facebook/ads/redexgen/X/a7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/a7;->performClick()Z

    move-result v0

    return v0
.end method
