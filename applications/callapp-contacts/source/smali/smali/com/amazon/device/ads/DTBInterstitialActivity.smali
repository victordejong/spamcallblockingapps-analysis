.class public Lcom/amazon/device/ads/DTBInterstitialActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/device/ads/DTBMRAIDCloseButtonListener;


# static fields
.field static b:Lcom/amazon/device/ads/DTBInterstitialActivity;


# instance fields
.field a:Lcom/amazon/device/ads/DTBAdInterstitial;

.field c:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static a()Lcom/amazon/device/ads/DTBInterstitialActivity;
    .locals 1

    .line 34
    sget-object v0, Lcom/amazon/device/ads/DTBInterstitialActivity;->b:Lcom/amazon/device/ads/DTBInterstitialActivity;

    return-object v0
.end method

.method private b()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/amazon/device/ads/DTBInterstitialActivity;->a:Lcom/amazon/device/ads/DTBAdInterstitial;

    .line 3033
    iget-object v0, v0, Lcom/amazon/device/ads/DTBAdInterstitial;->a:Lcom/amazon/device/ads/DTBAdView;

    .line 3792
    iget-object v0, v0, Lcom/amazon/device/ads/DTBAdView;->b:Lcom/amazon/device/ads/DTBAdMRAIDController;

    .line 107
    iget-boolean v0, v0, Lcom/amazon/device/ads/DTBAdMRAIDController;->e:Z

    return v0
.end method

.method private synthetic c()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/amazon/device/ads/DTBInterstitialActivity;->c:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/amazon/device/ads/DTBInterstitialActivity;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public static synthetic lambda$Ss3RsB9k9B8bGsdK076aMWBu7bU(Lcom/amazon/device/ads/DTBInterstitialActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/device/ads/DTBInterstitialActivity;->c()V

    return-void
.end method


# virtual methods
.method public final h()V
    .locals 2

    .line 125
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/amazon/device/ads/-$$Lambda$DTBInterstitialActivity$Ss3RsB9k9B8bGsdK076aMWBu7bU;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/-$$Lambda$DTBInterstitialActivity$Ss3RsB9k9B8bGsdK076aMWBu7bU;-><init>(Lcom/amazon/device/ads/DTBInterstitialActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/amazon/device/ads/DTBInterstitialActivity;->a:Lcom/amazon/device/ads/DTBAdInterstitial;

    .line 4033
    iget-object v0, v0, Lcom/amazon/device/ads/DTBAdInterstitial;->a:Lcom/amazon/device/ads/DTBAdView;

    const-string v1, "window.mraid.close();"

    const/4 v2, 0x0

    .line 121
    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/DTBAdView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    sput-object p0, Lcom/amazon/device/ads/DTBInterstitialActivity;->b:Lcom/amazon/device/ads/DTBInterstitialActivity;

    const/4 p1, 0x1

    .line 40
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/DTBInterstitialActivity;->requestWindowFeature(I)Z

    .line 41
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBInterstitialActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 44
    sget v0, Lcom/amazon/device/ads/R$layout;->mdtb_interstitial_ad:I

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/DTBInterstitialActivity;->setContentView(I)V

    .line 46
    invoke-static {}, Lcom/amazon/device/ads/DTBAdInterstitial;->a()Lcom/amazon/device/ads/DTBAdInterstitial;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/DTBInterstitialActivity;->a:Lcom/amazon/device/ads/DTBAdInterstitial;

    .line 48
    sget v0, Lcom/amazon/device/ads/R$id;->inter_container:I

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/DTBInterstitialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 49
    iget-object v1, p0, Lcom/amazon/device/ads/DTBInterstitialActivity;->a:Lcom/amazon/device/ads/DTBAdInterstitial;

    .line 1033
    iget-object v1, v1, Lcom/amazon/device/ads/DTBAdInterstitial;->a:Lcom/amazon/device/ads/DTBAdView;

    const/4 v2, 0x0

    .line 50
    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/DTBAdView;->b(Z)V

    .line 52
    invoke-virtual {v1}, Lcom/amazon/device/ads/DTBAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 53
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 54
    check-cast v3, Landroid/view/ViewGroup;

    .line 55
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 58
    :cond_0
    sget v3, Lcom/amazon/device/ads/R$id;->mraid_close_indicator:I

    invoke-virtual {p0, v3}, Lcom/amazon/device/ads/DTBInterstitialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/amazon/device/ads/DTBInterstitialActivity;->c:Landroid/widget/LinearLayout;

    const/4 v3, -0x1

    .line 62
    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 1792
    iget-object v0, v1, Lcom/amazon/device/ads/DTBAdView;->b:Lcom/amazon/device/ads/DTBAdMRAIDController;

    .line 2098
    iput-object p0, v0, Lcom/amazon/device/ads/DTBAdMRAIDController;->f:Lcom/amazon/device/ads/DTBMRAIDCloseButtonListener;

    .line 68
    iget-object v0, p0, Lcom/amazon/device/ads/DTBInterstitialActivity;->c:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/amazon/device/ads/DTBInterstitialActivity;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 69
    sget v0, Lcom/amazon/device/ads/R$id;->mraid_close_indicator:I

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/DTBInterstitialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 70
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->bringToFront()V

    .line 72
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 73
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 75
    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/amazon/device/ads/DTBAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x18

    invoke-static {v4}, Lcom/amazon/device/ads/DTBAdUtil;->a(I)I

    move-result v5

    invoke-static {v4}, Lcom/amazon/device/ads/DTBAdUtil;->a(I)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xe

    .line 80
    invoke-static {v4}, Lcom/amazon/device/ads/DTBAdUtil;->a(I)I

    move-result v5

    invoke-static {v4}, Lcom/amazon/device/ads/DTBAdUtil;->a(I)I

    move-result v4

    invoke-virtual {v3, v5, v4, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 81
    sget v2, Lcom/amazon/device/ads/R$drawable;->mraid_close:I

    invoke-static {p0, v2}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 82
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    invoke-virtual {v0, p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    new-instance p1, Lcom/amazon/device/ads/DTBInterstitialActivity$1;

    invoke-direct {p1, p0, v1}, Lcom/amazon/device/ads/DTBInterstitialActivity$1;-><init>(Lcom/amazon/device/ads/DTBInterstitialActivity;Lcom/amazon/device/ads/DTBAdView;)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 113
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    .line 114
    sput-object v0, Lcom/amazon/device/ads/DTBInterstitialActivity;->b:Lcom/amazon/device/ads/DTBInterstitialActivity;

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 100
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method
