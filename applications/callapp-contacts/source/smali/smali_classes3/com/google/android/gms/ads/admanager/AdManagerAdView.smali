.class public final Lcom/google/android/gms/ads/admanager/AdManagerAdView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field private final zzaeh:Lcom/google/android/gms/internal/ads/emt;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/ads/emt;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/emt;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->zzaeh:Lcom/google/android/gms/internal/ads/emt;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/emt;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1}, Lcom/google/android/gms/internal/ads/emt;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V

    iput-object v0, p0, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->zzaeh:Lcom/google/android/gms/internal/ads/emt;

    const-string p2, "Context cannot be null"

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 9
    new-instance p1, Lcom/google/android/gms/internal/ads/emt;

    const/4 p3, 0x1

    invoke-direct {p1, p0, p2, p3}, Lcom/google/android/gms/internal/ads/emt;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V

    iput-object p1, p0, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->zzaeh:Lcom/google/android/gms/internal/ads/emt;

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->zzaeh:Lcom/google/android/gms/internal/ads/emt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/emt;->a()V

    return-void
.end method

.method public final getAdListener()Lcom/google/android/gms/ads/AdListener;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->zzaeh:Lcom/google/android/gms/internal/ads/emt;

    .line 2060
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/emt;->b:Lcom/google/android/gms/ads/AdListener;

    return-object v0
.end method

.method public final getAdSize()Lcom/google/android/gms/ads/AdSize;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->zzaeh:Lcom/google/android/gms/internal/ads/emt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/emt;->b()Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    return-object v0
.end method

.method public final getAdSizes()[Lcom/google/android/gms/ads/AdSize;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->zzaeh:Lcom/google/android/gms/internal/ads/emt;

    .line 2069
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/emt;->c:[Lcom/google/android/gms/ads/AdSize;

    return-object v0
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->zzaeh:Lcom/google/android/gms/internal/ads/emt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/emt;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAppEventListener()Lcom/google/android/gms/ads/admanager/AppEventListener;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->zzaeh:Lcom/google/android/gms/internal/ads/emt;

    .line 2077
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/emt;->d:Lcom/google/android/gms/ads/admanager/AppEventListener;

    return-object v0
.end method

.method public final getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->zzaeh:Lcom/google/android/gms/internal/ads/emt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/emt;->i()Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/ads/VideoController;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->zzaeh:Lcom/google/android/gms/internal/ads/emt;

    .line 1241
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/emt;->a:Lcom/google/android/gms/ads/VideoController;

    return-object v0
.end method

.method public final getVideoOptions()Lcom/google/android/gms/ads/VideoOptions;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->zzaeh:Lcom/google/android/gms/internal/ads/emt;

    .line 1257
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/emt;->h:Lcom/google/android/gms/ads/VideoOptions;

    return-object v0
.end method

.method public final isLoading()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->zzaeh:Lcom/google/android/gms/internal/ads/emt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/emt;->h()Z

    move-result v0

    return v0
.end method

.method public final loadAd(Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->zzaeh:Lcom/google/android/gms/internal/ads/emt;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest;->zzdt()Lcom/google/android/gms/internal/ads/emr;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/emt;->a(Lcom/google/android/gms/internal/ads/emr;)V

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 2

    const/4 p1, 0x0

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p4, p2

    sub-int/2addr p4, v0

    .line 49
    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p5, p3

    sub-int/2addr p5, v1

    .line 50
    div-int/lit8 p5, p5, 0x2

    add-int/2addr v0, p4

    add-int/2addr v1, p5

    .line 51
    invoke-virtual {p1, p4, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 4

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 57
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->measureChild(Landroid/view/View;II)V

    .line 58
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 59
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 61
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Unable to retrieve ad size."

    .line 64
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/za;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-eqz v1, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 67
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result v2

    .line 68
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v0

    move v1, v0

    move v0, v2

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 69
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 70
    invoke-virtual {p0}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 72
    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-static {v1, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->setMeasuredDimension(II)V

    return-void
.end method

.method public final pause()V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->zzaeh:Lcom/google/android/gms/internal/ads/emt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/emt;->d()V

    return-void
.end method

.method public final recordManualImpression()V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->zzaeh:Lcom/google/android/gms/internal/ads/emt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/emt;->e()V

    return-void
.end method

.method public final resume()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->zzaeh:Lcom/google/android/gms/internal/ads/emt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/emt;->f()V

    return-void
.end method

.method public final setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->zzaeh:Lcom/google/android/gms/internal/ads/emt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/emt;->a(Lcom/google/android/gms/ads/AdListener;)V

    return-void
.end method

.method public final varargs setAdSizes([Lcom/google/android/gms/ads/AdSize;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 34
    array-length v0, p1

    if-lez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->zzaeh:Lcom/google/android/gms/internal/ads/emt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/emt;->b([Lcom/google/android/gms/ads/AdSize;)V

    return-void

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The supported ad sizes must contain at least one valid ad size."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setAdUnitId(Ljava/lang/String;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->zzaeh:Lcom/google/android/gms/internal/ads/emt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/emt;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final setAppEventListener(Lcom/google/android/gms/ads/admanager/AppEventListener;)V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->zzaeh:Lcom/google/android/gms/internal/ads/emt;

    .line 2177
    :try_start_0
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/emt;->d:Lcom/google/android/gms/ads/admanager/AppEventListener;

    .line 2178
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/emt;->f:Lcom/google/android/gms/internal/ads/ekw;

    if-eqz v1, :cond_1

    .line 2179
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/emt;->f:Lcom/google/android/gms/internal/ads/ekw;

    if-eqz p1, :cond_0

    .line 2180
    new-instance v1, Lcom/google/android/gms/internal/ads/eew;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/eew;-><init>(Lcom/google/android/gms/ads/admanager/AppEventListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2181
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ekw;->zza(Lcom/google/android/gms/internal/ads/ele;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 2184
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setManualImpressionsEnabled(Z)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->zzaeh:Lcom/google/android/gms/internal/ads/emt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/emt;->a(Z)V

    return-void
.end method

.method public final setVideoOptions(Lcom/google/android/gms/ads/VideoOptions;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->zzaeh:Lcom/google/android/gms/internal/ads/emt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/emt;->a(Lcom/google/android/gms/ads/VideoOptions;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/ekw;)Z
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->zzaeh:Lcom/google/android/gms/internal/ads/emt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/emt;->a(Lcom/google/android/gms/internal/ads/ekw;)Z

    move-result p1

    return p1
.end method
