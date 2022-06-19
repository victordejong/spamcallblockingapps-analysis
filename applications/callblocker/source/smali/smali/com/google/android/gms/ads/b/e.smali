.class public Lcom/google/android/gms/ads/b/e;
.super Landroid/widget/FrameLayout;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Landroid/widget/FrameLayout;

.field private final b:Lcom/google/android/gms/internal/ads/by;


# virtual methods
.method protected final a(Ljava/lang/String;)Landroid/view/View;
    .locals 2

    .prologue
    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/b/e;->b:Lcom/google/android/gms/internal/ads/by;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/by;->a(Ljava/lang/String;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    return-object v0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    const-string/jumbo v1, "Unable to call getAssetView on delegate"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/b/e;->b:Lcom/google/android/gms/internal/ads/by;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/by;->a(Ljava/lang/String;Lcom/google/android/gms/dynamic/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v0

    .line 26
    const-string/jumbo v1, "Unable to call setAssetView on delegate"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/ads/b/e;->a:Landroid/widget/FrameLayout;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 59
    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/ads/b/e;->a:Landroid/widget/FrameLayout;

    if-eq v0, p1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/ads/b/e;->a:Landroid/widget/FrameLayout;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 70
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 78
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->bo:Lcom/google/android/gms/internal/ads/ect;

    .line 79
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 80
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/b/e;->b:Lcom/google/android/gms/internal/ads/by;

    if-eqz v0, :cond_0

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/b/e;->b:Lcom/google/android/gms/internal/ads/by;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/by;->c(Lcom/google/android/gms/dynamic/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    const-string/jumbo v1, "Unable to call handleTouchEvent on delegate"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getAdChoicesView()Lcom/google/android/gms/ads/b/a;
    .locals 2

    .prologue
    .line 19
    const-string/jumbo v0, "1098"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/b/e;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 20
    instance-of v1, v0, Lcom/google/android/gms/ads/b/a;

    if-eqz v1, :cond_0

    .line 21
    check-cast v0, Lcom/google/android/gms/ads/b/a;

    .line 22
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/ads/b/e;->b:Lcom/google/android/gms/internal/ads/by;

    if-eqz v0, :cond_0

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/b/e;->b:Lcom/google/android/gms/internal/ads/by;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/ads/by;->a(Lcom/google/android/gms/dynamic/a;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    const-string/jumbo v1, "Unable to call onVisibilityChanged on delegate"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 65
    iget-object v0, p0, Lcom/google/android/gms/ads/b/e;->a:Landroid/widget/FrameLayout;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 66
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/gms/ads/b/e;->a:Landroid/widget/FrameLayout;

    if-ne v0, p1, :cond_0

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setAdChoicesView(Lcom/google/android/gms/ads/b/a;)V
    .locals 1

    .prologue
    .line 17
    const-string/jumbo v0, "1098"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/ads/b/e;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 18
    return-void
.end method

.method public setNativeAd(Lcom/google/android/gms/ads/b/c;)V
    .locals 2

    .prologue
    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/b/e;->b:Lcom/google/android/gms/internal/ads/by;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/dynamic/a;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/by;->a(Lcom/google/android/gms/dynamic/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    const-string/jumbo v1, "Unable to call setNativeAd on delegate"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
