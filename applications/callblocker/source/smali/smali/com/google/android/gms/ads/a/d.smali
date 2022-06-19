.class public final Lcom/google/android/gms/ads/a/d;
.super Landroid/view/ViewGroup;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ebk;


# virtual methods
.method public final getAdListener()Lcom/google/android/gms/ads/b;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/ads/a/d;->a:Lcom/google/android/gms/internal/ads/ebk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ebk;->b()Lcom/google/android/gms/ads/b;

    move-result-object v0

    return-object v0
.end method

.method public final getAdSize()Lcom/google/android/gms/ads/e;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/ads/a/d;->a:Lcom/google/android/gms/internal/ads/ebk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ebk;->c()Lcom/google/android/gms/ads/e;

    move-result-object v0

    return-object v0
.end method

.method public final getAdSizes()[Lcom/google/android/gms/ads/e;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/ads/a/d;->a:Lcom/google/android/gms/internal/ads/ebk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ebk;->d()[Lcom/google/android/gms/ads/e;

    move-result-object v0

    return-object v0
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/ads/a/d;->a:Lcom/google/android/gms/internal/ads/ebk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ebk;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAppEventListener()Lcom/google/android/gms/ads/a/a;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/ads/a/d;->a:Lcom/google/android/gms/internal/ads/ebk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ebk;->f()Lcom/google/android/gms/ads/a/a;

    move-result-object v0

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/gms/ads/a/d;->a:Lcom/google/android/gms/internal/ads/ebk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ebk;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOnCustomRenderedAdLoadedListener()Lcom/google/android/gms/ads/a/c;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/ads/a/d;->a:Lcom/google/android/gms/internal/ads/ebk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ebk;->g()Lcom/google/android/gms/ads/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final getResponseInfo()Lcom/google/android/gms/ads/o;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/gms/ads/a/d;->a:Lcom/google/android/gms/internal/ads/ebk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ebk;->k()Lcom/google/android/gms/ads/o;

    move-result-object v0

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/ads/p;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/ads/a/d;->a:Lcom/google/android/gms/internal/ads/ebk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ebk;->l()Lcom/google/android/gms/ads/p;

    move-result-object v0

    return-object v0
.end method

.method public final getVideoOptions()Lcom/google/android/gms/ads/q;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/ads/a/d;->a:Lcom/google/android/gms/internal/ads/ebk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ebk;->n()Lcom/google/android/gms/ads/q;

    move-result-object v0

    return-object v0
.end method

.method protected final onLayout(ZIIII)V
    .locals 5

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/a/d;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 52
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 53
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 54
    sub-int v3, p4, p2

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    .line 55
    sub-int v4, p5, p3

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    .line 56
    add-int/2addr v1, v3

    add-int/2addr v2, v4

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 57
    :cond_0
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 58
    .line 60
    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/a/d;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 62
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/ads/a/d;->measureChild(Landroid/view/View;II)V

    .line 63
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    move v2, v1

    .line 74
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/a/d;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 75
    invoke-virtual {p0}, Lcom/google/android/gms/ads/a/d;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 77
    invoke-static {v1, p1}, Landroid/view/View;->resolveSize(II)I

    move-result v1

    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    move-result v0

    .line 78
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/ads/a/d;->setMeasuredDimension(II)V

    .line 79
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x0

    .line 66
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/a/d;->getAdSize()Lcom/google/android/gms/ads/e;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 70
    :goto_1
    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/google/android/gms/ads/a/d;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 72
    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/e;->b(Landroid/content/Context;)I

    move-result v1

    .line 73
    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/e;->a(Landroid/content/Context;)I

    move-result v0

    move v2, v1

    goto :goto_0

    .line 68
    :catch_0
    move-exception v2

    .line 69
    const-string/jumbo v3, "Unable to retrieve ad size."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    move v0, v1

    move v2, v1

    goto :goto_0
.end method

.method public final setAdListener(Lcom/google/android/gms/ads/b;)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/gms/ads/a/d;->a:Lcom/google/android/gms/internal/ads/ebk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ebk;->a(Lcom/google/android/gms/ads/b;)V

    .line 34
    return-void
.end method

.method public final varargs setAdSizes([Lcom/google/android/gms/ads/e;)V
    .locals 2

    .prologue
    .line 35
    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The supported ad sizes must contain at least one valid ad size."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/a/d;->a:Lcom/google/android/gms/internal/ads/ebk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ebk;->b([Lcom/google/android/gms/ads/e;)V

    .line 38
    return-void
.end method

.method public final setAdUnitId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/gms/ads/a/d;->a:Lcom/google/android/gms/internal/ads/ebk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ebk;->a(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public final setAppEventListener(Lcom/google/android/gms/ads/a/a;)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/gms/ads/a/d;->a:Lcom/google/android/gms/internal/ads/ebk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ebk;->a(Lcom/google/android/gms/ads/a/a;)V

    .line 42
    return-void
.end method

.method public final setCorrelator(Lcom/google/android/gms/ads/h;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 43
    return-void
.end method

.method public final setManualImpressionsEnabled(Z)V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/ads/a/d;->a:Lcom/google/android/gms/internal/ads/ebk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ebk;->a(Z)V

    .line 28
    return-void
.end method

.method public final setOnCustomRenderedAdLoadedListener(Lcom/google/android/gms/ads/a/c;)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/gms/ads/a/d;->a:Lcom/google/android/gms/internal/ads/ebk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ebk;->a(Lcom/google/android/gms/ads/a/c;)V

    .line 45
    return-void
.end method

.method public final setVideoOptions(Lcom/google/android/gms/ads/q;)V
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/ads/a/d;->a:Lcom/google/android/gms/internal/ads/ebk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ebk;->a(Lcom/google/android/gms/ads/q;)V

    .line 13
    return-void
.end method
