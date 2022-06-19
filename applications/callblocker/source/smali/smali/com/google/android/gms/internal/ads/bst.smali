.class public final Lcom/google/android/gms/internal/ads/bst;
.super Lcom/google/android/gms/internal/ads/dzm;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/dza;

.field private final c:Lcom/google/android/gms/internal/ads/chh;

.field private final d:Lcom/google/android/gms/internal/ads/akk;

.field private final e:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/dza;Lcom/google/android/gms/internal/ads/chh;Lcom/google/android/gms/internal/ads/akk;)V
    .locals 3

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dzm;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bst;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bst;->b:Lcom/google/android/gms/internal/ads/dza;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bst;->c:Lcom/google/android/gms/internal/ads/chh;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bst;->d:Lcom/google/android/gms/internal/ads/akk;

    .line 7
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bst;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bst;->d:Lcom/google/android/gms/internal/ads/akk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/akk;->a()Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->e()Lcom/google/android/gms/internal/ads/vj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/vj;->b()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/bst;->j()Lcom/google/android/gms/internal/ads/dyd;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/dyd;->c:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/bst;->j()Lcom/google/android/gms/internal/ads/dyd;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/dyd;->f:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setMinimumWidth(I)V

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bst;->e:Landroid/view/ViewGroup;

    .line 14
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/dynamic/a;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bst;->e:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dve;)V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dyd;)V
    .locals 2

    .prologue
    .line 56
    const-string/jumbo v0, "setAdSize must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bst;->d:Lcom/google/android/gms/internal/ads/akk;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bst;->d:Lcom/google/android/gms/internal/ads/akk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bst;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/akk;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/dyd;)V

    .line 59
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dyk;)V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dyz;)V
    .locals 1

    .prologue
    .line 65
    const-string/jumbo v0, "setAdClickListener is not supported in Publisher AdView returned by AdLoader."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dza;)V
    .locals 1

    .prologue
    .line 71
    const-string/jumbo v0, "setAdListener is not supported in Publisher AdView returned by AdLoader."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dzr;)V
    .locals 1

    .prologue
    .line 75
    const-string/jumbo v0, "setAdMetadataListener is not supported in Publisher AdView returned by AdLoader."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dzw;)V
    .locals 1

    .prologue
    .line 73
    const-string/jumbo v0, "setAppEventListener is not supported in Publisher AdView returned by AdLoader."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/eac;)V
    .locals 1

    .prologue
    .line 67
    const-string/jumbo v0, "setCorrelationIdProvider is not supported in Publisher AdView returned by AdLoader."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/eau;)V
    .locals 1

    .prologue
    .line 83
    const-string/jumbo v0, "setOnPaidEventListener is not supported in Publisher AdView returned by AdLoader."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/ebg;)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/ecn;)V
    .locals 1

    .prologue
    .line 49
    const-string/jumbo v0, "setVideoOptions is not supported in Publisher AdView returned by AdLoader."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/oi;)V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/oo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/rb;)V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/u;)V
    .locals 1

    .prologue
    .line 63
    const-string/jumbo v0, "setOnCustomRenderedAdLoadedListener is not supported in Publisher AdView returned by AdLoader."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 69
    const-string/jumbo v0, "setManualImpressionsEnabled is not supported in Publisher AdView returned by AdLoader."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dya;)Z
    .locals 1

    .prologue
    .line 19
    const-string/jumbo v0, "loadAd is not supported for a Publisher AdView returned from AdLoader."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;)V

    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 16
    const-string/jumbo v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bst;->d:Lcom/google/android/gms/internal/ads/akk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/amh;->k()V

    .line 18
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 21
    const-string/jumbo v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bst;->d:Lcom/google/android/gms/internal/ads/akk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/amh;->i()Lcom/google/android/gms/internal/ads/aqk;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/aqk;->a(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 24
    const-string/jumbo v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bst;->d:Lcom/google/android/gms/internal/ads/akk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/amh;->i()Lcom/google/android/gms/internal/ads/aqk;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/aqk;->b(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public final f()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 77
    const-string/jumbo v0, "getAdMetadata is not supported in Publisher AdView returned by AdLoader."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;)V

    .line 78
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bst;->d:Lcom/google/android/gms/internal/ads/akk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/akk;->f()V

    .line 28
    return-void
.end method

.method public final j()Lcom/google/android/gms/internal/ads/dyd;
    .locals 2

    .prologue
    .line 29
    const-string/jumbo v0, "getAdSize must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bst;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bst;->d:Lcom/google/android/gms/internal/ads/akk;

    .line 32
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/akk;->c()Lcom/google/android/gms/internal/ads/cgq;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/chk;->a(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/dyd;

    move-result-object v0

    .line 34
    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bst;->d:Lcom/google/android/gms/internal/ads/akk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/amh;->j()Lcom/google/android/gms/internal/ads/apk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bst;->d:Lcom/google/android/gms/internal/ads/akk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/amh;->j()Lcom/google/android/gms/internal/ads/apk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/apk;->a()Ljava/lang/String;

    move-result-object v0

    .line 38
    :goto_0
    return-object v0

    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 38
    goto :goto_0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bst;->d:Lcom/google/android/gms/internal/ads/akk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/amh;->j()Lcom/google/android/gms/internal/ads/apk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bst;->d:Lcom/google/android/gms/internal/ads/akk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/amh;->j()Lcom/google/android/gms/internal/ads/apk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/apk;->a()Ljava/lang/String;

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    .line 45
    :cond_0
    const/4 v0, 0x0

    .line 46
    goto :goto_0
.end method

.method public final m()Lcom/google/android/gms/internal/ads/eav;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bst;->d:Lcom/google/android/gms/internal/ads/akk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/amh;->j()Lcom/google/android/gms/internal/ads/apk;

    move-result-object v0

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bst;->c:Lcom/google/android/gms/internal/ads/chh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/chh;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Lcom/google/android/gms/internal/ads/dzw;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bst;->c:Lcom/google/android/gms/internal/ads/chh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/chh;->m:Lcom/google/android/gms/internal/ads/dzw;

    return-object v0
.end method

.method public final p()Lcom/google/android/gms/internal/ads/dza;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bst;->b:Lcom/google/android/gms/internal/ads/dza;

    return-object v0
.end method

.method public final q()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public final r()Lcom/google/android/gms/internal/ads/eba;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bst;->d:Lcom/google/android/gms/internal/ads/akk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/akk;->b()Lcom/google/android/gms/internal/ads/eba;

    move-result-object v0

    return-object v0
.end method
