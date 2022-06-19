.class public final Lcom/google/android/gms/internal/ads/lb1;
.super Lcom/google/android/gms/internal/ads/xy0;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final i:Landroid/content/Context;

.field private final j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ads/wn0;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/google/android/gms/internal/ads/z91;

.field private final l:Lcom/google/android/gms/internal/ads/qc1;

.field private final m:Lcom/google/android/gms/internal/ads/sz0;

.field private final n:Lcom/google/android/gms/internal/ads/xr2;

.field private final o:Lcom/google/android/gms/internal/ads/l31;

.field private p:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/wy0;Landroid/content/Context;Lcom/google/android/gms/internal/ads/wn0;Lcom/google/android/gms/internal/ads/z91;Lcom/google/android/gms/internal/ads/qc1;Lcom/google/android/gms/internal/ads/sz0;Lcom/google/android/gms/internal/ads/xr2;Lcom/google/android/gms/internal/ads/l31;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/xy0;-><init>(Lcom/google/android/gms/internal/ads/wy0;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/lb1;->p:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/lb1;->i:Landroid/content/Context;

    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lb1;->j:Ljava/lang/ref/WeakReference;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/lb1;->k:Lcom/google/android/gms/internal/ads/z91;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/lb1;->l:Lcom/google/android/gms/internal/ads/qc1;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/lb1;->m:Lcom/google/android/gms/internal/ads/sz0;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/lb1;->n:Lcom/google/android/gms/internal/ads/xr2;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/lb1;->o:Lcom/google/android/gms/internal/ads/l31;

    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lb1;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/wn0;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/kw;->Z4:Lcom/google/android/gms/internal/ads/cw;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/lb1;->p:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/ads/qi0;->e:Lcom/google/android/gms/internal/ads/s03;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/kb1;->a(Lcom/google/android/gms/internal/ads/wn0;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_1
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 8
    throw v0
.end method

.method public final g(ZLandroid/app/Activity;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->r0:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->d()Lcom/google/android/gms/ads/internal/util/c2;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lb1;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/c2;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies"

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lb1;->o:Lcom/google/android/gms/internal/ads/l31;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/l31;->e()V

    sget-object p1, Lcom/google/android/gms/internal/ads/kw;->s0:Lcom/google/android/gms/internal/ads/cw;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lb1;->n:Lcom/google/android/gms/internal/ads/xr2;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/xy0;->a:Lcom/google/android/gms/internal/ads/rj2;

    .line 8
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/rj2;->b:Lcom/google/android/gms/internal/ads/qj2;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/qj2;->b:Lcom/google/android/gms/internal/ads/jj2;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/jj2;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/xr2;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->X6:Lcom/google/android/gms/internal/ads/cw;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/lb1;->p:Z

    if-eqz v0, :cond_1

    const-string v0, "The interstitial ad has been showed."

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lb1;->o:Lcom/google/android/gms/internal/ads/l31;

    const/16 v2, 0xa

    const/4 v3, 0x0

    .line 12
    invoke-static {v2, v3, v3}, Lcom/google/android/gms/internal/ads/sk2;->d(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbcz;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object v2

    .line 13
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/l31;->I(Lcom/google/android/gms/internal/ads/zzbcz;)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/lb1;->p:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lb1;->k:Lcom/google/android/gms/internal/ads/z91;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/z91;->zza()V

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/lb1;->i:Landroid/content/Context;

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lb1;->l:Lcom/google/android/gms/internal/ads/qc1;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/lb1;->o:Lcom/google/android/gms/internal/ads/l31;

    .line 15
    invoke-interface {v0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/qc1;->a(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/l31;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lb1;->k:Lcom/google/android/gms/internal/ads/z91;

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/z91;->b()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdkm; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/lb1;->p:Z

    return p1

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/lb1;->o:Lcom/google/android/gms/internal/ads/l31;

    .line 17
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/l31;->H(Lcom/google/android/gms/internal/ads/zzdkm;)V

    :cond_3
    :goto_0
    return v1
.end method

.method public final h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lb1;->m:Lcom/google/android/gms/internal/ads/sz0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sz0;->b()Z

    move-result v0

    return v0
.end method
