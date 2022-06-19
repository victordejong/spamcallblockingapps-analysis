.class public abstract Lcom/google/android/exoplayer2/decoder/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/decoder/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;",
        "O:",
        "Lcom/google/android/exoplayer2/decoder/f;",
        "E:",
        "Lcom/google/android/exoplayer2/decoder/DecoderException;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/decoder/c<",
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

.field private final e:[Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TI;"
        }
    .end annotation
.end field

.field private final f:[Lcom/google/android/exoplayer2/decoder/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TO;"
        }
    .end annotation
.end field

.field private g:I

.field private h:I

.field private i:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field private j:Lcom/google/android/exoplayer2/decoder/DecoderException;
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
.method public constructor <init>([Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;[Lcom/google/android/exoplayer2/decoder/f;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TI;[TO;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/decoder/g;->b:Ljava/lang/Object;

    .line 56
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/decoder/g;->c:Ljava/util/ArrayDeque;

    .line 57
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/decoder/g;->d:Ljava/util/ArrayDeque;

    .line 58
    iput-object p1, p0, Lcom/google/android/exoplayer2/decoder/g;->e:[Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 59
    array-length p1, p1

    iput p1, p0, Lcom/google/android/exoplayer2/decoder/g;->g:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 60
    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer2/decoder/g;->g:I

    if-ge v0, v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/g;->e:[Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/decoder/g;->g()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_0
    iput-object p2, p0, Lcom/google/android/exoplayer2/decoder/g;->f:[Lcom/google/android/exoplayer2/decoder/f;

    .line 64
    array-length p2, p2

    iput p2, p0, Lcom/google/android/exoplayer2/decoder/g;->h:I

    .line 65
    :goto_1
    iget p2, p0, Lcom/google/android/exoplayer2/decoder/g;->h:I

    if-ge p1, p2, :cond_1

    .line 66
    iget-object p2, p0, Lcom/google/android/exoplayer2/decoder/g;->f:[Lcom/google/android/exoplayer2/decoder/f;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/decoder/g;->h()Lcom/google/android/exoplayer2/decoder/f;

    move-result-object v0

    aput-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 68
    :cond_1
    new-instance p1, Lcom/google/android/exoplayer2/decoder/g$1;

    const-string p2, "ExoPlayer:SimpleDecoder"

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer2/decoder/g$1;-><init>(Lcom/google/android/exoplayer2/decoder/g;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/decoder/g;->a:Ljava/lang/Thread;

    .line 75
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    .line 276
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->a()V

    .line 277
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/g;->e:[Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget v1, p0, Lcom/google/android/exoplayer2/decoder/g;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/decoder/g;->g:I

    aput-object p1, v0, v1

    return-void
.end method

.method private i()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/DecoderException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/g;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/g;->k()V

    .line 98
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/g;->i:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 99
    iget v1, p0, Lcom/google/android/exoplayer2/decoder/g;->g:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 100
    :cond_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/decoder/g;->e:[Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/decoder/g;->g:I

    aget-object v1, v3, v1

    :goto_1
    iput-object v1, p0, Lcom/google/android/exoplayer2/decoder/g;->i:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 101
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 102
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private j()Lcom/google/android/exoplayer2/decoder/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/DecoderException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/g;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/g;->k()V

    .line 121
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/g;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 122
    monitor-exit v0

    return-object v1

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/g;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/decoder/f;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 125
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
            Lcom/google/android/exoplayer2/decoder/DecoderException;
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/g;->j:Lcom/google/android/exoplayer2/decoder/DecoderException;

    if-nez v0, :cond_0

    return-void

    .line 180
    :cond_0
    throw v0
.end method

.method private l()V
    .locals 1

    .line 191
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/g;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/g;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :cond_0
    return-void
.end method

.method private m()Z
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/g;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/decoder/g;->h:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected abstract a(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/decoder/f;Z)Lcom/google/android/exoplayer2/decoder/DecoderException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;TO;Z)TE;"
        }
    .end annotation
.end method

.method protected abstract a(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/decoder/DecoderException;
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
            Lcom/google/android/exoplayer2/decoder/DecoderException;
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/g;->i()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/google/android/exoplayer2/decoder/f;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/g;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1281
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/f;->a()V

    .line 1282
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/g;->f:[Lcom/google/android/exoplayer2/decoder/f;

    iget v2, p0, Lcom/google/android/exoplayer2/decoder/g;->h:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/decoder/g;->h:I

    aput-object p1, v1, v2

    .line 137
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/g;->l()V

    .line 138
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
            Lcom/google/android/exoplayer2/decoder/DecoderException;
        }
    .end annotation

    .line 28
    check-cast p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 2107
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/g;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2108
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/g;->k()V

    .line 2109
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/g;->i:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 2110
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/g;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 2111
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/g;->l()V

    const/4 p1, 0x0

    .line 2112
    iput-object p1, p0, Lcom/google/android/exoplayer2/decoder/g;->i:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 2113
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
            Lcom/google/android/exoplayer2/decoder/DecoderException;
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/g;->j()Lcom/google/android/exoplayer2/decoder/f;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/g;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 144
    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/decoder/g;->k:Z

    const/4 v1, 0x0

    .line 145
    iput v1, p0, Lcom/google/android/exoplayer2/decoder/g;->m:I

    .line 146
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/g;->i:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    if-eqz v1, :cond_0

    .line 147
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/decoder/g;->a(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    const/4 v1, 0x0

    .line 148
    iput-object v1, p0, Lcom/google/android/exoplayer2/decoder/g;->i:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 150
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/g;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/g;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/decoder/g;->a(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    goto :goto_0

    .line 153
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/g;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 154
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/g;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/decoder/f;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/f;->f()V

    goto :goto_1

    .line 156
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

    .line 162
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/g;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 163
    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/decoder/g;->l:Z

    .line 164
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/g;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 165
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/g;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 169
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :catchall_0
    move-exception v1

    .line 165
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected final e()V
    .locals 5

    .line 87
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/g;->g:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/g;->e:[Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    array-length v1, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 88
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/g;->e:[Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    const/16 v4, 0x400

    .line 89
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c(I)V

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

    .line 213
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/g;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/decoder/g;->l:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/g;->m()Z

    move-result v1

    if-nez v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/g;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 217
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/decoder/g;->l:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 218
    monitor-exit v0

    return v2

    .line 220
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/g;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 221
    iget-object v3, p0, Lcom/google/android/exoplayer2/decoder/g;->f:[Lcom/google/android/exoplayer2/decoder/f;

    iget v4, p0, Lcom/google/android/exoplayer2/decoder/g;->h:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/exoplayer2/decoder/g;->h:I

    aget-object v3, v3, v4

    .line 222
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/decoder/g;->k:Z

    .line 223
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/decoder/g;->k:Z

    .line 224
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 226
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    .line 227
    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/decoder/f;->a(I)V

    goto :goto_2

    .line 229
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->E_()Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v0, -0x80000000

    .line 230
    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/decoder/f;->a(I)V

    .line 234
    :cond_3
    :try_start_1
    invoke-virtual {p0, v1, v3, v4}, Lcom/google/android/exoplayer2/decoder/g;->a(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/decoder/f;Z)Lcom/google/android/exoplayer2/decoder/DecoderException;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 243
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/decoder/g;->a(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/decoder/DecoderException;

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 238
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/decoder/g;->a(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/decoder/DecoderException;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_4

    .line 246
    iget-object v4, p0, Lcom/google/android/exoplayer2/decoder/g;->b:Ljava/lang/Object;

    monitor-enter v4

    .line 247
    :try_start_2
    iput-object v0, p0, Lcom/google/android/exoplayer2/decoder/g;->j:Lcom/google/android/exoplayer2/decoder/DecoderException;

    .line 248
    monitor-exit v4

    return v2

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 253
    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/decoder/g;->b:Ljava/lang/Object;

    monitor-enter v4

    .line 254
    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/decoder/g;->k:Z

    if-eqz v0, :cond_5

    .line 255
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/decoder/f;->f()V

    goto :goto_3

    .line 256
    :cond_5
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/decoder/f;->E_()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 257
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/g;->m:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/google/android/exoplayer2/decoder/g;->m:I

    .line 258
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/decoder/f;->f()V

    goto :goto_3

    .line 260
    :cond_6
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/g;->m:I

    iput v0, v3, Lcom/google/android/exoplayer2/decoder/f;->c:I

    .line 261
    iput v2, p0, Lcom/google/android/exoplayer2/decoder/g;->m:I

    .line 262
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/g;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 265
    :goto_3
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/decoder/g;->a(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 266
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

    .line 224
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method

.method protected abstract g()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation
.end method

.method protected abstract h()Lcom/google/android/exoplayer2/decoder/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation
.end method
