.class public final Lcom/google/android/gms/internal/ads/mr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/yq2;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ir2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ir2<",
            "Lcom/google/android/gms/internal/ads/yq2;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/ads/yq2;

.field private final d:Lcom/google/android/gms/internal/ads/lr;

.field private final e:Ljava/lang/String;

.field private final f:I

.field private final g:Z

.field private h:Ljava/io/InputStream;

.field private i:Z

.field private j:Landroid/net/Uri;

.field private volatile k:Lcom/google/android/gms/internal/ads/zzts;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:J

.field private q:Lcom/google/android/gms/internal/ads/rz1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/rz1<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yq2;Ljava/lang/String;ILcom/google/android/gms/internal/ads/ir2;Lcom/google/android/gms/internal/ads/lr;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/yq2;",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/android/gms/internal/ads/ir2<",
            "Lcom/google/android/gms/internal/ads/yq2;",
            ">;",
            "Lcom/google/android/gms/internal/ads/lr;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mr;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/mr;->c:Lcom/google/android/gms/internal/ads/yq2;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/mr;->a:Lcom/google/android/gms/internal/ads/ir2;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/mr;->d:Lcom/google/android/gms/internal/ads/lr;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/mr;->e:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/ads/mr;->f:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/mr;->l:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/mr;->m:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/mr;->n:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/mr;->o:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/mr;->p:J

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 p2, -0x1

    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mr;->r:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mr;->q:Lcom/google/android/gms/internal/ads/rz1;

    sget-object p1, Lcom/google/android/gms/internal/ads/m3;->d1:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/mr;->g:Z

    return-void
.end method

.method private final m(Lcom/google/android/gms/internal/ads/zq2;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mr;->a:Lcom/google/android/gms/internal/ads/ir2;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/ads/yr;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/yr;->o(Lcom/google/android/gms/internal/ads/yq2;Lcom/google/android/gms/internal/ads/zq2;)V

    :cond_0
    return-void
.end method

.method private final n()Z
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/mr;->g:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/m3;->l2:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/mr;->n:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/m3;->m2:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/mr;->o:Z

    if-nez v0, :cond_3

    return v2

    :cond_3
    return v1
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/internal/ads/zq2;)J
    .locals 14

    const-string v0, "ms"

    const-string v1, "Cache connection took "

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/mr;->i:Z

    if-nez v2, :cond_9

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/mr;->i:Z

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zq2;->a:Landroid/net/Uri;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/mr;->j:Landroid/net/Uri;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/mr;->g:Z

    if-nez v3, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/mr;->m(Lcom/google/android/gms/internal/ads/zq2;)V

    :cond_0
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zq2;->a:Landroid/net/Uri;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzts;->a(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzts;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/mr;->k:Lcom/google/android/gms/internal/ads/zzts;

    sget-object v3, Lcom/google/android/gms/internal/ads/m3;->i2:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/mr;->k:Lcom/google/android/gms/internal/ads/zzts;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/mr;->k:Lcom/google/android/gms/internal/ads/zzts;

    iget-wide v7, p1, Lcom/google/android/gms/internal/ads/zq2;->c:J

    iput-wide v7, v3, Lcom/google/android/gms/internal/ads/zzts;->i:J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/mr;->k:Lcom/google/android/gms/internal/ads/zzts;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/mr;->e:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/tw1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/google/android/gms/internal/ads/zzts;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/mr;->k:Lcom/google/android/gms/internal/ads/zzts;

    iget v7, p0, Lcom/google/android/gms/internal/ads/mr;->f:I

    iput v7, v3, Lcom/google/android/gms/internal/ads/zzts;->k:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/mr;->k:Lcom/google/android/gms/internal/ads/zzts;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzts;->h:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/google/android/gms/internal/ads/m3;->k2:Lcom/google/android/gms/internal/ads/e3;

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/google/android/gms/internal/ads/m3;->j2:Lcom/google/android/gms/internal/ads/e3;

    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->k()Lcom/google/android/gms/common/util/f;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/f;->c()J

    move-result-wide v9

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->x()Lcom/google/android/gms/internal/ads/tv2;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/mr;->b:Landroid/content/Context;

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/mr;->k:Lcom/google/android/gms/internal/ads/zzts;

    invoke-static {v3, v11}, Lcom/google/android/gms/internal/ads/tv2;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzts;)Ljava/util/concurrent/Future;

    move-result-object v3

    const/16 v11, 0x2c

    :try_start_0
    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v7, v8, v12}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/uv2;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/uv2;->c()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/android/gms/internal/ads/mr;->l:Z

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/uv2;->d()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/android/gms/internal/ads/mr;->n:Z

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/uv2;->f()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/android/gms/internal/ads/mr;->o:Z

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/uv2;->e()J

    move-result-wide v12

    iput-wide v12, p0, Lcom/google/android/gms/internal/ads/mr;->p:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/mr;->n()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/uv2;->b()Ljava/io/InputStream;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/gms/internal/ads/mr;->h:Ljava/io/InputStream;

    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/mr;->g:Z

    if-eqz v7, :cond_2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/mr;->m(Lcom/google/android/gms/internal/ads/zq2;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->k()Lcom/google/android/gms/common/util/f;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/f;->c()J

    move-result-wide v6

    sub-long/2addr v6, v9

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/mr;->d:Lcom/google/android/gms/internal/ads/lr;

    invoke-interface {p1, v2, v6, v7}, Lcom/google/android/gms/internal/ads/lr;->a(ZJ)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/mr;->m:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/y0;->k(Ljava/lang/String;)V

    return-wide v4

    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->k()Lcom/google/android/gms/common/util/f;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/f;->c()J

    move-result-wide v3

    sub-long/2addr v3, v9

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/mr;->d:Lcom/google/android/gms/internal/ads/lr;

    invoke-interface {v5, v2, v3, v4}, Lcom/google/android/gms/internal/ads/lr;->a(ZJ)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/mr;->m:Z

    new-instance v2, Ljava/lang/StringBuilder;

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

    :goto_1
    :try_start_2
    invoke-interface {v3, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->k()Lcom/google/android/gms/common/util/f;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/f;->c()J

    move-result-wide v2

    sub-long/2addr v2, v9

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/mr;->d:Lcom/google/android/gms/internal/ads/lr;

    invoke-interface {v5, v4, v2, v3}, Lcom/google/android/gms/internal/ads/lr;->a(ZJ)V

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/mr;->m:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_3

    :catch_3
    const/4 v4, 0x0

    :goto_2
    :try_start_3
    invoke-interface {v3, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->k()Lcom/google/android/gms/common/util/f;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/f;->c()J

    move-result-wide v2

    sub-long/2addr v2, v9

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/mr;->d:Lcom/google/android/gms/internal/ads/lr;

    invoke-interface {v5, v4, v2, v3}, Lcom/google/android/gms/internal/ads/lr;->a(ZJ)V

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/mr;->m:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/y0;->k(Ljava/lang/String;)V

    goto/16 :goto_7

    :catchall_2
    move-exception p1

    move v2, v4

    :goto_5
    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->k()Lcom/google/android/gms/common/util/f;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/f;->c()J

    move-result-wide v3

    sub-long/2addr v3, v9

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/mr;->d:Lcom/google/android/gms/internal/ads/lr;

    invoke-interface {v5, v2, v3, v4}, Lcom/google/android/gms/internal/ads/lr;->a(ZJ)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/mr;->m:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/y0;->k(Ljava/lang/String;)V

    throw p1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mr;->k:Lcom/google/android/gms/internal/ads/zzts;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mr;->k:Lcom/google/android/gms/internal/ads/zzts;

    iget-wide v7, p1, Lcom/google/android/gms/internal/ads/zq2;->c:J

    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzts;->i:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mr;->k:Lcom/google/android/gms/internal/ads/zzts;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mr;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/tw1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzts;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mr;->k:Lcom/google/android/gms/internal/ads/zzts;

    iget v1, p0, Lcom/google/android/gms/internal/ads/mr;->f:I

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzts;->k:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->j()Lcom/google/android/gms/internal/ads/fv2;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mr;->k:Lcom/google/android/gms/internal/ads/zzts;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/fv2;->c(Lcom/google/android/gms/internal/ads/zzts;)Lcom/google/android/gms/internal/ads/zztp;

    move-result-object v0

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztp;->zza()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztp;->x()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/mr;->l:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztp;->F()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/mr;->n:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztp;->B()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/mr;->o:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztp;->C()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gms/internal/ads/mr;->p:J

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/mr;->m:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/mr;->n()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztp;->a()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/mr;->h:Ljava/io/InputStream;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/mr;->g:Z

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/mr;->m(Lcom/google/android/gms/internal/ads/zq2;)V

    :cond_6
    return-wide v4

    :cond_7
    :goto_7
    iput-boolean v6, p0, Lcom/google/android/gms/internal/ads/mr;->m:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mr;->k:Lcom/google/android/gms/internal/ads/zzts;

    if-eqz v0, :cond_8

    new-instance v0, Lcom/google/android/gms/internal/ads/zq2;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mr;->k:Lcom/google/android/gms/internal/ads/zzts;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzts;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zq2;->b:J

    iget-wide v6, p1, Lcom/google/android/gms/internal/ads/zq2;->c:J

    iget-wide v8, p1, Lcom/google/android/gms/internal/ads/zq2;->d:J

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/zq2;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    move-object p1, v0

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mr;->c:Lcom/google/android/gms/internal/ads/yq2;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/yq2;->b(Lcom/google/android/gms/internal/ads/zq2;)J

    move-result-wide v0

    return-wide v0

    :cond_9
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Attempt to open an already open CacheDataSource."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mr;->j:Landroid/net/Uri;

    return-object v0
.end method

.method public final d([BII)I
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/mr;->i:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mr;->h:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mr;->c:Lcom/google/android/gms/internal/ads/yq2;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/yq2;->d([BII)I

    move-result p1

    :goto_0
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/mr;->g:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/mr;->h:Ljava/io/InputStream;

    if-eqz p2, :cond_2

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/mr;->a:Lcom/google/android/gms/internal/ads/ir2;

    if-eqz p2, :cond_2

    check-cast p2, Lcom/google/android/gms/internal/ads/yr;

    invoke-virtual {p2, p0, p1}, Lcom/google/android/gms/internal/ads/yr;->p(Lcom/google/android/gms/internal/ads/yq2;I)V

    :cond_2
    return p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Attempt to read closed CacheDataSource."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/mr;->l:Z

    return v0
.end method

.method public final f()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/mr;->i:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/mr;->i:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/mr;->j:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mr;->h:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/google/android/gms/common/util/l;->a(Ljava/io/Closeable;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/mr;->h:Ljava/io/InputStream;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mr;->c:Lcom/google/android/gms/internal/ads/yq2;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/yq2;->f()V

    return-void

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempt to close an already closed CacheDataSource."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/mr;->m:Z

    return v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/mr;->n:Z

    return v0
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/mr;->o:Z

    return v0
.end method

.method public final j()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/mr;->p:J

    return-wide v0
.end method

.method public final k()J
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mr;->k:Lcom/google/android/gms/internal/ads/zzts;

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mr;->r:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mr;->r:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mr;->q:Lcom/google/android/gms/internal/ads/rz1;

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/zo;->a:Lcom/google/android/gms/internal/ads/sz1;

    new-instance v3, Lcom/google/android/gms/internal/ads/kr;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/kr;-><init>(Lcom/google/android/gms/internal/ads/mr;)V

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/sz1;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/mr;->q:Lcom/google/android/gms/internal/ads/rz1;

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mr;->q:Lcom/google/android/gms/internal/ads/rz1;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_3

    return-wide v1

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mr;->r:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/mr;->q:Lcom/google/android/gms/internal/ads/rz1;

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    return-wide v1

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method final synthetic l()Ljava/lang/Long;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->j()Lcom/google/android/gms/internal/ads/fv2;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mr;->k:Lcom/google/android/gms/internal/ads/zzts;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/fv2;->d(Lcom/google/android/gms/internal/ads/zzts;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
