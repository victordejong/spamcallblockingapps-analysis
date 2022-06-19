.class public final Lcom/google/android/gms/internal/ads/ajk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/aro;
.implements Lcom/google/android/gms/internal/ads/asd;
.implements Lcom/google/android/gms/internal/ads/ash;
.implements Lcom/google/android/gms/internal/ads/atb;
.implements Lcom/google/android/gms/internal/ads/eir;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Ljava/util/concurrent/ScheduledExecutorService;

.field private final d:Lcom/google/android/gms/internal/ads/cpk;

.field private final e:Lcom/google/android/gms/internal/ads/cov;

.field private final f:Lcom/google/android/gms/internal/ads/cuq;

.field private final g:Lcom/google/android/gms/internal/ads/cpu;

.field private final h:Lcom/google/android/gms/internal/ads/die;

.field private final i:Lcom/google/android/gms/internal/ads/bw;

.field private final j:Lcom/google/android/gms/internal/ads/bx;

.field private final k:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/cuq;Lcom/google/android/gms/internal/ads/cpu;Landroid/view/View;Lcom/google/android/gms/internal/ads/die;Lcom/google/android/gms/internal/ads/bw;Lcom/google/android/gms/internal/ads/bx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ajk;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ajk;->b:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ajk;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ajk;->d:Lcom/google/android/gms/internal/ads/cpk;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/ajk;->e:Lcom/google/android/gms/internal/ads/cov;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/ajk;->f:Lcom/google/android/gms/internal/ads/cuq;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/ajk;->g:Lcom/google/android/gms/internal/ads/cpu;

    .line 9
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/ajk;->h:Lcom/google/android/gms/internal/ads/die;

    .line 10
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ajk;->k:Ljava/lang/ref/WeakReference;

    .line 11
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/ajk;->i:Lcom/google/android/gms/internal/ads/bw;

    .line 12
    iput-object p11, p0, Lcom/google/android/gms/internal/ads/ajk;->j:Lcom/google/android/gms/internal/ads/bx;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/ajk;)Lcom/google/android/gms/internal/ads/cpk;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ajk;->d:Lcom/google/android/gms/internal/ads/cpk;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/ajk;)Lcom/google/android/gms/internal/ads/cov;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ajk;->e:Lcom/google/android/gms/internal/ads/cov;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/ajk;)Lcom/google/android/gms/internal/ads/cuq;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ajk;->f:Lcom/google/android/gms/internal/ads/cuq;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/ajk;)Landroid/content/Context;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ajk;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/ads/ajk;)Lcom/google/android/gms/internal/ads/cpu;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ajk;->g:Lcom/google/android/gms/internal/ads/cpu;

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 8

    monitor-enter p0

    .line 14
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ajk;->l:Z

    if-eqz v0, :cond_0

    .line 15
    new-instance v7, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajk;->e:Lcom/google/android/gms/internal/ads/cov;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cov;->d:Ljava/util/List;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajk;->e:Lcom/google/android/gms/internal/ads/cov;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cov;->f:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajk;->g:Lcom/google/android/gms/internal/ads/cpu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ajk;->f:Lcom/google/android/gms/internal/ads/cuq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ajk;->d:Lcom/google/android/gms/internal/ads/cpk;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ajk;->e:Lcom/google/android/gms/internal/ads/cov;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 18
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/cuq;->a(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cpu;->a(Ljava/util/List;)V

    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajk;->g:Lcom/google/android/gms/internal/ads/cpu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ajk;->f:Lcom/google/android/gms/internal/ads/cuq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ajk;->d:Lcom/google/android/gms/internal/ads/cpk;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ajk;->e:Lcom/google/android/gms/internal/ads/cov;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/cov;->m:Ljava/util/List;

    .line 22
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/cuq;->a(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cpu;->a(Ljava/util/List;)V

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajk;->g:Lcom/google/android/gms/internal/ads/cpu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ajk;->f:Lcom/google/android/gms/internal/ads/cuq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ajk;->d:Lcom/google/android/gms/internal/ads/cpk;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ajk;->e:Lcom/google/android/gms/internal/ads/cov;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/cov;->f:Ljava/util/List;

    .line 25
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/cuq;->a(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cpu;->a(Ljava/util/List;)V

    :goto_0
    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ajk;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/tp;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 78
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ajk;->g:Lcom/google/android/gms/internal/ads/cpu;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/ajk;->f:Lcom/google/android/gms/internal/ads/cuq;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajk;->e:Lcom/google/android/gms/internal/ads/cov;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cov;->h:Ljava/util/List;

    .line 79
    invoke-virtual {p3, v0, v1, p1}, Lcom/google/android/gms/internal/ads/cuq;->a(Lcom/google/android/gms/internal/ads/cov;Ljava/util/List;Lcom/google/android/gms/internal/ads/tp;)Ljava/util/List;

    move-result-object p1

    .line 80
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/cpu;->a(Ljava/util/List;)V

    return-void
.end method

.method public final a_(Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 5

    .line 90
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->ba:Lcom/google/android/gms/internal/ads/af;

    .line 91
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 92
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzvh;->errorCode:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajk;->e:Lcom/google/android/gms/internal/ads/cov;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cov;->n:Ljava/util/List;

    .line 2012
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2013
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x17

    .line 2014
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x2

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "@gw_mpe@"

    .line 2015
    invoke-static {v2, v4, v3}, Lcom/google/android/gms/internal/ads/cuq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2016
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ajk;->g:Lcom/google/android/gms/internal/ads/cpu;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajk;->f:Lcom/google/android/gms/internal/ads/cuq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ajk;->d:Lcom/google/android/gms/internal/ads/cpk;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ajk;->e:Lcom/google/android/gms/internal/ads/cov;

    .line 96
    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/cuq;->a(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 97
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/cpu;->a(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public final declared-synchronized b()V
    .locals 9

    monitor-enter p0

    .line 50
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ajk;->m:Z

    if-nez v0, :cond_4

    .line 51
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->bN:Lcom/google/android/gms/internal/ads/af;

    .line 52
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajk;->h:Lcom/google/android/gms/internal/ads/die;

    .line 1023
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/die;->b:Lcom/google/android/gms/internal/ads/cxx;

    .line 54
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ajk;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ajk;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-interface {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/cxx;->zza(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    move-object v5, v1

    .line 56
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->ag:Lcom/google/android/gms/internal/ads/af;

    .line 58
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 59
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v8, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajk;->d:Lcom/google/android/gms/internal/ads/cpk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cpk;->b:Lcom/google/android/gms/internal/ads/cpi;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cpi;->b:Lcom/google/android/gms/internal/ads/coz;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/coz;->g:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 60
    sget-object v0, Lcom/google/android/gms/internal/ads/cm;->b:Lcom/google/android/gms/internal/ads/bz;

    .line 61
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bz;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajk;->j:Lcom/google/android/gms/internal/ads/bx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/bx;->a()Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    .line 68
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dbc;->c(Lcom/google/android/gms/internal/ads/dbt;)Lcom/google/android/gms/internal/ads/dbc;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->aE:Lcom/google/android/gms/internal/ads/af;

    .line 70
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v1

    .line 71
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ajk;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/dbc;->a(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/dbc;

    move-result-object v0

    .line 72
    new-instance v1, Lcom/google/android/gms/internal/ads/ajn;

    invoke-direct {v1, p0, v5}, Lcom/google/android/gms/internal/ads/ajn;-><init>(Lcom/google/android/gms/internal/ads/ajk;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ajk;->b:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dbh;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbi;Ljava/util/concurrent/Executor;)V

    .line 73
    iput-boolean v8, p0, Lcom/google/android/gms/internal/ads/ajk;->m:Z

    goto :goto_2

    .line 62
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajk;->g:Lcom/google/android/gms/internal/ads/cpu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ajk;->f:Lcom/google/android/gms/internal/ads/cuq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ajk;->d:Lcom/google/android/gms/internal/ads/cpk;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ajk;->e:Lcom/google/android/gms/internal/ads/cov;

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget-object v7, v3, Lcom/google/android/gms/internal/ads/cov;->d:Ljava/util/List;

    .line 63
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/cuq;->a(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cpu;->a(Ljava/util/List;)V

    .line 65
    iput-boolean v8, p0, Lcom/google/android/gms/internal/ads/ajk;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 74
    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 5

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajk;->g:Lcom/google/android/gms/internal/ads/cpu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ajk;->f:Lcom/google/android/gms/internal/ads/cuq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ajk;->d:Lcom/google/android/gms/internal/ads/cpk;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ajk;->e:Lcom/google/android/gms/internal/ads/cov;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/cov;->g:Ljava/util/List;

    .line 83
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/cuq;->a(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cpu;->a(Ljava/util/List;)V

    return-void
.end method

.method public final g()V
    .locals 5

    .line 86
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajk;->g:Lcom/google/android/gms/internal/ads/cpu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ajk;->f:Lcom/google/android/gms/internal/ads/cuq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ajk;->d:Lcom/google/android/gms/internal/ads/cpk;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ajk;->e:Lcom/google/android/gms/internal/ads/cov;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/cov;->i:Ljava/util/List;

    .line 87
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/cuq;->a(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cpu;->a(Ljava/util/List;)V

    return-void
.end method

.method public final onAdClicked()V
    .locals 5

    .line 29
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->ag:Lcom/google/android/gms/internal/ads/af;

    .line 31
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 32
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajk;->d:Lcom/google/android/gms/internal/ads/cpk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cpk;->b:Lcom/google/android/gms/internal/ads/cpi;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cpi;->b:Lcom/google/android/gms/internal/ads/coz;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/coz;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 33
    sget-object v0, Lcom/google/android/gms/internal/ads/cm;->a:Lcom/google/android/gms/internal/ads/bz;

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bz;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajk;->j:Lcom/google/android/gms/internal/ads/bx;

    .line 43
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/bx;->b()Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    .line 44
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dbc;->c(Lcom/google/android/gms/internal/ads/dbt;)Lcom/google/android/gms/internal/ads/dbc;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->aE:Lcom/google/android/gms/internal/ads/af;

    .line 46
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v1

    .line 47
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ajk;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/dbc;->a(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/dbc;

    move-result-object v0

    .line 48
    new-instance v1, Lcom/google/android/gms/internal/ads/ajj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/ajj;-><init>(Lcom/google/android/gms/internal/ads/ajk;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ajk;->b:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dbh;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbi;Ljava/util/concurrent/Executor;)V

    return-void

    .line 35
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajk;->g:Lcom/google/android/gms/internal/ads/cpu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ajk;->f:Lcom/google/android/gms/internal/ads/cuq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ajk;->d:Lcom/google/android/gms/internal/ads/cpk;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ajk;->e:Lcom/google/android/gms/internal/ads/cov;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/cov;->c:Ljava/util/List;

    .line 36
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/cuq;->a(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 37
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ajk;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zzj;->zzbd(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget v2, Lcom/google/android/gms/internal/ads/brp;->b:I

    goto :goto_2

    :cond_3
    sget v2, Lcom/google/android/gms/internal/ads/brp;->a:I

    .line 38
    :goto_2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/cpu;->a(Ljava/util/List;I)V

    return-void
.end method
