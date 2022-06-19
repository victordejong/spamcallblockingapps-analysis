.class public final Lcom/google/android/gms/ads/AdView;
.super Lcom/google/android/gms/ads/g;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/ads/g;-><init>(Landroid/content/Context;I)V

    .line 2
    const-string/jumbo v0, "Context cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 4
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/ads/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 6
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/ads/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 7
    return-void
.end method


# virtual methods
.method public final bridge synthetic a()V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0}, Lcom/google/android/gms/ads/g;->a()V

    return-void
.end method

.method public final bridge synthetic a(Lcom/google/android/gms/ads/d;)V
    .locals 0

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/g;->a(Lcom/google/android/gms/ads/d;)V

    return-void
.end method

.method public final bridge synthetic b()V
    .locals 0

    .prologue
    .line 19
    invoke-super {p0}, Lcom/google/android/gms/ads/g;->b()V

    return-void
.end method

.method public final bridge synthetic c()V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0}, Lcom/google/android/gms/ads/g;->c()V

    return-void
.end method

.method public final bridge synthetic getAdListener()Lcom/google/android/gms/ads/b;
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/google/android/gms/ads/g;->getAdListener()Lcom/google/android/gms/ads/b;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getAdSize()Lcom/google/android/gms/ads/e;
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lcom/google/android/gms/ads/g;->getAdSize()Lcom/google/android/gms/ads/e;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getAdUnitId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/google/android/gms/ads/g;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getMediationAdapterClassName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 13
    invoke-super {p0}, Lcom/google/android/gms/ads/g;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getResponseInfo()Lcom/google/android/gms/ads/o;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/google/android/gms/ads/g;->getResponseInfo()Lcom/google/android/gms/ads/o;

    move-result-object v0

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/ads/p;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/ads/AdView;->a:Lcom/google/android/gms/internal/ads/ebk;

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/ads/AdView;->a:Lcom/google/android/gms/internal/ads/ebk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ebk;->l()Lcom/google/android/gms/ads/p;

    move-result-object v0

    .line 10
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic setAdListener(Lcom/google/android/gms/ads/b;)V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/g;->setAdListener(Lcom/google/android/gms/ads/b;)V

    return-void
.end method

.method public final bridge synthetic setAdSize(Lcom/google/android/gms/ads/e;)V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/g;->setAdSize(Lcom/google/android/gms/ads/e;)V

    return-void
.end method

.method public final bridge synthetic setAdUnitId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/g;->setAdUnitId(Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic setOnPaidEventListener(Lcom/google/android/gms/ads/l;)V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/g;->setOnPaidEventListener(Lcom/google/android/gms/ads/l;)V

    return-void
.end method
