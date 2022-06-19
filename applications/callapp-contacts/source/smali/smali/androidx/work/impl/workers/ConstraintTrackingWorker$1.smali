.class final Landroidx/work/impl/workers/ConstraintTrackingWorker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/workers/ConstraintTrackingWorker;->startWork()Lcom/google/common/util/concurrent/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/work/impl/workers/ConstraintTrackingWorker;


# direct methods
.method constructor <init>(Landroidx/work/impl/workers/ConstraintTrackingWorker;)V
    .locals 0

    .line 82
    iput-object p1, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker$1;->a:Landroidx/work/impl/workers/ConstraintTrackingWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 85
    iget-object v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker$1;->a:Landroidx/work/impl/workers/ConstraintTrackingWorker;

    .line 1093
    invoke-virtual {v0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->getInputData()Landroidx/work/d;

    move-result-object v1

    const-string v2, "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

    invoke-virtual {v1, v2}, Landroidx/work/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1094
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1095
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/workers/ConstraintTrackingWorker;->a:Ljava/lang/String;

    const-string v4, "No worker to delegate to."

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v4, v3}, Landroidx/work/k;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 1096
    invoke-virtual {v0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->a()V

    return-void

    .line 1100
    :cond_0
    invoke-virtual {v0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->getWorkerFactory()Landroidx/work/w;

    move-result-object v2

    .line 1101
    invoke-virtual {v0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->b:Landroidx/work/WorkerParameters;

    .line 1100
    invoke-virtual {v2, v4, v1, v5}, Landroidx/work/w;->a(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;

    move-result-object v2

    iput-object v2, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->f:Landroidx/work/ListenableWorker;

    .line 1105
    iget-object v2, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->f:Landroidx/work/ListenableWorker;

    if-nez v2, :cond_1

    .line 1106
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    .line 1107
    invoke-virtual {v0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->a()V

    return-void

    .line 1198
    :cond_1
    invoke-virtual {v0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroidx/work/impl/j;->b(Landroid/content/Context;)Landroidx/work/impl/j;

    move-result-object v2

    .line 1317
    iget-object v2, v2, Landroidx/work/impl/j;->c:Landroidx/work/impl/WorkDatabase;

    .line 1114
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->j()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->getId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Landroidx/work/impl/model/WorkSpecDao;->getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1116
    invoke-virtual {v0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->a()V

    return-void

    .line 1119
    :cond_2
    new-instance v4, Landroidx/work/impl/a/d;

    .line 1120
    invoke-virtual {v0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->getTaskExecutor()Landroidx/work/impl/utils/b/a;

    move-result-object v6

    invoke-direct {v4, v5, v6, v0}, Landroidx/work/impl/a/d;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/b/a;Landroidx/work/impl/a/c;)V

    .line 1123
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroidx/work/impl/a/d;->a(Ljava/lang/Iterable;)V

    .line 1125
    invoke-virtual {v0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->getId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroidx/work/impl/a/d;->a(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    .line 1126
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const-string v2, "Constraints met for delegate %s"

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v1, v5, v3

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1132
    :try_start_0
    iget-object v2, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->f:Landroidx/work/ListenableWorker;

    invoke-virtual {v2}, Landroidx/work/ListenableWorker;->startWork()Lcom/google/common/util/concurrent/a;

    move-result-object v2

    .line 1133
    new-instance v5, Landroidx/work/impl/workers/ConstraintTrackingWorker$2;

    invoke-direct {v5, v0, v2}, Landroidx/work/impl/workers/ConstraintTrackingWorker$2;-><init>(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lcom/google/common/util/concurrent/a;)V

    .line 1144
    invoke-virtual {v0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    .line 1133
    invoke-interface {v2, v5, v6}, Lcom/google/common/util/concurrent/a;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 1146
    :catchall_0
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const-string v2, "Delegated worker %s threw exception in startWork."

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1149
    iget-object v2, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->c:Ljava/lang/Object;

    monitor-enter v2

    .line 1150
    :try_start_1
    iget-boolean v1, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->d:Z

    if-eqz v1, :cond_3

    .line 1151
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    .line 1152
    invoke-virtual {v0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->b()V

    goto :goto_0

    .line 1154
    :cond_3
    invoke-virtual {v0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->a()V

    .line 1156
    :goto_0
    monitor-exit v2

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 1159
    :cond_4
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const-string v2, "Constraints not met for delegate %s. Requesting retry."

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1161
    invoke-virtual {v0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->b()V

    return-void
.end method
