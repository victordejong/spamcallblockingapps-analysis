.class public final Lio/a/a$a;
.super Lio/a/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field final f:Lio/a/b;

.field private final g:Lio/a/a;

.field private h:Z

.field private i:Ljava/lang/Throwable;

.field private j:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lio/a/a;)V
    .locals 2

    .line 743
    iget-object v0, p1, Lio/a/a;->d:Lio/a/c;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lio/a/a;-><init>(Lio/a/a;Lio/a/c;Lio/a/a$1;)V

    .line 744
    invoke-virtual {p1}, Lio/a/a;->f()Lio/a/b;

    move-result-object p1

    iput-object p1, p0, Lio/a/a$a;->f:Lio/a/b;

    .line 747
    new-instance p1, Lio/a/a;

    iget-object v0, p0, Lio/a/a$a;->d:Lio/a/c;

    invoke-direct {p1, p0, v0, v1}, Lio/a/a;-><init>(Lio/a/a;Lio/a/c;Lio/a/a$1;)V

    iput-object p1, p0, Lio/a/a$a;->g:Lio/a/a;

    return-void
.end method

.method synthetic constructor <init>(Lio/a/a;Lio/a/a$1;)V
    .locals 0

    .line 730
    invoke-direct {p0, p1}, Lio/a/a$a;-><init>(Lio/a/a;)V

    return-void
.end method

.method private constructor <init>(Lio/a/a;Lio/a/b;)V
    .locals 2

    .line 754
    iget-object v0, p1, Lio/a/a;->d:Lio/a/c;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lio/a/a;-><init>(Lio/a/a;Lio/a/c;Lio/a/a$1;)V

    .line 755
    iput-object p2, p0, Lio/a/a$a;->f:Lio/a/b;

    .line 756
    new-instance p1, Lio/a/a;

    iget-object p2, p0, Lio/a/a$a;->d:Lio/a/c;

    invoke-direct {p1, p0, p2, v1}, Lio/a/a;-><init>(Lio/a/a;Lio/a/c;Lio/a/a$1;)V

    iput-object p1, p0, Lio/a/a$a;->g:Lio/a/a;

    return-void
.end method

.method synthetic constructor <init>(Lio/a/a;Lio/a/b;Lio/a/a$1;)V
    .locals 0

    .line 730
    invoke-direct {p0, p1, p2}, Lio/a/a$a;-><init>(Lio/a/a;Lio/a/b;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/a/a;)V
    .locals 1

    .line 788
    iget-object v0, p0, Lio/a/a$a;->g:Lio/a/a;

    invoke-virtual {v0, p1}, Lio/a/a;->a(Lio/a/a;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)Z
    .locals 3

    .line 818
    monitor-enter p0

    .line 819
    :try_start_0
    iget-boolean v0, p0, Lio/a/a$a;->h:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 820
    iput-boolean v1, p0, Lio/a/a$a;->h:Z

    .line 821
    iget-object v0, p0, Lio/a/a$a;->j:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 823
    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 824
    iput-object v0, p0, Lio/a/a$a;->j:Ljava/util/concurrent/ScheduledFuture;

    .line 826
    :cond_0
    iput-object p1, p0, Lio/a/a$a;->i:Ljava/lang/Throwable;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 829
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 831
    invoke-virtual {p0}, Lio/a/a$a;->g()V

    :cond_2
    return v1

    :catchall_0
    move-exception p1

    .line 829
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final c()Lio/a/a;
    .locals 1

    .line 783
    iget-object v0, p0, Lio/a/a$a;->g:Lio/a/a;

    invoke-virtual {v0}, Lio/a/a;->c()Lio/a/a;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 1

    const/4 v0, 0x0

    .line 889
    invoke-virtual {p0, v0}, Lio/a/a$a;->a(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final d()Z
    .locals 2

    .line 852
    monitor-enter p0

    .line 853
    :try_start_0
    iget-boolean v0, p0, Lio/a/a$a;->h:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 854
    monitor-exit p0

    return v1

    .line 856
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 859
    invoke-super {p0}, Lio/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 860
    invoke-super {p0}, Lio/a/a;->e()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/a/a$a;->a(Ljava/lang/Throwable;)Z

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 856
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final e()Ljava/lang/Throwable;
    .locals 1

    .line 868
    invoke-virtual {p0}, Lio/a/a$a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lio/a/a$a;->i:Ljava/lang/Throwable;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final f()Lio/a/b;
    .locals 1

    .line 876
    iget-object v0, p0, Lio/a/a$a;->f:Lio/a/b;

    return-object v0
.end method
