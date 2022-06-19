.class public Landroidx/work/impl/workers/ConstraintTrackingWorker;
.super Landroidx/work/ListenableWorker;
.source "ConstraintTrackingWorker.java"

# interfaces
.implements Landroidx/work/impl/a/c;


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field final a:Ljava/lang/Object;

.field volatile b:Z

.field c:Landroidx/work/impl/utils/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/work/impl/utils/a/c",
            "<",
            "Landroidx/work/ListenableWorker$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroidx/work/WorkerParameters;

.field private f:Landroidx/work/ListenableWorker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string/jumbo v0, "ConstraintTrkngWrkr"

    invoke-static {v0}, Landroidx/work/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Landroidx/work/ListenableWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 73
    iput-object p2, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->e:Landroidx/work/WorkerParameters;

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->a:Ljava/lang/Object;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->b:Z

    .line 76
    invoke-static {}, Landroidx/work/impl/utils/a/c;->d()Landroidx/work/impl/utils/a/c;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->c:Landroidx/work/impl/utils/a/c;

    .line 77
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 228
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/workers/ConstraintTrackingWorker;->d:Ljava/lang/String;

    const-string/jumbo v2, "Constraints changed for %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 229
    iget-object v1, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 230
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->b:Z

    .line 231
    monitor-exit v1

    .line 232
    return-void

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()Lcom/google/a/a/a/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/a/a/a",
            "<",
            "Landroidx/work/ListenableWorker$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->j()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroidx/work/impl/workers/ConstraintTrackingWorker$1;

    invoke-direct {v1, p0}, Landroidx/work/impl/workers/ConstraintTrackingWorker$1;-><init>(Landroidx/work/impl/workers/ConstraintTrackingWorker;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 88
    iget-object v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->c:Landroidx/work/impl/utils/a/c;

    return-object v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Landroidx/work/ListenableWorker;->f()V

    .line 179
    iget-object v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->f:Landroidx/work/ListenableWorker;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->f:Landroidx/work/ListenableWorker;

    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->e()V

    .line 183
    :cond_0
    return-void
.end method

.method public k()Landroidx/work/impl/utils/b/a;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/work/impl/i;->b(Landroid/content/Context;)Landroidx/work/impl/i;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/impl/i;->g()Landroidx/work/impl/utils/b/a;

    move-result-object v0

    return-object v0
.end method

.method m()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 93
    invoke-virtual {p0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->c()Landroidx/work/e;

    move-result-object v0

    const-string/jumbo v1, "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

    invoke-virtual {v0, v1}, Landroidx/work/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/workers/ConstraintTrackingWorker;->d:Ljava/lang/String;

    const-string/jumbo v2, "No worker to delegate to."

    new-array v3, v6, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/l;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 96
    invoke-virtual {p0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->n()V

    .line 164
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-virtual {p0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->l()Landroidx/work/v;

    move-result-object v0

    .line 101
    invoke-virtual {p0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->e:Landroidx/work/WorkerParameters;

    .line 100
    invoke-virtual {v0, v2, v1, v3}, Landroidx/work/v;->b(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->f:Landroidx/work/ListenableWorker;

    .line 105
    iget-object v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->f:Landroidx/work/ListenableWorker;

    if-nez v0, :cond_1

    .line 106
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/workers/ConstraintTrackingWorker;->d:Ljava/lang/String;

    const-string/jumbo v2, "No worker to delegate to."

    new-array v3, v6, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 107
    invoke-virtual {p0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->n()V

    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {p0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->p()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->o()Landroidx/work/impl/b/q;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->b()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroidx/work/impl/b/q;->b(Ljava/lang/String;)Landroidx/work/impl/b/p;

    move-result-object v0

    .line 115
    if-nez v0, :cond_2

    .line 116
    invoke-virtual {p0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->n()V

    goto :goto_0

    .line 119
    :cond_2
    new-instance v2, Landroidx/work/impl/a/d;

    .line 120
    invoke-virtual {p0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->k()Landroidx/work/impl/utils/b/a;

    move-result-object v4

    invoke-direct {v2, v3, v4, p0}, Landroidx/work/impl/a/d;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/b/a;Landroidx/work/impl/a/c;)V

    .line 123
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/work/impl/a/d;->a(Ljava/lang/Iterable;)V

    .line 125
    invoke-virtual {p0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->b()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/work/impl/a/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 126
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v2, Landroidx/work/impl/workers/ConstraintTrackingWorker;->d:Ljava/lang/String;

    const-string/jumbo v3, "Constraints met for delegate %s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v3, v4}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 132
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->f:Landroidx/work/ListenableWorker;

    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->d()Lcom/google/a/a/a/a;

    move-result-object v0

    .line 133
    new-instance v2, Landroidx/work/impl/workers/ConstraintTrackingWorker$2;

    invoke-direct {v2, p0, v0}, Landroidx/work/impl/workers/ConstraintTrackingWorker$2;-><init>(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lcom/google/a/a/a/a;)V

    .line 144
    invoke-virtual {p0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->j()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 133
    invoke-interface {v0, v2, v3}, Lcom/google/a/a/a/a;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/workers/ConstraintTrackingWorker;->d:Ljava/lang/String;

    const-string/jumbo v4, "Delegated worker %s threw exception in startWork."

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v7, [Ljava/lang/Throwable;

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v1, v4}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 149
    iget-object v1, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    :try_start_1
    iget-boolean v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->b:Z

    if-eqz v0, :cond_3

    .line 151
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v2, Landroidx/work/impl/workers/ConstraintTrackingWorker;->d:Ljava/lang/String;

    const-string/jumbo v3, "Constraints were unmet, Retrying."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v3, v4}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 152
    invoke-virtual {p0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->o()V

    .line 156
    :goto_1
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 154
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->n()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 159
    :cond_4
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v2, Landroidx/work/impl/workers/ConstraintTrackingWorker;->d:Ljava/lang/String;

    const-string/jumbo v3, "Constraints not met for delegate %s. Requesting retry."

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v1, v3}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 161
    invoke-virtual {p0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->o()V

    goto/16 :goto_0
.end method

.method n()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->c:Landroidx/work/impl/utils/a/c;

    invoke-static {}, Landroidx/work/ListenableWorker$a;->c()Landroidx/work/ListenableWorker$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/a/c;->a(Ljava/lang/Object;)Z

    .line 169
    return-void
.end method

.method o()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->c:Landroidx/work/impl/utils/a/c;

    invoke-static {}, Landroidx/work/ListenableWorker$a;->b()Landroidx/work/ListenableWorker$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/a/c;->a(Ljava/lang/Object;)Z

    .line 174
    return-void
.end method

.method public p()Landroidx/work/impl/WorkDatabase;
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/work/impl/i;->b(Landroid/content/Context;)Landroidx/work/impl/i;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/impl/i;->c()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    return-object v0
.end method
