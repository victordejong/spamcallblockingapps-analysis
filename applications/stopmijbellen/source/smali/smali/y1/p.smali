.class public Ly1/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/UUID;

.field public final synthetic b:Landroidx/work/b;

.field public final synthetic c:Lz1/c;

.field public final synthetic d:Ly1/q;


# direct methods
.method public constructor <init>(Ly1/q;Ljava/util/UUID;Landroidx/work/b;Lz1/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly1/p;->d:Ly1/q;

    iput-object p2, p0, Ly1/p;->a:Ljava/util/UUID;

    iput-object p3, p0, Ly1/p;->b:Landroidx/work/b;

    iput-object p4, p0, Ly1/p;->c:Lz1/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Ly1/p;->a:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lo1/h;->c()Lo1/h;

    move-result-object v1

    sget-object v2, Ly1/q;->c:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Ly1/p;->a:Ljava/util/UUID;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Ly1/p;->b:Landroidx/work/b;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-string v4, "Updating progress for %s (%s)"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Lo1/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 3
    iget-object v1, p0, Ly1/p;->d:Ly1/q;

    iget-object v1, v1, Ly1/q;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Ld1/f;->c()V

    .line 4
    :try_start_0
    iget-object v1, p0, Ly1/p;->d:Ly1/q;

    iget-object v1, v1, Ly1/q;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->q()Lx1/q;

    move-result-object v1

    .line 5
    check-cast v1, Lx1/r;

    invoke-virtual {v1, v0}, Lx1/r;->i(Ljava/lang/String;)Lx1/p;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, v1, Lx1/p;->b:Lo1/m;

    .line 7
    sget-object v3, Lo1/m;->b:Lo1/m;

    if-ne v1, v3, :cond_0

    .line 8
    new-instance v1, Lx1/m;

    iget-object v2, p0, Ly1/p;->b:Landroidx/work/b;

    invoke-direct {v1, v0, v2}, Lx1/m;-><init>(Ljava/lang/String;Landroidx/work/b;)V

    .line 9
    iget-object v0, p0, Ly1/p;->d:Ly1/q;

    iget-object v0, v0, Ly1/q;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->p()Lx1/n;

    move-result-object v0

    check-cast v0, Lx1/o;

    .line 10
    iget-object v2, v0, Lx1/o;->a:Ld1/f;

    invoke-virtual {v2}, Ld1/f;->b()V

    .line 11
    iget-object v2, v0, Lx1/o;->a:Ld1/f;

    invoke-virtual {v2}, Ld1/f;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    iget-object v2, v0, Lx1/o;->b:Ld1/b;

    invoke-virtual {v2, v1}, Ld1/b;->e(Ljava/lang/Object;)V

    .line 13
    iget-object v1, v0, Lx1/o;->a:Ld1/f;

    invoke-virtual {v1}, Ld1/f;->k()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :try_start_2
    iget-object v0, v0, Lx1/o;->a:Ld1/f;

    invoke-virtual {v0}, Ld1/f;->g()V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v0, v0, Lx1/o;->a:Ld1/f;

    invoke-virtual {v0}, Ld1/f;->g()V

    .line 15
    throw v1

    .line 16
    :cond_0
    invoke-static {}, Lo1/h;->c()Lo1/h;

    move-result-object v1

    const-string v3, "Ignoring setProgressAsync(...). WorkSpec (%s) is not in a RUNNING state."

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    .line 17
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Throwable;

    .line 18
    invoke-virtual {v1, v2, v0, v3}, Lo1/h;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 19
    :goto_0
    iget-object v0, p0, Ly1/p;->c:Lz1/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lz1/c;->k(Ljava/lang/Object;)Z

    .line 20
    iget-object v0, p0, Ly1/p;->d:Ly1/q;

    iget-object v0, v0, Ly1/q;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ld1/f;->k()V

    goto :goto_1

    :cond_1
    const-string v0, "Calls to setProgressAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result."

    .line 21
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    .line 22
    :try_start_3
    invoke-static {}, Lo1/h;->c()Lo1/h;

    move-result-object v1

    sget-object v2, Ly1/q;->c:Ljava/lang/String;

    const-string v3, "Error updating Worker progress"

    new-array v4, v6, [Ljava/lang/Throwable;

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lo1/h;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 23
    iget-object v1, p0, Ly1/p;->c:Lz1/c;

    invoke-virtual {v1, v0}, Lz1/c;->l(Ljava/lang/Throwable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 24
    :goto_1
    iget-object v0, p0, Ly1/p;->d:Ly1/q;

    iget-object v0, v0, Ly1/q;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ld1/f;->g()V

    return-void

    :catchall_2
    move-exception v0

    iget-object v1, p0, Ly1/p;->d:Ly1/q;

    iget-object v1, v1, Ly1/q;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Ld1/f;->g()V

    .line 25
    throw v0
.end method
