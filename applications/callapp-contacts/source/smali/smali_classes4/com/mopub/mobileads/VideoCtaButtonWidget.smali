.class public Lcom/mopub/mobileads/VideoCtaButtonWidget;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private a:Lcom/mopub/mobileads/resource/CtaButtonDrawable;

.field private final b:Landroid/widget/RelativeLayout$LayoutParams;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 2

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 33
    iput-boolean p2, p0, Lcom/mopub/mobileads/VideoCtaButtonWidget;->e:Z

    .line 34
    iput-boolean p3, p0, Lcom/mopub/mobileads/VideoCtaButtonWidget;->f:Z

    .line 36
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/mopub/mobileads/VideoCtaButtonWidget;->setId(I)V

    const/high16 p2, 0x43160000    # 150.0f

    .line 38
    invoke-static {p2, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p2

    const/high16 p3, 0x42180000    # 38.0f

    .line 39
    invoke-static {p3, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p3

    const/high16 v0, 0x41800000    # 16.0f

    .line 40
    invoke-static {v0, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    .line 42
    new-instance v1, Lcom/mopub/mobileads/resource/CtaButtonDrawable;

    invoke-direct {v1, p1}, Lcom/mopub/mobileads/resource/CtaButtonDrawable;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mopub/mobileads/VideoCtaButtonWidget;->a:Lcom/mopub/mobileads/resource/CtaButtonDrawable;

    .line 43
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/VideoCtaButtonWidget;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/mopub/mobileads/VideoCtaButtonWidget;->b:Landroid/widget/RelativeLayout$LayoutParams;

    .line 47
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 p2, 0xc

    .line 48
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p2, 0xb

    .line 49
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51
    invoke-direct {p0}, Lcom/mopub/mobileads/VideoCtaButtonWidget;->c()V

    return-void
.end method

.method private c()V
    .locals 2

    .line 83
    iget-boolean v0, p0, Lcom/mopub/mobileads/VideoCtaButtonWidget;->f:Z

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/VideoCtaButtonWidget;->setVisibility(I)V

    return-void

    .line 89
    :cond_0
    iget-boolean v0, p0, Lcom/mopub/mobileads/VideoCtaButtonWidget;->c:Z

    if-nez v0, :cond_1

    const/4 v0, 0x4

    .line 90
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VideoCtaButtonWidget;->setVisibility(I)V

    return-void

    .line 95
    :cond_1
    iget-boolean v0, p0, Lcom/mopub/mobileads/VideoCtaButtonWidget;->d:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/mopub/mobileads/VideoCtaButtonWidget;->e:Z

    if-eqz v0, :cond_2

    .line 96
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/VideoCtaButtonWidget;->setVisibility(I)V

    return-void

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/mopub/mobileads/VideoCtaButtonWidget;->b:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VideoCtaButtonWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VideoCtaButtonWidget;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/mopub/mobileads/VideoCtaButtonWidget;->c:Z

    .line 67
    invoke-direct {p0}, Lcom/mopub/mobileads/VideoCtaButtonWidget;->c()V

    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/mopub/mobileads/VideoCtaButtonWidget;->a:Lcom/mopub/mobileads/resource/CtaButtonDrawable;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->setCtaText(Ljava/lang/String;)V

    return-void
.end method

.method final b()V
    .locals 1

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/mopub/mobileads/VideoCtaButtonWidget;->c:Z

    .line 72
    iput-boolean v0, p0, Lcom/mopub/mobileads/VideoCtaButtonWidget;->d:Z

    .line 73
    invoke-direct {p0}, Lcom/mopub/mobileads/VideoCtaButtonWidget;->c()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 56
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 58
    invoke-direct {p0}, Lcom/mopub/mobileads/VideoCtaButtonWidget;->c()V

    return-void
.end method
