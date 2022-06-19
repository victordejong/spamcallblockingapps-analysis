.class public final Lcom/google/android/gms/ads/g/b;
.super Landroid/view/ViewGroup;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ebk;


# virtual methods
.method public final getAdListener()Lcom/google/android/gms/ads/b;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/ads/g/b;->a:Lcom/google/android/gms/internal/ads/ebk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ebk;->b()Lcom/google/android/gms/ads/b;

    move-result-object v0

    return-object v0
.end method

.method public final getAdSize()Lcom/google/android/gms/ads/e;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/ads/g/b;->a:Lcom/google/android/gms/internal/ads/ebk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ebk;->c()Lcom/google/android/gms/ads/e;

    move-result-object v0

    return-object v0
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/ads/g/b;->a:Lcom/google/android/gms/internal/ads/ebk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ebk;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final onLayout(ZIIII)V
    .locals 5

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/g/b;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 35
    sub-int v3, p4, p2

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    .line 36
    sub-int v4, p5, p3

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    .line 37
    add-int/2addr v1, v3

    add-int/2addr v2, v4

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 38
    :cond_0
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 39
    .line 41
    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/g/b;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 43
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/ads/g/b;->measureChild(Landroid/view/View;II)V

    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    move v2, v1

    .line 55
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/g/b;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/ads/g/b;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 58
    invoke-static {v1, p1}, Landroid/view/View;->resolveSize(II)I

    move-result v1

    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    move-result v0

    .line 59
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/ads/g/b;->setMeasuredDimension(II)V

    .line 60
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    .line 47
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/g/b;->getAdSize()Lcom/google/android/gms/ads/e;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 51
    :goto_1
    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/ads/g/b;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 53
    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/e;->b(Landroid/content/Context;)I

    move-result v1

    .line 54
    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/e;->a(Landroid/content/Context;)I

    move-result v0

    move v2, v1

    goto :goto_0

    .line 49
    :catch_0
    move-exception v2

    .line 50
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
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/ads/g/b;->a:Lcom/google/android/gms/internal/ads/ebk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ebk;->a(Lcom/google/android/gms/ads/b;)V

    .line 26
    return-void
.end method

.method public final setAdSize(Lcom/google/android/gms/ads/e;)V
    .locals 3

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/ads/g/b;->a:Lcom/google/android/gms/internal/ads/ebk;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/ads/e;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ebk;->a([Lcom/google/android/gms/ads/e;)V

    .line 28
    return-void
.end method

.method public final setAdUnitId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/gms/ads/g/b;->a:Lcom/google/android/gms/internal/ads/ebk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ebk;->a(Ljava/lang/String;)V

    .line 30
    return-void
.end method
