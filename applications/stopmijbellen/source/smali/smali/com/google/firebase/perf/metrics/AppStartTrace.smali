.class public Lcom/google/firebase/perf/metrics/AppStartTrace;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/metrics/AppStartTrace$a;
    }
.end annotation


# static fields
.field public static final j:J

.field public static volatile k:Lcom/google/firebase/perf/metrics/AppStartTrace;


# instance fields
.field public a:Z

.field public final b:Lm6/e;

.field public final c:Lb0/a;

.field public d:Landroid/content/Context;

.field public e:Z

.field public f:Ln6/e;

.field public g:Ln6/e;

.field public h:Ln6/e;

.field public i:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->j:J

    return-void
.end method

.method public constructor <init>(Lm6/e;Lb0/a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->a:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->e:Z

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->f:Ln6/e;

    .line 5
    iput-object v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->g:Ln6/e;

    .line 6
    iput-object v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->h:Ln6/e;

    .line 7
    iput-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->i:Z

    .line 8
    iput-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->b:Lm6/e;

    .line 9
    iput-object p2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->c:Lb0/a;

    return-void
.end method

.method public static setLauncherActivityOnCreateTime(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    return-void
.end method

.method public static setLauncherActivityOnResumeTime(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    return-void
.end method

.method public static setLauncherActivityOnStartTime(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    return-void
.end method


# virtual methods
.method public declared-synchronized onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean p2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->i:Z

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->f:Ln6/e;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->c:Lb0/a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance p1, Ln6/e;

    invoke-direct {p1}, Ln6/e;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->f:Ln6/e;

    .line 6
    invoke-static {}, Lcom/google/firebase/perf/provider/FirebasePerfProvider;->getAppStartTime()Ln6/e;

    move-result-object p1

    iget-object p2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->f:Ln6/e;

    invoke-virtual {p1, p2}, Ln6/e;->b(Ln6/e;)J

    move-result-wide p1

    sget-wide v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->j:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_1
    monitor-exit p0

    return-void

    .line 9
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onActivityResumed(Landroid/app/Activity;)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->i:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->h:Ln6/e;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->e:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->c:Lb0/a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Ln6/e;

    invoke-direct {v0}, Ln6/e;-><init>()V

    .line 5
    iput-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->h:Ln6/e;

    .line 6
    invoke-static {}, Lcom/google/firebase/perf/provider/FirebasePerfProvider;->getAppStartTime()Ln6/e;

    move-result-object v0

    .line 7
    invoke-static {}, Lg6/a;->b()Lg6/a;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->h:Ln6/e;

    .line 9
    invoke-virtual {v0, p1}, Ln6/e;->b(Ln6/e;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " microseconds"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {v1, p1}, Lg6/a;->a(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lo6/m;->R()Lo6/m$b;

    move-result-object p1

    const-string v1, "_as"

    .line 12
    invoke-virtual {p1}, Lcom/google/protobuf/i$a;->n()V

    .line 13
    iget-object v2, p1, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    check-cast v2, Lo6/m;

    invoke-static {v2, v1}, Lo6/m;->z(Lo6/m;Ljava/lang/String;)V

    .line 14
    iget-wide v1, v0, Ln6/e;->a:J

    .line 15
    invoke-virtual {p1, v1, v2}, Lo6/m$b;->r(J)Lo6/m$b;

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->h:Ln6/e;

    .line 16
    invoke-virtual {v0, v1}, Ln6/e;->b(Ln6/e;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lo6/m$b;->s(J)Lo6/m$b;

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    invoke-static {}, Lo6/m;->R()Lo6/m$b;

    move-result-object v2

    const-string v3, "_astui"

    .line 19
    invoke-virtual {v2}, Lcom/google/protobuf/i$a;->n()V

    .line 20
    iget-object v4, v2, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    check-cast v4, Lo6/m;

    invoke-static {v4, v3}, Lo6/m;->z(Lo6/m;Ljava/lang/String;)V

    .line 21
    iget-wide v3, v0, Ln6/e;->a:J

    .line 22
    invoke-virtual {v2, v3, v4}, Lo6/m$b;->r(J)Lo6/m$b;

    iget-object v3, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->f:Ln6/e;

    .line 23
    invoke-virtual {v0, v3}, Ln6/e;->b(Ln6/e;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lo6/m$b;->s(J)Lo6/m$b;

    .line 24
    invoke-virtual {v2}, Lcom/google/protobuf/i$a;->l()Lcom/google/protobuf/i;

    move-result-object v0

    check-cast v0, Lo6/m;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    invoke-static {}, Lo6/m;->R()Lo6/m$b;

    move-result-object v0

    const-string v2, "_astfd"

    .line 26
    invoke-virtual {v0}, Lcom/google/protobuf/i$a;->n()V

    .line 27
    iget-object v3, v0, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    check-cast v3, Lo6/m;

    invoke-static {v3, v2}, Lo6/m;->z(Lo6/m;Ljava/lang/String;)V

    .line 28
    iget-object v2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->f:Ln6/e;

    .line 29
    iget-wide v2, v2, Ln6/e;->a:J

    .line 30
    invoke-virtual {v0, v2, v3}, Lo6/m$b;->r(J)Lo6/m$b;

    iget-object v2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->f:Ln6/e;

    iget-object v3, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->g:Ln6/e;

    .line 31
    invoke-virtual {v2, v3}, Ln6/e;->b(Ln6/e;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lo6/m$b;->s(J)Lo6/m$b;

    .line 32
    invoke-virtual {v0}, Lcom/google/protobuf/i$a;->l()Lcom/google/protobuf/i;

    move-result-object v0

    check-cast v0, Lo6/m;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-static {}, Lo6/m;->R()Lo6/m$b;

    move-result-object v0

    const-string v2, "_asti"

    .line 34
    invoke-virtual {v0}, Lcom/google/protobuf/i$a;->n()V

    .line 35
    iget-object v3, v0, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    check-cast v3, Lo6/m;

    invoke-static {v3, v2}, Lo6/m;->z(Lo6/m;Ljava/lang/String;)V

    .line 36
    iget-object v2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->g:Ln6/e;

    .line 37
    iget-wide v2, v2, Ln6/e;->a:J

    .line 38
    invoke-virtual {v0, v2, v3}, Lo6/m$b;->r(J)Lo6/m$b;

    iget-object v2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->g:Ln6/e;

    iget-object v3, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->h:Ln6/e;

    .line 39
    invoke-virtual {v2, v3}, Ln6/e;->b(Ln6/e;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lo6/m$b;->s(J)Lo6/m$b;

    .line 40
    invoke-virtual {v0}, Lcom/google/protobuf/i$a;->l()Lcom/google/protobuf/i;

    move-result-object v0

    check-cast v0, Lo6/m;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-virtual {p1}, Lcom/google/protobuf/i$a;->n()V

    .line 42
    iget-object v0, p1, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    check-cast v0, Lo6/m;

    invoke-static {v0, v1}, Lo6/m;->C(Lo6/m;Ljava/lang/Iterable;)V

    .line 43
    invoke-static {}, Lcom/google/firebase/perf/session/SessionManager;->getInstance()Lcom/google/firebase/perf/session/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/session/SessionManager;->perfSession()Lk6/a;

    move-result-object v0

    invoke-virtual {v0}, Lk6/a;->a()Lo6/k;

    move-result-object v0

    .line 44
    invoke-virtual {p1}, Lcom/google/protobuf/i$a;->n()V

    .line 45
    iget-object v1, p1, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    check-cast v1, Lo6/m;

    invoke-static {v1, v0}, Lo6/m;->E(Lo6/m;Lo6/k;)V

    .line 46
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->b:Lm6/e;

    invoke-virtual {p1}, Lcom/google/protobuf/i$a;->l()Lcom/google/protobuf/i;

    move-result-object p1

    check-cast p1, Lo6/m;

    sget-object v1, Lo6/d;->e:Lo6/d;

    .line 47
    iget-object v2, v0, Lm6/e;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Ll6/c;

    const/4 v4, 0x1

    invoke-direct {v3, v0, p1, v1, v4}, Ll6/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 48
    iget-boolean p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->a:Z

    if-eqz p1, :cond_2

    .line 49
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    :try_start_1
    iget-boolean p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    .line 51
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 52
    :cond_1
    :try_start_3
    iget-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->d:Landroid/content/Context;

    check-cast p1, Landroid/app/Application;

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p1, 0x0

    .line 53
    iput-boolean p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->a:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 54
    :try_start_4
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 55
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 56
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->i:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->g:Ln6/e;

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->e:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->c:Lb0/a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance p1, Ln6/e;

    invoke-direct {p1}, Ln6/e;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->g:Ln6/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    monitor-enter p0

    .line 1
    monitor-exit p0

    return-void
.end method
