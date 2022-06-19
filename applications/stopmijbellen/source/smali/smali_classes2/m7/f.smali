.class public Lm7/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm7/a;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Lm7/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lm7/f$a;

    invoke-direct {v0}, Lm7/f$a;-><init>()V

    .line 2
    new-instance v0, Lm7/f$b;

    invoke-direct {v0}, Lm7/f$b;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    return-void
.end method

.method public c()Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lm7/f;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return v1

    .line 4
    :cond_0
    iget-boolean v0, p0, Lm7/f;->a:Z

    if-eqz v0, :cond_1

    .line 5
    monitor-exit p0

    return v1

    :cond_1
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lm7/f;->a:Z

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lm7/f;->c:Lm7/a;

    .line 8
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancel()Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lm7/f;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    monitor-exit p0

    return v0

    .line 4
    :cond_0
    iget-boolean v0, p0, Lm7/f;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 5
    monitor-exit p0

    return v1

    .line 6
    :cond_1
    iput-boolean v1, p0, Lm7/f;->b:Z

    .line 7
    iget-object v0, p0, Lm7/f;->c:Lm7/a;

    const/4 v2, 0x0

    .line 8
    iput-object v2, p0, Lm7/f;->c:Lm7/a;

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 10
    invoke-interface {v0}, Lm7/a;->cancel()Z

    .line 11
    :cond_2
    invoke-virtual {p0}, Lm7/f;->b()V

    return v1

    :catchall_0
    move-exception v0

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public d(Lm7/a;)Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lm7/f;->a:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 3
    monitor-exit p0

    return p1

    .line 4
    :cond_0
    iput-object p1, p0, Lm7/f;->c:Lm7/a;

    const/4 p1, 0x1

    .line 5
    monitor-exit p0

    return p1

    .line 6
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0
.end method

.method public isCancelled()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lm7/f;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lm7/f;->c:Lm7/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lm7/a;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDone()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lm7/f;->a:Z

    return v0
.end method
