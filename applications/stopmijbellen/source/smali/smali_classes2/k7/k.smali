.class public Lk7/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7/o;


# instance fields
.field public a:Lk7/o;

.field public b:Z

.field public final c:Lk7/l;

.field public d:Ll7/f;

.field public e:I

.field public f:Z


# direct methods
.method public constructor <init>(Lk7/o;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lk7/l;

    invoke-direct {v0}, Lk7/l;-><init>()V

    iput-object v0, p0, Lk7/k;->c:Lk7/l;

    const v0, 0x7fffffff

    .line 3
    iput v0, p0, Lk7/k;->e:I

    .line 4
    iput-object p1, p0, Lk7/k;->a:Lk7/o;

    .line 5
    new-instance v0, Ly2/p;

    invoke-direct {v0, p0}, Ly2/p;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lk7/o;->m(Ll7/f;)V

    return-void
.end method


# virtual methods
.method public a()Lk7/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lk7/k;->a:Lk7/o;

    invoke-interface {v0}, Lk7/o;->a()Lk7/h;

    move-result-object v0

    return-object v0
.end method

.method public b(Lk7/l;)V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lk7/k;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lk7/k;->c:Lk7/l;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lk7/k;->a:Lk7/o;

    iget-object v2, p0, Lk7/k;->c:Lk7/l;

    invoke-interface {v1, v2}, Lk7/o;->k(Lk7/l;)V

    .line 4
    iget-object v1, p0, Lk7/k;->c:Lk7/l;

    invoke-virtual {v1}, Lk7/l;->j()Z

    move-result v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 6
    iget-boolean v0, p0, Lk7/k;->f:Z

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lk7/k;->a:Lk7/o;

    invoke-interface {v0}, Lk7/o;->j()V

    :cond_1
    if-eqz v1, :cond_2

    .line 8
    iget-object v0, p0, Lk7/k;->d:Ll7/f;

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {v0}, Ll7/f;->f()V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public g(Ll7/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk7/k;->a:Lk7/o;

    invoke-interface {v0, p1}, Lk7/o;->g(Ll7/a;)V

    return-void
.end method

.method public j()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lk7/k;->a()Lk7/h;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lk7/h;->e:Ljava/lang/Thread;

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lk7/k;->a()Lk7/h;

    move-result-object v0

    new-instance v1, Ly2/q;

    invoke-direct {v1, p0, v2}, Ly2/q;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lk7/h;->g(Ljava/lang/Runnable;)Lm7/a;

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lk7/k;->c:Lk7/l;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lk7/k;->c:Lk7/l;

    invoke-virtual {v1}, Lk7/l;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iput-boolean v2, p0, Lk7/k;->f:Z

    .line 8
    monitor-exit v0

    return-void

    .line 9
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object v0, p0, Lk7/k;->a:Lk7/o;

    invoke-interface {v0}, Lk7/o;->j()V

    return-void

    :catchall_0
    move-exception v1

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public k(Lk7/l;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lk7/k;->a()Lk7/h;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lk7/h;->e:Ljava/lang/Thread;

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lk7/k;->c:Lk7/l;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lk7/k;->c:Lk7/l;

    .line 6
    iget v1, v1, Lk7/l;->c:I

    .line 7
    iget v2, p0, Lk7/k;->e:I

    if-lt v1, v2, :cond_0

    .line 8
    monitor-exit v0

    return-void

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lk7/k;->b(Lk7/l;)V

    .line 10
    iget-object v1, p0, Lk7/k;->c:Lk7/l;

    .line 11
    iget v2, p1, Lk7/l;->c:I

    .line 12
    invoke-virtual {p1, v1, v2}, Lk7/l;->d(Lk7/l;I)V

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-virtual {p0}, Lk7/k;->a()Lk7/h;

    move-result-object p1

    new-instance v0, Landroidx/emoji2/text/k;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Landroidx/emoji2/text/k;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Lk7/h;->g(Ljava/lang/Runnable;)Lm7/a;

    return-void

    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 16
    :cond_1
    invoke-virtual {p0, p1}, Lk7/k;->b(Lk7/l;)V

    .line 17
    iget-object v0, p0, Lk7/k;->c:Lk7/l;

    invoke-virtual {v0}, Lk7/l;->i()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lk7/k;->b:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_4

    .line 18
    iget-object v0, p0, Lk7/k;->a:Lk7/o;

    invoke-interface {v0, p1}, Lk7/o;->k(Lk7/l;)V

    .line 19
    :cond_4
    iget-object v0, p0, Lk7/k;->c:Lk7/l;

    monitor-enter v0

    .line 20
    :try_start_2
    iget-object v1, p0, Lk7/k;->c:Lk7/l;

    .line 21
    iget v2, p1, Lk7/l;->c:I

    .line 22
    invoke-virtual {p1, v1, v2}, Lk7/l;->d(Lk7/l;I)V

    .line 23
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public m(Ll7/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk7/k;->d:Ll7/f;

    return-void
.end method
