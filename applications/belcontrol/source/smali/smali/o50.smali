.class public Lo50;
.super Le50;
.source ""


# static fields
.field public static j:Lo50;

.field public static k:Lo50;

.field public static final l:Ljava/lang/Object;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lr40;

.field public c:Landroidx/work/impl/WorkDatabase;

.field public d:Lv70;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk50;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lj50;

.field public g:Ln70;

.field public h:Z

.field public i:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo50;->l:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lr40;Lv70;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lb50;->workmanager_test_configuration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lo50;-><init>(Landroid/content/Context;Lr40;Lv70;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lr40;Lv70;Z)V
    .locals 9

    invoke-direct {p0}, Le50;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lr40;->g()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1, p4}, Landroidx/work/impl/WorkDatabase;->r(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Landroidx/work/impl/WorkDatabase;

    move-result-object p4

    new-instance v1, Lx40$a;

    invoke-virtual {p2}, Lr40;->f()I

    move-result v2

    invoke-direct {v1, v2}, Lx40$a;-><init>(I)V

    invoke-static {v1}, Lx40;->e(Lx40;)V

    invoke-virtual {p0, v0, p3}, Lo50;->f(Landroid/content/Context;Lv70;)Ljava/util/List;

    move-result-object v0

    new-instance v8, Lj50;

    move-object v2, v8

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lj50;-><init>(Landroid/content/Context;Lr40;Lv70;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lo50;->p(Landroid/content/Context;Lr40;Lv70;Landroidx/work/impl/WorkDatabase;Ljava/util/List;Lj50;)V

    return-void
.end method

.method public static e(Landroid/content/Context;Lr40;)V
    .locals 4

    sget-object v0, Lo50;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo50;->j:Lo50;

    if-eqz v1, :cond_1

    sget-object v2, Lo50;->k:Lo50;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class levelJavadoc for more information."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Lo50;->k:Lo50;

    if-nez v1, :cond_2

    new-instance v1, Lo50;

    new-instance v2, Lw70;

    invoke-virtual {p1}, Lr40;->g()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-direct {v2, v3}, Lw70;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-direct {v1, p0, p1, v2}, Lo50;-><init>(Landroid/content/Context;Lr40;Lv70;)V

    sput-object v1, Lo50;->k:Lo50;

    :cond_2
    sget-object p0, Lo50;->k:Lo50;

    sput-object p0, Lo50;->j:Lo50;

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static i()Lo50;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lo50;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo50;->j:Lo50;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    sget-object v1, Lo50;->k:Lo50;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static j(Landroid/content/Context;)Lo50;
    .locals 2

    sget-object v0, Lo50;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lo50;->i()Lo50;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    instance-of v1, p0, Lr40$b;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Lr40$b;

    invoke-interface {v1}, Lr40$b;->a()Lr40;

    move-result-object v1

    invoke-static {p0, v1}, Lo50;->e(Landroid/content/Context;Lr40;)V

    invoke-static {p0}, Lo50;->j(Landroid/content/Context;)Lo50;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)La50;
    .locals 1

    invoke-static {p1, p0}, Lj70;->c(Ljava/lang/String;Lo50;)Lj70;

    move-result-object p1

    iget-object v0, p0, Lo50;->d:Lv70;

    invoke-interface {v0, p1}, Lv70;->b(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lj70;->d()La50;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/util/List;)La50;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lf50;",
            ">;)",
            "La50;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lm50;

    invoke-direct {v0, p0, p1}, Lm50;-><init>(Lo50;Ljava/util/List;)V

    invoke-virtual {v0}, Lm50;->a()La50;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enqueue needs at least one WorkRequest."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Landroid/content/Context;Lv70;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lv70;",
            ")",
            "Ljava/util/List<",
            "Lk50;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lk50;

    invoke-static {p1, p0}, Ll50;->a(Landroid/content/Context;Lo50;)Lk50;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lq50;

    invoke-direct {v1, p1, p2, p0}, Lq50;-><init>(Landroid/content/Context;Lv70;Lo50;)V

    const/4 p1, 0x1

    aput-object v1, v0, p1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public g()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lo50;->a:Landroid/content/Context;

    return-object v0
.end method

.method public h()Lr40;
    .locals 1

    iget-object v0, p0, Lo50;->b:Lr40;

    return-object v0
.end method

.method public k()Ln70;
    .locals 1

    iget-object v0, p0, Lo50;->g:Ln70;

    return-object v0
.end method

.method public l()Lj50;
    .locals 1

    iget-object v0, p0, Lo50;->f:Lj50;

    return-object v0
.end method

.method public m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk50;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo50;->e:Ljava/util/List;

    return-object v0
.end method

.method public n()Landroidx/work/impl/WorkDatabase;
    .locals 1

    iget-object v0, p0, Lo50;->c:Landroidx/work/impl/WorkDatabase;

    return-object v0
.end method

.method public o()Lv70;
    .locals 1

    iget-object v0, p0, Lo50;->d:Lv70;

    return-object v0
.end method

.method public final p(Landroid/content/Context;Lr40;Lv70;Landroidx/work/impl/WorkDatabase;Ljava/util/List;Lj50;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lr40;",
            "Lv70;",
            "Landroidx/work/impl/WorkDatabase;",
            "Ljava/util/List<",
            "Lk50;",
            ">;",
            "Lj50;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo50;->a:Landroid/content/Context;

    iput-object p2, p0, Lo50;->b:Lr40;

    iput-object p3, p0, Lo50;->d:Lv70;

    iput-object p4, p0, Lo50;->c:Landroidx/work/impl/WorkDatabase;

    iput-object p5, p0, Lo50;->e:Ljava/util/List;

    iput-object p6, p0, Lo50;->f:Lj50;

    new-instance p2, Ln70;

    invoke-direct {p2, p1}, Ln70;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lo50;->g:Ln70;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lo50;->h:Z

    new-instance p2, Landroidx/work/impl/utils/ForceStopRunnable;

    invoke-direct {p2, p1, p0}, Landroidx/work/impl/utils/ForceStopRunnable;-><init>(Landroid/content/Context;Lo50;)V

    invoke-interface {p3, p2}, Lv70;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public q()V
    .locals 2

    sget-object v0, Lo50;->l:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lo50;->h:Z

    iget-object v1, p0, Lo50;->i:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    const/4 v1, 0x0

    iput-object v1, p0, Lo50;->i:Landroid/content/BroadcastReceiver$PendingResult;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public r()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lo50;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lz50;->b(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p0}, Lo50;->n()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->y()Ld70;

    move-result-object v0

    invoke-interface {v0}, Ld70;->i()I

    invoke-virtual {p0}, Lo50;->h()Lr40;

    move-result-object v0

    invoke-virtual {p0}, Lo50;->n()Landroidx/work/impl/WorkDatabase;

    move-result-object v1

    invoke-virtual {p0}, Lo50;->m()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ll50;->b(Lr40;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void
.end method

.method public s(Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 2

    sget-object v0, Lo50;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lo50;->i:Landroid/content/BroadcastReceiver$PendingResult;

    iget-boolean v1, p0, Lo50;->h:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    const/4 p1, 0x0

    iput-object p1, p0, Lo50;->i:Landroid/content/BroadcastReceiver$PendingResult;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public t(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lo50;->u(Ljava/lang/String;Landroidx/work/WorkerParameters$a;)V

    return-void
.end method

.method public u(Ljava/lang/String;Landroidx/work/WorkerParameters$a;)V
    .locals 2

    iget-object v0, p0, Lo50;->d:Lv70;

    new-instance v1, Lp70;

    invoke-direct {v1, p0, p1, p2}, Lp70;-><init>(Lo50;Ljava/lang/String;Landroidx/work/WorkerParameters$a;)V

    invoke-interface {v0, v1}, Lv70;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lo50;->d:Lv70;

    new-instance v1, Lq70;

    invoke-direct {v1, p0, p1}, Lq70;-><init>(Lo50;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lv70;->b(Ljava/lang/Runnable;)V

    return-void
.end method
