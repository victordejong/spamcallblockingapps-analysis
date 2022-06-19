.class public abstract Landroidx/media2/exoplayer/external/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Landroidx/media2/exoplayer/external/b/e;",
        "O:",
        "Landroidx/media2/exoplayer/external/b/f;",
        "E:",
        "Ljava/lang/Exception;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/media2/exoplayer/external/b/c<",
        "TI;TO;TE;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Thread;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TI;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final e:[Landroidx/media2/exoplayer/external/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TI;"
        }
    .end annotation
.end field

.field private final f:[Landroidx/media2/exoplayer/external/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TO;"
        }
    .end annotation
.end field

.field private g:I

.field private h:I

.field private i:Landroidx/media2/exoplayer/external/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:Z

.field private m:I


# direct methods
.method public constructor <init>([Landroidx/media2/exoplayer/external/b/e;[Landroidx/media2/exoplayer/external/b/f;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TI;[TO;)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/b/g;->b:Ljava/lang/Object;

    .line 61
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/b/g;->c:Ljava/util/ArrayDeque;

    .line 62
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/b/g;->d:Ljava/util/ArrayDeque;

    .line 63
    iput-object p1, p0, Landroidx/media2/exoplayer/external/b/g;->e:[Landroidx/media2/exoplayer/external/b/e;

    .line 64
    array-length p1, p1

    iput p1, p0, Landroidx/media2/exoplayer/external/b/g;->g:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 65
    :goto_0
    iget v1, p0, Landroidx/media2/exoplayer/external/b/g;->g:I

    if-ge v0, v1, :cond_0

    .line 66
    iget-object v1, p0, Landroidx/media2/exoplayer/external/b/g;->e:[Landroidx/media2/exoplayer/external/b/e;

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/b/g;->g()Landroidx/media2/exoplayer/external/b/e;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    iput-object p2, p0, Landroidx/media2/exoplayer/external/b/g;->f:[Landroidx/media2/exoplayer/external/b/f;

    .line 69
    array-length p2, p2

    iput p2, p0, Landroidx/media2/exoplayer/external/b/g;->h:I

    .line 70
    :goto_1
    iget p2, p0, Landroidx/media2/exoplayer/external/b/g;->h:I

    if-ge p1, p2, :cond_1

    .line 71
    iget-object p2, p0, Landroidx/media2/exoplayer/external/b/g;->f:[Landroidx/media2/exoplayer/external/b/f;

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/b/g;->h()Landroidx/media2/exoplayer/external/b/f;

    move-result-object v0

    aput-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 73
    :cond_1
    new-instance p1, Landroidx/media2/exoplayer/external/b/g$1;

    invoke-direct {p1, p0}, Landroidx/media2/exoplayer/external/b/g$1;-><init>(Landroidx/media2/exoplayer/external/b/g;)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/b/g;->a:Ljava/lang/Thread;

    .line 79
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private a(Landroidx/media2/exoplayer/external/b/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    .line 278
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/b/e;->a()V

    .line 279
    iget-object v0, p0, Landroidx/media2/exoplayer/external/b/g;->e:[Landroidx/media2/exoplayer/external/b/e;

    iget v1, p0, Landroidx/media2/exoplayer/external/b/g;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/b/g;->g:I

    aput-object p1, v0, v1

    return-void
.end method

.method private i()Landroidx/media2/exoplayer/external/b/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Landroidx/media2/exoplayer/external/b/g;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :try_start_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/b/g;->k()V

    .line 102
    iget-object v1, p0, Landroidx/media2/exoplayer/external/b/g;->i:Landroidx/media2/exoplayer/external/b/e;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 103
    iget v1, p0, Landroidx/media2/exoplayer/external/b/g;->g:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 104
    :cond_1
    iget-object v3, p0, Landroidx/media2/exoplayer/external/b/g;->e:[Landroidx/media2/exoplayer/external/b/e;

    sub-int/2addr v1, v2

    iput v1, p0, Landroidx/media2/exoplayer/external/b/g;->g:I

    aget-object v1, v3, v1

    :goto_1
    iput-object v1, p0, Landroidx/media2/exoplayer/external/b/g;->i:Landroidx/media2/exoplayer/external/b/e;

    .line 105
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 106
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private j()Landroidx/media2/exoplayer/external/b/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Landroidx/media2/exoplayer/external/b/g;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/b/g;->k()V

    .line 125
    iget-object v1, p0, Landroidx/media2/exoplayer/external/b/g;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 126
    monitor-exit v0

    return-object v1

    .line 128
    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/b/g;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/b/f;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 129
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private k()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 183
    iget-object v0, p0, Landroidx/media2/exoplayer/external/b/g;->j:Ljava/lang/Exception;

    if-nez v0, :cond_0

    return-void

    .line 184
    :cond_0
    throw v0
.end method

.method private l()V
    .locals 1

    .line 195
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/b/g;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Landroidx/media2/exoplayer/external/b/g;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :cond_0
    return-void
.end method

.method private m()Z
    .locals 1

    .line 274
    iget-object v0, p0, Landroidx/media2/exoplayer/external/b/g;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/media2/exoplayer/external/b/g;->h:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected abstract a(Landroidx/media2/exoplayer/external/b/e;Landroidx/media2/exoplayer/external/b/f;Z)Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;TO;Z)TE;"
        }
    .end annotation
.end method

.method protected abstract a(Ljava/lang/Throwable;)Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")TE;"
        }
    .end annotation
.end method

.method public final synthetic a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/b/g;->i()Landroidx/media2/exoplayer/external/b/e;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroidx/media2/exoplayer/external/b/f;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Landroidx/media2/exoplayer/external/b/g;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1283
    :try_start_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/b/f;->a()V

    .line 1284
    iget-object v1, p0, Landroidx/media2/exoplayer/external/b/g;->f:[Landroidx/media2/exoplayer/external/b/f;

    iget v2, p0, Landroidx/media2/exoplayer/external/b/g;->h:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/b/g;->h:I

    aput-object p1, v1, v2

    .line 141
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/b/g;->l()V

    .line 142
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 32
    check-cast p1, Landroidx/media2/exoplayer/external/b/e;

    .line 2111
    iget-object v0, p0, Landroidx/media2/exoplayer/external/b/g;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2112
    :try_start_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/b/g;->k()V

    .line 2113
    iget-object v1, p0, Landroidx/media2/exoplayer/external/b/g;->i:Landroidx/media2/exoplayer/external/b/e;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/a;->a(Z)V

    .line 2114
    iget-object v1, p0, Landroidx/media2/exoplayer/external/b/g;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 2115
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/b/g;->l()V

    const/4 p1, 0x0

    .line 2116
    iput-object p1, p0, Landroidx/media2/exoplayer/external/b/g;->i:Landroidx/media2/exoplayer/external/b/e;

    .line 2117
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/b/g;->j()Landroidx/media2/exoplayer/external/b/f;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 2

    .line 147
    iget-object v0, p0, Landroidx/media2/exoplayer/external/b/g;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 148
    :try_start_0
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/b/g;->k:Z

    const/4 v1, 0x0

    .line 149
    iput v1, p0, Landroidx/media2/exoplayer/external/b/g;->m:I

    .line 150
    iget-object v1, p0, Landroidx/media2/exoplayer/external/b/g;->i:Landroidx/media2/exoplayer/external/b/e;

    if-eqz v1, :cond_0

    .line 151
    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/b/g;->a(Landroidx/media2/exoplayer/external/b/e;)V

    const/4 v1, 0x0

    .line 152
    iput-object v1, p0, Landroidx/media2/exoplayer/external/b/g;->i:Landroidx/media2/exoplayer/external/b/e;

    .line 154
    :cond_0
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/b/g;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 155
    iget-object v1, p0, Landroidx/media2/exoplayer/external/b/g;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/b/e;

    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/b/g;->a(Landroidx/media2/exoplayer/external/b/e;)V

    goto :goto_0

    .line 157
    :cond_1
    :goto_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/b/g;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 158
    iget-object v1, p0, Landroidx/media2/exoplayer/external/b/g;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/b/f;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/b/f;->f()V

    goto :goto_1

    .line 160
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d()V
    .locals 2

    .line 166
    iget-object v0, p0, Landroidx/media2/exoplayer/external/b/g;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 167
    :try_start_0
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/b/g;->l:Z

    .line 168
    iget-object v1, p0, Landroidx/media2/exoplayer/external/b/g;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 169
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :try_start_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/b/g;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 173
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :catchall_0
    move-exception v1

    .line 169
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected final e()V
    .locals 5

    .line 91
    iget v0, p0, Landroidx/media2/exoplayer/external/b/g;->g:I

    iget-object v1, p0, Landroidx/media2/exoplayer/external/b/g;->e:[Landroidx/media2/exoplayer/external/b/e;

    array-length v1, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 92
    iget-object v0, p0, Landroidx/media2/exoplayer/external/b/g;->e:[Landroidx/media2/exoplayer/external/b/e;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    const/16 v4, 0x400

    .line 93
    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/b/e;->c(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method final f()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 217
    iget-object v0, p0, Landroidx/media2/exoplayer/external/b/g;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/b/g;->l:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/b/g;->m()Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    iget-object v1, p0, Landroidx/media2/exoplayer/external/b/g;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 221
    :cond_0
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/b/g;->l:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 222
    monitor-exit v0

    return v2

    .line 224
    :cond_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/b/g;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/b/e;

    .line 225
    iget-object v3, p0, Landroidx/media2/exoplayer/external/b/g;->f:[Landroidx/media2/exoplayer/external/b/f;

    iget v4, p0, Landroidx/media2/exoplayer/external/b/g;->h:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Landroidx/media2/exoplayer/external/b/g;->h:I

    aget-object v3, v3, v4

    .line 226
    iget-boolean v4, p0, Landroidx/media2/exoplayer/external/b/g;->k:Z

    .line 227
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/b/g;->k:Z

    .line 228
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 230
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/b/e;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    .line 231
    invoke-virtual {v3, v0}, Landroidx/media2/exoplayer/external/b/f;->a(I)V

    goto :goto_2

    .line 233
    :cond_2
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/b/e;->l_()Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v0, -0x80000000

    .line 234
    invoke-virtual {v3, v0}, Landroidx/media2/exoplayer/external/b/f;->a(I)V

    .line 237
    :cond_3
    :try_start_1
    invoke-virtual {p0, v1, v3, v4}, Landroidx/media2/exoplayer/external/b/g;->a(Landroidx/media2/exoplayer/external/b/e;Landroidx/media2/exoplayer/external/b/f;Z)Ljava/lang/Exception;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/b/g;->j:Ljava/lang/Exception;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 246
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/b/g;->a(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/b/g;->j:Ljava/lang/Exception;

    goto :goto_1

    :catch_1
    move-exception v0

    .line 241
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/b/g;->a(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/b/g;->j:Ljava/lang/Exception;

    .line 248
    :goto_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/b/g;->j:Ljava/lang/Exception;

    if-eqz v0, :cond_4

    .line 250
    iget-object v0, p0, Landroidx/media2/exoplayer/external/b/g;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 255
    :cond_4
    :goto_2
    iget-object v4, p0, Landroidx/media2/exoplayer/external/b/g;->b:Ljava/lang/Object;

    monitor-enter v4

    .line 256
    :try_start_3
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/b/g;->k:Z

    if-eqz v0, :cond_5

    .line 257
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/b/f;->f()V

    goto :goto_3

    .line 258
    :cond_5
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/b/f;->l_()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 259
    iget v0, p0, Landroidx/media2/exoplayer/external/b/g;->m:I

    add-int/2addr v0, v5

    iput v0, p0, Landroidx/media2/exoplayer/external/b/g;->m:I

    .line 260
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/b/f;->f()V

    goto :goto_3

    .line 262
    :cond_6
    iget v0, p0, Landroidx/media2/exoplayer/external/b/g;->m:I

    iput v0, v3, Landroidx/media2/exoplayer/external/b/f;->c:I

    .line 263
    iput v2, p0, Landroidx/media2/exoplayer/external/b/g;->m:I

    .line 264
    iget-object v0, p0, Landroidx/media2/exoplayer/external/b/g;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 267
    :goto_3
    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/b/g;->a(Landroidx/media2/exoplayer/external/b/e;)V

    .line 268
    monitor-exit v4

    return v5

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    .line 228
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method

.method protected abstract g()Landroidx/media2/exoplayer/external/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation
.end method

.method protected abstract h()Landroidx/media2/exoplayer/external/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation
.end method
