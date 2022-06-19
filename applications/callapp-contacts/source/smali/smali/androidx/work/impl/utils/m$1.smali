.class final Landroidx/work/impl/utils/m$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/utils/m;->a(Ljava/util/UUID;Landroidx/work/d;)Lcom/google/common/util/concurrent/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/UUID;

.field final synthetic b:Landroidx/work/d;

.field final synthetic c:Landroidx/work/impl/utils/a/c;

.field final synthetic d:Landroidx/work/impl/utils/m;


# direct methods
.method constructor <init>(Landroidx/work/impl/utils/m;Ljava/util/UUID;Landroidx/work/d;Landroidx/work/impl/utils/a/c;)V
    .locals 0

    .line 72
    iput-object p1, p0, Landroidx/work/impl/utils/m$1;->d:Landroidx/work/impl/utils/m;

    iput-object p2, p0, Landroidx/work/impl/utils/m$1;->a:Ljava/util/UUID;

    iput-object p3, p0, Landroidx/work/impl/utils/m$1;->b:Landroidx/work/d;

    iput-object p4, p0, Landroidx/work/impl/utils/m$1;->c:Landroidx/work/impl/utils/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 75
    iget-object v0, p0, Landroidx/work/impl/utils/m$1;->a:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    sget-object v1, Landroidx/work/impl/utils/m;->a:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Landroidx/work/impl/utils/m$1;->a:Ljava/util/UUID;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Landroidx/work/impl/utils/m$1;->b:Landroidx/work/d;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "Updating progress for %s (%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    iget-object v1, p0, Landroidx/work/impl/utils/m$1;->d:Landroidx/work/impl/utils/m;

    iget-object v1, v1, Landroidx/work/impl/utils/m;->b:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->e()V

    .line 79
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/utils/m$1;->d:Landroidx/work/impl/utils/m;

    iget-object v1, v1, Landroidx/work/impl/utils/m;->b:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->j()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v1

    .line 80
    invoke-interface {v1, v0}, Landroidx/work/impl/model/WorkSpecDao;->getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, v1, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/t$a;

    .line 84
    sget-object v2, Landroidx/work/t$a;->RUNNING:Landroidx/work/t$a;

    if-ne v1, v2, :cond_0

    .line 85
    new-instance v1, Landroidx/work/impl/model/WorkProgress;

    iget-object v2, p0, Landroidx/work/impl/utils/m$1;->b:Landroidx/work/d;

    invoke-direct {v1, v0, v2}, Landroidx/work/impl/model/WorkProgress;-><init>(Ljava/lang/String;Landroidx/work/d;)V

    .line 86
    iget-object v0, p0, Landroidx/work/impl/utils/m$1;->d:Landroidx/work/impl/utils/m;

    iget-object v0, v0, Landroidx/work/impl/utils/m;->b:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->o()Landroidx/work/impl/model/WorkProgressDao;

    move-result-object v0

    invoke-interface {v0, v1}, Landroidx/work/impl/model/WorkProgressDao;->insert(Landroidx/work/impl/model/WorkProgress;)V

    goto :goto_0

    .line 88
    :cond_0
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/utils/m;->a:Ljava/lang/String;

    const-string v5, "Ignoring setProgressAsync(...). WorkSpec (%s) is not in a RUNNING state."

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v0, v6, v3

    .line 89
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-virtual {v1, v2, v0}, Landroidx/work/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/utils/m$1;->c:Landroidx/work/impl/utils/a/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/a/c;->a(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Landroidx/work/impl/utils/m$1;->d:Landroidx/work/impl/utils/m;

    iget-object v0, v0, Landroidx/work/impl/utils/m;->b:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :goto_1
    iget-object v0, p0, Landroidx/work/impl/utils/m$1;->d:Landroidx/work/impl/utils/m;

    iget-object v0, v0, Landroidx/work/impl/utils/m;->b:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->f()V

    return-void

    :cond_1
    :try_start_1
    const-string v0, "Calls to setProgressAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result."

    .line 99
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 104
    :try_start_2
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/utils/m;->a:Ljava/lang/String;

    const-string v5, "Error updating Worker progress"

    new-array v4, v4, [Ljava/lang/Throwable;

    aput-object v0, v4, v3

    invoke-virtual {v1, v2, v5, v4}, Landroidx/work/k;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 105
    iget-object v1, p0, Landroidx/work/impl/utils/m$1;->c:Landroidx/work/impl/utils/a/c;

    invoke-virtual {v1, v0}, Landroidx/work/impl/utils/a/c;->a(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 107
    iget-object v1, p0, Landroidx/work/impl/utils/m$1;->d:Landroidx/work/impl/utils/m;

    iget-object v1, v1, Landroidx/work/impl/utils/m;->b:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->f()V

    .line 108
    throw v0
.end method
