.class public final Lio/bidmachine/ViewAdObject;
.super Lio/bidmachine/AdObjectImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ViewAdObject$a;,
        Lio/bidmachine/ViewAdObject$MeasureMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdRequestType:",
        "Lio/bidmachine/AdRequest<",
        "TAdRequestType;TUnifiedAdRequestParamsType;>;UnifiedAdType:",
        "Lio/bidmachine/unified/UnifiedAd<",
        "Lio/bidmachine/unified/UnifiedBannerAdCallback;",
        "TUnifiedAdRequestParamsType;>;UnifiedAdRequestParamsType::",
        "Lio/bidmachine/unified/UnifiedAdRequestParams;",
        ">",
        "Lio/bidmachine/AdObjectImpl<",
        "TAdRequestType;",
        "Lio/bidmachine/models/AdObjectParams;",
        "TUnifiedAdType;",
        "Lio/bidmachine/unified/UnifiedBannerAdCallback;",
        "TUnifiedAdRequestParamsType;>;"
    }
.end annotation


# instance fields
.field private adView:Landroid/view/View;

.field private height:I

.field private heightMeasureMode:Lio/bidmachine/ViewAdObject$MeasureMode;

.field private width:I

.field private widthMeasureMode:Lio/bidmachine/ViewAdObject$MeasureMode;


# direct methods
.method public constructor <init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdProcessCallback;Lio/bidmachine/AdRequest;Lio/bidmachine/models/AdObjectParams;Lio/bidmachine/unified/UnifiedAd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ContextProvider;",
            "Lio/bidmachine/AdProcessCallback;",
            "TAdRequestType;",
            "Lio/bidmachine/models/AdObjectParams;",
            "TUnifiedAdType;)V"
        }
    .end annotation

    .line 40
    invoke-direct/range {p0 .. p5}, Lio/bidmachine/AdObjectImpl;-><init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdProcessCallback;Lio/bidmachine/AdRequest;Lio/bidmachine/models/AdObjectParams;Lio/bidmachine/unified/UnifiedAd;)V

    .line 29
    sget-object p1, Lio/bidmachine/ViewAdObject$MeasureMode;->Direct:Lio/bidmachine/ViewAdObject$MeasureMode;

    iput-object p1, p0, Lio/bidmachine/ViewAdObject;->widthMeasureMode:Lio/bidmachine/ViewAdObject$MeasureMode;

    .line 30
    sget-object p1, Lio/bidmachine/ViewAdObject$MeasureMode;->Direct:Lio/bidmachine/ViewAdObject$MeasureMode;

    iput-object p1, p0, Lio/bidmachine/ViewAdObject;->heightMeasureMode:Lio/bidmachine/ViewAdObject$MeasureMode;

    return-void
.end method

.method static synthetic access$000(Lio/bidmachine/ViewAdObject;)Landroid/view/View;
    .locals 0

    .line 21
    iget-object p0, p0, Lio/bidmachine/ViewAdObject;->adView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$002(Lio/bidmachine/ViewAdObject;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 21
    iput-object p1, p0, Lio/bidmachine/ViewAdObject;->adView:Landroid/view/View;

    return-object p1
.end method

.method private getHeight()I
    .locals 1

    .line 120
    iget v0, p0, Lio/bidmachine/ViewAdObject;->height:I

    return v0
.end method

.method private getScaledHeight(Landroid/content/Context;)I
    .locals 2

    .line 128
    iget-object v0, p0, Lio/bidmachine/ViewAdObject;->heightMeasureMode:Lio/bidmachine/ViewAdObject$MeasureMode;

    invoke-direct {p0}, Lio/bidmachine/ViewAdObject;->getHeight()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lio/bidmachine/ViewAdObject$MeasureMode;->getSize(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method private getScaledWidth(Landroid/content/Context;)I
    .locals 2

    .line 124
    iget-object v0, p0, Lio/bidmachine/ViewAdObject;->widthMeasureMode:Lio/bidmachine/ViewAdObject$MeasureMode;

    invoke-direct {p0}, Lio/bidmachine/ViewAdObject;->getWidth()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lio/bidmachine/ViewAdObject$MeasureMode;->getSize(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method private getWidth()I
    .locals 1

    .line 112
    iget v0, p0, Lio/bidmachine/ViewAdObject;->width:I

    return v0
.end method


# virtual methods
.method public final bridge synthetic createUnifiedCallback(Lio/bidmachine/AdProcessCallback;)Lio/bidmachine/unified/UnifiedAdCallback;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lio/bidmachine/ViewAdObject;->createUnifiedCallback(Lio/bidmachine/AdProcessCallback;)Lio/bidmachine/unified/UnifiedBannerAdCallback;

    move-result-object p1

    return-object p1
.end method

.method public final createUnifiedCallback(Lio/bidmachine/AdProcessCallback;)Lio/bidmachine/unified/UnifiedBannerAdCallback;
    .locals 1

    .line 46
    new-instance v0, Lio/bidmachine/ViewAdObject$a;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/ViewAdObject$a;-><init>(Lio/bidmachine/ViewAdObject;Lio/bidmachine/AdProcessCallback;)V

    return-object v0
.end method

.method public final onDestroy()V
    .locals 2

    .line 98
    iget-object v0, p0, Lio/bidmachine/ViewAdObject;->adView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lio/bidmachine/ViewAdObject;->adView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lio/bidmachine/ViewAdObject;->adView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 102
    :cond_0
    iget-object v0, p0, Lio/bidmachine/ViewAdObject;->adView:Landroid/view/View;

    invoke-static {v0}, Lio/bidmachine/core/VisibilityTracker;->stopTracking(Landroid/view/View;)V

    .line 104
    :cond_1
    invoke-super {p0}, Lio/bidmachine/AdObjectImpl;->onDestroy()V

    return-void
.end method

.method public final onImpression()V
    .locals 1

    .line 92
    invoke-super {p0}, Lio/bidmachine/AdObjectImpl;->onImpression()V

    .line 93
    iget-object v0, p0, Lio/bidmachine/ViewAdObject;->adView:Landroid/view/View;

    invoke-static {v0}, Lio/bidmachine/core/VisibilityTracker;->stopTracking(Landroid/view/View;)V

    return-void
.end method

.method public final setHeight(I)V
    .locals 0

    .line 116
    iput p1, p0, Lio/bidmachine/ViewAdObject;->height:I

    return-void
.end method

.method public final setWidth(I)V
    .locals 0

    .line 108
    iput p1, p0, Lio/bidmachine/ViewAdObject;->width:I

    return-void
.end method

.method final show(Landroid/view/ViewGroup;)V
    .locals 8

    if-nez p1, :cond_0

    const-string p1, "Target container is null"

    .line 51
    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lio/bidmachine/ViewAdObject;->getUnifiedAdCallback()Lio/bidmachine/unified/UnifiedAdCallback;

    move-result-object p1

    check-cast p1, Lio/bidmachine/unified/UnifiedBannerAdCallback;

    sget-object v0, Lio/bidmachine/utils/BMError;->Internal:Lio/bidmachine/utils/BMError;

    invoke-interface {p1, v0}, Lio/bidmachine/unified/UnifiedBannerAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 55
    :cond_0
    invoke-direct {p0}, Lio/bidmachine/ViewAdObject;->getWidth()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lio/bidmachine/ViewAdObject;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lio/bidmachine/ViewAdObject;->adView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 62
    invoke-static {v1}, Lio/bidmachine/core/VisibilityTracker;->stopTracking(Landroid/view/View;)V

    .line 64
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 66
    instance-of v1, p1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_3

    .line 67
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v0}, Lio/bidmachine/ViewAdObject;->getScaledWidth(Landroid/content/Context;)I

    move-result v2

    invoke-direct {p0, v0}, Lio/bidmachine/ViewAdObject;->getScaledHeight(Landroid/content/Context;)I

    move-result v0

    const/16 v3, 0x11

    invoke-direct {v1, v2, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    goto :goto_0

    .line 69
    :cond_3
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0, v0}, Lio/bidmachine/ViewAdObject;->getScaledWidth(Landroid/content/Context;)I

    move-result v2

    invoke-direct {p0, v0}, Lio/bidmachine/ViewAdObject;->getScaledHeight(Landroid/content/Context;)I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 71
    :goto_0
    iget-object v0, p0, Lio/bidmachine/ViewAdObject;->adView:Landroid/view/View;

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iget-object v2, p0, Lio/bidmachine/ViewAdObject;->adView:Landroid/view/View;

    .line 74
    invoke-virtual {p0}, Lio/bidmachine/ViewAdObject;->getParams()Lio/bidmachine/models/AdObjectParams;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/models/AdObjectParams;->getViewabilityTimeThresholdMs()J

    move-result-wide v3

    .line 75
    invoke-virtual {p0}, Lio/bidmachine/ViewAdObject;->getParams()Lio/bidmachine/models/AdObjectParams;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/models/AdObjectParams;->getViewabilityPixelThreshold()F

    move-result v5

    .line 76
    invoke-virtual {p0}, Lio/bidmachine/ViewAdObject;->getParams()Lio/bidmachine/models/AdObjectParams;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/models/AdObjectParams;->isViewabilityIgnoreWindowFocus()Z

    move-result v6

    new-instance v7, Lio/bidmachine/ViewAdObject$1;

    invoke-direct {v7, p0}, Lio/bidmachine/ViewAdObject$1;-><init>(Lio/bidmachine/ViewAdObject;)V

    .line 72
    invoke-static/range {v2 .. v7}, Lio/bidmachine/core/VisibilityTracker;->startTracking(Landroid/view/View;JFZLio/bidmachine/core/VisibilityTracker$VisibilityChangeCallback;)V

    return-void

    :cond_4
    :goto_1
    const-string p1, "Width or height are not provided"

    .line 56
    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lio/bidmachine/ViewAdObject;->getUnifiedAdCallback()Lio/bidmachine/unified/UnifiedAdCallback;

    move-result-object p1

    check-cast p1, Lio/bidmachine/unified/UnifiedBannerAdCallback;

    sget-object v0, Lio/bidmachine/utils/BMError;->Internal:Lio/bidmachine/utils/BMError;

    invoke-interface {p1, v0}, Lio/bidmachine/unified/UnifiedBannerAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    return-void
.end method
