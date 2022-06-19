.class public Lcom/mopub/mobileads/VastVideoGradientStripWidget;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/GradientDrawable$Orientation;ZIIIZ)V
    .locals 1

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 33
    iput p4, p0, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->a:I

    .line 34
    iput-boolean p3, p0, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->b:Z

    .line 35
    iput-boolean p7, p0, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->d:Z

    .line 37
    new-instance p3, Landroid/graphics/drawable/GradientDrawable;

    const/4 p4, 0x2

    new-array p4, p4, [I

    sget p7, Lcom/mopub/mobileads/resource/DrawableConstants$GradientStrip;->START_COLOR:I

    const/4 v0, 0x0

    aput p7, p4, v0

    sget p7, Lcom/mopub/mobileads/resource/DrawableConstants$GradientStrip;->END_COLOR:I

    const/4 v0, 0x1

    aput p7, p4, v0

    invoke-direct {p3, p2, p4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 40
    invoke-virtual {p0, p3}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 p3, 0x42900000    # 72.0f

    .line 44
    invoke-static {p3, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p1

    const/4 p3, -0x1

    invoke-direct {p2, p3, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 46
    invoke-virtual {p2, p5, p6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 47
    invoke-virtual {p0, p2}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->b()V

    return-void
.end method

.method private b()V
    .locals 5

    .line 65
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->c:Z

    if-eqz v0, :cond_1

    .line 66
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->b:Z

    if-eqz v0, :cond_0

    .line 67
    iget v0, p0, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->a:I

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    .line 69
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->setVisibility(I)V

    return-void

    .line 75
    :cond_1
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 76
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->setVisibility(I)V

    return-void

    .line 80
    :cond_2
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    .line 98
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Unrecognized screen orientation: do not show gradient strip widget"

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 99
    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->setVisibility(I)V

    return-void

    .line 94
    :cond_3
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Screen orientation is deprecated ORIENTATION_SQUARE: do not show gradient strip widget"

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 95
    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->setVisibility(I)V

    return-void

    .line 84
    :cond_4
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->setVisibility(I)V

    return-void

    .line 87
    :cond_5
    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->setVisibility(I)V

    return-void

    .line 90
    :cond_6
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Screen orientation undefined: do not show gradient strip widget"

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 91
    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->c:Z

    .line 54
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->b()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 59
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 61
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->b()V

    return-void
.end method
