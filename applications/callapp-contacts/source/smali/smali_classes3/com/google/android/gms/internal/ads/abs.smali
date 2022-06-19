.class public final Lcom/google/android/gms/internal/ads/abs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ecb;


# instance fields
.field volatile a:Lcom/google/android/gms/internal/ads/zzti;

.field b:Z

.field c:Z

.field d:Z

.field e:Z

.field f:J

.field private final g:Lcom/google/android/gms/internal/ads/ecp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ecp<",
            "Lcom/google/android/gms/internal/ads/ecb;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroid/content/Context;

.field private final i:Lcom/google/android/gms/internal/ads/ecb;

.field private final j:Lcom/google/android/gms/internal/ads/abu;

.field private final k:Ljava/lang/String;

.field private final l:I

.field private final m:Z

.field private n:Ljava/io/InputStream;

.field private o:Z

.field private p:Landroid/net/Uri;

.field private q:Lcom/google/android/gms/internal/ads/dbt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ecb;Ljava/lang/String;ILcom/google/android/gms/internal/ads/ecp;Lcom/google/android/gms/internal/ads/abu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/ecb;",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/android/gms/internal/ads/ecp<",
            "Lcom/google/android/gms/internal/ads/ecb;",
            ">;",
            "Lcom/google/android/gms/internal/ads/abu;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/abs;->h:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/abs;->i:Lcom/google/android/gms/internal/ads/ecb;

    .line 4
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/abs;->g:Lcom/google/android/gms/internal/ads/ecp;

    .line 5
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/abs;->j:Lcom/google/android/gms/internal/ads/abu;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/abs;->k:Ljava/lang/String;

    .line 7
    iput p4, p0, Lcom/google/android/gms/internal/ads/abs;->l:I

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/abs;->b:Z

    .line 9
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/abs;->c:Z

    .line 10
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/abs;->d:Z

    .line 11
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/abs;->e:Z

    const-wide/16 p1, 0x0

    .line 12
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/abs;->f:J

    .line 13
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 p2, -0x1

    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/abs;->r:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/abs;->q:Lcom/google/android/gms/internal/ads/dbt;

    .line 15
    sget-object p1, Lcom/google/android/gms/internal/ads/aq;->bl:Lcom/google/android/gms/internal/ads/af;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/abs;->m:Z

    return-void
.end method

.method private final d()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abs;->g:Lcom/google/android/gms/internal/ads/ecp;

    if-eqz v0, :cond_0

    .line 159
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/ecp;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final e()Z
    .locals 4

    .line 161
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/abs;->m:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 163
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->cr:Lcom/google/android/gms/internal/ads/af;

    .line 164
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 165
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/abs;->d:Z

    if-nez v0, :cond_1

    return v2

    .line 167
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->cs:Lcom/google/android/gms/internal/ads/af;

    .line 168
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 169
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/abs;->e:Z

    if-nez v0, :cond_2

    return v2

    :cond_2
    return v1
.end method


# virtual methods
.method public final a([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/abs;->o:Z

    if-eqz v0, :cond_3

    .line 128
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abs;->n:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abs;->i:Lcom/google/android/gms/internal/ads/ecb;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/ecb;->a([BII)I

    move-result p1

    .line 131
    :goto_0
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/abs;->m:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/abs;->n:Ljava/io/InputStream;

    if-eqz p2, :cond_2

    .line 133
    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/abs;->g:Lcom/google/android/gms/internal/ads/ecp;

    if-eqz p2, :cond_2

    .line 134
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/ecp;->c(I)V

    :cond_2
    return p1

    .line 127
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Attempt to read closed CacheDataSource."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/ecf;)J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ms"

    const-string v1, "Cache connection took "

    .line 33
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/abs;->o:Z

    if-nez v2, :cond_9

    const/4 v2, 0x1

    .line 35
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/abs;->o:Z

    .line 36
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/ecf;->a:Landroid/net/Uri;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/abs;->p:Landroid/net/Uri;

    .line 37
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/abs;->m:Z

    if-nez v3, :cond_0

    .line 38
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/abs;->d()V

    .line 39
    :cond_0
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/ecf;->a:Landroid/net/Uri;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzti;->zzd(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzti;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/abs;->a:Lcom/google/android/gms/internal/ads/zzti;

    .line 40
    sget-object v3, Lcom/google/android/gms/internal/ads/aq;->co:Lcom/google/android/gms/internal/ads/af;

    .line 41
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v3

    .line 42
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_4

    .line 43
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/abs;->a:Lcom/google/android/gms/internal/ads/zzti;

    if-eqz v3, :cond_7

    .line 44
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/abs;->a:Lcom/google/android/gms/internal/ads/zzti;

    iget-wide v7, p1, Lcom/google/android/gms/internal/ads/ecf;->d:J

    iput-wide v7, v3, Lcom/google/android/gms/internal/ads/zzti;->zzbwd:J

    .line 45
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/abs;->a:Lcom/google/android/gms/internal/ads/zzti;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/abs;->k:Ljava/lang/String;

    .line 1001
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/cyc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 45
    iput-object v7, v3, Lcom/google/android/gms/internal/ads/zzti;->zzbwe:Ljava/lang/String;

    .line 46
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/abs;->a:Lcom/google/android/gms/internal/ads/zzti;

    iget v7, p0, Lcom/google/android/gms/internal/ads/abs;->l:I

    iput v7, v3, Lcom/google/android/gms/internal/ads/zzti;->zzbwf:I

    .line 47
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/abs;->a:Lcom/google/android/gms/internal/ads/zzti;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzti;->zzbwc:Z

    if-eqz v3, :cond_1

    .line 48
    sget-object v3, Lcom/google/android/gms/internal/ads/aq;->cq:Lcom/google/android/gms/internal/ads/af;

    .line 49
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v3

    .line 50
    check-cast v3, Ljava/lang/Long;

    goto :goto_0

    .line 51
    :cond_1
    sget-object v3, Lcom/google/android/gms/internal/ads/aq;->cp:Lcom/google/android/gms/internal/ads/af;

    .line 52
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v3

    .line 53
    check-cast v3, Ljava/lang/Long;

    .line 54
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 55
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v9

    .line 56
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlp()Lcom/google/android/gms/internal/ads/ehi;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/abs;->h:Landroid/content/Context;

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/abs;->a:Lcom/google/android/gms/internal/ads/zzti;

    .line 1002
    new-instance v12, Lcom/google/android/gms/internal/ads/egz;

    invoke-direct {v12, v3}, Lcom/google/android/gms/internal/ads/egz;-><init>(Landroid/content/Context;)V

    .line 1003
    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/ads/egz;->a(Lcom/google/android/gms/internal/ads/zzti;)Ljava/util/concurrent/Future;

    move-result-object v3

    const/16 v11, 0x2c

    .line 58
    :try_start_0
    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v7, v8, v12}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/ehh;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1010
    :try_start_1
    iget-boolean v8, v7, Lcom/google/android/gms/internal/ads/ehh;->b:Z

    .line 60
    iput-boolean v8, p0, Lcom/google/android/gms/internal/ads/abs;->b:Z

    .line 1011
    iget-boolean v8, v7, Lcom/google/android/gms/internal/ads/ehh;->c:Z

    .line 61
    iput-boolean v8, p0, Lcom/google/android/gms/internal/ads/abs;->d:Z

    .line 1013
    iget-boolean v8, v7, Lcom/google/android/gms/internal/ads/ehh;->e:Z

    .line 62
    iput-boolean v8, p0, Lcom/google/android/gms/internal/ads/abs;->e:Z

    .line 2012
    iget-wide v12, v7, Lcom/google/android/gms/internal/ads/ehh;->d:J

    .line 63
    iput-wide v12, p0, Lcom/google/android/gms/internal/ads/abs;->f:J

    .line 64
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/abs;->e()Z

    move-result v8

    if-nez v8, :cond_3

    .line 3009
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/ehh;->a:Ljava/io/InputStream;

    .line 65
    iput-object v7, p0, Lcom/google/android/gms/internal/ads/abs;->n:Ljava/io/InputStream;

    .line 66
    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/abs;->m:Z

    if-eqz v7, :cond_2

    .line 67
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/abs;->d()V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v6

    sub-long/2addr v6, v9

    .line 71
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/abs;->j:Lcom/google/android/gms/internal/ads/abu;

    invoke-interface {p1, v2, v6, v7}, Lcom/google/android/gms/internal/ads/abu;->a(ZJ)V

    .line 72
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/abs;->c:Z

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    return-wide v4

    .line 75
    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v3

    sub-long/2addr v3, v9

    .line 77
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/abs;->j:Lcom/google/android/gms/internal/ads/abu;

    invoke-interface {v5, v2, v3, v4}, Lcom/google/android/gms/internal/ads/abu;->a(ZJ)V

    .line 78
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/abs;->c:Z

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    goto/16 :goto_4

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    const/4 v4, 0x1

    goto :goto_1

    :catch_1
    const/4 v4, 0x1

    goto :goto_2

    :catchall_1
    move-exception p1

    const/4 v2, 0x0

    goto :goto_3

    :catch_2
    const/4 v4, 0x0

    .line 90
    :goto_1
    :try_start_2
    invoke-interface {v3, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 91
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 92
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v2

    sub-long/2addr v2, v9

    .line 94
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/abs;->j:Lcom/google/android/gms/internal/ads/abu;

    invoke-interface {v5, v4, v2, v3}, Lcom/google/android/gms/internal/ads/abu;->a(ZJ)V

    .line 95
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/abs;->c:Z

    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_3
    const/4 v4, 0x0

    .line 82
    :goto_2
    :try_start_3
    invoke-interface {v3, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 83
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v2

    sub-long/2addr v2, v9

    .line 85
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/abs;->j:Lcom/google/android/gms/internal/ads/abu;

    invoke-interface {v5, v4, v2, v3}, Lcom/google/android/gms/internal/ads/abu;->a(ZJ)V

    .line 86
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/abs;->c:Z

    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    goto/16 :goto_4

    :catchall_2
    move-exception p1

    move v2, v4

    .line 98
    :goto_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v3

    sub-long/2addr v3, v9

    .line 100
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/abs;->j:Lcom/google/android/gms/internal/ads/abu;

    invoke-interface {v5, v2, v3, v4}, Lcom/google/android/gms/internal/ads/abu;->a(ZJ)V

    .line 101
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/abs;->c:Z

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    .line 103
    throw p1

    :cond_4
    const/4 v0, 0x0

    .line 105
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/abs;->a:Lcom/google/android/gms/internal/ads/zzti;

    if-eqz v1, :cond_5

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abs;->a:Lcom/google/android/gms/internal/ads/zzti;

    iget-wide v7, p1, Lcom/google/android/gms/internal/ads/ecf;->d:J

    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzti;->zzbwd:J

    .line 107
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abs;->a:Lcom/google/android/gms/internal/ads/zzti;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/abs;->k:Ljava/lang/String;

    .line 4001
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/cyc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzti;->zzbwe:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abs;->a:Lcom/google/android/gms/internal/ads/zzti;

    iget v1, p0, Lcom/google/android/gms/internal/ads/abs;->l:I

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzti;->zzbwf:I

    .line 109
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlb()Lcom/google/android/gms/internal/ads/egn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/abs;->a:Lcom/google/android/gms/internal/ads/zzti;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/egn;->a(Lcom/google/android/gms/internal/ads/zzti;)Lcom/google/android/gms/internal/ads/zzth;

    move-result-object v0

    :cond_5
    if-eqz v0, :cond_7

    .line 110
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzth;->zznc()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 111
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzth;->zznf()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/abs;->b:Z

    .line 112
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzth;->zzni()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/abs;->d:Z

    .line 113
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzth;->zzng()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/abs;->e:Z

    .line 114
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzth;->zznh()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gms/internal/ads/abs;->f:J

    .line 115
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/abs;->c:Z

    .line 116
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/abs;->e()Z

    move-result v1

    if-nez v1, :cond_7

    .line 117
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzth;->zznd()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/abs;->n:Ljava/io/InputStream;

    .line 118
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/abs;->m:Z

    if-eqz p1, :cond_6

    .line 119
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/abs;->d()V

    :cond_6
    return-wide v4

    .line 121
    :cond_7
    :goto_4
    iput-boolean v6, p0, Lcom/google/android/gms/internal/ads/abs;->c:Z

    .line 122
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abs;->a:Lcom/google/android/gms/internal/ads/zzti;

    if-eqz v0, :cond_8

    .line 123
    new-instance v0, Lcom/google/android/gms/internal/ads/ecf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/abs;->a:Lcom/google/android/gms/internal/ads/zzti;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzti;->url:Ljava/lang/String;

    .line 124
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/ecf;->b:[B

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/ecf;->c:J

    iget-wide v6, p1, Lcom/google/android/gms/internal/ads/ecf;->d:J

    iget-wide v8, p1, Lcom/google/android/gms/internal/ads/ecf;->e:J

    iget-object v10, p1, Lcom/google/android/gms/internal/ads/ecf;->f:Ljava/lang/String;

    iget v11, p1, Lcom/google/android/gms/internal/ads/ecf;->g:I

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/ecf;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    move-object p1, v0

    .line 125
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abs;->i:Lcom/google/android/gms/internal/ads/ecb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ecb;->a(Lcom/google/android/gms/internal/ads/ecf;)J

    move-result-wide v0

    return-wide v0

    .line 34
    :cond_9
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Attempt to open an already open CacheDataSource."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()Landroid/net/Uri;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abs;->p:Landroid/net/Uri;

    return-object v0
.end method

.method public final b()J
    .locals 5

    .line 142
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abs;->a:Lcom/google/android/gms/internal/ads/zzti;

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abs;->r:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abs;->r:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0

    .line 146
    :cond_1
    monitor-enter p0

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abs;->q:Lcom/google/android/gms/internal/ads/dbt;

    if-nez v0, :cond_2

    .line 148
    sget-object v0, Lcom/google/android/gms/internal/ads/zd;->a:Lcom/google/android/gms/internal/ads/dbs;

    new-instance v3, Lcom/google/android/gms/internal/ads/abv;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/abv;-><init>(Lcom/google/android/gms/internal/ads/abs;)V

    .line 149
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/dbs;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/abs;->q:Lcom/google/android/gms/internal/ads/dbt;

    .line 150
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abs;->q:Lcom/google/android/gms/internal/ads/dbt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dbt;->isDone()Z

    move-result v0

    if-nez v0, :cond_3

    return-wide v1

    .line 153
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abs;->r:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/abs;->q:Lcom/google/android/gms/internal/ads/dbt;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/dbt;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 157
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abs;->r:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0

    :catch_0
    return-wide v1

    :catchall_0
    move-exception v0

    .line 150
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/abs;->o:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/abs;->o:Z

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/abs;->p:Landroid/net/Uri;

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/abs;->n:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 25
    invoke-static {v1}, Lcom/google/android/gms/common/util/l;->a(Ljava/io/Closeable;)V

    .line 26
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/abs;->n:Ljava/io/InputStream;

    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abs;->i:Lcom/google/android/gms/internal/ads/ecb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ecb;->c()V

    return-void

    .line 20
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempt to close an already closed CacheDataSource."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
