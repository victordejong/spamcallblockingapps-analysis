.class public final Lcom/google/android/gms/internal/ads/all;
.super Lcom/google/android/gms/internal/ads/anp;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/adt;

.field final b:I

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/gms/internal/ads/akr;

.field private final e:Lcom/google/android/gms/internal/ads/bap;

.field private f:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ans;Landroid/content/Context;Lcom/google/android/gms/internal/ads/adt;ILcom/google/android/gms/internal/ads/akr;Lcom/google/android/gms/internal/ads/bap;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/anp;-><init>(Lcom/google/android/gms/internal/ads/ans;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/all;->f:Z

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/all;->a:Lcom/google/android/gms/internal/ads/adt;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/all;->c:Landroid/content/Context;

    .line 5
    iput p4, p0, Lcom/google/android/gms/internal/ads/all;->b:I

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/all;->d:Lcom/google/android/gms/internal/ads/akr;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/all;->e:Lcom/google/android/gms/internal/ads/bap;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 43
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/anp;->a()V

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/all;->a:Lcom/google/android/gms/internal/ads/adt;

    if-eqz v0, :cond_0

    .line 45
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->destroy()V

    :cond_0
    return-void
.end method

.method public final a(JI)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/all;->d:Lcom/google/android/gms/internal/ads/akr;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/akr;->a(JI)V

    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/google/android/gms/internal/ads/egi;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/all;->c:Landroid/content/Context;

    .line 14
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->ao:Lcom/google/android/gms/internal/ads/af;

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzj;->zzat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies"

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    .line 18
    sget-object v0, Lcom/google/android/gms/internal/ads/cqj;->zzhpf:Lcom/google/android/gms/internal/ads/cqj;

    const/4 v3, 0x0

    .line 19
    invoke-static {v0, v3, v3}, Lcom/google/android/gms/internal/ads/cqh;->a(Lcom/google/android/gms/internal/ads/cqj;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvh;)Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object v0

    .line 20
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/egi;->a(Lcom/google/android/gms/internal/ads/zzvh;)V

    .line 21
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->ap:Lcom/google/android/gms/internal/ads/af;

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/cvm;

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlj()Lcom/google/android/gms/ads/internal/util/zzbl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/ads/internal/util/zzbl;->zzaai()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/cvm;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 26
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/all;->h:Lcom/google/android/gms/internal/ads/cpk;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/cpk;->b:Lcom/google/android/gms/internal/ads/cpi;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/cpi;->b:Lcom/google/android/gms/internal/ads/coz;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/coz;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/cvm;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/all;->f:Z

    if-eqz v0, :cond_2

    const-string v0, "App open interstitial ad is already visible."

    .line 29
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    .line 30
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/all;->f:Z

    if-nez v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    :goto_0
    if-nez v2, :cond_4

    return-void

    .line 33
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/all;->e:Lcom/google/android/gms/internal/ads/bap;

    invoke-interface {v0, p3, p1}, Lcom/google/android/gms/internal/ads/bap;->a(ZLandroid/content/Context;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcbq; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/all;->f:Z

    return-void

    :catch_0
    move-exception p1

    .line 36
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cqh;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/egi;->a(Lcom/google/android/gms/internal/ads/zzvh;)V

    return-void
.end method
