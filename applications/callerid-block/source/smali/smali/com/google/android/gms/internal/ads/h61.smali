.class public final Lcom/google/android/gms/internal/ads/h61;
.super Lcom/google/android/gms/internal/ads/v;
.source ""


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/ads/j;

.field private final d:Lcom/google/android/gms/internal/ads/sl1;

.field private final e:Lcom/google/android/gms/internal/ads/u10;

.field private final f:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/j;Lcom/google/android/gms/internal/ads/sl1;Lcom/google/android/gms/internal/ads/u10;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/v;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/h61;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/h61;->c:Lcom/google/android/gms/internal/ads/j;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/h61;->d:Lcom/google/android/gms/internal/ads/sl1;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/h61;->e:Lcom/google/android/gms/internal/ads/u10;

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/u10;->g()Landroid/view/View;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->f()Lcom/google/android/gms/ads/internal/util/d;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/ads/internal/util/d;->j()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/h61;->p()Lcom/google/android/gms/internal/ads/zzyx;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzyx;->d:I

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/h61;->p()Lcom/google/android/gms/internal/ads/zzyx;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzyx;->g:I

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setMinimumWidth(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/h61;->f:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final A()Lcom/google/android/gms/internal/ads/j;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h61;->c:Lcom/google/android/gms/internal/ads/j;

    return-object v0
.end method

.method public final B()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final B3()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final D()Lcom/google/android/gms/internal/ads/e0;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h61;->d:Lcom/google/android/gms/internal/ads/sl1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/sl1;->n:Lcom/google/android/gms/internal/ads/e0;

    return-object v0
.end method

.method public final E4(Lcom/google/android/gms/internal/ads/e0;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h61;->d:Lcom/google/android/gms/internal/ads/sl1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/sl1;->c:Lcom/google/android/gms/internal/ads/f71;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/f71;->C(Lcom/google/android/gms/internal/ads/e0;)V

    :cond_0
    return-void
.end method

.method public final F4(Lcom/google/android/gms/internal/ads/zzys;Lcom/google/android/gms/internal/ads/m;)V
    .locals 0

    return-void
.end method

.method public final H4(Lcom/google/android/gms/internal/ads/zzacn;)V
    .locals 0

    return-void
.end method

.method public final I()Lcom/google/android/gms/internal/ads/m1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h61;->e:Lcom/google/android/gms/internal/ads/u10;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/u10;->i()Lcom/google/android/gms/internal/ads/m1;

    move-result-object v0

    return-object v0
.end method

.method public final S0(Z)V
    .locals 0

    return-void
.end method

.method public final S3(Lcom/google/android/gms/internal/ads/j;)V
    .locals 0

    const-string p1, "setAdListener is not supported in Ad Manager AdView returned by AdLoader."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/po;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final X2(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final Y2(Lcom/google/android/gms/internal/ads/g;)V
    .locals 0

    const-string p1, "setAdClickListener is not supported in Ad Manager AdView returned by AdLoader."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/po;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final b()Lcom/google/android/gms/dynamic/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h61;->f:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->g3(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    return-object v0
.end method

.method public final b4(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 1

    const-string v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h61;->e:Lcom/google/android/gms/internal/ads/u10;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/u30;->b()V

    return-void
.end method

.method public final c2(Lcom/google/android/gms/dynamic/a;)V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 2

    const-string v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h61;->e:Lcom/google/android/gms/internal/ads/u10;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/u30;->c()Lcom/google/android/gms/internal/ads/q80;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/q80;->H0(Landroid/content/Context;)V

    return-void
.end method

.method public final d5(Lcom/google/android/gms/internal/ads/i0;)V
    .locals 0

    const-string p1, "setCorrelationIdProvider is not supported in Ad Manager AdView returned by AdLoader."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/po;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final e4(Lcom/google/android/gms/internal/ads/fk;)V
    .locals 0

    return-void
.end method

.method public final f5(Lcom/google/android/gms/internal/ads/ji;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 2

    const-string v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h61;->e:Lcom/google/android/gms/internal/ads/u10;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/u30;->c()Lcom/google/android/gms/internal/ads/q80;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/q80;->P0(Landroid/content/Context;)V

    return-void
.end method

.method public final h5(Lcom/google/android/gms/internal/ads/g1;)V
    .locals 0

    const-string p1, "setOnPaidEventListener is not supported in Ad Manager AdView returned by AdLoader."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/po;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final i2(Lcom/google/android/gms/internal/ads/zzzd;)V
    .locals 0

    return-void
.end method

.method public final j()Landroid/os/Bundle;
    .locals 1

    const-string v0, "getAdMetadata is not supported in Ad Manager AdView returned by AdLoader."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/po;->e(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final k()V
    .locals 0

    return-void
.end method

.method public final l4(Lcom/google/android/gms/internal/ads/i4;)V
    .locals 0

    const-string p1, "setOnCustomRenderedAdLoadedListener is not supported in Ad Manager AdView returned by AdLoader."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/po;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final m()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h61;->e:Lcom/google/android/gms/internal/ads/u10;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/u10;->m()V

    return-void
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h61;->e:Lcom/google/android/gms/internal/ads/u10;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/u30;->d()Lcom/google/android/gms/internal/ads/k70;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h61;->e:Lcom/google/android/gms/internal/ads/u10;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/u30;->d()Lcom/google/android/gms/internal/ads/k70;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/k70;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final o3(Lcom/google/android/gms/internal/ads/vu2;)V
    .locals 0

    return-void
.end method

.method public final p()Lcom/google/android/gms/internal/ads/zzyx;
    .locals 2

    const-string v0, "getAdSize must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h61;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/h61;->e:Lcom/google/android/gms/internal/ads/u10;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/u10;->j()Lcom/google/android/gms/internal/ads/bl1;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/wl1;->b(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzyx;

    move-result-object v0

    return-object v0
.end method

.method public final p2(Z)V
    .locals 0

    const-string p1, "setManualImpressionsEnabled is not supported in Ad Manager AdView returned by AdLoader."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/po;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final p5(Lcom/google/android/gms/internal/ads/zzady;)V
    .locals 0

    const-string p1, "setVideoOptions is not supported in Ad Manager AdView returned by AdLoader."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/po;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final q0(Lcom/google/android/gms/internal/ads/zzys;)Z
    .locals 0

    const-string p1, "loadAd is not supported for an Ad Manager AdView returned from AdLoader."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/po;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final q3(Lcom/google/android/gms/internal/ads/l0;)V
    .locals 0

    return-void
.end method

.method public final q6(Lcom/google/android/gms/internal/ads/gi;)V
    .locals 0

    return-void
.end method

.method public final r()Lcom/google/android/gms/internal/ads/j1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h61;->e:Lcom/google/android/gms/internal/ads/u10;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/u30;->d()Lcom/google/android/gms/internal/ads/k70;

    move-result-object v0

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h61;->d:Lcom/google/android/gms/internal/ads/sl1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/sl1;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final t3(Lcom/google/android/gms/internal/ads/a0;)V
    .locals 0

    const-string p1, "setAdMetadataListener is not supported in Ad Manager AdView returned by AdLoader."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/po;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h61;->e:Lcom/google/android/gms/internal/ads/u10;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/u30;->d()Lcom/google/android/gms/internal/ads/k70;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h61;->e:Lcom/google/android/gms/internal/ads/u10;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/u30;->d()Lcom/google/android/gms/internal/ads/k70;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/k70;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final y4(Lcom/google/android/gms/internal/ads/zzyx;)V
    .locals 2

    const-string v0, "setAdSize must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h61;->e:Lcom/google/android/gms/internal/ads/u10;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/h61;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/u10;->h(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzyx;)V

    :cond_0
    return-void
.end method
