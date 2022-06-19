.class public Lcom/google/android/gms/measurement/internal/fd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/gb;


# static fields
.field private static volatile b:Lcom/google/android/gms/measurement/internal/fd;


# instance fields
.field private A:Ljava/lang/Boolean;

.field private B:J

.field private volatile C:Ljava/lang/Boolean;

.field private D:Ljava/lang/Boolean;

.field private E:Ljava/lang/Boolean;

.field private F:I

.field private G:Ljava/util/concurrent/atomic/AtomicInteger;

.field final a:J

.field private final c:Landroid/content/Context;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Z

.field private final h:Lcom/google/android/gms/measurement/internal/kk;

.field private final i:Lcom/google/android/gms/measurement/internal/b;

.field private final j:Lcom/google/android/gms/measurement/internal/el;

.field private final k:Lcom/google/android/gms/measurement/internal/dy;

.field private final l:Lcom/google/android/gms/measurement/internal/fa;

.field private final m:Lcom/google/android/gms/measurement/internal/iz;

.field private final n:Lcom/google/android/gms/measurement/internal/jw;

.field private final o:Lcom/google/android/gms/measurement/internal/dw;

.field private final p:Lcom/google/android/gms/common/util/e;

.field private final q:Lcom/google/android/gms/measurement/internal/ho;

.field private final r:Lcom/google/android/gms/measurement/internal/gk;

.field private final s:Lcom/google/android/gms/measurement/internal/ab;

.field private final t:Lcom/google/android/gms/measurement/internal/hj;

.field private u:Lcom/google/android/gms/measurement/internal/du;

.field private v:Lcom/google/android/gms/measurement/internal/hu;

.field private w:Lcom/google/android/gms/measurement/internal/l;

.field private x:Lcom/google/android/gms/measurement/internal/dv;

.field private y:Lcom/google/android/gms/measurement/internal/eu;

.field private z:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/gg;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean v3, p0, Lcom/google/android/gms/measurement/internal/fd;->z:Z

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->G:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/gg;->a:Landroid/content/Context;

    .line 6
    new-instance v1, Lcom/google/android/gms/measurement/internal/kk;

    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/kk;-><init>(Landroid/content/Context;)V

    .line 7
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/fd;->h:Lcom/google/android/gms/measurement/internal/kk;

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->h:Lcom/google/android/gms/measurement/internal/kk;

    .line 9
    sput-object v0, Lcom/google/android/gms/measurement/internal/do;->a:Lcom/google/android/gms/measurement/internal/kk;

    .line 10
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/gg;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->c:Landroid/content/Context;

    .line 11
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/gg;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->d:Ljava/lang/String;

    .line 12
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/gg;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->e:Ljava/lang/String;

    .line 13
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/gg;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->f:Ljava/lang/String;

    .line 14
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/gg;->h:Z

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->g:Z

    .line 15
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/gg;->e:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->C:Ljava/lang/Boolean;

    .line 16
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/gg;->g:Lcom/google/android/gms/internal/measurement/b;

    .line 17
    if-eqz v1, :cond_1

    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/b;->g:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 18
    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/b;->g:Landroid/os/Bundle;

    const-string/jumbo v4, "measurementEnabled"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 19
    instance-of v4, v0, Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    .line 20
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->D:Ljava/lang/Boolean;

    .line 21
    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/b;->g:Landroid/os/Bundle;

    const-string/jumbo v1, "measurementDeactivated"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 23
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->E:Ljava/lang/Boolean;

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/bj;->a(Landroid/content/Context;)V

    .line 26
    invoke-static {}, Lcom/google/android/gms/common/util/h;->d()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->p:Lcom/google/android/gms/common/util/e;

    .line 29
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/gg;->i:Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 30
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/gg;->i:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 31
    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:J

    .line 33
    new-instance v0, Lcom/google/android/gms/measurement/internal/b;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/b;-><init>(Lcom/google/android/gms/measurement/internal/fd;)V

    .line 34
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->i:Lcom/google/android/gms/measurement/internal/b;

    .line 36
    new-instance v0, Lcom/google/android/gms/measurement/internal/el;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/el;-><init>(Lcom/google/android/gms/measurement/internal/fd;)V

    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fy;->B()V

    .line 39
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Lcom/google/android/gms/measurement/internal/el;

    .line 41
    new-instance v0, Lcom/google/android/gms/measurement/internal/dy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/dy;-><init>(Lcom/google/android/gms/measurement/internal/fd;)V

    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fy;->B()V

    .line 44
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->k:Lcom/google/android/gms/measurement/internal/dy;

    .line 46
    new-instance v0, Lcom/google/android/gms/measurement/internal/jw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/jw;-><init>(Lcom/google/android/gms/measurement/internal/fd;)V

    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fy;->B()V

    .line 49
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->n:Lcom/google/android/gms/measurement/internal/jw;

    .line 51
    new-instance v0, Lcom/google/android/gms/measurement/internal/dw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/dw;-><init>(Lcom/google/android/gms/measurement/internal/fd;)V

    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fy;->B()V

    .line 54
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->o:Lcom/google/android/gms/measurement/internal/dw;

    .line 56
    new-instance v0, Lcom/google/android/gms/measurement/internal/ab;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/ab;-><init>(Lcom/google/android/gms/measurement/internal/fd;)V

    .line 57
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->s:Lcom/google/android/gms/measurement/internal/ab;

    .line 59
    new-instance v0, Lcom/google/android/gms/measurement/internal/ho;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/ho;-><init>(Lcom/google/android/gms/measurement/internal/fd;)V

    .line 61
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/de;->j()V

    .line 62
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->q:Lcom/google/android/gms/measurement/internal/ho;

    .line 64
    new-instance v0, Lcom/google/android/gms/measurement/internal/gk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/gk;-><init>(Lcom/google/android/gms/measurement/internal/fd;)V

    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/de;->j()V

    .line 67
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->r:Lcom/google/android/gms/measurement/internal/gk;

    .line 69
    new-instance v0, Lcom/google/android/gms/measurement/internal/iz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/iz;-><init>(Lcom/google/android/gms/measurement/internal/fd;)V

    .line 71
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/de;->j()V

    .line 72
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->m:Lcom/google/android/gms/measurement/internal/iz;

    .line 74
    new-instance v0, Lcom/google/android/gms/measurement/internal/hj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/hj;-><init>(Lcom/google/android/gms/measurement/internal/fd;)V

    .line 76
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fy;->B()V

    .line 77
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->t:Lcom/google/android/gms/measurement/internal/hj;

    .line 79
    new-instance v0, Lcom/google/android/gms/measurement/internal/fa;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/fa;-><init>(Lcom/google/android/gms/measurement/internal/fd;)V

    .line 81
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fy;->B()V

    .line 82
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->l:Lcom/google/android/gms/measurement/internal/fa;

    .line 83
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/gg;->g:Lcom/google/android/gms/internal/measurement/b;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/gg;->g:Lcom/google/android/gms/internal/measurement/b;

    iget-wide v0, v0, Lcom/google/android/gms/internal/measurement/b;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_5

    move v0, v2

    .line 84
    :goto_1
    if-nez v0, :cond_6

    move v1, v2

    .line 86
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->h:Lcom/google/android/gms/measurement/internal/kk;

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_7

    .line 89
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v2

    .line 90
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_3

    .line 91
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 92
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/gk;->a:Lcom/google/android/gms/measurement/internal/hd;

    if-nez v3, :cond_2

    .line 93
    new-instance v3, Lcom/google/android/gms/measurement/internal/hd;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lcom/google/android/gms/measurement/internal/hd;-><init>(Lcom/google/android/gms/measurement/internal/gk;Lcom/google/android/gms/measurement/internal/gl;)V

    iput-object v3, v2, Lcom/google/android/gms/measurement/internal/gk;->a:Lcom/google/android/gms/measurement/internal/hd;

    .line 94
    :cond_2
    if-eqz v1, :cond_3

    .line 95
    iget-object v1, v2, Lcom/google/android/gms/measurement/internal/gk;->a:Lcom/google/android/gms/measurement/internal/hd;

    .line 96
    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 97
    iget-object v1, v2, Lcom/google/android/gms/measurement/internal/gk;->a:Lcom/google/android/gms/measurement/internal/hd;

    .line 98
    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 99
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Registered activity lifecycle callback"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 102
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->l:Lcom/google/android/gms/measurement/internal/fa;

    new-instance v1, Lcom/google/android/gms/measurement/internal/ff;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/ff;-><init>(Lcom/google/android/gms/measurement/internal/fd;Lcom/google/android/gms/measurement/internal/gg;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/lang/Runnable;)V

    .line 103
    return-void

    .line 31
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->p:Lcom/google/android/gms/common/util/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v0

    goto/16 :goto_0

    :cond_5
    move v0, v3

    .line 83
    goto :goto_1

    :cond_6
    move v1, v3

    .line 84
    goto :goto_2

    .line 101
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Application context is not an Application"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private final I()Lcom/google/android/gms/measurement/internal/hj;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->t:Lcom/google/android/gms/measurement/internal/hj;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/fd;->b(Lcom/google/android/gms/measurement/internal/fy;)V

    .line 271
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->t:Lcom/google/android/gms/measurement/internal/hj;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/b;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/fd;
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 292
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/b;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/b;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 293
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/measurement/b;

    iget-wide v2, p1, Lcom/google/android/gms/internal/measurement/b;->a:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/measurement/b;->b:J

    iget-boolean v6, p1, Lcom/google/android/gms/internal/measurement/b;->c:Z

    iget-object v7, p1, Lcom/google/android/gms/internal/measurement/b;->d:Ljava/lang/String;

    iget-object v10, p1, Lcom/google/android/gms/internal/measurement/b;->g:Landroid/os/Bundle;

    move-object v9, v8

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/measurement/b;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    move-object p1, v1

    .line 294
    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lcom/google/android/gms/measurement/internal/fd;->b:Lcom/google/android/gms/measurement/internal/fd;

    if-nez v0, :cond_4

    .line 297
    const-class v1, Lcom/google/android/gms/measurement/internal/fd;

    monitor-enter v1

    .line 298
    :try_start_0
    sget-object v0, Lcom/google/android/gms/measurement/internal/fd;->b:Lcom/google/android/gms/measurement/internal/fd;

    if-nez v0, :cond_2

    .line 300
    new-instance v0, Lcom/google/android/gms/measurement/internal/gg;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/gg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/b;Ljava/lang/Long;)V

    .line 302
    new-instance v2, Lcom/google/android/gms/measurement/internal/fd;

    invoke-direct {v2, v0}, Lcom/google/android/gms/measurement/internal/fd;-><init>(Lcom/google/android/gms/measurement/internal/gg;)V

    .line 303
    sput-object v2, Lcom/google/android/gms/measurement/internal/fd;->b:Lcom/google/android/gms/measurement/internal/fd;

    .line 304
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    :cond_3
    :goto_0
    sget-object v0, Lcom/google/android/gms/measurement/internal/fd;->b:Lcom/google/android/gms/measurement/internal/fd;

    return-object v0

    .line 304
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 305
    :cond_4
    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/b;->g:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/b;->g:Landroid/os/Bundle;

    const-string/jumbo v1, "dataCollectionDefaultEnabled"

    .line 306
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 307
    sget-object v0, Lcom/google/android/gms/measurement/internal/fd;->b:Lcom/google/android/gms/measurement/internal/fd;

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/b;->g:Landroid/os/Bundle;

    const-string/jumbo v2, "dataCollectionDefaultEnabled"

    .line 308
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 309
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fd;->a(Z)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/measurement/internal/fd;
    .locals 11

    .prologue
    const-wide/16 v2, 0x0

    const/4 v7, 0x0

    .line 291
    new-instance v1, Lcom/google/android/gms/internal/measurement/b;

    const/4 v6, 0x1

    move-wide v4, v2

    move-object v8, v7

    move-object v9, v7

    move-object v10, p3

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/measurement/b;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {p0, v1, v7}, Lcom/google/android/gms/measurement/internal/fd;->a(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/b;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/fd;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/fd;Lcom/google/android/gms/measurement/internal/gg;)V
    .locals 0

    .prologue
    .line 498
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/fd;->a(Lcom/google/android/gms/measurement/internal/gg;)V

    return-void
.end method

.method private static a(Lcom/google/android/gms/measurement/internal/fz;)V
    .locals 2

    .prologue
    .line 321
    if-nez p0, :cond_0

    .line 322
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Component not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_0
    return-void
.end method

.method private final a(Lcom/google/android/gms/measurement/internal/gg;)V
    .locals 6

    .prologue
    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 107
    new-instance v0, Lcom/google/android/gms/measurement/internal/l;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/l;-><init>(Lcom/google/android/gms/measurement/internal/fd;)V

    .line 109
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fy;->B()V

    .line 110
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->w:Lcom/google/android/gms/measurement/internal/l;

    .line 112
    new-instance v0, Lcom/google/android/gms/measurement/internal/dv;

    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/gg;->f:J

    invoke-direct {v0, p0, v2, v3}, Lcom/google/android/gms/measurement/internal/dv;-><init>(Lcom/google/android/gms/measurement/internal/fd;J)V

    .line 114
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/de;->j()V

    .line 115
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->x:Lcom/google/android/gms/measurement/internal/dv;

    .line 117
    new-instance v1, Lcom/google/android/gms/measurement/internal/du;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/du;-><init>(Lcom/google/android/gms/measurement/internal/fd;)V

    .line 119
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/de;->j()V

    .line 120
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/fd;->u:Lcom/google/android/gms/measurement/internal/du;

    .line 122
    new-instance v1, Lcom/google/android/gms/measurement/internal/hu;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/hu;-><init>(Lcom/google/android/gms/measurement/internal/fd;)V

    .line 124
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/de;->j()V

    .line 125
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/fd;->v:Lcom/google/android/gms/measurement/internal/hu;

    .line 126
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fd;->n:Lcom/google/android/gms/measurement/internal/jw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fy;->C()V

    .line 127
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Lcom/google/android/gms/measurement/internal/el;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fy;->C()V

    .line 129
    new-instance v1, Lcom/google/android/gms/measurement/internal/eu;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/eu;-><init>(Lcom/google/android/gms/measurement/internal/fd;)V

    .line 130
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/fd;->y:Lcom/google/android/gms/measurement/internal/eu;

    .line 131
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fd;->x:Lcom/google/android/gms/measurement/internal/dv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/de;->k()V

    .line 132
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->h()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "App measurement initialized, version"

    .line 133
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/fd;->i:Lcom/google/android/gms/measurement/internal/b;

    .line 134
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/b;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fd;->h:Lcom/google/android/gms/measurement/internal/kk;

    .line 138
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->h()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fd;->h:Lcom/google/android/gms/measurement/internal/kk;

    .line 142
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dv;->B()Ljava/lang/String;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fd;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 145
    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/jw;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 147
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->h()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v0, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    .line 152
    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Debug-level message logging enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 154
    iget v0, p0, Lcom/google/android/gms/measurement/internal/fd;->F:I

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fd;->G:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Not all components initialized"

    iget v2, p0, Lcom/google/android/gms/measurement/internal/fd;->F:I

    .line 157
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/fd;->G:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->z:Z

    .line 159
    return-void

    .line 150
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 151
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->h()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Lcom/google/android/gms/measurement/internal/de;)V
    .locals 4

    .prologue
    .line 316
    if-nez p0, :cond_0

    .line 317
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Component not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/de;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 319
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Component not initialized: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_1
    return-void
.end method

.method private static b(Lcom/google/android/gms/measurement/internal/fy;)V
    .locals 4

    .prologue
    .line 311
    if-nez p0, :cond_0

    .line 312
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Component not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fy;->z()Z

    move-result v0

    if-nez v0, :cond_1

    .line 314
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Component not initialized: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_1
    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->C:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->C:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final B()Z
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->C()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final C()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 328
    .line 329
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 331
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fd;->i:Lcom/google/android/gms/measurement/internal/b;

    .line 332
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/b;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 333
    const/4 v0, 0x1

    .line 364
    :cond_0
    :goto_0
    return v0

    .line 334
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fd;->E:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fd;->E:Ljava/lang/Boolean;

    .line 335
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 336
    const/4 v0, 0x2

    goto :goto_0

    .line 337
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->c()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/el;->h()Ljava/lang/Boolean;

    move-result-object v1

    .line 338
    if-eqz v1, :cond_3

    .line 339
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 341
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fd;->i:Lcom/google/android/gms/measurement/internal/b;

    .line 343
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->y()Lcom/google/android/gms/measurement/internal/kk;

    .line 345
    const-string/jumbo v2, "firebase_analytics_collection_enabled"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/b;->d(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 347
    if-eqz v1, :cond_4

    .line 348
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    .line 349
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fd;->D:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 350
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fd;->D:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 352
    const/4 v0, 0x5

    .line 353
    goto :goto_0

    .line 354
    :cond_5
    invoke-static {}, Lcom/google/android/gms/common/api/internal/g;->b()Z

    move-result v1

    .line 355
    if-eqz v1, :cond_6

    .line 356
    const/4 v0, 0x6

    goto :goto_0

    .line 358
    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fd;->i:Lcom/google/android/gms/measurement/internal/b;

    .line 359
    sget-object v2, Lcom/google/android/gms/measurement/internal/t;->S:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fd;->C:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fd;->C:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 362
    const/4 v0, 0x7

    .line 363
    goto :goto_0
.end method

.method final D()V
    .locals 1

    .prologue
    .line 365
    .line 366
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->h:Lcom/google/android/gms/measurement/internal/kk;

    .line 369
    return-void
.end method

.method final E()V
    .locals 2

    .prologue
    .line 370
    .line 371
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->h:Lcom/google/android/gms/measurement/internal/kk;

    .line 373
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unexpected call on client side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final F()V
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->G:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 379
    return-void
.end method

.method protected final G()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 380
    .line 381
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->z:Z

    if-nez v0, :cond_0

    .line 382
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "AppMeasurement is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 385
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->A:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/fd;->B:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->A:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->A:Ljava/lang/Boolean;

    .line 386
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    .line 387
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->p:Lcom/google/android/gms/common/util/e;

    .line 388
    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/measurement/internal/fd;->B:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-lez v0, :cond_5

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->p:Lcom/google/android/gms/common/util/e;

    .line 391
    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/measurement/internal/fd;->B:J

    .line 393
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->h:Lcom/google/android/gms/measurement/internal/kk;

    .line 397
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    const-string/jumbo v3, "android.permission.INTERNET"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/jw;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 398
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    const-string/jumbo v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/jw;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 399
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->c:Landroid/content/Context;

    .line 400
    invoke-static {v0}, Lcom/google/android/gms/common/c/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/c/b;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 401
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->i:Lcom/google/android/gms/measurement/internal/b;

    .line 402
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b;->k()Z

    move-result v0

    if-nez v0, :cond_2

    .line 403
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->c:Landroid/content/Context;

    .line 404
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/ev;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 405
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->c:Landroid/content/Context;

    .line 406
    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/jw;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    move v0, v1

    .line 407
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->A:Ljava/lang/Boolean;

    .line 408
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->A:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 410
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    .line 411
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->x()Lcom/google/android/gms/measurement/internal/dv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/dv;->C()Ljava/lang/String;

    move-result-object v3

    .line 412
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->x()Lcom/google/android/gms/measurement/internal/dv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/dv;->D()Ljava/lang/String;

    move-result-object v4

    .line 413
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->x()Lcom/google/android/gms/measurement/internal/dv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/dv;->E()Ljava/lang/String;

    move-result-object v5

    .line 414
    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 415
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->x()Lcom/google/android/gms/measurement/internal/dv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dv;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move v2, v1

    .line 416
    :cond_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->A:Ljava/lang/Boolean;

    .line 417
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->A:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_6
    move v0, v2

    .line 406
    goto :goto_0
.end method

.method public final H()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 418
    .line 419
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 420
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/fd;->I()Lcom/google/android/gms/measurement/internal/hj;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/fd;->b(Lcom/google/android/gms/measurement/internal/fy;)V

    .line 421
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->x()Lcom/google/android/gms/measurement/internal/dv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dv;->B()Ljava/lang/String;

    move-result-object v4

    .line 423
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->c()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/el;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    .line 425
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->i:Lcom/google/android/gms/measurement/internal/b;

    .line 426
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b;->e()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 427
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    .line 428
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "ADID unavailable to retrieve Deferred Deep Link. Skipping"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 449
    :goto_0
    return-void

    .line 431
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/fd;->I()Lcom/google/android/gms/measurement/internal/hj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/hj;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 432
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Network is not available for Deferred Deep Link request. Skipping"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 435
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v1

    .line 436
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->x()Lcom/google/android/gms/measurement/internal/dv;

    move-result-object v0

    .line 437
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b;->b()J

    move-result-wide v2

    .line 438
    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 439
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->c()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/el;->u:Lcom/google/android/gms/measurement/internal/ep;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ep;->a()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    .line 440
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/jw;->a(JLjava/lang/String;Ljava/lang/String;J)Ljava/net/URL;

    move-result-object v5

    .line 441
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/fd;->I()Lcom/google/android/gms/measurement/internal/hj;

    move-result-object v3

    new-instance v8, Lcom/google/android/gms/measurement/internal/fh;

    invoke-direct {v8, p0}, Lcom/google/android/gms/measurement/internal/fh;-><init>(Lcom/google/android/gms/measurement/internal/fd;)V

    .line 443
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 444
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fy;->A()V

    .line 445
    invoke-static {v5}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    invoke-static {v8}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fz;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/measurement/internal/hl;

    move-object v6, v10

    move-object v7, v10

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/hl;-><init>(Lcom/google/android/gms/measurement/internal/hj;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/hi;)V

    .line 448
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/fa;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected final a()V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 160
    .line 161
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 162
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->c()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/el;->c:Lcom/google/android/gms/measurement/internal/ep;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/ep;->a()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->c()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/el;->c:Lcom/google/android/gms/measurement/internal/ep;

    .line 164
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/fd;->p:Lcom/google/android/gms/common/util/e;

    .line 165
    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/ep;->a(J)V

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->c()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/el;->h:Lcom/google/android/gms/measurement/internal/ep;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/ep;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 167
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Persisting first open"

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/fd;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->c()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/el;->h:Lcom/google/android/gms/measurement/internal/ep;

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/fd;->a:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/ep;->a(J)V

    .line 171
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fd;->i:Lcom/google/android/gms/measurement/internal/b;

    .line 172
    sget-object v2, Lcom/google/android/gms/measurement/internal/t;->aP:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fd;->h:Lcom/google/android/gms/measurement/internal/kk;

    .line 175
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/gk;->b:Lcom/google/android/gms/measurement/internal/kc;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/kc;->b()V

    .line 176
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->G()Z

    move-result v1

    if-nez v1, :cond_8

    .line 177
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->B()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 178
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v1

    const-string/jumbo v2, "android.permission.INTERNET"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/jw;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 179
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "App is missing INTERNET permission"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 180
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v1

    const-string/jumbo v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/jw;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 181
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "App is missing ACCESS_NETWORK_STATE permission"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 183
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fd;->h:Lcom/google/android/gms/measurement/internal/kk;

    .line 186
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fd;->c:Landroid/content/Context;

    .line 187
    invoke-static {v1}, Lcom/google/android/gms/common/c/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/c/b;->a()Z

    move-result v1

    if-nez v1, :cond_6

    .line 188
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fd;->i:Lcom/google/android/gms/measurement/internal/b;

    .line 189
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/b;->k()Z

    move-result v1

    if-nez v1, :cond_6

    .line 191
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fd;->c:Landroid/content/Context;

    .line 192
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/ev;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 193
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "AppMeasurementReceiver not registered/enabled"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 195
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fd;->c:Landroid/content/Context;

    .line 196
    invoke-static {v1, v0}, Lcom/google/android/gms/measurement/internal/jw;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_6

    .line 197
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "AppMeasurementService not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 198
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Uploading is not possible. App measurement disabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 242
    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->c()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/el;->o:Lcom/google/android/gms/measurement/internal/en;

    .line 243
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fd;->i:Lcom/google/android/gms/measurement/internal/b;

    .line 244
    sget-object v2, Lcom/google/android/gms/measurement/internal/t;->Z:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/en;->a(Z)V

    .line 245
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->c()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/el;->p:Lcom/google/android/gms/measurement/internal/en;

    .line 246
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fd;->i:Lcom/google/android/gms/measurement/internal/b;

    .line 247
    sget-object v2, Lcom/google/android/gms/measurement/internal/t;->aa:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/en;->a(Z)V

    .line 248
    return-void

    .line 200
    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fd;->h:Lcom/google/android/gms/measurement/internal/kk;

    .line 203
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->x()Lcom/google/android/gms/measurement/internal/dv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dv;->C()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 204
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->x()Lcom/google/android/gms/measurement/internal/dv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dv;->D()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 205
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    .line 206
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->x()Lcom/google/android/gms/measurement/internal/dv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dv;->C()Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->c()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/el;->d()Ljava/lang/String;

    move-result-object v2

    .line 208
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->x()Lcom/google/android/gms/measurement/internal/dv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/dv;->D()Ljava/lang/String;

    move-result-object v3

    .line 209
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->c()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/el;->e()Ljava/lang/String;

    move-result-object v4

    .line 210
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 211
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->h()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Rechecking which service to use due to a GMP App Id change"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->c()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/el;->g()V

    .line 213
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->k()Lcom/google/android/gms/measurement/internal/du;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/du;->B()V

    .line 214
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fd;->v:Lcom/google/android/gms/measurement/internal/hu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/hu;->H()V

    .line 215
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fd;->v:Lcom/google/android/gms/measurement/internal/hu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/hu;->F()V

    .line 216
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->c()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/el;->h:Lcom/google/android/gms/measurement/internal/ep;

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/fd;->a:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/ep;->a(J)V

    .line 217
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->c()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/el;->j:Lcom/google/android/gms/measurement/internal/er;

    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/er;->a(Ljava/lang/String;)V

    .line 218
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->c()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->x()Lcom/google/android/gms/measurement/internal/dv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dv;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/el;->c(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->c()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->x()Lcom/google/android/gms/measurement/internal/dv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dv;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/el;->d(Ljava/lang/String;)V

    .line 220
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->c()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/el;->j:Lcom/google/android/gms/measurement/internal/er;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/er;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/gk;->a(Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fd;->h:Lcom/google/android/gms/measurement/internal/kk;

    .line 224
    invoke-static {}, Lcom/google/android/gms/internal/measurement/iu;->b()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 225
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fd;->i:Lcom/google/android/gms/measurement/internal/b;

    .line 226
    sget-object v2, Lcom/google/android/gms/measurement/internal/t;->av:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 227
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/jw;->h()Z

    move-result v1

    if-nez v1, :cond_c

    .line 228
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->c()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/el;->v:Lcom/google/android/gms/measurement/internal/er;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/er;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 229
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Remote config removed with active feature rollouts"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->c()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/el;->v:Lcom/google/android/gms/measurement/internal/er;

    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/er;->a(Ljava/lang/String;)V

    .line 231
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->x()Lcom/google/android/gms/measurement/internal/dv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dv;->C()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 232
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->x()Lcom/google/android/gms/measurement/internal/dv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dv;->D()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 233
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->B()Z

    move-result v1

    .line 234
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->c()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/el;->j()Z

    move-result v2

    if-nez v2, :cond_f

    .line 235
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/fd;->i:Lcom/google/android/gms/measurement/internal/b;

    .line 236
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/b;->d()Z

    move-result v2

    if-nez v2, :cond_f

    .line 237
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->c()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v2

    if-nez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/el;->c(Z)V

    .line 238
    :cond_f
    if-eqz v1, :cond_10

    .line 239
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/gk;->I()V

    .line 240
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->e()Lcom/google/android/gms/measurement/internal/iz;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/iz;->a:Lcom/google/android/gms/measurement/internal/ji;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ji;->a()V

    .line 241
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->t()Lcom/google/android/gms/measurement/internal/hu;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/hu;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    goto/16 :goto_0
.end method

.method final a(Lcom/google/android/gms/measurement/internal/de;)V
    .locals 1

    .prologue
    .line 376
    iget v0, p0, Lcom/google/android/gms/measurement/internal/fd;->F:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/fd;->F:I

    .line 377
    return-void
.end method

.method final a(Lcom/google/android/gms/measurement/internal/fy;)V
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Lcom/google/android/gms/measurement/internal/fd;->F:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/fd;->F:I

    .line 375
    return-void
.end method

.method final synthetic a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 450
    .line 451
    const/16 v2, 0xc8

    if-eq p2, v2, :cond_0

    const/16 v2, 0xcc

    if-eq p2, v2, :cond_0

    const/16 v2, 0x130

    if-ne p2, v2, :cond_2

    :cond_0
    if-nez p3, :cond_2

    move v2, v0

    .line 452
    :goto_0
    if-nez v2, :cond_3

    .line 453
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 454
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Network Request for Deferred Deep Link failed. response, exception"

    .line 455
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 456
    invoke-virtual {v0, v1, v2, p3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 497
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v1

    .line 451
    goto :goto_0

    .line 458
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->c()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/el;->t:Lcom/google/android/gms/measurement/internal/en;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/en;->a(Z)V

    .line 459
    array-length v2, p4

    if-nez v2, :cond_4

    .line 460
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Deferred Deep Link response empty."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 462
    :cond_4
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p4}, Ljava/lang/String;-><init>([B)V

    .line 463
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 464
    const-string/jumbo v2, "deeplink"

    const-string/jumbo v4, ""

    .line 465
    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 466
    const-string/jumbo v4, "gclid"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 467
    const-string/jumbo v5, "timestamp"

    const-wide/16 v6, 0x0

    .line 468
    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    .line 469
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 470
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Deferred Deep Link is empty."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 495
    :catch_0
    move-exception v0

    .line 496
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Failed to parse the Deferred Deep Link response. exception"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 472
    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v3

    .line 473
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fz;->m()V

    .line 474
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 476
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v3

    .line 477
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.VIEW"

    .line 478
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v8, 0x0

    invoke-virtual {v3, v5, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 479
    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 480
    :goto_2
    if-nez v0, :cond_7

    .line 481
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 482
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Deferred Deep Link validation failed. gclid, deep link"

    .line 483
    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_6
    move v0, v1

    .line 479
    goto :goto_2

    .line 485
    :cond_7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 486
    const-string/jumbo v1, "gclid"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const-string/jumbo v1, "_cis"

    const-string/jumbo v3, "ddp"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fd;->r:Lcom/google/android/gms/measurement/internal/gk;

    const-string/jumbo v3, "auto"

    const-string/jumbo v4, "_cmp"

    invoke-virtual {v1, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/gk;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 489
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    .line 490
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 491
    invoke-virtual {v0, v2, v6, v7}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;D)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 492
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.google.analytics.action.DEEPLINK_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 493
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method final a(Z)V
    .locals 1

    .prologue
    .line 324
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->C:Ljava/lang/Boolean;

    .line 325
    return-void
.end method

.method public final b()Lcom/google/android/gms/measurement/internal/b;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->i:Lcom/google/android/gms/measurement/internal/b;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/measurement/internal/el;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Lcom/google/android/gms/measurement/internal/el;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/fd;->a(Lcom/google/android/gms/measurement/internal/fz;)V

    .line 252
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Lcom/google/android/gms/measurement/internal/el;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/measurement/internal/dy;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->k:Lcom/google/android/gms/measurement/internal/dy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->k:Lcom/google/android/gms/measurement/internal/dy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fy;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->k:Lcom/google/android/gms/measurement/internal/dy;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Lcom/google/android/gms/measurement/internal/iz;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->m:Lcom/google/android/gms/measurement/internal/iz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/fd;->b(Lcom/google/android/gms/measurement/internal/de;)V

    .line 259
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->m:Lcom/google/android/gms/measurement/internal/iz;

    return-object v0
.end method

.method public final f()Lcom/google/android/gms/measurement/internal/eu;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->y:Lcom/google/android/gms/measurement/internal/eu;

    return-object v0
.end method

.method final g()Lcom/google/android/gms/measurement/internal/fa;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->l:Lcom/google/android/gms/measurement/internal/fa;

    return-object v0
.end method

.method public final h()Lcom/google/android/gms/measurement/internal/gk;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->r:Lcom/google/android/gms/measurement/internal/gk;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/fd;->b(Lcom/google/android/gms/measurement/internal/de;)V

    .line 263
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->r:Lcom/google/android/gms/measurement/internal/gk;

    return-object v0
.end method

.method public final i()Lcom/google/android/gms/measurement/internal/jw;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->n:Lcom/google/android/gms/measurement/internal/jw;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/fd;->a(Lcom/google/android/gms/measurement/internal/fz;)V

    .line 265
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->n:Lcom/google/android/gms/measurement/internal/jw;

    return-object v0
.end method

.method public final j()Lcom/google/android/gms/measurement/internal/dw;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->o:Lcom/google/android/gms/measurement/internal/dw;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/fd;->a(Lcom/google/android/gms/measurement/internal/fz;)V

    .line 267
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->o:Lcom/google/android/gms/measurement/internal/dw;

    return-object v0
.end method

.method public final k()Lcom/google/android/gms/measurement/internal/du;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->u:Lcom/google/android/gms/measurement/internal/du;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/fd;->b(Lcom/google/android/gms/measurement/internal/de;)V

    .line 269
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->u:Lcom/google/android/gms/measurement/internal/du;

    return-object v0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->g:Z

    return v0
.end method

.method public final q()Lcom/google/android/gms/common/util/e;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->p:Lcom/google/android/gms/common/util/e;

    return-object v0
.end method

.method public final r()Landroid/content/Context;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->c:Landroid/content/Context;

    return-object v0
.end method

.method public final s()Lcom/google/android/gms/measurement/internal/ho;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->q:Lcom/google/android/gms/measurement/internal/ho;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/fd;->b(Lcom/google/android/gms/measurement/internal/de;)V

    .line 280
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->q:Lcom/google/android/gms/measurement/internal/ho;

    return-object v0
.end method

.method public final t()Lcom/google/android/gms/measurement/internal/hu;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->v:Lcom/google/android/gms/measurement/internal/hu;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/fd;->b(Lcom/google/android/gms/measurement/internal/de;)V

    .line 282
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->v:Lcom/google/android/gms/measurement/internal/hu;

    return-object v0
.end method

.method public final u()Lcom/google/android/gms/measurement/internal/fa;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->l:Lcom/google/android/gms/measurement/internal/fa;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/fd;->b(Lcom/google/android/gms/measurement/internal/fy;)V

    .line 257
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->l:Lcom/google/android/gms/measurement/internal/fa;

    return-object v0
.end method

.method public final v()Lcom/google/android/gms/measurement/internal/dy;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->k:Lcom/google/android/gms/measurement/internal/dy;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/fd;->b(Lcom/google/android/gms/measurement/internal/fy;)V

    .line 254
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->k:Lcom/google/android/gms/measurement/internal/dy;

    return-object v0
.end method

.method public final w()Lcom/google/android/gms/measurement/internal/l;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->w:Lcom/google/android/gms/measurement/internal/l;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/fd;->b(Lcom/google/android/gms/measurement/internal/fy;)V

    .line 284
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->w:Lcom/google/android/gms/measurement/internal/l;

    return-object v0
.end method

.method public final x()Lcom/google/android/gms/measurement/internal/dv;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->x:Lcom/google/android/gms/measurement/internal/dv;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/fd;->b(Lcom/google/android/gms/measurement/internal/de;)V

    .line 286
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->x:Lcom/google/android/gms/measurement/internal/dv;

    return-object v0
.end method

.method public final y()Lcom/google/android/gms/measurement/internal/kk;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->h:Lcom/google/android/gms/measurement/internal/kk;

    return-object v0
.end method

.method public final z()Lcom/google/android/gms/measurement/internal/ab;
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->s:Lcom/google/android/gms/measurement/internal/ab;

    .line 288
    if-nez v0, :cond_0

    .line 289
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Component not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->s:Lcom/google/android/gms/measurement/internal/ab;

    return-object v0
.end method
