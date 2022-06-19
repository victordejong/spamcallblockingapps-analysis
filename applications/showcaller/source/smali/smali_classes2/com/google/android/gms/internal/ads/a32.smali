.class public final Lcom/google/android/gms/internal/ads/a32;
.super Lcom/google/android/gms/internal/ads/ss;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Lcom/google/android/gms/internal/ads/gs;

.field private final f:Lcom/google/android/gms/internal/ads/xj2;

.field private final g:Lcom/google/android/gms/internal/ads/xw0;

.field private final h:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/gs;Lcom/google/android/gms/internal/ads/xj2;Lcom/google/android/gms/internal/ads/xw0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ss;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/a32;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/a32;->e:Lcom/google/android/gms/internal/ads/gs;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/a32;->f:Lcom/google/android/gms/internal/ads/xj2;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/a32;->g:Lcom/google/android/gms/internal/ads/xw0;

    new-instance p2, Landroid/widget/FrameLayout;

    .line 2
    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/xw0;->g()Landroid/view/View;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->f()Lcom/google/android/gms/ads/internal/util/e;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/ads/internal/util/e;->j()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/a32;->zzu()Lcom/google/android/gms/internal/ads/zzbdl;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbdl;->f:I

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/a32;->zzu()Lcom/google/android/gms/internal/ads/zzbdl;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbdl;->i:I

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setMinimumWidth(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/a32;->h:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final C4(Z)V
    .locals 0

    const-string p1, "setManualImpressionsEnabled is not supported in Ad Manager AdView returned by AdLoader."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final D()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final F4(Lcom/google/android/gms/internal/ads/xs;)V
    .locals 0

    const-string p1, "setAdMetadataListener is not supported in Ad Manager AdView returned by AdLoader."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final H()Lcom/google/android/gms/internal/ads/gs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/a32;->e:Lcom/google/android/gms/internal/ads/gs;

    return-object v0
.end method

.method public final K()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/a32;->f:Lcom/google/android/gms/internal/ads/xj2;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/xj2;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final K2(Lcom/google/android/gms/internal/ads/at;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/a32;->f:Lcom/google/android/gms/internal/ads/xj2;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/xj2;->c:Lcom/google/android/gms/internal/ads/a42;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/a42;->v(Lcom/google/android/gms/internal/ads/at;)V

    :cond_0
    return-void
.end method

.method public final L0(Lcom/google/android/gms/internal/ads/zzbdl;)V
    .locals 2

    const-string v0, "setAdSize must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/a32;->g:Lcom/google/android/gms/internal/ads/xw0;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/a32;->h:Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/xw0;->h(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzbdl;)V

    :cond_0
    return-void
.end method

.method public final N5(Lcom/google/android/gms/internal/ads/zzbdr;)V
    .locals 0

    return-void
.end method

.method public final O5(Lcom/google/android/gms/internal/ads/zzbdg;Lcom/google/android/gms/internal/ads/js;)V
    .locals 0

    return-void
.end method

.method public final S1(Lcom/google/android/gms/internal/ads/it;)V
    .locals 0

    return-void
.end method

.method public final U2(Lcom/google/android/gms/internal/ads/et;)V
    .locals 0

    const-string p1, "setCorrelationIdProvider is not supported in Ad Manager AdView returned by AdLoader."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final W3(Lcom/google/android/gms/dynamic/a;)V
    .locals 0

    return-void
.end method

.method public final X5(Lcom/google/android/gms/internal/ads/gs;)V
    .locals 0

    const-string p1, "setAdListener is not supported in Ad Manager AdView returned by AdLoader."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final Y1(Lcom/google/android/gms/internal/ads/tb0;)V
    .locals 0

    return-void
.end method

.method public final b6(Lcom/google/android/gms/internal/ads/ud0;)V
    .locals 0

    return-void
.end method

.method public final e3(Lcom/google/android/gms/internal/ads/cu;)V
    .locals 0

    const-string p1, "setOnPaidEventListener is not supported in Ad Manager AdView returned by AdLoader."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final e6(Lcom/google/android/gms/internal/ads/gx;)V
    .locals 0

    const-string p1, "setOnCustomRenderedAdLoadedListener is not supported in Ad Manager AdView returned by AdLoader."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final g()V
    .locals 1

    const-string v0, "destroy must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/a32;->g:Lcom/google/android/gms/internal/ads/xw0;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xy0;->b()V

    return-void
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final i4(Lcom/google/android/gms/internal/ads/yb0;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final j()V
    .locals 2

    const-string v0, "destroy must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/a32;->g:Lcom/google/android/gms/internal/ads/xw0;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xy0;->c()Lcom/google/android/gms/internal/ads/y31;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/y31;->S0(Landroid/content/Context;)V

    return-void
.end method

.method public final k5(Lcom/google/android/gms/internal/ads/zzbdg;)Z
    .locals 0

    const-string p1, "loadAd is not supported for an Ad Manager AdView returned from AdLoader."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final l1(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final l3(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final l6(Lcom/google/android/gms/internal/ads/zzbis;)V
    .locals 0

    const-string p1, "setVideoOptions is not supported in Ad Manager AdView returned by AdLoader."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final m()V
    .locals 2

    const-string v0, "destroy must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/a32;->g:Lcom/google/android/gms/internal/ads/xw0;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xy0;->c()Lcom/google/android/gms/internal/ads/y31;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/y31;->T0(Landroid/content/Context;)V

    return-void
.end method

.method public final m6(Lcom/google/android/gms/internal/ads/nl;)V
    .locals 0

    return-void
.end method

.method public final o()V
    .locals 0

    return-void
.end method

.method public final p0()Lcom/google/android/gms/internal/ads/ju;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/a32;->g:Lcom/google/android/gms/internal/ads/xw0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xw0;->i()Lcom/google/android/gms/internal/ads/ju;

    move-result-object v0

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/a32;->g:Lcom/google/android/gms/internal/ads/xw0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xy0;->d()Lcom/google/android/gms/internal/ads/q21;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/a32;->g:Lcom/google/android/gms/internal/ads/xw0;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xy0;->d()Lcom/google/android/gms/internal/ads/q21;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/q21;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final s()Landroid/os/Bundle;
    .locals 1

    const-string v0, "getAdMetadata is not supported in Ad Manager AdView returned by AdLoader."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ei0;->e(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    .line 2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final s0(Z)V
    .locals 0

    return-void
.end method

.method public final s5(Lcom/google/android/gms/internal/ads/zzbhg;)V
    .locals 0

    return-void
.end method

.method public final t()Lcom/google/android/gms/internal/ads/at;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/a32;->f:Lcom/google/android/gms/internal/ads/xj2;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/xj2;->n:Lcom/google/android/gms/internal/ads/at;

    return-object v0
.end method

.method public final u()Lcom/google/android/gms/internal/ads/fu;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/a32;->g:Lcom/google/android/gms/internal/ads/xw0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xy0;->d()Lcom/google/android/gms/internal/ads/q21;

    move-result-object v0

    return-object v0
.end method

.method public final v()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/a32;->g:Lcom/google/android/gms/internal/ads/xw0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xy0;->d()Lcom/google/android/gms/internal/ads/q21;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/a32;->g:Lcom/google/android/gms/internal/ads/xw0;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xy0;->d()Lcom/google/android/gms/internal/ads/q21;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/q21;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final v4(Lcom/google/android/gms/internal/ads/cs;)V
    .locals 0

    const-string p1, "setAdClickListener is not supported in Ad Manager AdView returned by AdLoader."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final zzi()Lcom/google/android/gms/dynamic/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/a32;->h:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->m2(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    return-object v0
.end method

.method public final zzt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/a32;->g:Lcom/google/android/gms/internal/ads/xw0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xw0;->m()V

    return-void
.end method

.method public final zzu()Lcom/google/android/gms/internal/ads/zzbdl;
    .locals 2

    const-string v0, "getAdSize must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/a32;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/a32;->g:Lcom/google/android/gms/internal/ads/xw0;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/xw0;->j()Lcom/google/android/gms/internal/ads/hj2;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/bk2;->b(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzbdl;

    move-result-object v0

    return-object v0
.end method
