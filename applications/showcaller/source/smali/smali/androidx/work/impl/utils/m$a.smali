.class Landroidx/work/impl/utils/m$a;
.super Ljava/lang/Object;
.source "WorkProgressUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/utils/m;->a(Landroid/content/Context;Ljava/util/UUID;Landroidx/work/d;)Lcom/google/common/util/concurrent/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/util/UUID;

.field final synthetic e:Landroidx/work/d;

.field final synthetic f:Landroidx/work/impl/utils/futures/a;

.field final synthetic g:Landroidx/work/impl/utils/m;


# direct methods
.method constructor <init>(Landroidx/work/impl/utils/m;Ljava/util/UUID;Landroidx/work/d;Landroidx/work/impl/utils/futures/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/work/impl/utils/m$a;->g:Landroidx/work/impl/utils/m;

    iput-object p2, p0, Landroidx/work/impl/utils/m$a;->d:Ljava/util/UUID;

    iput-object p3, p0, Landroidx/work/impl/utils/m$a;->e:Landroidx/work/d;

    iput-object p4, p0, Landroidx/work/impl/utils/m$a;->f:Landroidx/work/impl/utils/futures/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/m$a;->d:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Landroidx/work/j;->c()Landroidx/work/j;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/utils/m;->a:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Landroidx/work/impl/utils/m$a;->d:Ljava/util/UUID;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Landroidx/work/impl/utils/m$a;->e:Landroidx/work/d;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-string v4, "Updating progress for %s (%s)"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Landroidx/work/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 3
    iget-object v1, p0, Landroidx/work/impl/utils/m$a;->g:Landroidx/work/impl/utils/m;

    iget-object v1, v1, Landroidx/work/impl/utils/m;->b:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->c()V

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/utils/m$a;->g:Landroidx/work/impl/utils/m;

    iget-object v1, v1, Landroidx/work/impl/utils/m;->b:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->B()Landroidx/work/impl/n/q;

    move-result-object v1

    .line 5
    invoke-interface {v1, v0}, Landroidx/work/impl/n/q;->n(Ljava/lang/String;)Landroidx/work/impl/n/p;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, v1, Landroidx/work/impl/n/p;->d:Landroidx/work/WorkInfo$State;

    .line 7
    sget-object v3, Landroidx/work/WorkInfo$State;->e:Landroidx/work/WorkInfo$State;

    if-ne v1, v3, :cond_0

    .line 8
    new-instance v1, Landroidx/work/impl/n/m;

    iget-object v2, p0, Landroidx/work/impl/utils/m$a;->e:Landroidx/work/d;

    invoke-direct {v1, v0, v2}, Landroidx/work/impl/n/m;-><init>(Ljava/lang/String;Landroidx/work/d;)V

    .line 9
    iget-object v0, p0, Landroidx/work/impl/utils/m$a;->g:Landroidx/work/impl/utils/m;

    iget-object v0, v0, Landroidx/work/impl/utils/m;->b:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->A()Landroidx/work/impl/n/n;

    move-result-object v0

    invoke-interface {v0, v1}, Landroidx/work/impl/n/n;->c(Landroidx/work/impl/n/m;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Landroidx/work/j;->c()Landroidx/work/j;

    move-result-object v1

    const-string v3, "Ignoring setProgressAsync(...). WorkSpec (%s) is not in a RUNNING state."

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    .line 11
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Throwable;

    .line 12
    invoke-virtual {v1, v2, v0, v3}, Landroidx/work/j;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 13
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/utils/m$a;->f:Landroidx/work/impl/utils/futures/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/futures/a;->q(Ljava/lang/Object;)Z

    .line 14
    iget-object v0, p0, Landroidx/work/impl/utils/m$a;->g:Landroidx/work/impl/utils/m;

    iget-object v0, v0, Landroidx/work/impl/utils/m;->b:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->r()V

    goto :goto_1

    :cond_1
    const-string v0, "Calls to setProgressAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result."

    .line 15
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    .line 16
    :try_start_1
    invoke-static {}, Landroidx/work/j;->c()Landroidx/work/j;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/utils/m;->a:Ljava/lang/String;

    const-string v3, "Error updating Worker progress"

    new-array v4, v6, [Ljava/lang/Throwable;

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroidx/work/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 17
    iget-object v1, p0, Landroidx/work/impl/utils/m$a;->f:Landroidx/work/impl/utils/futures/a;

    invoke-virtual {v1, v0}, Landroidx/work/impl/utils/futures/a;->r(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    :goto_1
    iget-object v0, p0, Landroidx/work/impl/utils/m$a;->g:Landroidx/work/impl/utils/m;

    iget-object v0, v0, Landroidx/work/impl/utils/m;->b:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->g()V

    return-void

    :catchall_1
    move-exception v0

    iget-object v1, p0, Landroidx/work/impl/utils/m$a;->g:Landroidx/work/impl/utils/m;

    iget-object v1, v1, Landroidx/work/impl/utils/m;->b:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->g()V

    .line 19
    throw v0
.end method
