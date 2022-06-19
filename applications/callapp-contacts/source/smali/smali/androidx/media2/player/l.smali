.class final Landroidx/media2/player/l;
.super Landroidx/media2/exoplayer/external/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/player/l$a;,
        Landroidx/media2/player/l$b;
    }
.end annotation


# instance fields
.field final a:Landroidx/media2/player/l$b;

.field private final b:Landroid/os/Handler;

.field private final c:Landroidx/media2/exoplayer/external/util/p;

.field private final d:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Long;",
            "[B>;"
        }
    .end annotation
.end field

.field private final e:Landroidx/media2/exoplayer/external/x;

.field private final f:Landroidx/media2/exoplayer/external/text/g;

.field private final g:Landroidx/media2/player/l$a;

.field private final h:Landroidx/media2/player/l$a;

.field private final i:[I

.field private final j:Landroidx/media2/exoplayer/external/util/p;

.field private k:Z

.field private l:Z

.field private m:[Z

.field private n:I

.field private o:I


# direct methods
.method constructor <init>(Landroidx/media2/player/l$b;)V
    .locals 1

    const/4 v0, 0x3

    .line 97
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/b;-><init>(I)V

    .line 98
    iput-object p1, p0, Landroidx/media2/player/l;->a:Landroidx/media2/player/l$b;

    .line 99
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/media2/player/l;->b:Landroid/os/Handler;

    .line 100
    new-instance p1, Landroidx/media2/exoplayer/external/util/p;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/util/p;-><init>()V

    iput-object p1, p0, Landroidx/media2/player/l;->c:Landroidx/media2/exoplayer/external/util/p;

    .line 101
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Landroidx/media2/player/l;->d:Ljava/util/SortedMap;

    .line 102
    new-instance p1, Landroidx/media2/exoplayer/external/x;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/x;-><init>()V

    iput-object p1, p0, Landroidx/media2/player/l;->e:Landroidx/media2/exoplayer/external/x;

    .line 103
    new-instance p1, Landroidx/media2/exoplayer/external/text/g;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/text/g;-><init>()V

    iput-object p1, p0, Landroidx/media2/player/l;->f:Landroidx/media2/exoplayer/external/text/g;

    .line 104
    new-instance p1, Landroidx/media2/player/l$a;

    invoke-direct {p1}, Landroidx/media2/player/l$a;-><init>()V

    iput-object p1, p0, Landroidx/media2/player/l;->g:Landroidx/media2/player/l$a;

    .line 105
    new-instance p1, Landroidx/media2/player/l$a;

    invoke-direct {p1}, Landroidx/media2/player/l$a;-><init>()V

    iput-object p1, p0, Landroidx/media2/player/l;->h:Landroidx/media2/player/l$a;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 106
    iput-object p1, p0, Landroidx/media2/player/l;->i:[I

    .line 107
    new-instance p1, Landroidx/media2/exoplayer/external/util/p;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/util/p;-><init>()V

    iput-object p1, p0, Landroidx/media2/player/l;->j:Landroidx/media2/exoplayer/external/util/p;

    const/4 p1, -0x1

    .line 108
    iput p1, p0, Landroidx/media2/player/l;->n:I

    .line 109
    iput p1, p0, Landroidx/media2/player/l;->o:I

    return-void
.end method

.method private A()V
    .locals 2

    .line 239
    iget-object v0, p0, Landroidx/media2/player/l;->d:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->clear()V

    .line 240
    iget-object v0, p0, Landroidx/media2/player/l;->g:Landroidx/media2/player/l$a;

    const/4 v1, 0x0

    .line 4357
    iput v1, v0, Landroidx/media2/player/l$a;->b:I

    .line 241
    iget-object v0, p0, Landroidx/media2/player/l;->h:Landroidx/media2/player/l$a;

    .line 5357
    iput v1, v0, Landroidx/media2/player/l$a;->b:I

    .line 242
    iput-boolean v1, p0, Landroidx/media2/player/l;->l:Z

    .line 243
    iput-boolean v1, p0, Landroidx/media2/player/l;->k:Z

    return-void
.end method

.method private a(Landroidx/media2/player/l$a;J)V
    .locals 5

    .line 260
    iget-object v0, p0, Landroidx/media2/player/l;->j:Landroidx/media2/exoplayer/external/util/p;

    iget-object v1, p1, Landroidx/media2/player/l$a;->a:[B

    iget v2, p1, Landroidx/media2/player/l$a;->b:I

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/util/p;->a([BI)V

    const/4 v0, 0x0

    .line 6357
    iput v0, p1, Landroidx/media2/player/l$a;->b:I

    .line 262
    iget-object p1, p0, Landroidx/media2/player/l;->j:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result p1

    and-int/lit8 p1, p1, 0x1f

    if-nez p1, :cond_0

    const/16 p1, 0x40

    .line 266
    :cond_0
    iget-object v1, p0, Landroidx/media2/player/l;->j:Landroidx/media2/exoplayer/external/util/p;

    .line 7125
    iget v1, v1, Landroidx/media2/exoplayer/external/util/p;->c:I

    const/4 v2, 0x2

    mul-int/lit8 p1, p1, 0x2

    if-eq v1, p1, :cond_1

    return-void

    .line 269
    :cond_1
    :goto_0
    iget-object p1, p0, Landroidx/media2/player/l;->j:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result p1

    if-lt p1, v2, :cond_5

    .line 270
    iget-object p1, p0, Landroidx/media2/player/l;->j:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result p1

    and-int/lit16 v1, p1, 0xe0

    shr-int/lit8 v1, v1, 0x5

    and-int/lit8 p1, p1, 0x1f

    const/4 v3, 0x7

    if-ne v1, v3, :cond_2

    .line 274
    iget-object v1, p0, Landroidx/media2/player/l;->j:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v1

    and-int/lit8 v1, v1, 0x3f

    if-ge v1, v3, :cond_2

    return-void

    .line 279
    :cond_2
    iget-object v3, p0, Landroidx/media2/player/l;->j:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v3

    if-ge v3, p1, :cond_3

    return-void

    :cond_3
    if-lez p1, :cond_1

    const/4 v3, 0x1

    .line 283
    invoke-direct {p0, v3, v1}, Landroidx/media2/player/l;->b(II)V

    .line 284
    iget v4, p0, Landroidx/media2/player/l;->n:I

    if-ne v4, v3, :cond_4

    iget v3, p0, Landroidx/media2/player/l;->o:I

    if-ne v3, v1, :cond_4

    .line 285
    new-array v1, p1, [B

    .line 286
    iget-object v3, p0, Landroidx/media2/player/l;->j:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v3, v1, v0, p1}, Landroidx/media2/exoplayer/external/util/p;->a([BII)V

    .line 287
    iget-object p1, p0, Landroidx/media2/player/l;->d:Ljava/util/SortedMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v3, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 290
    :cond_4
    iget-object v1, p0, Landroidx/media2/player/l;->j:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v1, p1}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method private b(II)V
    .locals 3

    shl-int/lit8 v0, p1, 0x6

    add-int/2addr v0, p2

    .line 248
    iget-object v1, p0, Landroidx/media2/player/l;->m:[Z

    aget-boolean v2, v1, v0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 249
    aput-boolean v2, v1, v0

    .line 250
    iget-object v0, p0, Landroidx/media2/player/l;->b:Landroid/os/Handler;

    new-instance v1, Landroidx/media2/player/l$1;

    invoke-direct {v1, p0, p1, p2}, Landroidx/media2/player/l$1;-><init>(Landroidx/media2/player/l;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/Format;)I
    .locals 1

    .line 116
    iget-object p1, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    const-string v0, "application/cea-608"

    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/cea-708"

    .line 118
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "text/vtt"

    .line 119
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x4

    return p1
.end method

.method public final declared-synchronized a(II)V
    .locals 0

    monitor-enter p0

    .line 231
    :try_start_0
    iput p1, p0, Landroidx/media2/player/l;->n:I

    .line 232
    iput p2, p0, Landroidx/media2/player/l;->o:I

    .line 233
    invoke-direct {p0}, Landroidx/media2/player/l;->A()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(JJ)V
    .locals 6

    monitor-enter p0

    .line 139
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/player/l;->i_()I

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p4, 0x2

    if-eq p3, p4, :cond_0

    .line 140
    monitor-exit p0

    return-void

    .line 1301
    :cond_0
    :try_start_1
    iget p3, p0, Landroidx/media2/player/l;->n:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p3, v0, :cond_3

    iget p3, p0, Landroidx/media2/player/l;->o:I

    if-ne p3, v0, :cond_1

    goto :goto_1

    :cond_1
    new-array p3, v1, [B

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 1307
    :goto_0
    iget-object v0, p0, Landroidx/media2/player/l;->d:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1308
    iget-object v0, p0, Landroidx/media2/player/l;->d:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, p1, v4

    if-ltz v0, :cond_2

    .line 1312
    iget-object v0, p0, Landroidx/media2/player/l;->d:Ljava/util/SortedMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Landroidx/core/e/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1314
    array-length v2, p3

    .line 1315
    array-length v3, v0

    add-int/2addr v3, v2

    invoke-static {p3, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p3

    .line 1316
    array-length v3, v0

    invoke-static {v0, v1, p3, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1317
    iget-object v0, p0, Landroidx/media2/player/l;->d:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-wide v2, v4

    goto :goto_0

    .line 1319
    :cond_2
    array-length v0, p3

    if-lez v0, :cond_3

    .line 1320
    iget-object v0, p0, Landroidx/media2/player/l;->a:Landroidx/media2/player/l$b;

    invoke-interface {v0, p3, v2, v3}, Landroidx/media2/player/l$b;->a([BJ)V

    .line 147
    :cond_3
    :goto_1
    iget-boolean p3, p0, Landroidx/media2/player/l;->k:Z

    const/4 v0, 0x1

    if-nez p3, :cond_7

    .line 149
    iget-object p3, p0, Landroidx/media2/player/l;->f:Landroidx/media2/exoplayer/external/text/g;

    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/text/g;->a()V

    .line 150
    iget-object p3, p0, Landroidx/media2/player/l;->e:Landroidx/media2/exoplayer/external/x;

    iget-object v2, p0, Landroidx/media2/player/l;->f:Landroidx/media2/exoplayer/external/text/g;

    invoke-virtual {p0, p3, v2, v1}, Landroidx/media2/player/l;->a(Landroidx/media2/exoplayer/external/x;Landroidx/media2/exoplayer/external/b/e;Z)I

    move-result p3

    const/4 v2, -0x3

    if-eq p3, v2, :cond_6

    const/4 v2, -0x5

    if-ne p3, v2, :cond_4

    goto :goto_2

    .line 154
    :cond_4
    iget-object p3, p0, Landroidx/media2/player/l;->f:Landroidx/media2/exoplayer/external/text/g;

    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/text/g;->c()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 155
    iput-boolean v0, p0, Landroidx/media2/player/l;->l:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    .line 158
    :cond_5
    :try_start_2
    iput-boolean v0, p0, Landroidx/media2/player/l;->k:Z

    .line 159
    iget-object p3, p0, Landroidx/media2/player/l;->f:Landroidx/media2/exoplayer/external/text/g;

    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/text/g;->h()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 152
    :cond_6
    :goto_2
    monitor-exit p0

    return-void

    .line 161
    :cond_7
    :goto_3
    :try_start_3
    iget-object p3, p0, Landroidx/media2/player/l;->f:Landroidx/media2/exoplayer/external/text/g;

    iget-wide v2, p3, Landroidx/media2/exoplayer/external/text/g;->d:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-long/2addr v2, p1

    const-wide/32 p1, 0x1adb0

    cmp-long p3, v2, p1

    if-lez p3, :cond_8

    .line 163
    monitor-exit p0

    return-void

    .line 165
    :cond_8
    :try_start_4
    iput-boolean v1, p0, Landroidx/media2/player/l;->k:Z

    .line 166
    iget-object p1, p0, Landroidx/media2/player/l;->c:Landroidx/media2/exoplayer/external/util/p;

    iget-object p2, p0, Landroidx/media2/player/l;->f:Landroidx/media2/exoplayer/external/text/g;

    iget-object p2, p2, Landroidx/media2/exoplayer/external/text/g;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    iget-object p3, p0, Landroidx/media2/player/l;->f:Landroidx/media2/exoplayer/external/text/g;

    iget-object p3, p3, Landroidx/media2/exoplayer/external/text/g;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroidx/media2/exoplayer/external/util/p;->a([BI)V

    .line 167
    iget-object p1, p0, Landroidx/media2/player/l;->g:Landroidx/media2/player/l$a;

    .line 1357
    iput v1, p1, Landroidx/media2/player/l$a;->b:I

    .line 168
    :cond_9
    :goto_4
    iget-object p1, p0, Landroidx/media2/player/l;->c:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result p1

    const/4 p2, 0x3

    if-lt p1, p2, :cond_16

    .line 169
    iget-object p1, p0, Landroidx/media2/player/l;->c:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result p1

    int-to-byte p1, p1

    .line 170
    iget-object p3, p0, Landroidx/media2/player/l;->c:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result p3

    int-to-byte p3, p3

    .line 171
    iget-object v2, p0, Landroidx/media2/player/l;->c:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v2

    int-to-byte v2, v2

    and-int/lit8 v3, p1, 0x4

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    and-int/lit8 v4, p1, 0x3

    if-eqz v3, :cond_14

    if-ne v4, p2, :cond_c

    .line 177
    iget-object p1, p0, Landroidx/media2/player/l;->h:Landroidx/media2/player/l$a;

    invoke-virtual {p1}, Landroidx/media2/player/l$a;->a()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 178
    iget-object p1, p0, Landroidx/media2/player/l;->h:Landroidx/media2/player/l$a;

    iget-object p2, p0, Landroidx/media2/player/l;->f:Landroidx/media2/exoplayer/external/text/g;

    iget-wide v3, p2, Landroidx/media2/exoplayer/external/text/g;->d:J

    invoke-direct {p0, p1, v3, v4}, Landroidx/media2/player/l;->a(Landroidx/media2/player/l$a;J)V

    .line 180
    :cond_b
    iget-object p1, p0, Landroidx/media2/player/l;->h:Landroidx/media2/player/l$a;

    invoke-virtual {p1, p3, v2}, Landroidx/media2/player/l$a;->a(BB)V

    goto :goto_4

    .line 181
    :cond_c
    iget-object v3, p0, Landroidx/media2/player/l;->h:Landroidx/media2/player/l$a;

    iget v3, v3, Landroidx/media2/player/l$a;->b:I

    if-lez v3, :cond_d

    if-ne v4, p4, :cond_d

    .line 182
    iget-object p1, p0, Landroidx/media2/player/l;->h:Landroidx/media2/player/l$a;

    invoke-virtual {p1, p3, v2}, Landroidx/media2/player/l$a;->a(BB)V

    goto :goto_4

    :cond_d
    if-eqz v4, :cond_e

    if-ne v4, v0, :cond_9

    :cond_e
    and-int/lit8 p3, p3, 0x7f

    int-to-byte p3, p3

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    const/16 v3, 0x10

    if-ge p3, v3, :cond_f

    if-lt v2, v3, :cond_9

    :cond_f
    if-lt p3, v3, :cond_12

    const/16 v3, 0x1f

    if-gt p3, v3, :cond_12

    const/16 v3, 0x18

    if-lt p3, v3, :cond_10

    const/4 v3, 0x1

    goto :goto_6

    :cond_10
    const/4 v3, 0x0

    :goto_6
    if-eqz p1, :cond_11

    const/4 p1, 0x2

    goto :goto_7

    :cond_11
    const/4 p1, 0x0

    :goto_7
    add-int/2addr v3, p1

    .line 192
    iget-object p1, p0, Landroidx/media2/player/l;->i:[I

    aput v3, p1, v4

    .line 193
    invoke-direct {p0, v1, v3}, Landroidx/media2/player/l;->b(II)V

    .line 195
    :cond_12
    iget p1, p0, Landroidx/media2/player/l;->n:I

    if-nez p1, :cond_9

    iget p1, p0, Landroidx/media2/player/l;->o:I

    iget-object v3, p0, Landroidx/media2/player/l;->i:[I

    aget v3, v3, v4

    if-ne p1, v3, :cond_9

    .line 197
    iget-object p1, p0, Landroidx/media2/player/l;->g:Landroidx/media2/player/l$a;

    int-to-byte v3, v4

    .line 2344
    iget v4, p1, Landroidx/media2/player/l$a;->b:I

    add-int/2addr v4, p2

    iget-object p2, p1, Landroidx/media2/player/l$a;->a:[B

    array-length p2, p2

    if-le v4, p2, :cond_13

    .line 2345
    iget-object p2, p1, Landroidx/media2/player/l$a;->a:[B

    iget-object v4, p1, Landroidx/media2/player/l$a;->a:[B

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    invoke-static {p2, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    iput-object p2, p1, Landroidx/media2/player/l$a;->a:[B

    .line 2347
    :cond_13
    iget-object p2, p1, Landroidx/media2/player/l$a;->a:[B

    iget v4, p1, Landroidx/media2/player/l$a;->b:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p1, Landroidx/media2/player/l$a;->b:I

    aput-byte v3, p2, v4

    .line 2348
    iget-object p2, p1, Landroidx/media2/player/l$a;->a:[B

    iget v3, p1, Landroidx/media2/player/l$a;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p1, Landroidx/media2/player/l$a;->b:I

    aput-byte p3, p2, v3

    .line 2349
    iget-object p2, p1, Landroidx/media2/player/l$a;->a:[B

    iget p3, p1, Landroidx/media2/player/l$a;->b:I

    add-int/lit8 v3, p3, 0x1

    iput v3, p1, Landroidx/media2/player/l$a;->b:I

    aput-byte v2, p2, p3

    goto/16 :goto_4

    :cond_14
    if-eq v4, p2, :cond_15

    if-ne v4, p4, :cond_9

    .line 200
    :cond_15
    iget-object p1, p0, Landroidx/media2/player/l;->h:Landroidx/media2/player/l$a;

    invoke-virtual {p1}, Landroidx/media2/player/l$a;->a()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 201
    iget-object p1, p0, Landroidx/media2/player/l;->h:Landroidx/media2/player/l$a;

    iget-object p2, p0, Landroidx/media2/player/l;->f:Landroidx/media2/exoplayer/external/text/g;

    iget-wide p2, p2, Landroidx/media2/exoplayer/external/text/g;->d:J

    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/player/l;->a(Landroidx/media2/player/l$a;J)V

    goto/16 :goto_4

    .line 205
    :cond_16
    iget p1, p0, Landroidx/media2/player/l;->n:I

    if-nez p1, :cond_17

    iget-object p1, p0, Landroidx/media2/player/l;->g:Landroidx/media2/player/l$a;

    invoke-virtual {p1}, Landroidx/media2/player/l$a;->a()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 206
    iget-object p1, p0, Landroidx/media2/player/l;->g:Landroidx/media2/player/l$a;

    iget-object p2, p0, Landroidx/media2/player/l;->f:Landroidx/media2/exoplayer/external/text/g;

    iget-wide p2, p2, Landroidx/media2/exoplayer/external/text/g;->d:J

    .line 3296
    iget-object p4, p0, Landroidx/media2/player/l;->d:Ljava/util/SortedMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object p3, p1, Landroidx/media2/player/l$a;->a:[B

    iget v0, p1, Landroidx/media2/player/l$a;->b:I

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p3

    invoke-interface {p4, p2, p3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3357
    iput v1, p1, Landroidx/media2/player/l$a;->b:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 208
    :cond_17
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(JZ)V
    .locals 0

    monitor-enter p0

    .line 134
    :try_start_0
    invoke-direct {p0}, Landroidx/media2/player/l;->A()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a([Landroidx/media2/exoplayer/external/Format;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 128
    invoke-super {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/b;->a([Landroidx/media2/exoplayer/external/Format;J)V

    const/16 p1, 0x80

    new-array p1, p1, [Z

    .line 129
    iput-object p1, p0, Landroidx/media2/player/l;->m:[Z

    return-void
.end method

.method public final x()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final y()Z
    .locals 1

    .line 212
    iget-boolean v0, p0, Landroidx/media2/player/l;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media2/player/l;->d:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized z()V
    .locals 1

    monitor-enter p0

    const/4 v0, -0x1

    .line 226
    :try_start_0
    invoke-virtual {p0, v0, v0}, Landroidx/media2/player/l;->a(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
