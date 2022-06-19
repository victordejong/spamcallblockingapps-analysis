.class public final Lcom/google/android/gms/internal/ads/bhu;
.super Lcom/google/android/gms/internal/ads/anp;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ads/adt;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lcom/google/android/gms/internal/ads/ate;

.field final c:Lcom/google/android/gms/internal/ads/aom;

.field final d:Lcom/google/android/gms/internal/ads/ul;

.field e:Z

.field private final f:Landroid/content/Context;

.field private final g:Lcom/google/android/gms/internal/ads/bap;

.field private final n:Lcom/google/android/gms/internal/ads/axv;

.field private final o:Lcom/google/android/gms/internal/ads/ars;

.field private final p:Lcom/google/android/gms/internal/ads/cvm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ans;Landroid/content/Context;Lcom/google/android/gms/internal/ads/adt;Lcom/google/android/gms/internal/ads/bap;Lcom/google/android/gms/internal/ads/axv;Lcom/google/android/gms/internal/ads/ars;Lcom/google/android/gms/internal/ads/ate;Lcom/google/android/gms/internal/ads/aom;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/cvm;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/anp;-><init>(Lcom/google/android/gms/internal/ads/ans;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/bhu;->e:Z

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bhu;->f:Landroid/content/Context;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bhu;->g:Lcom/google/android/gms/internal/ads/bap;

    .line 5
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bhu;->a:Ljava/lang/ref/WeakReference;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bhu;->n:Lcom/google/android/gms/internal/ads/axv;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/bhu;->o:Lcom/google/android/gms/internal/ads/ars;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/bhu;->b:Lcom/google/android/gms/internal/ads/ate;

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/bhu;->c:Lcom/google/android/gms/internal/ads/aom;

    .line 10
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/bhu;->p:Lcom/google/android/gms/internal/ads/cvm;

    .line 11
    new-instance p1, Lcom/google/android/gms/internal/ads/vm;

    iget-object p2, p9, Lcom/google/android/gms/internal/ads/cov;->l:Lcom/google/android/gms/internal/ads/zzavy;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/vm;-><init>(Lcom/google/android/gms/internal/ads/zzavy;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bhu;->d:Lcom/google/android/gms/internal/ads/ul;

    return-void
.end method


# virtual methods
.method public final a(ZLandroid/app/Activity;)Z
    .locals 3

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->ao:Lcom/google/android/gms/internal/ads/af;

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bhu;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Rewarded ads that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit https://googlemobileadssdk.page.link/admob-interstitial-policies"

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bhu;->o:Lcom/google/android/gms/internal/ads/ars;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ars;->a()V

    .line 18
    sget-object p1, Lcom/google/android/gms/internal/ads/aq;->ap:Lcom/google/android/gms/internal/ads/af;

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object p1

    .line 20
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 21
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bhu;->p:Lcom/google/android/gms/internal/ads/cvm;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bhu;->h:Lcom/google/android/gms/internal/ads/cpk;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/cpk;->b:Lcom/google/android/gms/internal/ads/cpi;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/cpi;->b:Lcom/google/android/gms/internal/ads/coz;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/coz;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/cvm;->a(Ljava/lang/String;)V

    :cond_0
    return v1

    .line 23
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bhu;->e:Z

    if-eqz v0, :cond_2

    const-string p1, "The rewarded ad have been showed."

    .line 24
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bhu;->o:Lcom/google/android/gms/internal/ads/ars;

    sget-object p2, Lcom/google/android/gms/internal/ads/cqj;->zzhpe:Lcom/google/android/gms/internal/ads/cqj;

    const/4 v0, 0x0

    .line 26
    invoke-static {p2, v0, v0}, Lcom/google/android/gms/internal/ads/cqh;->a(Lcom/google/android/gms/internal/ads/cqj;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvh;)Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object p2

    .line 27
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/ars;->a(Lcom/google/android/gms/internal/ads/zzvh;)V

    return v1

    :cond_2
    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bhu;->e:Z

    .line 30
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bhu;->n:Lcom/google/android/gms/internal/ads/axv;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/axv;->a()V

    if-nez p2, :cond_3

    .line 31
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bhu;->f:Landroid/content/Context;

    .line 32
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bhu;->g:Lcom/google/android/gms/internal/ads/bap;

    invoke-interface {v2, p1, p2}, Lcom/google/android/gms/internal/ads/bap;->a(ZLandroid/content/Context;)V

    .line 33
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bhu;->n:Lcom/google/android/gms/internal/ads/axv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/axv;->b()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcbq; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    .line 36
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bhu;->o:Lcom/google/android/gms/internal/ads/ars;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/ars;->a(Lcom/google/android/gms/internal/ads/zzcbq;)V

    return v1
.end method

.method public final finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bhu;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/adt;

    .line 45
    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->ek:Lcom/google/android/gms/internal/ads/af;

    .line 46
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v1

    .line 47
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/bhu;->e:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 49
    sget-object v1, Lcom/google/android/gms/internal/ads/zd;->e:Lcom/google/android/gms/internal/ads/dbs;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bht;->a(Lcom/google/android/gms/internal/ads/adt;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/dbs;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 51
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_1
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    .line 54
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 55
    throw v0
.end method
