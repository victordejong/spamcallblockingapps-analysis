.class Lcom/google/android/gms/ads/g;
.super Landroid/view/ViewGroup;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field protected final a:Lcom/google/android/gms/internal/ads/ebk;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/ebk;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/ebk;-><init>(Landroid/view/ViewGroup;I)V

    iput-object v0, p0, Lcom/google/android/gms/ads/g;->a:Lcom/google/android/gms/internal/ads/ebk;

    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 4
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/ebk;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1, p3}, Lcom/google/android/gms/internal/ads/ebk;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZI)V

    iput-object v0, p0, Lcom/google/android/gms/ads/g;->a:Lcom/google/android/gms/internal/ads/ebk;

    .line 6
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .prologue
    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/ebk;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1, p4}, Lcom/google/android/gms/internal/ads/ebk;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZI)V

    iput-object v0, p0, Lcom/google/android/gms/ads/g;->a:Lcom/google/android/gms/internal/ads/ebk;

    .line 9
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/ads/g;->a:Lcom/google/android/gms/internal/ads/ebk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ebk;->i()V

    .line 20
    return-void
.end method

.method public a(Lcom/google/android/gms/ads/d;)V
    .locals 2

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/ads/g;->a:Lcom/google/android/gms/internal/ads/ebk;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/d;->a()Lcom/google/android/gms/internal/ads/ebi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ebk;->a(Lcom/google/android/gms/internal/ads/ebi;)V

    .line 16
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/ads/g;->a:Lcom/google/android/gms/internal/ads/ebk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ebk;->h()V

    .line 18
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/ads/g;->a:Lcom/google/android/gms/internal/ads/ebk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ebk;->a()V

    .line 11
    return-void
.end method

.method public getAdListener()Lcom/google/android/gms/ads/b;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/ads/g;->a:Lcom/google/android/gms/internal/ads/ebk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ebk;->b()Lcom/google/android/gms/ads/b;

    move-result-object v0

    return-object v0
.end method

.method public getAdSize()Lcom/google/android/gms/ads/e;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/ads/g;->a:Lcom/google/android/gms/internal/ads/ebk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ebk;->c()Lcom/google/android/gms/ads/e;

    move-result-object v0

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/ads/g;->a:Lcom/google/android/gms/internal/ads/ebk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ebk;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediationAdapterClassName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gms/ads/g;->a:Lcom/google/android/gms/internal/ads/ebk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ebk;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseInfo()Lcom/google/android/gms/ads/o;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/gms/ads/g;->a:Lcom/google/android/gms/internal/ads/ebk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ebk;->k()Lcom/google/android/gms/ads/o;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/g;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 41
    sub-int v3, p4, p2

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    .line 42
    sub-int v4, p5, p3

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    .line 43
    add-int/2addr v1, v3

    add-int/2addr v2, v4

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 44
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 45
    .line 47
    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/g;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 49
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/ads/g;->measureChild(Landroid/view/View;II)V

    .line 50
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 51
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    move v2, v1

    .line 61
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/g;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 62
    invoke-virtual {p0}, Lcom/google/android/gms/ads/g;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 64
    invoke-static {v1, p1}, Landroid/view/View;->resolveSize(II)I

    move-result v1

    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    move-result v0

    .line 65
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/ads/g;->setMeasuredDimension(II)V

    .line 66
    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    .line 53
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/g;->getAdSize()Lcom/google/android/gms/ads/e;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 57
    :goto_1
    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/ads/g;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 59
    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/e;->b(Landroid/content/Context;)I

    move-result v1

    .line 60
    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/e;->a(Landroid/content/Context;)I

    move-result v0

    move v2, v1

    goto :goto_0

    .line 55
    :catch_0
    move-exception v2

    .line 56
    const-string/jumbo v3, "Unable to retrieve ad size."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    move v0, v1

    move v2, v1

    goto :goto_0
.end method

.method public setAdListener(Lcom/google/android/gms/ads/b;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/ads/g;->a:Lcom/google/android/gms/internal/ads/ebk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ebk;->a(Lcom/google/android/gms/ads/b;)V

    .line 23
    if-nez p1, :cond_1

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/ads/g;->a:Lcom/google/android/gms/internal/ads/ebk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ebk;->a(Lcom/google/android/gms/internal/ads/dxs;)V

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/ads/g;->a:Lcom/google/android/gms/internal/ads/ebk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ebk;->a(Lcom/google/android/gms/ads/a/a;)V

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/dxs;

    if-eqz v0, :cond_2

    .line 28
    iget-object v1, p0, Lcom/google/android/gms/ads/g;->a:Lcom/google/android/gms/internal/ads/ebk;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/dxs;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ebk;->a(Lcom/google/android/gms/internal/ads/dxs;)V

    .line 29
    :cond_2
    instance-of v0, p1, Lcom/google/android/gms/ads/a/a;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/ads/g;->a:Lcom/google/android/gms/internal/ads/ebk;

    check-cast p1, Lcom/google/android/gms/ads/a/a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ebk;->a(Lcom/google/android/gms/ads/a/a;)V

    goto :goto_0
.end method

.method public setAdSize(Lcom/google/android/gms/ads/e;)V
    .locals 3

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/gms/ads/g;->a:Lcom/google/android/gms/internal/ads/ebk;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/ads/e;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ebk;->a([Lcom/google/android/gms/ads/e;)V

    .line 33
    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/gms/ads/g;->a:Lcom/google/android/gms/internal/ads/ebk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ebk;->a(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public setOnPaidEventListener(Lcom/google/android/gms/ads/l;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/gms/ads/g;->a:Lcom/google/android/gms/internal/ads/ebk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ebk;->a(Lcom/google/android/gms/ads/l;)V

    .line 69
    return-void
.end method
