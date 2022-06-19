.class public final Lcom/google/android/gms/internal/ads/qw0;
.super Lcom/google/android/gms/internal/ads/xy0;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final i:Lcom/google/android/gms/internal/ads/wn0;

.field private final j:I

.field private final k:Landroid/content/Context;

.field private final l:Lcom/google/android/gms/internal/ads/xv0;

.field private final m:Lcom/google/android/gms/internal/ads/qc1;

.field private final n:Lcom/google/android/gms/internal/ads/l31;

.field private o:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/wy0;Landroid/content/Context;Lcom/google/android/gms/internal/ads/wn0;ILcom/google/android/gms/internal/ads/xv0;Lcom/google/android/gms/internal/ads/qc1;Lcom/google/android/gms/internal/ads/l31;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/xy0;-><init>(Lcom/google/android/gms/internal/ads/wy0;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/qw0;->o:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/qw0;->i:Lcom/google/android/gms/internal/ads/wn0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qw0;->k:Landroid/content/Context;

    iput p4, p0, Lcom/google/android/gms/internal/ads/qw0;->j:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/qw0;->l:Lcom/google/android/gms/internal/ads/xv0;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/qw0;->m:Lcom/google/android/gms/internal/ads/qc1;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/qw0;->n:Lcom/google/android/gms/internal/ads/l31;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/xy0;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qw0;->i:Lcom/google/android/gms/internal/ads/wn0;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->destroy()V

    :cond_0
    return-void
.end method

.method public final g(Lcom/google/android/gms/internal/ads/el;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qw0;->i:Lcom/google/android/gms/internal/ads/wn0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/wn0;->R0(Lcom/google/android/gms/internal/ads/el;)V

    :cond_0
    return-void
.end method

.method public final h(Landroid/app/Activity;Lcom/google/android/gms/internal/ads/sl;Z)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/qw0;->k:Landroid/content/Context;

    :cond_0
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

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->d()Lcom/google/android/gms/ads/internal/util/c2;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/c2;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies"

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/qw0;->n:Lcom/google/android/gms/internal/ads/l31;

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/l31;->e()V

    sget-object p2, Lcom/google/android/gms/internal/ads/kw;->s0:Lcom/google/android/gms/internal/ads/cw;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p2

    .line 7
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Lcom/google/android/gms/internal/ads/xr2;

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->r()Lcom/google/android/gms/ads/internal/util/y0;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/ads/internal/util/y0;->a()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/ads/xr2;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/xy0;->a:Lcom/google/android/gms/internal/ads/rj2;

    .line 9
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/rj2;->b:Lcom/google/android/gms/internal/ads/qj2;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/qj2;->b:Lcom/google/android/gms/internal/ads/jj2;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/jj2;->b:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/xr2;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/qw0;->o:Z

    if-eqz v0, :cond_2

    const-string v0, "App open interstitial ad is already visible."

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->X6:Lcom/google/android/gms/internal/ads/cw;

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qw0;->n:Lcom/google/android/gms/internal/ads/l31;

    const/16 v1, 0xa

    const/4 v2, 0x0

    .line 13
    invoke-static {v1, v2, v2}, Lcom/google/android/gms/internal/ads/sk2;->d(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbcz;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/l31;->I(Lcom/google/android/gms/internal/ads/zzbcz;)V

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/qw0;->o:Z

    if-nez v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qw0;->m:Lcom/google/android/gms/internal/ads/qc1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qw0;->n:Lcom/google/android/gms/internal/ads/l31;

    .line 15
    invoke-interface {v0, p3, p1, v1}, Lcom/google/android/gms/internal/ads/qc1;->a(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/l31;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdkm; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/qw0;->o:Z

    return-void

    :catch_0
    move-exception p1

    sget-object p3, Lcom/google/android/gms/internal/ads/kw;->X6:Lcom/google/android/gms/internal/ads/cw;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p3

    .line 17
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/qw0;->n:Lcom/google/android/gms/internal/ads/l31;

    .line 18
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/l31;->H(Lcom/google/android/gms/internal/ads/zzdkm;)V

    return-void

    .line 19
    :cond_3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/sk2;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/sl;->h0(Lcom/google/android/gms/internal/ads/zzbcz;)V

    :cond_4
    return-void
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/qw0;->j:I

    return v0
.end method

.method public final j(JI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qw0;->l:Lcom/google/android/gms/internal/ads/xv0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/xv0;->a(JI)V

    return-void
.end method
