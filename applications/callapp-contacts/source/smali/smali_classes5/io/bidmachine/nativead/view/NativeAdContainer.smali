.class Lio/bidmachine/nativead/view/NativeAdContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field innerContainer:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-direct {p0, p1}, Lio/bidmachine/nativead/view/NativeAdContainer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-direct {p0, p1}, Lio/bidmachine/nativead/view/NativeAdContainer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-direct {p0, p1}, Lio/bidmachine/nativead/view/NativeAdContainer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 36
    invoke-direct {p0, p1}, Lio/bidmachine/nativead/view/NativeAdContainer;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 40
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContainer;->innerContainer:Landroid/widget/FrameLayout;

    .line 41
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, p1}, Lio/bidmachine/nativead/view/NativeAdContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContainer;->innerContainer:Landroid/widget/FrameLayout;

    if-eq p1, v0, :cond_0

    .line 48
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void

    .line 50
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1

    .line 56
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContainer;->innerContainer:Landroid/widget/FrameLayout;

    if-eq p1, v0, :cond_0

    .line 57
    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    return-void

    .line 59
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 1

    .line 65
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContainer;->innerContainer:Landroid/widget/FrameLayout;

    if-eq p1, v0, :cond_0

    .line 66
    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    return-void

    .line 68
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContainer;->innerContainer:Landroid/widget/FrameLayout;

    if-eq p1, v0, :cond_0

    .line 84
    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 86
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContainer;->innerContainer:Landroid/widget/FrameLayout;

    if-eq p1, v0, :cond_0

    .line 75
    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 77
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContainer;->innerContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .line 106
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContainer;->innerContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContainer;->innerContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
