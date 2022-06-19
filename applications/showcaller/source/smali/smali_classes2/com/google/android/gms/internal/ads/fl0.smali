.class public final Lcom/google/android/gms/internal/ads/fl0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/qh;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/bi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/bi<",
            "Lcom/google/android/gms/internal/ads/qh;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/gms/internal/ads/qh;

.field private final e:Lcom/google/android/gms/internal/ads/el0;

.field private final f:Ljava/lang/String;

.field private final g:I

.field private final h:Z

.field private i:Ljava/io/InputStream;

.field private j:Z

.field private k:Landroid/net/Uri;

.field private volatile l:Lcom/google/android/gms/internal/ads/zzayn;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:J

.field private r:Lcom/google/android/gms/internal/ads/r03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/r03<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/qh;Ljava/lang/String;ILcom/google/android/gms/internal/ads/bi;Lcom/google/android/gms/internal/ads/el0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/qh;",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/android/gms/internal/ads/bi<",
            "Lcom/google/android/gms/internal/ads/qh;",
            ">;",
            "Lcom/google/android/gms/internal/ads/el0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fl0;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/fl0;->d:Lcom/google/android/gms/internal/ads/qh;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/fl0;->b:Lcom/google/android/gms/internal/ads/bi;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/fl0;->e:Lcom/google/android/gms/internal/ads/el0;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/fl0;->f:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/ads/fl0;->g:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/fl0;->m:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/fl0;->n:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/fl0;->o:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/fl0;->p:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/fl0;->q:J

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 p2, -0x1

    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fl0;->s:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fl0;->r:Lcom/google/android/gms/internal/ads/r03;

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/ads/kw;->l1:Lcom/google/android/gms/internal/ads/cw;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/fl0;->h:Z

    return-void
.end method

.method private final m(Lcom/google/android/gms/internal/ads/rh;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fl0;->b:Lcom/google/android/gms/internal/ads/bi;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/ads/rl0;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/rl0;->c0(Lcom/google/android/gms/internal/ads/qh;Lcom/google/android/gms/internal/ads/rh;)V

    :cond_0
    return-void
.end method

.method private final n()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/fl0;->h:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->L2:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/fl0;->o:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->M2:Lcom/google/android/gms/internal/ads/cw;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/fl0;->p:Z

    if-nez v0, :cond_3

    return v2

    :cond_3
    return v1
.end method


# virtual methods
.method public final b([BII)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/fl0;->j:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fl0;->i:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fl0;->d:Lcom/google/android/gms/internal/ads/qh;

    .line 4
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/qh;->b([BII)I

    move-result p1

    .line 5
    :goto_0
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/fl0;->h:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/fl0;->i:Ljava/io/InputStream;

    if-eqz p2, :cond_2

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/fl0;->b:Lcom/google/android/gms/internal/ads/bi;

    if-eqz p2, :cond_2

    check-cast p2, Lcom/google/android/gms/internal/ads/rl0;

    .line 6
    invoke-virtual {p2, p0, p1}, Lcom/google/android/gms/internal/ads/rl0;->d0(Lcom/google/android/gms/internal/ads/qh;I)V

    :cond_2
    return p1

    .line 7
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Attempt to read closed CacheDataSource."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fl0;->k:Landroid/net/Uri;

    return-object v0
.end method

.method public final d(Lcom/google/android/gms/internal/ads/rh;)J
    .locals 14

    const-string v0, "ms"

    const-string v1, "Cache connection took "

    .line 1
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/fl0;->j:Z

    if-nez v2, :cond_9

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/fl0;->j:Z

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/rh;->a:Landroid/net/Uri;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/fl0;->k:Landroid/net/Uri;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/fl0;->h:Z

    if-nez v3, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/fl0;->m(Lcom/google/android/gms/internal/ads/rh;)V

    :cond_0
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/rh;->a:Landroid/net/Uri;

    .line 3
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzayn;->k0(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzayn;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/fl0;->l:Lcom/google/android/gms/internal/ads/zzayn;

    .line 4
    sget-object v3, Lcom/google/android/gms/internal/ads/kw;->I2:Lcom/google/android/gms/internal/ads/cw;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v3

    .line 6
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/fl0;->l:Lcom/google/android/gms/internal/ads/zzayn;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/fl0;->l:Lcom/google/android/gms/internal/ads/zzayn;

    iget-wide v7, p1, Lcom/google/android/gms/internal/ads/rh;->c:J

    .line 7
    iput-wide v7, v3, Lcom/google/android/gms/internal/ads/zzayn;->k:J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/fl0;->l:Lcom/google/android/gms/internal/ads/zzayn;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/fl0;->f:Ljava/lang/String;

    .line 8
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/iv2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/google/android/gms/internal/ads/zzayn;->l:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/fl0;->l:Lcom/google/android/gms/internal/ads/zzayn;

    iget v7, p0, Lcom/google/android/gms/internal/ads/fl0;->g:I

    .line 9
    iput v7, v3, Lcom/google/android/gms/internal/ads/zzayn;->m:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/fl0;->l:Lcom/google/android/gms/internal/ads/zzayn;

    .line 10
    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzayn;->j:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/google/android/gms/internal/ads/kw;->K2:Lcom/google/android/gms/internal/ads/cw;

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v3

    .line 12
    check-cast v3, Ljava/lang/Long;

    goto :goto_0

    .line 13
    :cond_1
    sget-object v3, Lcom/google/android/gms/internal/ads/kw;->J2:Lcom/google/android/gms/internal/ads/cw;

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v3

    .line 15
    check-cast v3, Ljava/lang/Long;

    .line 16
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->k()Lcom/google/android/gms/common/util/e;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v9

    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->x()Lcom/google/android/gms/internal/ads/lm;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/fl0;->c:Landroid/content/Context;

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/fl0;->l:Lcom/google/android/gms/internal/ads/zzayn;

    invoke-static {v3, v11}, Lcom/google/android/gms/internal/ads/lm;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzayn;)Ljava/util/concurrent/Future;

    move-result-object v3

    const/16 v11, 0x2c

    :try_start_0
    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 19
    invoke-interface {v3, v7, v8, v12}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/mm;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    :try_start_1
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/mm;->c()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/android/gms/internal/ads/fl0;->m:Z

    .line 21
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/mm;->d()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/android/gms/internal/ads/fl0;->o:Z

    .line 22
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/mm;->f()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/android/gms/internal/ads/fl0;->p:Z

    .line 23
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/mm;->e()J

    move-result-wide v12

    iput-wide v12, p0, Lcom/google/android/gms/internal/ads/fl0;->q:J

    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/fl0;->n()Z

    move-result v8

    if-nez v8, :cond_3

    .line 25
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/mm;->b()Ljava/io/InputStream;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/gms/internal/ads/fl0;->i:Ljava/io/InputStream;

    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/fl0;->h:Z

    if-eqz v7, :cond_2

    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/fl0;->m(Lcom/google/android/gms/internal/ads/rh;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->k()Lcom/google/android/gms/common/util/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v6

    sub-long/2addr v6, v9

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/fl0;->e:Lcom/google/android/gms/internal/ads/el0;

    .line 28
    invoke-interface {p1, v2, v6, v7}, Lcom/google/android/gms/internal/ads/el0;->c(ZJ)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/fl0;->n:Z

    new-instance p1, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {p1, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/o1;->k(Ljava/lang/String;)V

    return-wide v4

    .line 30
    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->k()Lcom/google/android/gms/common/util/e;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v3

    sub-long/2addr v3, v9

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/fl0;->e:Lcom/google/android/gms/internal/ads/el0;

    .line 31
    invoke-interface {v5, v2, v3, v4}, Lcom/google/android/gms/internal/ads/el0;->c(ZJ)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/fl0;->n:Z

    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    const/4 v4, 0x1

    goto :goto_1

    :catch_1
    const/4 v4, 0x1

    goto :goto_2

    :catchall_1
    move-exception p1

    const/4 v2, 0x0

    goto :goto_5

    :catch_2
    const/4 v4, 0x0

    .line 33
    :goto_1
    :try_start_2
    invoke-interface {v3, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 35
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->k()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v2

    sub-long/2addr v2, v9

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/fl0;->e:Lcom/google/android/gms/internal/ads/el0;

    .line 36
    invoke-interface {v5, v4, v2, v3}, Lcom/google/android/gms/internal/ads/el0;->c(ZJ)V

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/fl0;->n:Z

    new-instance v4, Ljava/lang/StringBuilder;

    .line 37
    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_3

    :catch_3
    const/4 v4, 0x0

    .line 38
    :goto_2
    :try_start_3
    invoke-interface {v3, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 39
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->k()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v2

    sub-long/2addr v2, v9

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/fl0;->e:Lcom/google/android/gms/internal/ads/el0;

    .line 40
    invoke-interface {v5, v4, v2, v3}, Lcom/google/android/gms/internal/ads/el0;->c(ZJ)V

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/fl0;->n:Z

    new-instance v4, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/o1;->k(Ljava/lang/String;)V

    goto/16 :goto_7

    :catchall_2
    move-exception p1

    move v2, v4

    .line 42
    :goto_5
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->k()Lcom/google/android/gms/common/util/e;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v3

    sub-long/2addr v3, v9

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/fl0;->e:Lcom/google/android/gms/internal/ads/el0;

    .line 43
    invoke-interface {v5, v2, v3, v4}, Lcom/google/android/gms/internal/ads/el0;->c(ZJ)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/fl0;->n:Z

    new-instance v2, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/o1;->k(Ljava/lang/String;)V

    .line 45
    throw p1

    .line 46
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fl0;->l:Lcom/google/android/gms/internal/ads/zzayn;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fl0;->l:Lcom/google/android/gms/internal/ads/zzayn;

    iget-wide v7, p1, Lcom/google/android/gms/internal/ads/rh;->c:J

    .line 47
    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzayn;->k:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fl0;->l:Lcom/google/android/gms/internal/ads/zzayn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fl0;->f:Ljava/lang/String;

    .line 48
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/iv2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzayn;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fl0;->l:Lcom/google/android/gms/internal/ads/zzayn;

    iget v1, p0, Lcom/google/android/gms/internal/ads/fl0;->g:I

    .line 49
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzayn;->m:I

    .line 50
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->j()Lcom/google/android/gms/internal/ads/yl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fl0;->l:Lcom/google/android/gms/internal/ads/zzayn;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yl;->f(Lcom/google/android/gms/internal/ads/zzayn;)Lcom/google/android/gms/internal/ads/zzayk;

    move-result-object v0

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayk;->zza()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayk;->m0()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/fl0;->m:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayk;->p0()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/fl0;->o:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayk;->n0()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/fl0;->p:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayk;->o0()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gms/internal/ads/fl0;->q:J

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/fl0;->n:Z

    .line 51
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/fl0;->n()Z

    move-result v1

    if-nez v1, :cond_7

    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayk;->k0()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fl0;->i:Ljava/io/InputStream;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/fl0;->h:Z

    if-eqz v0, :cond_6

    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/fl0;->m(Lcom/google/android/gms/internal/ads/rh;)V

    :cond_6
    return-wide v4

    .line 54
    :cond_7
    :goto_7
    iput-boolean v6, p0, Lcom/google/android/gms/internal/ads/fl0;->n:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fl0;->l:Lcom/google/android/gms/internal/ads/zzayn;

    if-eqz v0, :cond_8

    new-instance v0, Lcom/google/android/gms/internal/ads/rh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fl0;->l:Lcom/google/android/gms/internal/ads/zzayn;

    .line 55
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzayn;->d:Ljava/lang/String;

    .line 56
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/rh;->b:J

    iget-wide v6, p1, Lcom/google/android/gms/internal/ads/rh;->c:J

    iget-wide v8, p1, Lcom/google/android/gms/internal/ads/rh;->d:J

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/rh;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    move-object p1, v0

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fl0;->d:Lcom/google/android/gms/internal/ads/qh;

    .line 57
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/qh;->d(Lcom/google/android/gms/internal/ads/rh;)J

    move-result-wide v0

    return-wide v0

    .line 58
    :cond_9
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Attempt to open an already open CacheDataSource."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/fl0;->j:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/fl0;->j:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fl0;->k:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fl0;->i:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/common/util/k;->a(Ljava/io/Closeable;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fl0;->i:Ljava/io/InputStream;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fl0;->d:Lcom/google/android/gms/internal/ads/qh;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qh;->e()V

    return-void

    .line 4
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempt to close an already closed CacheDataSource."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/fl0;->m:Z

    return v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/fl0;->n:Z

    return v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/fl0;->o:Z

    return v0
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/fl0;->p:Z

    return v0
.end method

.method public final j()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/fl0;->q:J

    return-wide v0
.end method

.method public final k()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fl0;->l:Lcom/google/android/gms/internal/ads/zzayn;

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fl0;->s:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fl0;->s:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fl0;->r:Lcom/google/android/gms/internal/ads/r03;

    if-nez v0, :cond_2

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/qi0;->a:Lcom/google/android/gms/internal/ads/s03;

    new-instance v3, Lcom/google/android/gms/internal/ads/dl0;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/dl0;-><init>(Lcom/google/android/gms/internal/ads/fl0;)V

    .line 4
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/s03;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fl0;->r:Lcom/google/android/gms/internal/ads/r03;

    .line 5
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fl0;->r:Lcom/google/android/gms/internal/ads/r03;

    .line 6
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_3

    return-wide v1

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fl0;->s:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/fl0;->r:Lcom/google/android/gms/internal/ads/r03;

    .line 7
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fl0;->s:Ljava/util/concurrent/atomic/AtomicLong;

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0

    :catch_0
    return-wide v1

    :catchall_0
    move-exception v0

    .line 9
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method final synthetic l()Ljava/lang/Long;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->j()Lcom/google/android/gms/internal/ads/yl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fl0;->l:Lcom/google/android/gms/internal/ads/zzayn;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yl;->g(Lcom/google/android/gms/internal/ads/zzayn;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
