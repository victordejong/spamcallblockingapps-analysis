.class public final Lcom/google/android/gms/internal/ads/aib;
.super Lcom/google/android/gms/internal/ads/elq;
.source "SourceFile"


# instance fields
.field final a:Landroid/content/Context;

.field final b:Lcom/google/android/gms/internal/ads/bjg;

.field final c:Lcom/google/android/gms/internal/ads/bsm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/bsm<",
            "Lcom/google/android/gms/internal/ads/cqe;",
            "Lcom/google/android/gms/internal/ads/bug;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ads/zzbar;

.field private final e:Lcom/google/android/gms/internal/ads/byp;

.field private final f:Lcom/google/android/gms/internal/ads/bmi;

.field private final g:Lcom/google/android/gms/internal/ads/wo;

.field private final h:Lcom/google/android/gms/internal/ads/bji;

.field private i:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/internal/ads/bjg;Lcom/google/android/gms/internal/ads/bsm;Lcom/google/android/gms/internal/ads/byp;Lcom/google/android/gms/internal/ads/bmi;Lcom/google/android/gms/internal/ads/wo;Lcom/google/android/gms/internal/ads/bji;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzbar;",
            "Lcom/google/android/gms/internal/ads/bjg;",
            "Lcom/google/android/gms/internal/ads/bsm<",
            "Lcom/google/android/gms/internal/ads/cqe;",
            "Lcom/google/android/gms/internal/ads/bug;",
            ">;",
            "Lcom/google/android/gms/internal/ads/byp;",
            "Lcom/google/android/gms/internal/ads/bmi;",
            "Lcom/google/android/gms/internal/ads/wo;",
            "Lcom/google/android/gms/internal/ads/bji;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/elq;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aib;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aib;->d:Lcom/google/android/gms/internal/ads/zzbar;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/aib;->b:Lcom/google/android/gms/internal/ads/bjg;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/aib;->c:Lcom/google/android/gms/internal/ads/bsm;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/aib;->e:Lcom/google/android/gms/internal/ads/byp;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/aib;->f:Lcom/google/android/gms/internal/ads/bmi;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/aib;->g:Lcom/google/android/gms/internal/ads/wo;

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/aib;->h:Lcom/google/android/gms/internal/ads/bji;

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/aib;->i:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 3

    monitor-enter p0

    .line 12
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aib;->i:Z

    if-eqz v0, :cond_0

    const-string v0, "Mobile ads is initialized already."

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    return-void

    .line 15
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aib;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aq;->a(Landroid/content/Context;)V

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aib;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aib;->d:Lcom/google/android/gms/internal/ads/zzbar;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/yd;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;)V

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlb()Lcom/google/android/gms/internal/ads/egn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aib;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/egn;->a(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aib;->i:Z

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aib;->f:Lcom/google/android/gms/internal/ads/bmi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bmi;->a()V

    .line 20
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->aX:Lcom/google/android/gms/internal/ads/af;

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aib;->e:Lcom/google/android/gms/internal/ads/byp;

    .line 1006
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v1

    .line 1007
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/yd;->d()Lcom/google/android/gms/ads/internal/util/zzf;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/byo;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/byo;-><init>(Lcom/google/android/gms/internal/ads/byp;)V

    .line 1008
    invoke-interface {v1, v2}, Lcom/google/android/gms/ads/internal/util/zzf;->zzb(Ljava/lang/Runnable;)V

    .line 1009
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/byp;->b:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/byr;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/byr;-><init>(Lcom/google/android/gms/internal/ads/byp;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 24
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->ce:Lcom/google/android/gms/internal/ads/af;

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aib;->h:Lcom/google/android/gms/internal/ads/bji;

    .line 2005
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v1

    .line 2006
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/yd;->d()Lcom/google/android/gms/ads/internal/util/zzf;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/bjh;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/bjh;-><init>(Lcom/google/android/gms/internal/ads/bji;)V

    .line 2007
    invoke-interface {v1, v2}, Lcom/google/android/gms/ads/internal/util/zzf;->zzb(Ljava/lang/Runnable;)V

    .line 2008
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bji;->c:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/bjk;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/bjk;-><init>(Lcom/google/android/gms/internal/ads/bji;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(F)V
    .locals 1

    monitor-enter p0

    .line 29
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzla()Lcom/google/android/gms/ads/internal/util/zzae;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzae;->setAppVolume(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lcom/google/android/gms/dynamic/b;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "Wrapped context is null. Failed to open debug menu."

    .line 43
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzex(Ljava/lang/String;)V

    return-void

    .line 45
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-nez p1, :cond_1

    const-string p1, "Context is null. Failed to open debug menu."

    .line 47
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzex(Ljava/lang/String;)V

    return-void

    .line 50
    :cond_1
    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzad;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzad;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/internal/util/zzad;->setAdUnitId(Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aib;->d:Lcom/google/android/gms/internal/ads/zzbar;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbar;->zzbrz:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzad;->zzu(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzad;->showDialog()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/it;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aib;->f:Lcom/google/android/gms/internal/ads/bmi;

    .line 2024
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bmi;->d:Lcom/google/android/gms/internal/ads/zp;

    new-instance v2, Lcom/google/android/gms/internal/ads/bml;

    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/internal/ads/bml;-><init>(Lcom/google/android/gms/internal/ads/bmi;Lcom/google/android/gms/internal/ads/it;)V

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/bmi;->i:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zp;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/mm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aib;->b:Lcom/google/android/gms/internal/ads/bjg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/bjg;->a(Lcom/google/android/gms/internal/ads/mm;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzaat;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aib;->g:Lcom/google/android/gms/internal/ads/wo;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aib;->a:Landroid/content/Context;

    .line 2054
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/xe;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/xe;

    move-result-object v1

    .line 2055
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/xe;->b()Lcom/google/android/gms/internal/ads/wh;

    move-result-object v1

    .line 3007
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/wh;->a:Lcom/google/android/gms/internal/ads/wf;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/wf;->a(I)V

    .line 2057
    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->af:Lcom/google/android/gms/internal/ads/af;

    .line 2058
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v1

    .line 2059
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2060
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/wo;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2061
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/wo;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2063
    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/wo;->c:Ljava/lang/Object;

    monitor-enter p1

    .line 2064
    :try_start_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aib;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aq;->a(Landroid/content/Context;)V

    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->cd:Lcom/google/android/gms/internal/ads/af;

    .line 37
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 38
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzld()Lcom/google/android/gms/ads/internal/zze;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aib;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aib;->d:Lcom/google/android/gms/internal/ads/zzbar;

    const/4 v3, 0x0

    .line 40
    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/google/android/gms/ads/internal/zze;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/dynamic/b;)V
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aib;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aq;->a(Landroid/content/Context;)V

    .line 58
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->cg:Lcom/google/android/gms/internal/ads/af;

    .line 59
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aib;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzbb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 62
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v0

    .line 64
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 66
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->cd:Lcom/google/android/gms/internal/ads/af;

    .line 67
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 68
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 69
    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->ay:Lcom/google/android/gms/internal/ads/af;

    .line 70
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v1

    .line 71
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    or-int/2addr v0, v1

    const/4 v1, 0x0

    .line 73
    sget-object v2, Lcom/google/android/gms/internal/ads/aq;->ay:Lcom/google/android/gms/internal/ads/af;

    .line 74
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v2

    .line 75
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    .line 77
    invoke-static {p2}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Runnable;

    .line 78
    new-instance v1, Lcom/google/android/gms/internal/ads/aia;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/ads/aia;-><init>(Lcom/google/android/gms/internal/ads/aib;Ljava/lang/Runnable;)V

    :cond_3
    if-eqz v0, :cond_4

    .line 80
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzld()Lcom/google/android/gms/ads/internal/zze;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aib;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aib;->d:Lcom/google/android/gms/internal/ads/zzbar;

    invoke-virtual {p2, v0, v2, p1, v1}, Lcom/google/android/gms/ads/internal/zze;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method public final declared-synchronized a(Z)V
    .locals 1

    monitor-enter p0

    .line 32
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzla()Lcom/google/android/gms/ads/internal/util/zzae;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzae;->setAppMuted(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()F
    .locals 1

    monitor-enter p0

    .line 31
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzla()Lcom/google/android/gms/ads/internal/util/zzae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzae;->zzrg()F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aib;->e:Lcom/google/android/gms/internal/ads/byp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/byp;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized c()Z
    .locals 1

    monitor-enter p0

    .line 34
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzla()Lcom/google/android/gms/ads/internal/util/zzae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzae;->zzrh()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aib;->d:Lcom/google/android/gms/internal/ads/zzbar;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbar;->zzbrz:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzajm;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aib;->f:Lcom/google/android/gms/internal/ads/bmi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bmi;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final f()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aib;->f:Lcom/google/android/gms/internal/ads/bmi;

    const/4 v1, 0x0

    .line 3022
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/bmi;->m:Z

    return-void
.end method
