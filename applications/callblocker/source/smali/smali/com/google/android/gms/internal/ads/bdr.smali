.class public final Lcom/google/android/gms/internal/ads/bdr;
.super Lcom/google/android/gms/internal/ads/amh;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/ads/act;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/gms/internal/ads/awx;

.field private final f:Lcom/google/android/gms/internal/ads/aud;

.field private final g:Lcom/google/android/gms/internal/ads/apx;

.field private final h:Lcom/google/android/gms/internal/ads/arf;

.field private final i:Lcom/google/android/gms/internal/ads/anc;

.field private final j:Lcom/google/android/gms/internal/ads/rt;

.field private final k:Lcom/google/android/gms/internal/ads/cme;

.field private l:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/amk;Landroid/content/Context;Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/internal/ads/awx;Lcom/google/android/gms/internal/ads/aud;Lcom/google/android/gms/internal/ads/apx;Lcom/google/android/gms/internal/ads/arf;Lcom/google/android/gms/internal/ads/anc;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/cme;)V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/amh;-><init>(Lcom/google/android/gms/internal/ads/amk;)V

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bdr;->l:Z

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bdr;->c:Landroid/content/Context;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bdr;->e:Lcom/google/android/gms/internal/ads/awx;

    .line 5
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bdr;->d:Ljava/lang/ref/WeakReference;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bdr;->f:Lcom/google/android/gms/internal/ads/aud;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/bdr;->g:Lcom/google/android/gms/internal/ads/apx;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/bdr;->h:Lcom/google/android/gms/internal/ads/arf;

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/bdr;->i:Lcom/google/android/gms/internal/ads/anc;

    .line 10
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/bdr;->k:Lcom/google/android/gms/internal/ads/cme;

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/si;

    iget-object v1, p9, Lcom/google/android/gms/internal/ads/cgr;->l:Lcom/google/android/gms/internal/ads/rr;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/si;-><init>(Lcom/google/android/gms/internal/ads/rr;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bdr;->j:Lcom/google/android/gms/internal/ads/rt;

    .line 12
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bdr;->l:Z

    return v0
.end method

.method public final a(ZLandroid/app/Activity;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->ae:Lcom/google/android/gms/internal/ads/ect;

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdr;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ve;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    const-string/jumbo v0, "Rewarded ads that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit https://googlemobileadssdk.page.link/admob-interstitial-policies"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdr;->g:Lcom/google/android/gms/internal/ads/apx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/apx;->a()V

    .line 19
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->af:Lcom/google/android/gms/internal/ads/ect;

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdr;->k:Lcom/google/android/gms/internal/ads/cme;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bdr;->a:Lcom/google/android/gms/internal/ads/chd;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/chd;->b:Lcom/google/android/gms/internal/ads/cha;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/cha;->b:Lcom/google/android/gms/internal/ads/cgs;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/cgs;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/cme;->a(Ljava/lang/String;)V

    :cond_0
    move v0, v1

    .line 35
    :goto_0
    return v0

    .line 24
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bdr;->l:Z

    if-eqz v0, :cond_2

    .line 25
    const-string/jumbo v0, "The rewarded ad have been showed."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdr;->g:Lcom/google/android/gms/internal/ads/apx;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/apx;->a(ILjava/lang/String;)V

    move v0, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/bdr;->l:Z

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdr;->f:Lcom/google/android/gms/internal/ads/aud;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aud;->a()V

    .line 30
    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bdr;->c:Landroid/content/Context;

    .line 31
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdr;->e:Lcom/google/android/gms/internal/ads/awx;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/awx;->a(ZLandroid/content/Context;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbxy; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bdr;->g:Lcom/google/android/gms/internal/ads/apx;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/apx;->a(Lcom/google/android/gms/internal/ads/zzbxy;)V

    move v0, v1

    .line 35
    goto :goto_0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/rt;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdr;->j:Lcom/google/android/gms/internal/ads/rt;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdr;->i:Lcom/google/android/gms/internal/ads/anc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/anc;->e()Z

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdr;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/act;

    .line 40
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->L()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdr;->h:Lcom/google/android/gms/internal/ads/arf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/arf;->a()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final finalize()V
    .locals 3

    .prologue
    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdr;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/act;

    .line 43
    sget-object v1, Lcom/google/android/gms/internal/ads/edi;->dz:Lcom/google/android/gms/internal/ads/ect;

    .line 44
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v1

    .line 45
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/bdr;->l:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 47
    sget-object v1, Lcom/google/android/gms/internal/ads/yg;->e:Lcom/google/android/gms/internal/ads/crs;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bdq;->a(Lcom/google/android/gms/internal/ads/act;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/crs;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 51
    return-void

    .line 48
    :cond_1
    if-eqz v0, :cond_0

    .line 49
    :try_start_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 53
    throw v0
.end method
