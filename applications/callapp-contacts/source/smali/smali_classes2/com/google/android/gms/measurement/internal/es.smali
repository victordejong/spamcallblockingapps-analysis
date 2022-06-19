.class public final Lcom/google/android/gms/measurement/internal/es;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/fo;


# static fields
.field private static volatile r:Lcom/google/android/gms/measurement/internal/es;


# instance fields
.field private A:Lcom/google/android/gms/measurement/internal/di;

.field private B:Lcom/google/android/gms/measurement/internal/ik;

.field private C:Lcom/google/android/gms/measurement/internal/m;

.field private D:Lcom/google/android/gms/measurement/internal/dg;

.field private E:Z

.field private F:Ljava/lang/Boolean;

.field private G:J

.field private H:I

.field private final I:Ljava/util/concurrent/atomic/AtomicInteger;

.field final a:Landroid/content/Context;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:Z

.field public final f:Lcom/google/android/gms/measurement/internal/kk;

.field final g:Lcom/google/android/gms/measurement/internal/e;

.field final h:Lcom/google/android/gms/measurement/internal/do;

.field final i:Lcom/google/android/gms/measurement/internal/ep;

.field public final j:Lcom/google/android/gms/common/util/f;

.field final k:Ljava/lang/String;

.field l:Lcom/google/android/gms/measurement/internal/eh;

.field volatile m:Ljava/lang/Boolean;

.field protected n:Ljava/lang/Boolean;

.field protected o:Ljava/lang/Boolean;

.field volatile p:Z

.field final q:J

.field private final s:Lcom/google/android/gms/measurement/internal/ee;

.field private final t:Lcom/google/android/gms/measurement/internal/iz;

.field private final u:Lcom/google/android/gms/measurement/internal/ju;

.field private final v:Lcom/google/android/gms/measurement/internal/dj;

.field private final w:Lcom/google/android/gms/measurement/internal/hk;

.field private final x:Lcom/google/android/gms/measurement/internal/gv;

.field private final y:Lcom/google/android/gms/measurement/internal/ca;

.field private final z:Lcom/google/android/gms/measurement/internal/gz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/fv;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/es;->E:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/es;->I:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/fv;->a:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/measurement/internal/kk;

    invoke-direct {v2, v1}, Lcom/google/android/gms/measurement/internal/kk;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/es;->f:Lcom/google/android/gms/measurement/internal/kk;

    sput-object v2, Lcom/google/android/gms/measurement/internal/cz;->a:Lcom/google/android/gms/measurement/internal/kk;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/fv;->a:Landroid/content/Context;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/es;->a:Landroid/content/Context;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/fv;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/es;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/fv;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/es;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/fv;->d:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/es;->d:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/google/android/gms/measurement/internal/fv;->h:Z

    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/es;->e:Z

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/fv;->e:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/es;->m:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/fv;->j:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/es;->k:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/es;->p:Z

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/fv;->g:Lcom/google/android/gms/internal/measurement/zzz;

    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/zzz;->zzg:Landroid/os/Bundle;

    if-eqz v4, :cond_1

    const-string v5, "measurementEnabled"

    .line 3
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 4
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    .line 5
    check-cast v4, Ljava/lang/Boolean;

    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/es;->n:Ljava/lang/Boolean;

    :cond_0
    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzz;->zzg:Landroid/os/Bundle;

    const-string v4, "measurementDeactivated"

    .line 6
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 7
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    .line 8
    check-cast v3, Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/es;->o:Ljava/lang/Boolean;

    .line 9
    :cond_1
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/ec;->a(Landroid/content/Context;)V

    .line 10
    invoke-static {}, Lcom/google/android/gms/common/util/i;->d()Lcom/google/android/gms/common/util/f;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/es;->j:Lcom/google/android/gms/common/util/f;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/fv;->i:Ljava/lang/Long;

    if-eqz v4, :cond_2

    .line 11
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    .line 12
    :cond_2
    invoke-interface {v3}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v3

    .line 11
    :goto_0
    iput-wide v3, p0, Lcom/google/android/gms/measurement/internal/es;->q:J

    new-instance v3, Lcom/google/android/gms/measurement/internal/e;

    .line 13
    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/e;-><init>(Lcom/google/android/gms/measurement/internal/es;)V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 14
    new-instance v3, Lcom/google/android/gms/measurement/internal/ee;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/ee;-><init>(Lcom/google/android/gms/measurement/internal/es;)V

    .line 15
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fn;->h()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/es;->s:Lcom/google/android/gms/measurement/internal/ee;

    new-instance v3, Lcom/google/android/gms/measurement/internal/do;

    .line 16
    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/do;-><init>(Lcom/google/android/gms/measurement/internal/es;)V

    .line 17
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fn;->h()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/es;->h:Lcom/google/android/gms/measurement/internal/do;

    .line 18
    new-instance v3, Lcom/google/android/gms/measurement/internal/ju;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/ju;-><init>(Lcom/google/android/gms/measurement/internal/es;)V

    .line 19
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fn;->h()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/es;->u:Lcom/google/android/gms/measurement/internal/ju;

    .line 20
    new-instance v3, Lcom/google/android/gms/measurement/internal/dj;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/dj;-><init>(Lcom/google/android/gms/measurement/internal/es;)V

    .line 21
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fn;->h()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/es;->v:Lcom/google/android/gms/measurement/internal/dj;

    new-instance v3, Lcom/google/android/gms/measurement/internal/ca;

    .line 22
    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/ca;-><init>(Lcom/google/android/gms/measurement/internal/es;)V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/es;->y:Lcom/google/android/gms/measurement/internal/ca;

    new-instance v3, Lcom/google/android/gms/measurement/internal/hk;

    .line 23
    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/hk;-><init>(Lcom/google/android/gms/measurement/internal/es;)V

    .line 24
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/ec;->l()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/es;->w:Lcom/google/android/gms/measurement/internal/hk;

    new-instance v3, Lcom/google/android/gms/measurement/internal/gv;

    .line 25
    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/gv;-><init>(Lcom/google/android/gms/measurement/internal/es;)V

    .line 26
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/ec;->l()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/es;->x:Lcom/google/android/gms/measurement/internal/gv;

    new-instance v3, Lcom/google/android/gms/measurement/internal/iz;

    .line 27
    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/iz;-><init>(Lcom/google/android/gms/measurement/internal/es;)V

    .line 28
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/ec;->l()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/es;->t:Lcom/google/android/gms/measurement/internal/iz;

    new-instance v3, Lcom/google/android/gms/measurement/internal/gz;

    .line 29
    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/gz;-><init>(Lcom/google/android/gms/measurement/internal/es;)V

    .line 30
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fn;->h()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/es;->z:Lcom/google/android/gms/measurement/internal/gz;

    .line 31
    new-instance v3, Lcom/google/android/gms/measurement/internal/ep;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/ep;-><init>(Lcom/google/android/gms/measurement/internal/es;)V

    .line 32
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fn;->h()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/es;->i:Lcom/google/android/gms/measurement/internal/ep;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/fv;->g:Lcom/google/android/gms/internal/measurement/zzz;

    if-eqz v4, :cond_3

    iget-wide v4, v4, Lcom/google/android/gms/internal/measurement/zzz;->zzb:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    .line 33
    :goto_1
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_5

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->f()Lcom/google/android/gms/measurement/internal/gv;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/es;->a:Landroid/content/Context;

    .line 35
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Application;

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/es;->a:Landroid/content/Context;

    .line 36
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/gv;->a:Lcom/google/android/gms/measurement/internal/gu;

    if-nez v4, :cond_4

    .line 37
    new-instance v4, Lcom/google/android/gms/measurement/internal/gu;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lcom/google/android/gms/measurement/internal/gu;-><init>(Lcom/google/android/gms/measurement/internal/gv;Lcom/google/android/gms/measurement/internal/gh;)V

    iput-object v4, v1, Lcom/google/android/gms/measurement/internal/gv;->a:Lcom/google/android/gms/measurement/internal/gu;

    :cond_4
    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/gv;->a:Lcom/google/android/gms/measurement/internal/gu;

    .line 38
    invoke-virtual {v2, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/gv;->a:Lcom/google/android/gms/measurement/internal/gu;

    .line 39
    invoke-virtual {v2, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 40
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    const-string v1, "Registered activity lifecycle callback"

    .line 41
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 42
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    const-string v1, "Application context is not an Application"

    .line 42
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    .line 41
    :cond_6
    :goto_2
    new-instance v0, Lcom/google/android/gms/measurement/internal/er;

    .line 43
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/er;-><init>(Lcom/google/android/gms/measurement/internal/es;Lcom/google/android/gms/measurement/internal/fv;)V

    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/ep;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzz;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/es;
    .locals 12

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzz;->zze:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzz;->zzf:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzz;

    iget-wide v2, p1, Lcom/google/android/gms/internal/measurement/zzz;->zza:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/measurement/zzz;->zzb:J

    iget-boolean v6, p1, Lcom/google/android/gms/internal/measurement/zzz;->zzc:Z

    iget-object v7, p1, Lcom/google/android/gms/internal/measurement/zzz;->zzd:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/google/android/gms/internal/measurement/zzz;->zzg:Landroid/os/Bundle;

    const/4 v11, 0x0

    move-object v1, v0

    .line 1
    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/measurement/zzz;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    move-object p1, v0

    .line 2
    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/measurement/internal/es;->r:Lcom/google/android/gms/measurement/internal/es;

    if-nez v0, :cond_3

    const-class v0, Lcom/google/android/gms/measurement/internal/es;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/measurement/internal/es;->r:Lcom/google/android/gms/measurement/internal/es;

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/gms/measurement/internal/fv;

    .line 4
    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/fv;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzz;Ljava/lang/Long;)V

    new-instance p0, Lcom/google/android/gms/measurement/internal/es;

    .line 5
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/es;-><init>(Lcom/google/android/gms/measurement/internal/fv;)V

    sput-object p0, Lcom/google/android/gms/measurement/internal/es;->r:Lcom/google/android/gms/measurement/internal/es;

    .line 6
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    if-eqz p1, :cond_4

    .line 11
    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/zzz;->zzg:Landroid/os/Bundle;

    if-eqz p0, :cond_4

    const-string p2, "dataCollectionDefaultEnabled"

    .line 7
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/google/android/gms/measurement/internal/es;->r:Lcom/google/android/gms/measurement/internal/es;

    .line 8
    invoke-static {p0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/google/android/gms/measurement/internal/es;->r:Lcom/google/android/gms/measurement/internal/es;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzz;->zzg:Landroid/os/Bundle;

    const-string p2, "dataCollectionDefaultEnabled"

    .line 9
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 10
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/es;->m:Ljava/lang/Boolean;

    .line 6
    :cond_4
    :goto_0
    sget-object p0, Lcom/google/android/gms/measurement/internal/es;->r:Lcom/google/android/gms/measurement/internal/es;

    .line 11
    invoke-static {p0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/google/android/gms/measurement/internal/es;->r:Lcom/google/android/gms/measurement/internal/es;

    return-object p0
.end method

.method private static final a(Lcom/google/android/gms/measurement/internal/ec;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ec;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1b

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/es;Lcom/google/android/gms/measurement/internal/fv;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 2
    new-instance v0, Lcom/google/android/gms/measurement/internal/m;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/m;-><init>(Lcom/google/android/gms/measurement/internal/es;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fn;->h()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->C:Lcom/google/android/gms/measurement/internal/m;

    new-instance v0, Lcom/google/android/gms/measurement/internal/dg;

    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/fv;->f:J

    .line 5
    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/measurement/internal/dg;-><init>(Lcom/google/android/gms/measurement/internal/es;J)V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ec;->l()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->D:Lcom/google/android/gms/measurement/internal/dg;

    new-instance p1, Lcom/google/android/gms/measurement/internal/di;

    .line 7
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/di;-><init>(Lcom/google/android/gms/measurement/internal/es;)V

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/ec;->l()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/es;->A:Lcom/google/android/gms/measurement/internal/di;

    new-instance p1, Lcom/google/android/gms/measurement/internal/ik;

    .line 9
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/ik;-><init>(Lcom/google/android/gms/measurement/internal/es;)V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/ec;->l()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/es;->B:Lcom/google/android/gms/measurement/internal/ik;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/es;->u:Lcom/google/android/gms/measurement/internal/ju;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fn;->i()V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/es;->s:Lcom/google/android/gms/measurement/internal/ee;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fn;->i()V

    new-instance p1, Lcom/google/android/gms/measurement/internal/eh;

    .line 13
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/eh;-><init>(Lcom/google/android/gms/measurement/internal/es;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/es;->l:Lcom/google/android/gms/measurement/internal/eh;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/es;->D:Lcom/google/android/gms/measurement/internal/dg;

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/ec;->m()V

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p1

    .line 20000
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/do;->i:Lcom/google/android/gms/measurement/internal/dm;

    const-wide/32 v1, 0x9899

    .line 15
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "App measurement initialized, version"

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p1

    .line 21000
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/do;->i:Lcom/google/android/gms/measurement/internal/dm;

    const-string v1, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    .line 16
    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dg;->ad_()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->b:Ljava/lang/String;

    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->g()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/ju;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p1

    .line 22000
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/do;->i:Lcom/google/android/gms/measurement/internal/dm;

    const-string v0, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    .line 22
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 25000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->i:Lcom/google/android/gms/measurement/internal/dm;

    .line 24
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 25
    :cond_1
    new-instance p1, Ljava/lang/String;

    .line 24
    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 25
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    .line 26
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p1

    .line 23000
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/do;->j:Lcom/google/android/gms/measurement/internal/dm;

    const-string v0, "Debug-level message logging enabled"

    .line 26
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    iget p1, p0, Lcom/google/android/gms/measurement/internal/es;->H:I

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->I:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq p1, v0, :cond_3

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p1

    .line 24000
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    .line 29
    iget v0, p0, Lcom/google/android/gms/measurement/internal/es;->H:I

    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/es;->I:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not all components initialized"

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/es;->E:Z

    return-void
.end method

.method private static final a(Lcom/google/android/gms/measurement/internal/fm;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final a(Lcom/google/android/gms/measurement/internal/fn;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fn;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1b

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static final y()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call on client side"

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private z()Lcom/google/android/gms/measurement/internal/gz;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->z:Lcom/google/android/gms/measurement/internal/gz;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/es;->a(Lcom/google/android/gms/measurement/internal/fn;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->z:Lcom/google/android/gms/measurement/internal/gz;

    return-object v0
.end method


# virtual methods
.method public final W_()Lcom/google/android/gms/measurement/internal/kk;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->f:Lcom/google/android/gms/measurement/internal/kk;

    return-object v0
.end method

.method public final X_()Landroid/content/Context;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final Y_()Lcom/google/android/gms/common/util/f;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->j:Lcom/google/android/gms/common/util/f;

    return-object v0
.end method

.method final synthetic a(ILjava/lang/Throwable;[B)V
    .locals 8

    const-string v0, "timestamp"

    const-string v1, "gclid"

    const-string v2, ""

    const-string v3, "deeplink"

    const/16 v4, 0x130

    const/16 v5, 0xc8

    if-eq p1, v5, :cond_0

    const/16 v5, 0xcc

    if-eq p1, v5, :cond_0

    if-ne p1, v4, :cond_8

    const/16 p1, 0x130

    :cond_0
    if-nez p2, :cond_8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/ee;->n:Lcom/google/android/gms/measurement/internal/dy;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/dy;->a(Z)V

    if-eqz p3, :cond_7

    array-length p1, p3

    if-nez p1, :cond_1

    goto/16 :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/String;

    .line 3
    invoke-direct {p1, p3}, Ljava/lang/String;-><init>([B)V

    .line 4
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-wide/16 v4, 0x0

    .line 7
    invoke-virtual {p2, v0, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p1

    .line 14000
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/do;->j:Lcom/google/android/gms/measurement/internal/dm;

    const-string p2, "Deferred Deep Link is empty."

    .line 9
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->g()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object p2

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_1

    .line 17
    :cond_3
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/es;->a:Landroid/content/Context;

    .line 12
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    .line 13
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v6, 0x0

    invoke-virtual {p2, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 14
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6

    new-instance p2, Landroid/os/Bundle;

    .line 18
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 19
    invoke-virtual {p2, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "_cis"

    const-string v1, "ddp"

    .line 20
    invoke-virtual {p2, p3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/es;->x:Lcom/google/android/gms/measurement/internal/gv;

    const-string v1, "auto"

    const-string v2, "_cmp"

    .line 21
    invoke-virtual {p3, v1, v2, p2}, Lcom/google/android/gms/measurement/internal/gv;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->g()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object p2

    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p3, :cond_4

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object p3, p2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/es;->a:Landroid/content/Context;

    const-string v1, "google.analytics.deferred.deeplink.prefs"

    .line 24
    invoke-virtual {p3, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p3

    .line 25
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    .line 26
    invoke-interface {p3, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 27
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    .line 28
    invoke-interface {p3, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 29
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p1, :cond_5

    :try_start_2
    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.google.analytics.action.DEEPLINK_ACTION"

    .line 32
    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/es;->a:Landroid/content/Context;

    .line 33
    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_5
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 34
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 30
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p2

    .line 18000
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string p3, "Failed to persist Deferred Deep Link. exception"

    .line 31
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 15
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p2

    .line 15000
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    const-string v0, "Deferred Deep Link validation failed. gclid, deep link"

    .line 17
    invoke-virtual {p2, v0, p3, p1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p2

    .line 17000
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string p3, "Failed to parse the Deferred Deep Link response. exception"

    .line 34
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 2
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p1

    .line 13000
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/do;->j:Lcom/google/android/gms/measurement/internal/dm;

    const-string p2, "Deferred Deep Link response empty."

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    return-void

    .line 35
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p3

    .line 16000
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "Network Request for Deferred Deep Link failed. response, exception"

    .line 38
    invoke-virtual {p3, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method protected final a(Lcom/google/android/gms/internal/measurement/zzz;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 3
    sget-object v1, Lcom/google/android/gms/measurement/internal/dc;->au:Lcom/google/android/gms/measurement/internal/da;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ee;->e()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/ee;->ah_()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "consent_source"

    const/16 v4, 0x64

    .line 6
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    sget-object v5, Lcom/google/android/gms/measurement/internal/dc;->av:Lcom/google/android/gms/measurement/internal/da;

    .line 7
    invoke-virtual {v3, v2, v5}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v3

    const/16 v5, 0x1e

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    sget-object v6, Lcom/google/android/gms/measurement/internal/dc;->av:Lcom/google/android/gms/measurement/internal/da;

    .line 9
    invoke-virtual {v3, v2, v6}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    const-string v6, "google_analytics_default_allow_ad_storage"

    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/e;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    :goto_0
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    sget-object v7, Lcom/google/android/gms/measurement/internal/dc;->av:Lcom/google/android/gms/measurement/internal/da;

    .line 11
    invoke-virtual {v6, v2, v7}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v7

    if-nez v7, :cond_1

    move-object v6, v2

    goto :goto_1

    :cond_1
    const-string v7, "google_analytics_default_allow_analytics_storage"

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/e;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    :goto_1
    const/16 v7, -0xa

    if-nez v3, :cond_2

    if-eqz v6, :cond_3

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object v8

    .line 13
    invoke-virtual {v8, v7}, Lcom/google/android/gms/measurement/internal/ee;->a(I)Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance p1, Lcom/google/android/gms/measurement/internal/f;

    .line 14
    invoke-direct {p1, v3, v6}, Lcom/google/android/gms/measurement/internal/f;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    const/16 v4, -0xa

    goto :goto_2

    .line 15
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->o()Lcom/google/android/gms/measurement/internal/dg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/dg;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_4

    const/16 v3, 0xa

    if-eq v1, v3, :cond_4

    if-eq v1, v5, :cond_4

    if-eq v1, v5, :cond_4

    const/16 v3, 0x28

    if-ne v1, v3, :cond_6

    .line 23
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->f()Lcom/google/android/gms/measurement/internal/gv;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/measurement/internal/f;->a:Lcom/google/android/gms/measurement/internal/f;

    iget-wide v5, p0, Lcom/google/android/gms/measurement/internal/es;->q:J

    .line 24
    invoke-virtual {p1, v1, v7, v5, v6}, Lcom/google/android/gms/measurement/internal/gv;->a(Lcom/google/android/gms/measurement/internal/f;IJ)V

    :cond_5
    move-object p1, v2

    goto :goto_2

    .line 16
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/kh;->b()Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    sget-object v3, Lcom/google/android/gms/measurement/internal/dc;->aF:Lcom/google/android/gms/measurement/internal/da;

    .line 17
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->o()Lcom/google/android/gms/measurement/internal/dg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dg;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_7
    if-eqz p1, :cond_5

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzz;->zzg:Landroid/os/Bundle;

    if-eqz v1, :cond_5

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object v1

    .line 20
    invoke-virtual {v1, v5}, Lcom/google/android/gms/measurement/internal/ee;->a(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzz;->zzg:Landroid/os/Bundle;

    .line 21
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/f;->b(Landroid/os/Bundle;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/measurement/internal/f;->a:Lcom/google/android/gms/measurement/internal/f;

    .line 22
    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/16 v4, 0x1e

    :goto_2
    if-eqz p1, :cond_9

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->f()Lcom/google/android/gms/measurement/internal/gv;

    move-result-object v0

    iget-wide v5, p0, Lcom/google/android/gms/measurement/internal/es;->q:J

    invoke-virtual {v0, p1, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/gv;->a(Lcom/google/android/gms/measurement/internal/f;IJ)V

    goto :goto_3

    :cond_8
    if-eqz p1, :cond_9

    .line 9
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzz;->zzg:Landroid/os/Bundle;

    if-eqz v1, :cond_9

    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object v1

    .line 27
    invoke-virtual {v1, v5}, Lcom/google/android/gms/measurement/internal/ee;->a(I)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzz;->zzg:Landroid/os/Bundle;

    .line 28
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/f;->b(Landroid/os/Bundle;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/measurement/internal/f;->a:Lcom/google/android/gms/measurement/internal/f;

    .line 29
    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->f()Lcom/google/android/gms/measurement/internal/gv;

    move-result-object v0

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/es;->q:J

    .line 31
    invoke-virtual {v0, p1, v5, v3, v4}, Lcom/google/android/gms/measurement/internal/gv;->a(Lcom/google/android/gms/measurement/internal/f;IJ)V

    :goto_3
    move-object v0, p1

    .line 32
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->f()Lcom/google/android/gms/measurement/internal/gv;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/gv;->a(Lcom/google/android/gms/measurement/internal/f;)V

    .line 33
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/ee;->d:Lcom/google/android/gms/measurement/internal/ea;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/ea;->a()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long p1, v0, v3

    if-nez p1, :cond_b

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p1

    .line 3000
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    .line 34
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/es;->q:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Persisting first open"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/ee;->d:Lcom/google/android/gms/measurement/internal/ea;

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/es;->q:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(J)V

    .line 36
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->f()Lcom/google/android/gms/measurement/internal/gv;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/gv;->b:Lcom/google/android/gms/measurement/internal/kc;

    .line 3001
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/kc;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/kc;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/kc;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 3002
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/ee;->q:Lcom/google/android/gms/measurement/internal/ed;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/measurement/internal/ed;->a(Ljava/lang/String;)V

    .line 37
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->w()Z

    move-result p1

    if-nez p1, :cond_11

    .line 90
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->r()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 91
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->g()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object p1

    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/ju;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 92
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p1

    .line 4000
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v0, "App is missing INTERNET permission"

    .line 92
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    .line 93
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->g()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object p1

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/ju;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 94
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p1

    .line 5000
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v0, "App is missing ACCESS_NETWORK_STATE permission"

    .line 94
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    :cond_e
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/es;->a:Landroid/content/Context;

    .line 95
    invoke-static {p1}, Lcom/google/android/gms/common/d/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/d/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/d/b;->a()Z

    move-result p1

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 96
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->g()Z

    move-result p1

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/es;->a:Landroid/content/Context;

    .line 97
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/ju;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 98
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p1

    .line 6000
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v0, "AppMeasurementReceiver not registered/enabled"

    .line 98
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    :cond_f
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/es;->a:Landroid/content/Context;

    .line 99
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/ju;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 100
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p1

    .line 7000
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v0, "AppMeasurementService not registered/enabled"

    .line 100
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    .line 101
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p1

    .line 8000
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v0, "Uploading is not possible. App measurement disabled"

    .line 101
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 38
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->o()Lcom/google/android/gms/measurement/internal/dg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/dg;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->o()Lcom/google/android/gms/measurement/internal/dg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/dg;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 40
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->g()Lcom/google/android/gms/measurement/internal/ju;

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->o()Lcom/google/android/gms/measurement/internal/dg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/dg;->e()Ljava/lang/String;

    move-result-object p1

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ee;->ah_()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "gmp_app_id"

    .line 43
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->o()Lcom/google/android/gms/measurement/internal/dg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/dg;->f()Ljava/lang/String;

    move-result-object v3

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/ee;->ah_()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "admob_app_id"

    .line 46
    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 47
    invoke-static {p1, v0, v3, v4}, Lcom/google/android/gms/measurement/internal/ju;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 48
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p1

    .line 9000
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/do;->i:Lcom/google/android/gms/measurement/internal/dm;

    const-string v0, "Rechecking which service to use due to a GMP App Id change"

    .line 48
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/ee;->ai_()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/ee;->ah_()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 50
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 51
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 52
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v0, :cond_13

    .line 49
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/ee;->a(Ljava/lang/Boolean;)V

    .line 53
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->i()Lcom/google/android/gms/measurement/internal/di;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/di;->ae_()V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/es;->B:Lcom/google/android/gms/measurement/internal/ik;

    .line 54
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/ik;->p()V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/es;->B:Lcom/google/android/gms/measurement/internal/ik;

    .line 55
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/ik;->n()V

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/ee;->d:Lcom/google/android/gms/measurement/internal/ea;

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/es;->q:J

    invoke-virtual {p1, v3, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(J)V

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/ee;->f:Lcom/google/android/gms/measurement/internal/ed;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/measurement/internal/ed;->a(Ljava/lang/String;)V

    .line 58
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->o()Lcom/google/android/gms/measurement/internal/dg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dg;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/ee;->ah_()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 59
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 60
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 61
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 62
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->o()Lcom/google/android/gms/measurement/internal/dg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dg;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/ee;->ah_()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 63
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 64
    invoke-interface {p1, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 65
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 66
    :cond_15
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    sget-object v0, Lcom/google/android/gms/measurement/internal/dc;->au:Lcom/google/android/gms/measurement/internal/da;

    .line 67
    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 68
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/ee;->e()Lcom/google/android/gms/measurement/internal/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f;->c()Z

    move-result p1

    if-nez p1, :cond_16

    .line 69
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/ee;->f:Lcom/google/android/gms/measurement/internal/ed;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/measurement/internal/ed;->a(Ljava/lang/String;)V

    .line 70
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->f()Lcom/google/android/gms/measurement/internal/gv;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/ee;->f:Lcom/google/android/gms/measurement/internal/ed;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ed;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/gv;->a(Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ke;->b()Z

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    sget-object v0, Lcom/google/android/gms/measurement/internal/dc;->am:Lcom/google/android/gms/measurement/internal/da;

    .line 72
    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 73
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->g()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object p1

    :try_start_0
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/es;->a:Landroid/content/Context;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v0, "com.google.firebase.remoteconfig.FirebaseRemoteConfig"

    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    nop

    .line 76
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/ee;->p:Lcom/google/android/gms/measurement/internal/ed;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/ed;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_17

    .line 77
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p1

    .line 10000
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    const-string v0, "Remote config removed with active feature rollouts"

    .line 77
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/ee;->p:Lcom/google/android/gms/measurement/internal/ed;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/measurement/internal/ed;->a(Ljava/lang/String;)V

    .line 79
    :cond_17
    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->o()Lcom/google/android/gms/measurement/internal/dg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/dg;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 80
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->o()Lcom/google/android/gms/measurement/internal/dg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/dg;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1c

    .line 81
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->r()Z

    move-result p1

    .line 82
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/ee;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_19

    const/4 v0, 0x0

    goto :goto_5

    :cond_19
    const-string v1, "deferred_analytics_collection"

    .line 9001
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    :goto_5
    if-nez v0, :cond_1a

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 83
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->R_()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 84
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ee;->a(Z)V

    :cond_1a
    if-eqz p1, :cond_1b

    .line 85
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->f()Lcom/google/android/gms/measurement/internal/gv;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/gv;->q()V

    .line 86
    :cond_1b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->e()Lcom/google/android/gms/measurement/internal/iz;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/iz;->b:Lcom/google/android/gms/measurement/internal/iy;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/iy;->a()V

    .line 87
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->m()Lcom/google/android/gms/measurement/internal/ik;

    move-result-object p1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/ik;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 88
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->m()Lcom/google/android/gms/measurement/internal/ik;

    move-result-object p1

    .line 89
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/ee;->s:Lcom/google/android/gms/measurement/internal/dz;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dz;->a()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/ik;->a(Landroid/os/Bundle;)V

    .line 102
    :cond_1c
    :goto_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/ee;->j:Lcom/google/android/gms/measurement/internal/dy;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/dy;->a(Z)V

    return-void
.end method

.method public final b()Lcom/google/android/gms/measurement/internal/ee;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->s:Lcom/google/android/gms/measurement/internal/ee;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/es;->a(Lcom/google/android/gms/measurement/internal/fm;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->s:Lcom/google/android/gms/measurement/internal/ee;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/measurement/internal/do;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->h:Lcom/google/android/gms/measurement/internal/do;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/es;->a(Lcom/google/android/gms/measurement/internal/fn;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->h:Lcom/google/android/gms/measurement/internal/do;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/measurement/internal/ep;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->i:Lcom/google/android/gms/measurement/internal/ep;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/es;->a(Lcom/google/android/gms/measurement/internal/fn;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->i:Lcom/google/android/gms/measurement/internal/ep;

    return-object v0
.end method

.method public final e()Lcom/google/android/gms/measurement/internal/iz;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->t:Lcom/google/android/gms/measurement/internal/iz;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/es;->a(Lcom/google/android/gms/measurement/internal/ec;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->t:Lcom/google/android/gms/measurement/internal/iz;

    return-object v0
.end method

.method public final f()Lcom/google/android/gms/measurement/internal/gv;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->x:Lcom/google/android/gms/measurement/internal/gv;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/es;->a(Lcom/google/android/gms/measurement/internal/ec;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->x:Lcom/google/android/gms/measurement/internal/gv;

    return-object v0
.end method

.method public final g()Lcom/google/android/gms/measurement/internal/ju;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->u:Lcom/google/android/gms/measurement/internal/ju;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/es;->a(Lcom/google/android/gms/measurement/internal/fm;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->u:Lcom/google/android/gms/measurement/internal/ju;

    return-object v0
.end method

.method public final h()Lcom/google/android/gms/measurement/internal/dj;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->v:Lcom/google/android/gms/measurement/internal/dj;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/es;->a(Lcom/google/android/gms/measurement/internal/fm;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->v:Lcom/google/android/gms/measurement/internal/dj;

    return-object v0
.end method

.method public final i()Lcom/google/android/gms/measurement/internal/di;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->A:Lcom/google/android/gms/measurement/internal/di;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/es;->a(Lcom/google/android/gms/measurement/internal/ec;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->A:Lcom/google/android/gms/measurement/internal/di;

    return-object v0
.end method

.method public final l()Lcom/google/android/gms/measurement/internal/hk;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->w:Lcom/google/android/gms/measurement/internal/hk;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/es;->a(Lcom/google/android/gms/measurement/internal/ec;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->w:Lcom/google/android/gms/measurement/internal/hk;

    return-object v0
.end method

.method public final m()Lcom/google/android/gms/measurement/internal/ik;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->B:Lcom/google/android/gms/measurement/internal/ik;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/es;->a(Lcom/google/android/gms/measurement/internal/ec;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->B:Lcom/google/android/gms/measurement/internal/ik;

    return-object v0
.end method

.method public final n()Lcom/google/android/gms/measurement/internal/m;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->C:Lcom/google/android/gms/measurement/internal/m;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/es;->a(Lcom/google/android/gms/measurement/internal/fn;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->C:Lcom/google/android/gms/measurement/internal/m;

    return-object v0
.end method

.method public final o()Lcom/google/android/gms/measurement/internal/dg;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->D:Lcom/google/android/gms/measurement/internal/dg;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/es;->a(Lcom/google/android/gms/measurement/internal/ec;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->D:Lcom/google/android/gms/measurement/internal/dg;

    return-object v0
.end method

.method public final p()Lcom/google/android/gms/measurement/internal/ca;
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->y:Lcom/google/android/gms/measurement/internal/ca;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Component not created"

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final q()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->m:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->m:Ljava/lang/Boolean;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final r()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->s()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final s()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->R_()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->o:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    return v0

    .line 4
    :cond_2
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 5
    sget-object v1, Lcom/google/android/gms/measurement/internal/dc;->au:Lcom/google/android/gms/measurement/internal/da;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/es;->p:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/16 v0, 0x8

    return v0

    .line 7
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ee;->ai_()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    const/4 v0, 0x3

    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    const-string v3, "firebase_analytics_collection_enabled"

    .line 8
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/e;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x4

    return v0

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->n:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    .line 12
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    return v1

    :cond_9
    const/4 v0, 0x5

    return v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    sget-object v3, Lcom/google/android/gms/measurement/internal/dc;->S:Lcom/google/android/gms/measurement/internal/da;

    .line 10
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->m:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->m:Ljava/lang/Boolean;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    return v1

    :cond_b
    const/4 v0, 0x7

    return v0

    :cond_c
    return v1
.end method

.method public final t()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/es;->p:Z

    return v0
.end method

.method final u()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/es;->H:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/es;->H:I

    return-void
.end method

.method final v()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->I:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method protected final w()Z
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/es;->E:Z

    if-eqz v0, :cond_6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->F:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/es;->G:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->j:Lcom/google/android/gms/common/util/f;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/es;->G:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->j:Lcom/google/android/gms/common/util/f;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/es;->G:J

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->g()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ju;->d(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->g()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v0

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/ju;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->a:Landroid/content/Context;

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/common/d/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/d/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->g()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->a:Landroid/content/Context;

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/ju;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->a:Landroid/content/Context;

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/ju;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->F:Ljava/lang/Boolean;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->g()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v0

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->o()Lcom/google/android/gms/measurement/internal/dg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/dg;->e()Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->o()Lcom/google/android/gms/measurement/internal/dg;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/dg;->f()Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->o()Lcom/google/android/gms/measurement/internal/dg;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/dg;->g()Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/ju;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->o()Lcom/google/android/gms/measurement/internal/dg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dg;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 12
    :cond_4
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->F:Ljava/lang/Boolean;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/es;->F:Ljava/lang/Boolean;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppMeasurement is not initialized"

    .line 19
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final x()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/es;->z()Lcom/google/android/gms/measurement/internal/gz;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/es;->a(Lcom/google/android/gms/measurement/internal/fn;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->o()Lcom/google/android/gms/measurement/internal/dg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dg;->ad_()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/ee;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/es;->z()Lcom/google/android/gms/measurement/internal/gz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fn;->g()V

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/es;->a:Landroid/content/Context;

    const-string v2, "connectivity"

    .line 10
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 11
    :try_start_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    .line 12
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->g()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v1

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->o()Lcom/google/android/gms/measurement/internal/dg;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/ee;->o:Lcom/google/android/gms/measurement/internal/ea;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/ea;->a()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    add-long/2addr v4, v6

    .line 18
    invoke-virtual {v1, v3, v0, v4, v5}, Lcom/google/android/gms/measurement/internal/ju;->a(Ljava/lang/String;Ljava/lang/String;J)Ljava/net/URL;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 19
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/es;->z()Lcom/google/android/gms/measurement/internal/gz;

    move-result-object v2

    new-instance v7, Lcom/google/android/gms/measurement/internal/eq;

    invoke-direct {v7, p0}, Lcom/google/android/gms/measurement/internal/eq;-><init>(Lcom/google/android/gms/measurement/internal/es;)V

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fn;->g()V

    .line 21
    invoke-static {v4}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static {v7}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    new-instance v9, Lcom/google/android/gms/measurement/internal/gy;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    .line 24
    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/measurement/internal/gy;-><init>(Lcom/google/android/gms/measurement/internal/gz;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/eq;[B)V

    .line 25
    invoke-virtual {v0, v9}, Lcom/google/android/gms/measurement/internal/ep;->c(Ljava/lang/Runnable;)V

    :cond_2
    return-void

    .line 13
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 12000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    const-string v1, "Network is not available for Deferred Deep Link request. Skipping"

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 11000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->j:Lcom/google/android/gms/measurement/internal/dm;

    const-string v1, "ADID unavailable to retrieve Deferred Deep Link. Skipping"

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    return-void
.end method
