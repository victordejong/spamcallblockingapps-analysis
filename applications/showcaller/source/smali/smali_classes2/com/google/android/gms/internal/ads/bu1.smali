.class public final Lcom/google/android/gms/internal/ads/bu1;
.super Lcom/google/android/gms/internal/ads/qc0;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Ljava/util/concurrent/Executor;

.field private final f:Lcom/google/android/gms/internal/ads/id0;

.field private final g:Lcom/google/android/gms/internal/ads/lt0;

.field private final h:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/gms/internal/ads/yt1;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/google/android/gms/internal/ads/jd0;

.field private final j:Lcom/google/android/gms/internal/ads/gu1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/jd0;Lcom/google/android/gms/internal/ads/lt0;Lcom/google/android/gms/internal/ads/id0;Ljava/util/ArrayDeque;Lcom/google/android/gms/internal/ads/gu1;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/internal/ads/jd0;",
            "Lcom/google/android/gms/internal/ads/lt0;",
            "Lcom/google/android/gms/internal/ads/id0;",
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/gms/internal/ads/yt1;",
            ">;",
            "Lcom/google/android/gms/internal/ads/gu1;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/qc0;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/kw;->a(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bu1;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bu1;->e:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bu1;->i:Lcom/google/android/gms/internal/ads/jd0;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bu1;->f:Lcom/google/android/gms/internal/ads/id0;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bu1;->g:Lcom/google/android/gms/internal/ads/lt0;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/bu1;->h:Ljava/util/ArrayDeque;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/bu1;->j:Lcom/google/android/gms/internal/ads/gu1;

    return-void
.end method

.method private static J6(Lcom/google/android/gms/internal/ads/zzcbj;Lcom/google/android/gms/internal/ads/yn2;Lcom/google/android/gms/internal/ads/pb2;)Lcom/google/android/gms/internal/ads/r03;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcbj;",
            "Lcom/google/android/gms/internal/ads/yn2;",
            "Lcom/google/android/gms/internal/ads/pb2;",
            ")",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/pt1;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/pt1;-><init>(Lcom/google/android/gms/internal/ads/pb2;)V

    sget-object p2, Lcom/google/android/gms/internal/ads/qt1;->a:Lcom/google/android/gms/internal/ads/cn2;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfem;->h:Lcom/google/android/gms/internal/ads/zzfem;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcbj;->d:Landroid/os/Bundle;

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/k03;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/google/android/gms/internal/ads/rn2;->e(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/r03;)Lcom/google/android/gms/internal/ads/qn2;

    move-result-object p0

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/qn2;->c(Lcom/google/android/gms/internal/ads/uz2;)Lcom/google/android/gms/internal/ads/qn2;

    move-result-object p0

    .line 5
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/qn2;->b(Lcom/google/android/gms/internal/ads/cn2;)Lcom/google/android/gms/internal/ads/qn2;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/qn2;->i()Lcom/google/android/gms/internal/ads/en2;

    move-result-object p0

    return-object p0
.end method

.method private static K6(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/yn2;Lcom/google/android/gms/internal/ads/r60;)Lcom/google/android/gms/internal/ads/r03;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/google/android/gms/internal/ads/yn2;",
            "Lcom/google/android/gms/internal/ads/r60;",
            ")",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lcom/google/android/gms/internal/ads/ad0;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/o60;->b:Lcom/google/android/gms/internal/ads/l60;

    sget-object v1, Lcom/google/android/gms/internal/ads/rt1;->a:Lcom/google/android/gms/internal/ads/i60;

    const-string v2, "AFMA_getAdDictionary"

    .line 2
    invoke-virtual {p2, v2, v0, v1}, Lcom/google/android/gms/internal/ads/r60;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/j60;Lcom/google/android/gms/internal/ads/i60;)Lcom/google/android/gms/internal/ads/g60;

    move-result-object p2

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfem;->j:Lcom/google/android/gms/internal/ads/zzfem;

    .line 4
    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/ads/rn2;->e(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/r03;)Lcom/google/android/gms/internal/ads/qn2;

    move-result-object p0

    .line 5
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/qn2;->c(Lcom/google/android/gms/internal/ads/uz2;)Lcom/google/android/gms/internal/ads/qn2;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/qn2;->i()Lcom/google/android/gms/internal/ads/en2;

    move-result-object p0

    return-object p0
.end method

.method private final L6(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/vc0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/google/android/gms/internal/ads/vc0;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/vt1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/vt1;-><init>(Lcom/google/android/gms/internal/ads/bu1;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/qi0;->a:Lcom/google/android/gms/internal/ads/s03;

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/k03;->i(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/uz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/xt1;

    .line 3
    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/xt1;-><init>(Lcom/google/android/gms/internal/ads/bu1;Lcom/google/android/gms/internal/ads/vc0;)V

    sget-object p2, Lcom/google/android/gms/internal/ads/qi0;->f:Lcom/google/android/gms/internal/ads/s03;

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/k03;->p(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/f03;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private final declared-synchronized M6(Lcom/google/android/gms/internal/ads/yt1;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bu1;->n()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bu1;->h:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized N6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/yt1;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bu1;->h:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/yt1;

    .line 4
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/yt1;->c:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized O6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/yt1;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bu1;->h:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/yt1;

    .line 4
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/yt1;->d:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized n()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/ey;->c:Lcom/google/android/gms/internal/ads/nx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/nx;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bu1;->h:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bu1;->h:Ljava/util/ArrayDeque;

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final E1(Ljava/lang/String;Lcom/google/android/gms/internal/ads/vc0;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/bu1;->G6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/bu1;->L6(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/vc0;)V

    return-void
.end method

.method public final E6(Lcom/google/android/gms/internal/ads/zzcbj;I)Lcom/google/android/gms/internal/ads/r03;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcbj;",
            "I)",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->q()Lcom/google/android/gms/internal/ads/h60;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bu1;->d:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcgz;->k0()Lcom/google/android/gms/internal/ads/zzcgz;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/h60;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;)Lcom/google/android/gms/internal/ads/r60;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bu1;->g:Lcom/google/android/gms/internal/ads/lt0;

    .line 3
    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/lt0;->a(Lcom/google/android/gms/internal/ads/zzcbj;I)Lcom/google/android/gms/internal/ads/pb2;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/au1;->a:Lcom/google/android/gms/internal/ads/j60;

    .line 4
    sget-object v3, Lcom/google/android/gms/internal/ads/o60;->c:Lcom/google/android/gms/internal/ads/i60;

    const-string v4, "google.afma.response.normalize"

    .line 5
    invoke-virtual {v0, v4, v2, v3}, Lcom/google/android/gms/internal/ads/r60;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/j60;Lcom/google/android/gms/internal/ads/i60;)Lcom/google/android/gms/internal/ads/g60;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/iu1;

    .line 6
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzcbj;->j:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/iu1;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/bu1;->d:Landroid/content/Context;

    .line 7
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzcbj;->e:Lcom/google/android/gms/internal/ads/zzcgz;

    iget-object v7, v4, Lcom/google/android/gms/internal/ads/zzcgz;->d:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/bu1;->i:Lcom/google/android/gms/internal/ads/jd0;

    new-instance v4, Lcom/google/android/gms/internal/ads/fu1;

    const/4 v10, 0x0

    move-object v5, v4

    move v9, p2

    .line 8
    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/fu1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/jd0;I[B)V

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/pb2;->c()Lcom/google/android/gms/internal/ads/yn2;

    move-result-object p2

    .line 10
    sget-object v5, Lcom/google/android/gms/internal/ads/ey;->a:Lcom/google/android/gms/internal/ads/nx;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/nx;->e()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 11
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzcbj;->m:Ljava/lang/String;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "Request contained a PoolKey but split request is disabled."

    .line 12
    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/o1;->k(Ljava/lang/String;)V

    goto :goto_2

    .line 13
    :cond_0
    sget-object v5, Lcom/google/android/gms/internal/ads/ey;->d:Lcom/google/android/gms/internal/ads/nx;

    .line 14
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/nx;->e()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 15
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzcbj;->k:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/bu1;->N6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/yt1;

    move-result-object v5

    :goto_0
    move-object v6, v5

    goto :goto_1

    .line 16
    :cond_1
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzcbj;->m:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 17
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzcbj;->m:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/bu1;->O6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/yt1;

    move-result-object v5

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v6, :cond_3

    const-string v5, "Request contained a PoolKey but no matching parameters were found."

    .line 18
    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/o1;->k(Ljava/lang/String;)V

    :cond_3
    :goto_2
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-nez v6, :cond_4

    .line 19
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/internal/ads/bu1;->J6(Lcom/google/android/gms/internal/ads/zzcbj;Lcom/google/android/gms/internal/ads/yn2;Lcom/google/android/gms/internal/ads/pb2;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    .line 20
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/bu1;->K6(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/yn2;Lcom/google/android/gms/internal/ads/r60;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    .line 21
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfem;->k:Lcom/google/android/gms/internal/ads/zzfem;

    new-array v6, v8, [Lcom/google/android/gms/internal/ads/r03;

    aput-object v0, v6, v7

    aput-object p1, v6, v5

    .line 22
    invoke-virtual {p2, v1, v6}, Lcom/google/android/gms/internal/ads/rn2;->f(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/r03;)Lcom/google/android/gms/internal/ads/hn2;

    move-result-object v1

    new-instance v6, Lcom/google/android/gms/internal/ads/mt1;

    invoke-direct {v6, p1, v0}, Lcom/google/android/gms/internal/ads/mt1;-><init>(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/r03;)V

    .line 23
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/hn2;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/qn2;

    move-result-object v1

    .line 24
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/qn2;->b(Lcom/google/android/gms/internal/ads/cn2;)Lcom/google/android/gms/internal/ads/qn2;

    move-result-object v1

    .line 25
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/qn2;->b(Lcom/google/android/gms/internal/ads/cn2;)Lcom/google/android/gms/internal/ads/qn2;

    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/qn2;->i()Lcom/google/android/gms/internal/ads/en2;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/internal/ads/zzfem;->l:Lcom/google/android/gms/internal/ads/zzfem;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/google/android/gms/internal/ads/r03;

    aput-object p1, v4, v7

    aput-object v0, v4, v5

    aput-object v1, v4, v8

    .line 27
    invoke-virtual {p2, v3, v4}, Lcom/google/android/gms/internal/ads/rn2;->f(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/r03;)Lcom/google/android/gms/internal/ads/hn2;

    move-result-object p2

    new-instance v3, Lcom/google/android/gms/internal/ads/nt1;

    invoke-direct {v3, v1, p1, v0}, Lcom/google/android/gms/internal/ads/nt1;-><init>(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/r03;)V

    .line 28
    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/ads/hn2;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/qn2;

    move-result-object p1

    .line 29
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/qn2;->c(Lcom/google/android/gms/internal/ads/uz2;)Lcom/google/android/gms/internal/ads/qn2;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/qn2;->i()Lcom/google/android/gms/internal/ads/en2;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/hu1;

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/yt1;->b:Lorg/json/JSONObject;

    iget-object v1, v6, Lcom/google/android/gms/internal/ads/yt1;->a:Lcom/google/android/gms/internal/ads/ad0;

    .line 31
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/hu1;-><init>(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/ad0;)V

    .line 32
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfem;->k:Lcom/google/android/gms/internal/ads/zzfem;

    .line 33
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/k03;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/ads/rn2;->e(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/r03;)Lcom/google/android/gms/internal/ads/qn2;

    move-result-object p1

    .line 34
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/qn2;->b(Lcom/google/android/gms/internal/ads/cn2;)Lcom/google/android/gms/internal/ads/qn2;

    move-result-object p1

    .line 35
    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/qn2;->b(Lcom/google/android/gms/internal/ads/cn2;)Lcom/google/android/gms/internal/ads/qn2;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/qn2;->i()Lcom/google/android/gms/internal/ads/en2;

    move-result-object p1

    .line 37
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/k03;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfem;->l:Lcom/google/android/gms/internal/ads/zzfem;

    new-array v3, v8, [Lcom/google/android/gms/internal/ads/r03;

    aput-object p1, v3, v7

    aput-object v0, v3, v5

    .line 38
    invoke-virtual {p2, v1, v3}, Lcom/google/android/gms/internal/ads/rn2;->f(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/r03;)Lcom/google/android/gms/internal/ads/hn2;

    move-result-object p2

    new-instance v1, Lcom/google/android/gms/internal/ads/ot1;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/ot1;-><init>(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/r03;)V

    .line 39
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/hn2;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/qn2;

    move-result-object p1

    .line 40
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/qn2;->c(Lcom/google/android/gms/internal/ads/uz2;)Lcom/google/android/gms/internal/ads/qn2;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/qn2;->i()Lcom/google/android/gms/internal/ads/en2;

    move-result-object p1

    return-object p1
.end method

.method public final F6(Lcom/google/android/gms/internal/ads/zzcbj;I)Lcom/google/android/gms/internal/ads/r03;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcbj;",
            "I)",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/ey;->a:Lcom/google/android/gms/internal/ads/nx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/nx;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Split request is disabled."

    .line 2
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/k03;->c(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzcbj;->l:Lcom/google/android/gms/internal/ads/zzfcj;

    if-nez v0, :cond_1

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Pool configuration missing from request."

    .line 4
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/k03;->c(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1

    :cond_1
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfcj;->h:I

    if-eqz v1, :cond_3

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfcj;->i:I

    if-nez v0, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->q()Lcom/google/android/gms/internal/ads/h60;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bu1;->d:Landroid/content/Context;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcgz;->k0()Lcom/google/android/gms/internal/ads/zzcgz;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/h60;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;)Lcom/google/android/gms/internal/ads/r60;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bu1;->g:Lcom/google/android/gms/internal/ads/lt0;

    .line 7
    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/lt0;->a(Lcom/google/android/gms/internal/ads/zzcbj;I)Lcom/google/android/gms/internal/ads/pb2;

    move-result-object p2

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/pb2;->c()Lcom/google/android/gms/internal/ads/yn2;

    move-result-object v1

    .line 9
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/internal/ads/bu1;->J6(Lcom/google/android/gms/internal/ads/zzcbj;Lcom/google/android/gms/internal/ads/yn2;Lcom/google/android/gms/internal/ads/pb2;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p2

    .line 10
    invoke-static {p2, v1, v0}, Lcom/google/android/gms/internal/ads/bu1;->K6(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/yn2;Lcom/google/android/gms/internal/ads/r60;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    .line 11
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfem;->z:Lcom/google/android/gms/internal/ads/zzfem;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/android/gms/internal/ads/r03;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    .line 12
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/rn2;->f(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/r03;)Lcom/google/android/gms/internal/ads/hn2;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/tt1;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/google/android/gms/internal/ads/tt1;-><init>(Lcom/google/android/gms/internal/ads/bu1;Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/zzcbj;)V

    .line 13
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/hn2;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/qn2;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/qn2;->i()Lcom/google/android/gms/internal/ads/en2;

    move-result-object p1

    return-object p1

    .line 15
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Caching is disabled."

    .line 16
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/k03;->c(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method

.method public final G6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/r03;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/ey;->a:Lcom/google/android/gms/internal/ads/nx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/nx;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Split request is disabled."

    .line 2
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/k03;->c(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/wt1;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/wt1;-><init>(Lcom/google/android/gms/internal/ads/bu1;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/ey;->d:Lcom/google/android/gms/internal/ads/nx;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/nx;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/bu1;->N6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/yt1;

    move-result-object v1

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/bu1;->O6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/yt1;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_3

    .line 7
    new-instance v0, Ljava/lang/Exception;

    .line 8
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "URL to be removed not found for cache key: "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/k03;->c(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/k03;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method

.method public final H6(Lcom/google/android/gms/internal/ads/zzcbj;I)Lcom/google/android/gms/internal/ads/r03;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcbj;",
            "I)",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->q()Lcom/google/android/gms/internal/ads/h60;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bu1;->d:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcgz;->k0()Lcom/google/android/gms/internal/ads/zzcgz;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/h60;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;)Lcom/google/android/gms/internal/ads/r60;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/jy;->a:Lcom/google/android/gms/internal/ads/nx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/nx;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Signal collection disabled."

    .line 4
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/k03;->c(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bu1;->g:Lcom/google/android/gms/internal/ads/lt0;

    .line 5
    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/lt0;->a(Lcom/google/android/gms/internal/ads/zzcbj;I)Lcom/google/android/gms/internal/ads/pb2;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/pb2;->b()Lcom/google/android/gms/internal/ads/ab2;

    move-result-object v1

    .line 7
    sget-object v2, Lcom/google/android/gms/internal/ads/o60;->b:Lcom/google/android/gms/internal/ads/l60;

    sget-object v3, Lcom/google/android/gms/internal/ads/o60;->c:Lcom/google/android/gms/internal/ads/i60;

    const-string v4, "google.afma.request.getSignals"

    .line 8
    invoke-virtual {v0, v4, v2, v3}, Lcom/google/android/gms/internal/ads/r60;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/j60;Lcom/google/android/gms/internal/ads/i60;)Lcom/google/android/gms/internal/ads/g60;

    move-result-object v0

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/pb2;->c()Lcom/google/android/gms/internal/ads/yn2;

    move-result-object p2

    .line 10
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfem;->m:Lcom/google/android/gms/internal/ads/zzfem;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcbj;->d:Landroid/os/Bundle;

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/k03;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Lcom/google/android/gms/internal/ads/rn2;->e(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/r03;)Lcom/google/android/gms/internal/ads/qn2;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/ut1;

    invoke-direct {p2, v1}, Lcom/google/android/gms/internal/ads/ut1;-><init>(Lcom/google/android/gms/internal/ads/ab2;)V

    .line 12
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/qn2;->c(Lcom/google/android/gms/internal/ads/uz2;)Lcom/google/android/gms/internal/ads/qn2;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzfem;->n:Lcom/google/android/gms/internal/ads/zzfem;

    .line 13
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/qn2;->j(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qn2;

    move-result-object p1

    .line 14
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/qn2;->c(Lcom/google/android/gms/internal/ads/uz2;)Lcom/google/android/gms/internal/ads/qn2;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/qn2;->i()Lcom/google/android/gms/internal/ads/en2;

    move-result-object p1

    return-object p1
.end method

.method final synthetic I6(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/zzcbj;)Ljava/io/InputStream;
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ad0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ad0;->i()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/json/JSONObject;

    .line 3
    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzcbj;->k:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/ads/yt1;

    .line 4
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/ad0;

    invoke-direct {v1, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/yt1;-><init>(Lcom/google/android/gms/internal/ads/ad0;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/bu1;->M6(Lcom/google/android/gms/internal/ads/yt1;)V

    new-instance p1, Ljava/io/ByteArrayInputStream;

    .line 6
    sget-object p2, Lcom/google/android/gms/internal/ads/lu2;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p1
.end method

.method public final X0(Lcom/google/android/gms/internal/ads/zzcbj;Lcom/google/android/gms/internal/ads/vc0;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/bu1;->H6(Lcom/google/android/gms/internal/ads/zzcbj;I)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/bu1;->L6(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/vc0;)V

    return-void
.end method

.method public final Z2(Lcom/google/android/gms/internal/ads/zzcbj;Lcom/google/android/gms/internal/ads/vc0;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/bu1;->F6(Lcom/google/android/gms/internal/ads/zzcbj;I)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/bu1;->L6(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/vc0;)V

    return-void
.end method

.method final synthetic h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bu1;->f:Lcom/google/android/gms/internal/ads/id0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/id0;->a()Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    const-string v1, "persistFlags"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ti0;->a(Lcom/google/android/gms/internal/ads/r03;Ljava/lang/String;)V

    return-void
.end method

.method public final v1(Lcom/google/android/gms/internal/ads/zzcbj;Lcom/google/android/gms/internal/ads/vc0;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/bu1;->E6(Lcom/google/android/gms/internal/ads/zzcbj;I)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/bu1;->L6(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/vc0;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/st1;

    .line 4
    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/st1;-><init>(Lcom/google/android/gms/internal/ads/bu1;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bu1;->e:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/r03;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
