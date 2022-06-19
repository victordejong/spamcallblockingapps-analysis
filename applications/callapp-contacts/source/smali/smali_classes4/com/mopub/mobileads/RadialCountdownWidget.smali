.class public Lcom/mopub/mobileads/RadialCountdownWidget;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private a:Lcom/mopub/mobileads/resource/RadialCountdownDrawable;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/RadialCountdownWidget;->setId(I)V

    const/high16 v0, 0x42480000    # 50.0f

    .line 28
    invoke-static {v0, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    .line 29
    invoke-static {v1, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v2

    .line 30
    invoke-static {v1, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v1

    const/high16 v3, 0x41100000    # 9.0f

    .line 31
    invoke-static {v3, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v3

    .line 33
    new-instance v4, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;

    invoke-direct {v4, p1}, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/mopub/mobileads/RadialCountdownWidget;->a:Lcom/mopub/mobileads/resource/RadialCountdownDrawable;

    .line 34
    invoke-virtual {p0, v4}, Lcom/mopub/mobileads/RadialCountdownWidget;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 35
    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/mopub/mobileads/RadialCountdownWidget;->setPadding(IIII)V

    .line 37
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p1, v0, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v0, 0xb

    .line 41
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/RadialCountdownWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public calibrateAndMakeVisible(I)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/mopub/mobileads/RadialCountdownWidget;->a:Lcom/mopub/mobileads/resource/RadialCountdownDrawable;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->setInitialCountdown(I)V

    const/4 p1, 0x0

    .line 47
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/RadialCountdownWidget;->setVisibility(I)V

    return-void
.end method

.method public getImageViewDrawable()Lcom/mopub/mobileads/resource/RadialCountdownDrawable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/mopub/mobileads/RadialCountdownWidget;->a:Lcom/mopub/mobileads/resource/RadialCountdownDrawable;

    return-object v0
.end method

.method public setImageViewDrawable(Lcom/mopub/mobileads/resource/RadialCountdownDrawable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/mopub/mobileads/RadialCountdownWidget;->a:Lcom/mopub/mobileads/resource/RadialCountdownDrawable;

    return-void
.end method

.method public updateCountdownProgress(II)V
    .locals 1

    .line 55
    iget v0, p0, Lcom/mopub/mobileads/RadialCountdownWidget;->b:I

    if-lt p2, v0, :cond_1

    sub-int/2addr p1, p2

    if-gez p1, :cond_0

    const/16 p1, 0x8

    .line 62
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/RadialCountdownWidget;->setVisibility(I)V

    return-void

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/mopub/mobileads/RadialCountdownWidget;->a:Lcom/mopub/mobileads/resource/RadialCountdownDrawable;

    invoke-virtual {p1, p2}, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->updateCountdownProgress(I)V

    .line 65
    iput p2, p0, Lcom/mopub/mobileads/RadialCountdownWidget;->b:I

    :cond_1
    return-void
.end method
