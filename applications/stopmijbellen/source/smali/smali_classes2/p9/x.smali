.class public final Lp9/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp9/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp9/x$b;
    }
.end annotation


# instance fields
.field public final a:Lp9/v;

.field public final b:Lt9/i;

.field public final c:Laa/c;

.field public d:Lp9/o;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final e:Lp9/y;

.field public final f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Lp9/v;Lp9/y;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp9/x;->a:Lp9/v;

    .line 3
    iput-object p2, p0, Lp9/x;->e:Lp9/y;

    .line 4
    iput-boolean p3, p0, Lp9/x;->f:Z

    .line 5
    new-instance p2, Lt9/i;

    invoke-direct {p2, p1, p3}, Lt9/i;-><init>(Lp9/v;Z)V

    iput-object p2, p0, Lp9/x;->b:Lt9/i;

    .line 6
    new-instance p2, Lp9/x$a;

    invoke-direct {p2, p0}, Lp9/x$a;-><init>(Lp9/x;)V

    iput-object p2, p0, Lp9/x;->c:Laa/c;

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    int-to-long v0, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, p1}, Laa/z;->g(JLjava/util/concurrent/TimeUnit;)Laa/z;

    return-void
.end method


# virtual methods
.method public a()Lp9/b0;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lp9/x;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lp9/x;->g:Z

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5
    sget-object v0, Lx9/f;->a:Lx9/f;

    const-string v1, "response.body().close()"

    .line 6
    invoke-virtual {v0, v1}, Lx9/f;->j(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lp9/x;->b:Lt9/i;

    .line 8
    iput-object v0, v1, Lt9/i;->c:Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lp9/x;->c:Laa/c;

    invoke-virtual {v0}, Laa/c;->i()V

    .line 10
    iget-object v0, p0, Lp9/x;->d:Lp9/o;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :try_start_1
    iget-object v0, p0, Lp9/x;->a:Lp9/v;

    .line 12
    iget-object v0, v0, Lp9/v;->a:Lp9/m;

    .line 13
    monitor-enter v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    :try_start_2
    iget-object v1, v0, Lp9/m;->d:Ljava/util/Deque;

    invoke-interface {v1, p0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    :try_start_3
    monitor-exit v0

    .line 16
    invoke-virtual {p0}, Lp9/x;->b()Lp9/b0;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 17
    iget-object v1, p0, Lp9/x;->a:Lp9/v;

    .line 18
    iget-object v1, v1, Lp9/v;->a:Lp9/m;

    .line 19
    iget-object v2, v1, Lp9/m;->d:Ljava/util/Deque;

    invoke-virtual {v1, v2, p0}, Lp9/m;->a(Ljava/util/Deque;Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception v1

    .line 20
    :try_start_4
    monitor-exit v0

    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 21
    :try_start_5
    invoke-virtual {p0, v0}, Lp9/x;->d(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lp9/x;->d:Lp9/o;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 24
    :goto_0
    iget-object v1, p0, Lp9/x;->a:Lp9/v;

    .line 25
    iget-object v1, v1, Lp9/v;->a:Lp9/m;

    .line 26
    iget-object v2, v1, Lp9/m;->d:Ljava/util/Deque;

    invoke-virtual {v1, v2, p0}, Lp9/m;->a(Ljava/util/Deque;Ljava/lang/Object;)V

    .line 27
    throw v0

    .line 28
    :cond_0
    :try_start_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v0

    .line 29
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method

.method public b()Lp9/b0;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v0, p0, Lp9/x;->a:Lp9/v;

    .line 3
    iget-object v0, v0, Lp9/v;->d:Ljava/util/List;

    .line 4
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object v0, p0, Lp9/x;->b:Lt9/i;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v0, Lt9/a;

    iget-object v2, p0, Lp9/x;->a:Lp9/v;

    .line 7
    iget-object v2, v2, Lp9/v;->h:Lp9/l;

    .line 8
    invoke-direct {v0, v2}, Lt9/a;-><init>(Lp9/l;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v0, Lr9/b;

    iget-object v2, p0, Lp9/x;->a:Lp9/v;

    .line 10
    iget-object v2, v2, Lp9/v;->i:Lp9/c;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lp9/c;->a:Lr9/g;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 11
    :goto_0
    invoke-direct {v0, v2}, Lr9/b;-><init>(Lr9/g;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v0, Ls9/a;

    iget-object v2, p0, Lp9/x;->a:Lp9/v;

    invoke-direct {v0, v2}, Ls9/a;-><init>(Lp9/v;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget-boolean v0, p0, Lp9/x;->f:Z

    if-nez v0, :cond_1

    .line 14
    iget-object v0, p0, Lp9/x;->a:Lp9/v;

    .line 15
    iget-object v0, v0, Lp9/v;->e:Ljava/util/List;

    .line 16
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 17
    :cond_1
    new-instance v0, Lt9/b;

    iget-boolean v2, p0, Lp9/x;->f:Z

    invoke-direct {v0, v2}, Lt9/b;-><init>(Z)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v12, Lt9/f;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v13, p0, Lp9/x;->e:Lp9/y;

    iget-object v8, p0, Lp9/x;->d:Lp9/o;

    iget-object v0, p0, Lp9/x;->a:Lp9/v;

    .line 19
    iget v9, v0, Lp9/v;->v:I

    .line 20
    iget v10, v0, Lp9/v;->w:I

    .line 21
    iget v11, v0, Lp9/v;->x:I

    move-object v0, v12

    move-object v6, v13

    move-object v7, p0

    .line 22
    invoke-direct/range {v0 .. v11}, Lt9/f;-><init>(Ljava/util/List;Ls9/e;Lt9/c;Ls9/c;ILp9/y;Lp9/e;Lp9/o;III)V

    .line 23
    invoke-virtual {v12, v13}, Lt9/f;->a(Lp9/y;)Lp9/b0;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lp9/x;->e:Lp9/y;

    .line 2
    iget-object v0, v0, Lp9/y;->a:Lp9/s;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "/..."

    .line 4
    :try_start_0
    new-instance v2, Lp9/s$a;

    invoke-direct {v2}, Lp9/s$a;-><init>()V

    invoke-virtual {v2, v0, v1}, Lp9/s$a;->c(Lp9/s;Ljava/lang/String;)Lp9/s$a;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x0

    :goto_0
    const-string v0, ""

    .line 5
    invoke-virtual {v2, v0}, Lp9/s$a;->e(Ljava/lang/String;)Lp9/s$a;

    .line 6
    invoke-virtual {v2, v0}, Lp9/s$a;->d(Ljava/lang/String;)Lp9/s$a;

    .line 7
    invoke-virtual {v2}, Lp9/s$a;->a()Lp9/s;

    move-result-object v0

    .line 8
    iget-object v0, v0, Lp9/s;->i:Ljava/lang/String;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp9/x;->a:Lp9/v;

    iget-object v1, p0, Lp9/x;->e:Lp9/y;

    iget-boolean v2, p0, Lp9/x;->f:Z

    .line 2
    new-instance v3, Lp9/x;

    invoke-direct {v3, v0, v1, v2}, Lp9/x;-><init>(Lp9/v;Lp9/y;Z)V

    .line 3
    iget-object v0, v0, Lp9/v;->f:Lp9/o$b;

    .line 4
    check-cast v0, Lp9/p;

    .line 5
    iget-object v0, v0, Lp9/p;->a:Lp9/o;

    .line 6
    iput-object v0, v3, Lp9/x;->d:Lp9/o;

    return-object v3
.end method

.method public d(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .param p1    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lp9/x;->c:Laa/c;

    invoke-virtual {v0}, Laa/c;->k()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_1
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lp9/x;->b:Lt9/i;

    .line 3
    iget-boolean v1, v1, Lt9/i;->d:Z

    if-eqz v1, :cond_0

    const-string v1, "canceled "

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 4
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-boolean v1, p0, Lp9/x;->f:Z

    if-eqz v1, :cond_1

    const-string v1, "web socket"

    goto :goto_1

    :cond_1
    const-string v1, "call"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0}, Lp9/x;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
