.class final Landroidx/media2/session/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/v$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:I

.field private c:Landroidx/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/a<",
            "Ljava/lang/Integer;",
            "Landroidx/media2/session/v$a<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/session/v;->a:Ljava/lang/Object;

    .line 43
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0}, Landroidx/b/a;-><init>()V

    iput-object v0, p0, Landroidx/media2/session/v;->c:Landroidx/b/a;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    .line 53
    iget-object v0, p0, Landroidx/media2/session/v;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 54
    :try_start_0
    iget v1, p0, Landroidx/media2/session/v;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/session/v;->b:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 55
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final a(Ljava/lang/Object;)Landroidx/media2/session/v$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Landroidx/media2/session/v$a<",
            "TT;>;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Landroidx/media2/session/v;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 68
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/session/v;->a()I

    move-result v1

    .line 69
    invoke-static {v1, p1}, Landroidx/media2/session/v$a;->a(ILjava/lang/Object;)Landroidx/media2/session/v$a;

    move-result-object p1

    .line 70
    iget-object v2, p0, Landroidx/media2/session/v;->c:Landroidx/b/a;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1, p1}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 72
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)V"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Landroidx/media2/session/v;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/v;->c:Landroidx/b/a;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/session/v$a;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 1144
    iget-object v1, p1, Landroidx/media2/session/v$a;->g:Ljava/lang/Object;

    .line 88
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "SequencedFutureManager"

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Type mismatch, expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2144
    iget-object p1, p1, Landroidx/media2/session/v$a;->g:Ljava/lang/Object;

    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", but was "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 89
    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Landroidx/media2/session/v$a;->a(Ljava/lang/Object;)Z

    .line 103
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final close()V
    .locals 3

    .line 109
    iget-object v0, p0, Landroidx/media2/session/v;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/media2/session/v;->c:Landroidx/b/a;

    invoke-virtual {v2}, Landroidx/b/a;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 111
    iget-object v2, p0, Landroidx/media2/session/v;->c:Landroidx/b/a;

    invoke-virtual {v2}, Landroidx/b/a;->clear()V

    .line 112
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/session/v$a;

    .line 3136
    iget-object v2, v1, Landroidx/media2/session/v$a;->g:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroidx/media2/session/v$a;->a(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 112
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
