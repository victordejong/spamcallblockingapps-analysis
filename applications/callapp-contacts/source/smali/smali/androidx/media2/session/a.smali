.class final Landroidx/media2/session/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final a:Z


# instance fields
.field final b:Landroidx/media2/session/MediaSession$c;

.field private final c:Ljava/lang/Object;

.field private final d:Landroidx/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/a<",
            "TT;",
            "Landroidx/media2/session/MediaSession$b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroidx/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/a<",
            "Landroidx/media2/session/MediaSession$b;",
            "Landroidx/media2/session/a<",
            "TT;>.a;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MS2ControllerMgr"

    const/4 v1, 0x3

    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/media2/session/a;->a:Z

    return-void
.end method

.method constructor <init>(Landroidx/media2/session/MediaSession$c;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/session/a;->c:Ljava/lang/Object;

    .line 39
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0}, Landroidx/b/a;-><init>()V

    iput-object v0, p0, Landroidx/media2/session/a;->d:Landroidx/b/a;

    .line 41
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0}, Landroidx/b/a;-><init>()V

    iput-object v0, p0, Landroidx/media2/session/a;->e:Landroidx/b/a;

    .line 49
    iput-object p1, p0, Landroidx/media2/session/a;->b:Landroidx/media2/session/MediaSession$c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Landroidx/media2/session/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroidx/media2/session/v;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Landroidx/media2/session/a;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/a;->e:Landroidx/b/a;

    invoke-virtual {p0, p1}, Landroidx/media2/session/a;->b(Ljava/lang/Object;)Landroidx/media2/session/MediaSession$b;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/session/a$a;

    .line 169
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 170
    iget-object p1, p1, Landroidx/media2/session/a$a;->b:Landroidx/media2/session/v;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    .line 169
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/session/MediaSession$b;",
            ">;"
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    iget-object v1, p0, Landroidx/media2/session/a;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    :try_start_0
    iget-object v2, p0, Landroidx/media2/session/a;->d:Landroidx/b/a;

    invoke-virtual {v2}, Landroidx/b/a;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 131
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Landroidx/media2/session/MediaSession$b;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/a;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/a;->e:Landroidx/b/a;

    invoke-virtual {v1, p1}, Landroidx/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/session/a$a;

    if-nez v1, :cond_1

    .line 106
    monitor-exit v0

    return-void

    .line 108
    :cond_1
    iget-object v2, p0, Landroidx/media2/session/a;->d:Landroidx/b/a;

    iget-object v3, v1, Landroidx/media2/session/a$a;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroidx/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    sget-boolean v0, Landroidx/media2/session/a;->a:Z

    if-eqz v0, :cond_2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Controller "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is disconnected"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_2
    iget-object v0, v1, Landroidx/media2/session/a$a;->b:Landroidx/media2/session/v;

    invoke-virtual {v0}, Landroidx/media2/session/v;->close()V

    .line 115
    iget-object v0, p0, Landroidx/media2/session/a;->b:Landroidx/media2/session/MediaSession$c;

    invoke-interface {v0}, Landroidx/media2/session/MediaSession$c;->G()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroidx/media2/session/a$1;

    invoke-direct {v1, p0, p1}, Landroidx/media2/session/a$1;-><init>(Landroidx/media2/session/a;Landroidx/media2/session/MediaSession$b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 109
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/Object;Landroidx/media2/session/MediaSession$b;Landroidx/media2/session/SessionCommandGroup;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/media2/session/MediaSession$b;",
            "Landroidx/media2/session/SessionCommandGroup;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 61
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/a;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 62
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/media2/session/a;->b(Ljava/lang/Object;)Landroidx/media2/session/MediaSession$b;

    move-result-object v1

    if-nez v1, :cond_1

    .line 64
    iget-object v1, p0, Landroidx/media2/session/a;->d:Landroidx/b/a;

    invoke-virtual {v1, p1, p2}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v1, p0, Landroidx/media2/session/a;->e:Landroidx/b/a;

    new-instance v2, Landroidx/media2/session/a$a;

    new-instance v3, Landroidx/media2/session/v;

    invoke-direct {v3}, Landroidx/media2/session/v;-><init>()V

    invoke-direct {v2, p0, p1, v3, p3}, Landroidx/media2/session/a$a;-><init>(Landroidx/media2/session/a;Ljava/lang/Object;Landroidx/media2/session/v;Landroidx/media2/session/SessionCommandGroup;)V

    invoke-virtual {v1, p2, v2}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 69
    :cond_1
    iget-object p1, p0, Landroidx/media2/session/a;->e:Landroidx/b/a;

    invoke-virtual {p1, v1}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/session/a$a;

    .line 70
    iput-object p3, p1, Landroidx/media2/session/a$a;->c:Landroidx/media2/session/SessionCommandGroup;

    .line 72
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 55
    :cond_2
    :goto_1
    sget-boolean p1, Landroidx/media2/session/a;->a:Z

    if-nez p1, :cond_3

    return-void

    .line 56
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "controllerKey and controllerInfo shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Landroidx/media2/session/MediaSession$b;I)Z
    .locals 2

    .line 184
    iget-object v0, p0, Landroidx/media2/session/a;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/a;->e:Landroidx/b/a;

    invoke-virtual {v1, p1}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/session/a$a;

    .line 186
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 187
    iget-object p1, p1, Landroidx/media2/session/a$a;->c:Landroidx/media2/session/SessionCommandGroup;

    invoke-virtual {p1, p2}, Landroidx/media2/session/SessionCommandGroup;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    .line 186
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Landroidx/media2/session/MediaSession$b;Landroidx/media2/session/SessionCommand;)Z
    .locals 2

    .line 175
    iget-object v0, p0, Landroidx/media2/session/a;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/a;->e:Landroidx/b/a;

    invoke-virtual {v1, p1}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/session/a$a;

    .line 177
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 178
    iget-object p1, p1, Landroidx/media2/session/a$a;->c:Landroidx/media2/session/SessionCommandGroup;

    const-string v0, "command shouldn\'t be null"

    .line 1074
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1076
    iget-object p1, p1, Landroidx/media2/session/SessionCommandGroup;->a:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    .line 177
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b(Ljava/lang/Object;)Landroidx/media2/session/MediaSession$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroidx/media2/session/MediaSession$b;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Landroidx/media2/session/a;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 192
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/a;->d:Landroidx/b/a;

    invoke-virtual {v1, p1}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/session/MediaSession$b;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 193
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Landroidx/media2/session/MediaSession$b;)Z
    .locals 2

    .line 136
    iget-object v0, p0, Landroidx/media2/session/a;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/a;->e:Landroidx/b/a;

    invoke-virtual {v1, p1}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 138
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c(Landroidx/media2/session/MediaSession$b;)Landroidx/media2/session/v;
    .locals 2

    .line 152
    iget-object v0, p0, Landroidx/media2/session/a;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/a;->e:Landroidx/b/a;

    invoke-virtual {v1, p1}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/session/a$a;

    .line 154
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 155
    iget-object p1, p1, Landroidx/media2/session/a$a;->b:Landroidx/media2/session/v;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    .line 154
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
