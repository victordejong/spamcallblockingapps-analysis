.class public final Lcom/google/android/gms/ads/b/l;
.super Landroid/widget/FrameLayout;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private final a:Landroid/widget/FrameLayout;

.field private final b:Lcom/google/android/gms/internal/ads/by;


# direct methods
.method private final a(Ljava/lang/String;)Landroid/view/View;
    .locals 2

    .prologue
    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/b/l;->b:Lcom/google/android/gms/internal/ads/by;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/by;->a(Ljava/lang/String;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-object v0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    const-string/jumbo v1, "Unable to call getAssetView on delegate"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final a(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/b/l;->b:Lcom/google/android/gms/internal/ads/by;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/by;->a(Ljava/lang/String;Lcom/google/android/gms/dynamic/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :goto_0
    return-void

    .line 19
    :catch_0
    move-exception v0

    .line 20
    const-string/jumbo v1, "Unable to call setAssetView on delegate"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method final synthetic a(Landroid/widget/ImageView$ScaleType;)V
    .locals 2

    .prologue
    .line 129
    if-eqz p1, :cond_0

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/b/l;->b:Lcom/google/android/gms/internal/ads/by;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/by;->d(Lcom/google/android/gms/dynamic/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    const-string/jumbo v1, "Unable to call setMediaViewImageScaleType on delegate"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method final synthetic a(Lcom/google/android/gms/ads/j;)V
    .locals 2

    .prologue
    .line 135
    :try_start_0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/ebv;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/google/android/gms/ads/b/l;->b:Lcom/google/android/gms/internal/ads/by;

    check-cast p1, Lcom/google/android/gms/internal/ads/ebv;

    .line 137
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ebv;->a()Lcom/google/android/gms/internal/ads/bt;

    move-result-object v1

    .line 138
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/by;->a(Lcom/google/android/gms/internal/ads/bt;)V

    .line 145
    :goto_0
    return-void

    .line 139
    :cond_0
    if-nez p1, :cond_1

    .line 140
    iget-object v0, p0, Lcom/google/android/gms/ads/b/l;->b:Lcom/google/android/gms/internal/ads/by;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/by;->a(Lcom/google/android/gms/internal/ads/bt;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    const-string/jumbo v1, "Unable to call setMediaContent on delegate"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 141
    :cond_1
    :try_start_1
    const-string/jumbo v0, "Use MediaContent provided by UnifiedNativeAd.getMediaContent"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 101
    iget-object v0, p0, Lcom/google/android/gms/ads/b/l;->a:Landroid/widget/FrameLayout;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 102
    return-void
.end method

.method public final bringChildToFront(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/ads/b/l;->a:Landroid/widget/FrameLayout;

    if-eq v0, p1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/google/android/gms/ads/b/l;->a:Landroid/widget/FrameLayout;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 113
    :cond_0
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 121
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->bo:Lcom/google/android/gms/internal/ads/ect;

    .line 122
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 123
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/b/l;->b:Lcom/google/android/gms/internal/ads/by;

    if-eqz v0, :cond_0

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/b/l;->b:Lcom/google/android/gms/internal/ads/by;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/by;->c(Lcom/google/android/gms/dynamic/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    const-string/jumbo v1, "Unable to call handleTouchEvent on delegate"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final getAdChoicesView()Lcom/google/android/gms/ads/b/a;
    .locals 2

    .prologue
    .line 79
    const-string/jumbo v0, "3011"

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/b/l;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 80
    instance-of v1, v0, Lcom/google/android/gms/ads/b/a;

    if-eqz v1, :cond_0

    .line 81
    check-cast v0, Lcom/google/android/gms/ads/b/a;

    .line 82
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getAdvertiserView()Landroid/view/View;
    .locals 1

    .prologue
    .line 70
    const-string/jumbo v0, "3005"

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/b/l;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getBodyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 67
    const-string/jumbo v0, "3004"

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/b/l;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getCallToActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 65
    const-string/jumbo v0, "3002"

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/b/l;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getHeadlineView()Landroid/view/View;
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "3001"

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/b/l;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getIconView()Landroid/view/View;
    .locals 1

    .prologue
    .line 66
    const-string/jumbo v0, "3003"

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/b/l;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getImageView()Landroid/view/View;
    .locals 1

    .prologue
    .line 71
    const-string/jumbo v0, "3008"

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/b/l;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getMediaView()Lcom/google/android/gms/ads/b/b;
    .locals 2

    .prologue
    .line 73
    const-string/jumbo v0, "3010"

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/b/l;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 74
    instance-of v1, v0, Lcom/google/android/gms/ads/b/b;

    if-eqz v1, :cond_0

    .line 75
    check-cast v0, Lcom/google/android/gms/ads/b/b;

    .line 78
    :goto_0
    return-object v0

    .line 76
    :cond_0
    if-eqz v0, :cond_1

    .line 77
    const-string/jumbo v0, "View is not an instance of MediaView"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->b(Ljava/lang/String;)V

    .line 78
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getPriceView()Landroid/view/View;
    .locals 1

    .prologue
    .line 69
    const-string/jumbo v0, "3007"

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/b/l;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getStarRatingView()Landroid/view/View;
    .locals 1

    .prologue
    .line 72
    const-string/jumbo v0, "3009"

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/b/l;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getStoreView()Landroid/view/View;
    .locals 1

    .prologue
    .line 68
    const-string/jumbo v0, "3006"

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/b/l;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 115
    iget-object v0, p0, Lcom/google/android/gms/ads/b/l;->b:Lcom/google/android/gms/internal/ads/by;

    if-eqz v0, :cond_0

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/b/l;->b:Lcom/google/android/gms/internal/ads/by;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/ads/by;->a(Lcom/google/android/gms/dynamic/a;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    const-string/jumbo v1, "Unable to call onVisibilityChanged on delegate"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final removeAllViews()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 108
    iget-object v0, p0, Lcom/google/android/gms/ads/b/l;->a:Landroid/widget/FrameLayout;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 109
    return-void
.end method

.method public final removeView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/gms/ads/b/l;->a:Landroid/widget/FrameLayout;

    if-ne v0, p1, :cond_0

    .line 106
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final setAdChoicesView(Lcom/google/android/gms/ads/b/a;)V
    .locals 1

    .prologue
    .line 50
    const-string/jumbo v0, "3011"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/ads/b/l;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 51
    return-void
.end method

.method public final setAdvertiserView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "3005"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/ads/b/l;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 31
    return-void
.end method

.method public final setBodyView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "3004"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/ads/b/l;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 29
    return-void
.end method

.method public final setCallToActionView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 24
    const-string/jumbo v0, "3002"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/ads/b/l;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 25
    return-void
.end method

.method public final setClickConfirmingView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/b/l;->b:Lcom/google/android/gms/internal/ads/by;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/by;->b(Lcom/google/android/gms/dynamic/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    const-string/jumbo v1, "Unable to call setClickConfirmingView on delegate"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final setHeadlineView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 22
    const-string/jumbo v0, "3001"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/ads/b/l;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 23
    return-void
.end method

.method public final setIconView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "3003"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/ads/b/l;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 27
    return-void
.end method

.method public final setImageView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 41
    const-string/jumbo v0, "3008"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/ads/b/l;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 42
    return-void
.end method

.method public final setMediaView(Lcom/google/android/gms/ads/b/b;)V
    .locals 1

    .prologue
    .line 45
    const-string/jumbo v0, "3010"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/ads/b/l;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 46
    if-eqz p1, :cond_0

    .line 47
    new-instance v0, Lcom/google/android/gms/ads/b/p;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/b/p;-><init>(Lcom/google/android/gms/ads/b/l;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/b/b;->a(Lcom/google/android/gms/internal/ads/bk;)V

    .line 48
    new-instance v0, Lcom/google/android/gms/ads/b/o;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/b/o;-><init>(Lcom/google/android/gms/ads/b/l;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/b/b;->a(Lcom/google/android/gms/internal/ads/bm;)V

    .line 49
    :cond_0
    return-void
.end method

.method public final setNativeAd(Lcom/google/android/gms/ads/b/k;)V
    .locals 2

    .prologue
    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/b/l;->b:Lcom/google/android/gms/internal/ads/by;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/k;->k()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/dynamic/a;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/by;->a(Lcom/google/android/gms/dynamic/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    const-string/jumbo v1, "Unable to call setNativeAd on delegate"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final setPriceView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 39
    const-string/jumbo v0, "3007"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/ads/b/l;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 40
    return-void
.end method

.method public final setStarRatingView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 43
    const-string/jumbo v0, "3009"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/ads/b/l;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 44
    return-void
.end method

.method public final setStoreView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "3006"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/ads/b/l;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 33
    return-void
.end method
