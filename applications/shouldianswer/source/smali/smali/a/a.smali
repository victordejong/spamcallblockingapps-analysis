.class public La/a;
.super La/t;
.source "AsyncTimeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a$a;
    }
.end annotation


# static fields
.field private static final a:J

.field static b:La/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static final d:J


# instance fields
.field private e:Z

.field private f:La/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, La/a;->a:J

    .line 51
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-wide v1, La/a;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, La/a;->d:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, La/t;-><init>()V

    return-void
.end method

.method private static declared-synchronized a(La/a;JZ)V
    .locals 5

    const-class v0, La/a;

    monitor-enter v0

    .line 86
    :try_start_0
    sget-object v1, La/a;->b:La/a;

    if-nez v1, :cond_0

    .line 87
    new-instance v1, La/a;

    invoke-direct {v1}, La/a;-><init>()V

    sput-object v1, La/a;->b:La/a;

    .line 88
    new-instance v1, La/a$a;

    invoke-direct {v1}, La/a$a;-><init>()V

    invoke-virtual {v1}, La/a$a;->start()V

    .line 91
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-eqz v3, :cond_1

    if-eqz p3, :cond_1

    .line 95
    invoke-virtual {p0}, La/a;->d()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    add-long/2addr p1, v1

    iput-wide p1, p0, La/a;->g:J

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    add-long/2addr p1, v1

    .line 97
    iput-wide p1, p0, La/a;->g:J

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_6

    .line 99
    invoke-virtual {p0}, La/a;->d()J

    move-result-wide p1

    iput-wide p1, p0, La/a;->g:J

    .line 105
    :goto_0
    invoke-direct {p0, v1, v2}, La/a;->b(J)J

    move-result-wide p1

    .line 106
    sget-object p3, La/a;->b:La/a;

    .line 107
    :goto_1
    iget-object v3, p3, La/a;->f:La/a;

    if-eqz v3, :cond_4

    iget-object v3, p3, La/a;->f:La/a;

    invoke-direct {v3, v1, v2}, La/a;->b(J)J

    move-result-wide v3

    cmp-long v3, p1, v3

    if-gez v3, :cond_3

    goto :goto_2

    .line 106
    :cond_3
    iget-object p3, p3, La/a;->f:La/a;

    goto :goto_1

    .line 108
    :cond_4
    :goto_2
    iget-object p1, p3, La/a;->f:La/a;

    iput-object p1, p0, La/a;->f:La/a;

    .line 109
    iput-object p0, p3, La/a;->f:La/a;

    .line 110
    sget-object p0, La/a;->b:La/a;

    if-ne p3, p0, :cond_5

    .line 111
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_5
    monitor-exit v0

    return-void

    .line 101
    :cond_6
    :try_start_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized a(La/a;)Z
    .locals 3

    const-class v0, La/a;

    monitor-enter v0

    .line 128
    :try_start_0
    sget-object v1, La/a;->b:La/a;

    :goto_0
    if-eqz v1, :cond_1

    .line 129
    iget-object v2, v1, La/a;->f:La/a;

    if-ne v2, p0, :cond_0

    .line 130
    iget-object v2, p0, La/a;->f:La/a;

    iput-object v2, v1, La/a;->f:La/a;

    const/4 v1, 0x0

    .line 131
    iput-object v1, p0, La/a;->f:La/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    .line 132
    monitor-exit v0

    return p0

    .line 128
    :cond_0
    :try_start_1
    iget-object v1, v1, La/a;->f:La/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    .line 137
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private b(J)J
    .locals 2

    .line 145
    iget-wide v0, p0, La/a;->g:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method static e()La/a;
    .locals 9
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 342
    const-class v0, La/a;

    sget-object v1, La/a;->b:La/a;

    iget-object v1, v1, La/a;->f:La/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 346
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 347
    sget-wide v5, La/a;->a:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 348
    sget-object v0, La/a;->b:La/a;

    iget-object v0, v0, La/a;->f:La/a;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v3

    sget-wide v3, La/a;->d:J

    cmp-long v0, v0, v3

    if-ltz v0, :cond_0

    .line 349
    sget-object v2, La/a;->b:La/a;

    :cond_0
    return-object v2

    .line 353
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, La/a;->b(J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_2

    const-wide/32 v5, 0xf4240

    .line 359
    div-long v7, v3, v5

    mul-long/2addr v5, v7

    sub-long/2addr v3, v5

    long-to-int v1, v3

    .line 361
    invoke-virtual {v0, v7, v8, v1}, Ljava/lang/Object;->wait(JI)V

    return-object v2

    .line 366
    :cond_2
    sget-object v0, La/a;->b:La/a;

    iget-object v3, v1, La/a;->f:La/a;

    iput-object v3, v0, La/a;->f:La/a;

    .line 367
    iput-object v2, v1, La/a;->f:La/a;

    return-object v1
.end method


# virtual methods
.method public final a(La/r;)La/r;
    .locals 1

    .line 160
    new-instance v0, La/a$1;

    invoke-direct {v0, p0, p1}, La/a$1;-><init>(La/a;La/r;)V

    return-object v0
.end method

.method public final a(La/s;)La/s;
    .locals 1

    .line 232
    new-instance v0, La/a$2;

    invoke-direct {v0, p0, p1}, La/a$2;-><init>(La/a;La/s;)V

    return-object v0
.end method

.method protected a(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .param p1    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 294
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 296
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method protected a()V
    .locals 0

    return-void
.end method

.method final a(Z)V
    .locals 1

    .line 274
    invoke-virtual {p0}, La/a;->o_()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 275
    invoke-virtual {p0, p1}, La/a;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method final b(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 1

    .line 284
    invoke-virtual {p0}, La/a;->o_()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 285
    :cond_0
    invoke-virtual {p0, p1}, La/a;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method public final c()V
    .locals 5

    .line 73
    iget-boolean v0, p0, La/a;->e:Z

    if-nez v0, :cond_1

    .line 74
    invoke-virtual {p0}, La/a;->p_()J

    move-result-wide v0

    .line 75
    invoke-virtual {p0}, La/a;->q_()Z

    move-result v2

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x1

    .line 79
    iput-boolean v3, p0, La/a;->e:Z

    .line 80
    invoke-static {p0, v0, v1, v2}, La/a;->a(La/a;JZ)V

    return-void

    .line 73
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unbalanced enter/exit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final o_()Z
    .locals 2

    .line 120
    iget-boolean v0, p0, La/a;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 121
    :cond_0
    iput-boolean v1, p0, La/a;->e:Z

    .line 122
    invoke-static {p0}, La/a;->a(La/a;)Z

    move-result v0

    return v0
.end method
