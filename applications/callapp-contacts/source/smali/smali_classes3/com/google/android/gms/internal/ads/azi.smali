.class public final Lcom/google/android/gms/internal/ads/azi;
.super Lcom/google/android/gms/internal/ads/anp;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/aom;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ads/adt;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ads/axv;

.field private final e:Lcom/google/android/gms/internal/ads/bap;

.field private final f:Lcom/google/android/gms/internal/ads/cvm;

.field private final g:Lcom/google/android/gms/internal/ads/ars;

.field private n:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ans;Landroid/content/Context;Lcom/google/android/gms/internal/ads/adt;Lcom/google/android/gms/internal/ads/axv;Lcom/google/android/gms/internal/ads/bap;Lcom/google/android/gms/internal/ads/aom;Lcom/google/android/gms/internal/ads/cvm;Lcom/google/android/gms/internal/ads/ars;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/anp;-><init>(Lcom/google/android/gms/internal/ads/ans;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/azi;->n:Z

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/azi;->b:Landroid/content/Context;

    .line 4
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/azi;->c:Ljava/lang/ref/WeakReference;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/azi;->d:Lcom/google/android/gms/internal/ads/axv;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/azi;->e:Lcom/google/android/gms/internal/ads/bap;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/azi;->a:Lcom/google/android/gms/internal/ads/aom;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/azi;->f:Lcom/google/android/gms/internal/ads/cvm;

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/azi;->g:Lcom/google/android/gms/internal/ads/ars;

    return-void
.end method


# virtual methods
.method public final a(ZLandroid/app/Activity;)Z
    .locals 4

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->ao:Lcom/google/android/gms/internal/ads/af;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azi;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies"

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azi;->g:Lcom/google/android/gms/internal/ads/ars;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ars;->a()V

    .line 17
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->ap:Lcom/google/android/gms/internal/ads/af;

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azi;->f:Lcom/google/android/gms/internal/ads/cvm;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/azi;->h:Lcom/google/android/gms/internal/ads/cpk;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/cpk;->b:Lcom/google/android/gms/internal/ads/cpi;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/cpi;->b:Lcom/google/android/gms/internal/ads/coz;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/coz;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/cvm;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/azi;->n:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    return v2

    .line 25
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azi;->d:Lcom/google/android/gms/internal/ads/axv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/axv;->a()V

    if-nez p2, :cond_3

    .line 26
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/azi;->b:Landroid/content/Context;

    .line 27
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azi;->e:Lcom/google/android/gms/internal/ads/bap;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/bap;->a(ZLandroid/content/Context;)V

    .line 28
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/azi;->d:Lcom/google/android/gms/internal/ads/axv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/axv;->b()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcbq; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/azi;->n:Z

    return v1

    :catch_0
    move-exception p1

    .line 31
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/azi;->g:Lcom/google/android/gms/internal/ads/ars;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/ars;->a(Lcom/google/android/gms/internal/ads/zzcbq;)V

    return v2
.end method

.method public final finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azi;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/adt;

    .line 37
    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->ek:Lcom/google/android/gms/internal/ads/af;

    .line 38
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v1

    .line 39
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/azi;->n:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 41
    sget-object v1, Lcom/google/android/gms/internal/ads/zd;->e:Lcom/google/android/gms/internal/ads/dbs;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/azh;->a(Lcom/google/android/gms/internal/ads/adt;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/dbs;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 43
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_1
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    .line 46
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 47
    throw v0
.end method
