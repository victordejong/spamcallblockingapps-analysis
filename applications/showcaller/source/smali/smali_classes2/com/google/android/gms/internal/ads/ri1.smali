.class public final Lcom/google/android/gms/internal/ads/ri1;
.super Lcom/google/android/gms/internal/ads/i40;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Lcom/google/android/gms/internal/ads/qy;


# instance fields
.field private d:Landroid/view/View;

.field private e:Lcom/google/android/gms/internal/ads/ju;

.field private f:Lcom/google/android/gms/internal/ads/me1;

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/me1;Lcom/google/android/gms/internal/ads/re1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/i40;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/re1;->h()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ri1;->d:Landroid/view/View;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/re1;->e0()Lcom/google/android/gms/internal/ads/ju;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ri1;->e:Lcom/google/android/gms/internal/ads/ju;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ri1;->f:Lcom/google/android/gms/internal/ads/me1;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ri1;->g:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ri1;->h:Z

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/re1;->r()Lcom/google/android/gms/internal/ads/wn0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/re1;->r()Lcom/google/android/gms/internal/ads/wn0;

    move-result-object p1

    .line 2
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/wn0;->O0(Lcom/google/android/gms/internal/ads/qy;)V

    :cond_0
    return-void
.end method

.method private static final E6(Lcom/google/android/gms/internal/ads/n40;I)V
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/n40;->A(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "#007 Could not call remote method."

    .line 2
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/ei0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ri1;->f:Lcom/google/android/gms/internal/ads/me1;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ri1;->d:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ri1;->d:Landroid/view/View;

    .line 3
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/me1;->i(Landroid/view/View;)Z

    move-result v4

    .line 4
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/me1;->J(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V

    :cond_0
    return-void
.end method

.method private final zzg()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ri1;->d:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ri1;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final E(Lcom/google/android/gms/dynamic/a;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/qi1;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/qi1;-><init>(Lcom/google/android/gms/internal/ads/ri1;)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ri1;->g6(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/n40;)V

    return-void
.end method

.method public final b()Lcom/google/android/gms/internal/ads/ju;
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ri1;->g:Z

    if-eqz v0, :cond_0

    const-string v0, "getVideoController: Instream ad should not be used after destroyed"

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ei0;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ri1;->e:Lcom/google/android/gms/internal/ads/ju;

    return-object v0
.end method

.method public final c()V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ri1;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ri1;->f:Lcom/google/android/gms/internal/ads/me1;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xy0;->b()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ri1;->f:Lcom/google/android/gms/internal/ads/me1;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ri1;->d:Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ri1;->e:Lcom/google/android/gms/internal/ads/ju;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ri1;->g:Z

    return-void
.end method

.method public final d()Lcom/google/android/gms/internal/ads/dz;
    .locals 2

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ri1;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "getVideoController: Instream ad should not be used after destroyed"

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ei0;->c(Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ri1;->f:Lcom/google/android/gms/internal/ads/me1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/me1;->p()Lcom/google/android/gms/internal/ads/oe1;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ri1;->f:Lcom/google/android/gms/internal/ads/me1;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/me1;->p()Lcom/google/android/gms/internal/ads/oe1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oe1;->a()Lcom/google/android/gms/internal/ads/dz;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public final g6(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/n40;)V
    .locals 3

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ri1;->g:Z

    if-eqz v0, :cond_0

    const-string p1, "Instream ad can not be shown after destroy()."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->c(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 3
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ri1;->E6(Lcom/google/android/gms/internal/ads/n40;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ri1;->d:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ri1;->e:Lcom/google/android/gms/internal/ads/ju;

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ri1;->h:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const-string p1, "Instream ad should not be used again."

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->c(Ljava/lang/String;)V

    .line 6
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/ads/ri1;->E6(Lcom/google/android/gms/internal/ads/n40;I)V

    return-void

    :cond_2
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/ri1;->h:Z

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ri1;->zzg()V

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ri1;->d:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    .line 9
    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->A()Lcom/google/android/gms/internal/ads/dj0;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ri1;->d:Landroid/view/View;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/dj0;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->A()Lcom/google/android/gms/internal/ads/dj0;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ri1;->d:Landroid/view/View;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/dj0;->b(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ri1;->f()V

    .line 13
    :try_start_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/n40;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 14
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ei0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_3
    :goto_0
    if-nez v0, :cond_4

    const-string p1, "can not get video view."

    goto :goto_1

    :cond_4
    const-string p1, "can not get video controller."

    :goto_1
    const-string v0, "Instream internal error: "

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 17
    :cond_5
    new-instance p1, Ljava/lang/String;

    .line 18
    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 19
    :goto_2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 20
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ri1;->E6(Lcom/google/android/gms/internal/ads/n40;I)V

    return-void
.end method

.method public final onGlobalLayout()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ri1;->f()V

    return-void
.end method

.method public final onScrollChanged()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ri1;->f()V

    return-void
.end method

.method public final zza()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/internal/util/c2;->a:Lcom/google/android/gms/internal/ads/au2;

    new-instance v1, Lcom/google/android/gms/internal/ads/pi1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/pi1;-><init>(Lcom/google/android/gms/internal/ads/ri1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
