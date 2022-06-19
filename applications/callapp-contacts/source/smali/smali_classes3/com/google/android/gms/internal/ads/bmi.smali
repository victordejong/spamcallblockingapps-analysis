.class public final Lcom/google/android/gms/internal/ads/bmi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field b:Z

.field final c:J

.field final d:Lcom/google/android/gms/internal/ads/zp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zp<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final e:Landroid/content/Context;

.field final f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field final g:Lcom/google/android/gms/internal/ads/bjg;

.field final h:Ljava/util/concurrent/Executor;

.field final i:Ljava/util/concurrent/Executor;

.field final j:Ljava/util/concurrent/ScheduledExecutorService;

.field final k:Lcom/google/android/gms/internal/ads/blr;

.field final l:Lcom/google/android/gms/internal/ads/axn;

.field m:Z

.field private n:Z

.field private final o:Lcom/google/android/gms/internal/ads/zzbar;

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzajm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Ljava/lang/ref/WeakReference;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/bjg;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/blr;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/internal/ads/axn;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/content/Context;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/internal/ads/bjg;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/google/android/gms/internal/ads/blr;",
            "Lcom/google/android/gms/internal/ads/zzbar;",
            "Lcom/google/android/gms/internal/ads/axn;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bmi;->n:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bmi;->a:Z

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bmi;->b:Z

    .line 6
    new-instance v1, Lcom/google/android/gms/internal/ads/zp;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zp;-><init>()V

    .line 7
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/bmi;->d:Lcom/google/android/gms/internal/ads/zp;

    .line 8
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/bmi;->p:Ljava/util/Map;

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/bmi;->m:Z

    .line 10
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bmi;->g:Lcom/google/android/gms/internal/ads/bjg;

    .line 11
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bmi;->e:Landroid/content/Context;

    .line 12
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bmi;->f:Ljava/lang/ref/WeakReference;

    .line 13
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bmi;->h:Ljava/util/concurrent/Executor;

    .line 14
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/bmi;->j:Ljava/util/concurrent/ScheduledExecutorService;

    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bmi;->i:Ljava/util/concurrent/Executor;

    .line 16
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/bmi;->k:Lcom/google/android/gms/internal/ads/blr;

    .line 17
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/bmi;->o:Lcom/google/android/gms/internal/ads/zzbar;

    .line 18
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/bmi;->l:Lcom/google/android/gms/internal/ads/axn;

    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/bmi;->c:J

    const-string p1, "com.google.android.gms.ads.MobileAds"

    const-string p2, ""

    .line 20
    invoke-virtual {p0, p1, v0, p2, v0}, Lcom/google/android/gms/internal/ads/bmi;->a(Ljava/lang/String;ZLjava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/bmi;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 0

    .line 176
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/bmi;->a(Ljava/lang/String;ZLjava/lang/String;I)V

    return-void
.end method

.method private final declared-synchronized c()Lcom/google/android/gms/internal/ads/dbt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 63
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yd;->d()Lcom/google/android/gms/ads/internal/util/zzf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzg()Lcom/google/android/gms/internal/ads/ye;

    move-result-object v0

    .line 1064
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ye;->c:Ljava/lang/String;

    .line 64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 66
    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zp;-><init>()V

    .line 68
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/yd;->d()Lcom/google/android/gms/ads/internal/util/zzf;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/bmn;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/bmn;-><init>(Lcom/google/android/gms/internal/ads/bmi;Lcom/google/android/gms/internal/ads/zp;)V

    .line 70
    invoke-interface {v1, v2}, Lcom/google/android/gms/ads/internal/util/zzf;->zzb(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->bh:Lcom/google/android/gms/internal/ads/af;

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 28
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/ads/cq;->a:Lcom/google/android/gms/internal/ads/bz;

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bz;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bmi;->o:Lcom/google/android/gms/internal/ads/zzbar;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbar;->zzekb:I

    sget-object v2, Lcom/google/android/gms/internal/ads/aq;->bi:Lcom/google/android/gms/internal/ads/af;

    .line 31
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bmi;->m:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bmi;->n:Z

    if-eqz v0, :cond_1

    return-void

    .line 41
    :cond_1
    monitor-enter p0

    .line 42
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bmi;->n:Z

    if-eqz v0, :cond_2

    .line 43
    monitor-exit p0

    return-void

    .line 44
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bmi;->k:Lcom/google/android/gms/internal/ads/blr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/blr;->a()V

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bmi;->l:Lcom/google/android/gms/internal/ads/axn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/axn;->a()V

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bmi;->d:Lcom/google/android/gms/internal/ads/zp;

    new-instance v2, Lcom/google/android/gms/internal/ads/bmk;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/bmk;-><init>(Lcom/google/android/gms/internal/ads/bmi;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bmi;->h:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zp;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 47
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/bmi;->n:Z

    .line 48
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bmi;->c()Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bmi;->j:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/google/android/gms/internal/ads/bmm;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/bmm;-><init>(Lcom/google/android/gms/internal/ads/bmi;)V

    sget-object v3, Lcom/google/android/gms/internal/ads/aq;->bk:Lcom/google/android/gms/internal/ads/af;

    .line 52
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v3

    .line 53
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 54
    invoke-interface {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 55
    new-instance v1, Lcom/google/android/gms/internal/ads/bmt;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/bmt;-><init>(Lcom/google/android/gms/internal/ads/bmi;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bmi;->h:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dbh;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbi;Ljava/util/concurrent/Executor;)V

    .line 56
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 33
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bmi;->n:Z

    if-nez v0, :cond_4

    const-string v0, "com.google.android.gms.ads.MobileAds"

    const-string v2, ""

    const/4 v3, 0x0

    .line 34
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/bmi;->a(Ljava/lang/String;ZLjava/lang/String;I)V

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bmi;->d:Lcom/google/android/gms/internal/ads/zp;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zp;->set(Ljava/lang/Object;)Z

    .line 36
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/bmi;->n:Z

    .line 37
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/bmi;->a:Z

    :cond_4
    return-void
.end method

.method final a(Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bmi;->p:Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzajm;

    invoke-direct {v1, p1, p2, p4, p3}, Lcom/google/android/gms/internal/ads/zzajm;-><init>(Ljava/lang/String;ZILjava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzajm;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bmi;->p:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 59
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bmi;->p:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzajm;

    .line 60
    new-instance v4, Lcom/google/android/gms/internal/ads/zzajm;

    iget-boolean v5, v3, Lcom/google/android/gms/internal/ads/zzajm;->zzdkb:Z

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzajm;->zzdkc:I

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzajm;->description:Ljava/lang/String;

    invoke-direct {v4, v2, v5, v6, v3}, Lcom/google/android/gms/internal/ads/zzajm;-><init>(Ljava/lang/String;ZILjava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
