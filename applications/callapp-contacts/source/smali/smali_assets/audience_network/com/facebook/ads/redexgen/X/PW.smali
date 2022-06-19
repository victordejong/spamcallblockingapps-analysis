.class public final Lcom/facebook/ads/redexgen/X/PW;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/PE;


# static fields
.field public static final A03:I

.field public static final A04:I

.field public static final A05:I

.field public static final A06:I

.field public static final A07:I


# instance fields
.field public final A00:Lcom/facebook/ads/NativeBannerAd;

.field public final A01:Lcom/facebook/ads/redexgen/X/XJ;

.field public final A02:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 48280
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x42280000    # 42.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/PW;->A04:I

    .line 48281
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x42400000    # 48.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/PW;->A03:I

    .line 48282
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x42580000    # 54.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/PW;->A05:I

    .line 48283
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/PW;->A07:I

    .line 48284
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/PW;->A06:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/NativeBannerAd;Lcom/facebook/ads/redexgen/X/Ja;Lcom/facebook/ads/redexgen/X/Jb;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/AdOptionsView;)V
    .locals 14

    .line 48285
    move-object v1, p0

    move-object v9, p1

    invoke-direct {p0, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 48286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/PW;->A02:Ljava/util/ArrayList;

    .line 48287
    move-object/from16 v0, p2

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/PW;->A00:Lcom/facebook/ads/NativeBannerAd;

    .line 48288
    iput-object v9, v1, Lcom/facebook/ads/redexgen/X/PW;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    .line 48289
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PW;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 48290
    .local v0, "commonLayout":Landroid/widget/LinearLayout;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 48291
    move-object/from16 v11, p4

    invoke-static {v11}, Lcom/facebook/ads/redexgen/X/PW;->A00(Lcom/facebook/ads/redexgen/X/Jb;)I

    move-result v2

    .line 48292
    .local v0, "iconSize":I
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/PW;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v6, Lcom/facebook/ads/redexgen/X/Np;

    invoke-direct {v6, v0}, Lcom/facebook/ads/redexgen/X/Np;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 48293
    .local v3, "iconContainer":Lcom/facebook/ads/redexgen/X/Np;
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/Np;->setFullCircleCorners(Z)V

    .line 48294
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 48295
    .local v4, "iconContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x10

    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 48296
    const/4 v2, -0x1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v2, p5

    invoke-virtual {v6, v2, v0}, Lcom/facebook/ads/redexgen/X/Np;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48297
    invoke-virtual {v3, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48298
    new-instance v8, Lcom/facebook/ads/redexgen/X/PB;

    iget-object v10, v1, Lcom/facebook/ads/redexgen/X/PW;->A00:Lcom/facebook/ads/NativeBannerAd;

    const/16 v6, 0x10

    move-object/from16 v12, p3

    move-object/from16 v13, p6

    invoke-direct/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/PB;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/NativeBannerAd;Lcom/facebook/ads/redexgen/X/Jb;Lcom/facebook/ads/redexgen/X/Ja;Lcom/facebook/ads/AdOptionsView;)V

    .line 48299
    .local v12, "contentView":Landroid/view/View;
    sget v0, Lcom/facebook/ads/redexgen/X/PW;->A06:I

    invoke-virtual {v8, v0, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 48300
    const/4 v7, -0x2

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 48301
    .local v11, "contentViewParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 48302
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 48303
    invoke-virtual {v3, v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48304
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jb;->A0A:Lcom/facebook/ads/redexgen/X/Jb;

    if-ne v11, v0, :cond_0

    .line 48305
    sget v0, Lcom/facebook/ads/redexgen/X/PW;->A07:I

    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/PW;->setPadding(IIII)V

    .line 48306
    invoke-virtual {v1, v4}, Lcom/facebook/ads/redexgen/X/PW;->setOrientation(I)V

    .line 48307
    const/4 v0, -0x1

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 48308
    .local v1, "commonLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v7, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 48309
    .local v2, "ctaButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/PW;->A07:I

    invoke-virtual {v3, v4, v4, v0, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 48310
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 48311
    invoke-virtual {v1, v3, v6}, Lcom/facebook/ads/redexgen/X/PW;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48312
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PW;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 48313
    .local v1, "ctaButton":Landroid/widget/TextView;
    sget v3, Lcom/facebook/ads/redexgen/X/PW;->A06:I

    sget v0, Lcom/facebook/ads/redexgen/X/PW;->A07:I

    invoke-virtual {v4, v3, v0, v3, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 48314
    invoke-virtual {v12, v4}, Lcom/facebook/ads/redexgen/X/Ja;->A05(Landroid/widget/TextView;)V

    .line 48315
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/PW;->A00:Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeBannerAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48316
    invoke-virtual {v1, v4, v5}, Lcom/facebook/ads/redexgen/X/PW;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48317
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/PW;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48318
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/PW;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48319
    return-void

    .line 48320
    .end local v2    # "ctaButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "ctaButton":Landroid/widget/TextView;
    :cond_0
    sget v0, Lcom/facebook/ads/redexgen/X/PW;->A06:I

    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/PW;->setPadding(IIII)V

    .line 48321
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PW;->setOrientation(I)V

    .line 48322
    const/4 v0, -0x1

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 48323
    .local v13, "commonLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v0, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 48324
    .restart local v2    # "ctaButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/PW;->A06:I

    invoke-virtual {v3, v4, v4, v4, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Jb;)I
    .locals 2

    .line 48325
    sget-object v1, Lcom/facebook/ads/redexgen/X/PC;->A00:[I

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jb;->ordinal()I

    move-result v0

    aget v1, v1, v0

    const/4 v0, 0x1

    if-eq v1, v0, :cond_1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    .line 48326
    sget v0, Lcom/facebook/ads/redexgen/X/PW;->A05:I

    return v0

    .line 48327
    :cond_0
    sget v0, Lcom/facebook/ads/redexgen/X/PW;->A03:I

    return v0

    .line 48328
    :cond_1
    sget v0, Lcom/facebook/ads/redexgen/X/PW;->A04:I

    return v0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    .line 48329
    return-object p0
.end method

.method public getViewsForInteraction()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 48330
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PW;->A02:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final unregisterView()V
    .locals 1

    .line 48331
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PW;->A00:Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeBannerAd;->unregisterView()V

    .line 48332
    return-void
.end method
