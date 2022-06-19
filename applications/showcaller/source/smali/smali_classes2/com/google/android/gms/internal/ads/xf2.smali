.class public final Lcom/google/android/gms/internal/ads/xf2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/sg2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/internal/ads/g21<",
        "TAdT;>;AdT:",
        "Lcom/google/android/gms/internal/ads/xy0;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/sg2<",
        "TR;TAdT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/sg2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/sg2<",
            "TR;TAdT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/sg2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/sg2<",
            "TR;",
            "Lcom/google/android/gms/internal/ads/cg2<",
            "TR;TAdT;>;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/dm2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dm2<",
            "TR;TAdT;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private e:Lcom/google/android/gms/internal/ads/g21;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/sg2;Lcom/google/android/gms/internal/ads/sg2;Lcom/google/android/gms/internal/ads/dm2;Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/sg2<",
            "TR;TAdT;>;",
            "Lcom/google/android/gms/internal/ads/sg2<",
            "TR;",
            "Lcom/google/android/gms/internal/ads/cg2<",
            "TR;TAdT;>;>;",
            "Lcom/google/android/gms/internal/ads/dm2<",
            "TR;TAdT;>;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xf2;->a:Lcom/google/android/gms/internal/ads/sg2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/xf2;->b:Lcom/google/android/gms/internal/ads/sg2;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/xf2;->c:Lcom/google/android/gms/internal/ads/dm2;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/xf2;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/xf2;->f:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private final g(Lcom/google/android/gms/internal/ads/ql2;Lcom/google/android/gms/internal/ads/tg2;)Lcom/google/android/gms/internal/ads/r03;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/ql2<",
            "TR;TAdT;>;",
            "Lcom/google/android/gms/internal/ads/tg2;",
            ")",
            "Lcom/google/android/gms/internal/ads/r03<",
            "TAdT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/ql2;->a:Lcom/google/android/gms/internal/ads/g21;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xf2;->e:Lcom/google/android/gms/internal/ads/g21;

    .line 2
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/ql2;->c:Lcom/google/android/gms/internal/ads/xy0;

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/g21;->E()Lcom/google/android/gms/internal/ads/pg2;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/ql2;->c:Lcom/google/android/gms/internal/ads/xy0;

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/xy0;->e()Lcom/google/android/gms/internal/ads/pg2;

    move-result-object p2

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/ql2;->a:Lcom/google/android/gms/internal/ads/g21;

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/g21;->E()Lcom/google/android/gms/internal/ads/pg2;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/pg2;->q(Lcom/google/android/gms/internal/ads/pg2;)V

    .line 7
    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ql2;->c:Lcom/google/android/gms/internal/ads/xy0;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/k03;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/g21;->o()Lcom/google/android/gms/internal/ads/b01;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/ql2;->b:Lcom/google/android/gms/internal/ads/rj2;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/b01;->i(Lcom/google/android/gms/internal/ads/rj2;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xf2;->a:Lcom/google/android/gms/internal/ads/sg2;

    .line 9
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ql2;->a:Lcom/google/android/gms/internal/ads/g21;

    check-cast v0, Lcom/google/android/gms/internal/ads/ig2;

    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, p2, v1, p1}, Lcom/google/android/gms/internal/ads/ig2;->c(Lcom/google/android/gms/internal/ads/tg2;Lcom/google/android/gms/internal/ads/rg2;Lcom/google/android/gms/internal/ads/g21;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/android/gms/internal/ads/tg2;Lcom/google/android/gms/internal/ads/rg2;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;
    .locals 0

    const/4 p3, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/xf2;->c(Lcom/google/android/gms/internal/ads/tg2;Lcom/google/android/gms/internal/ads/rg2;Lcom/google/android/gms/internal/ads/g21;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized b()Lcom/google/android/gms/internal/ads/g21;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xf2;->e:Lcom/google/android/gms/internal/ads/g21;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Lcom/google/android/gms/internal/ads/tg2;Lcom/google/android/gms/internal/ads/rg2;Lcom/google/android/gms/internal/ads/g21;)Lcom/google/android/gms/internal/ads/r03;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/tg2;",
            "Lcom/google/android/gms/internal/ads/rg2<",
            "TR;>;TR;)",
            "Lcom/google/android/gms/internal/ads/r03<",
            "TAdT;>;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v5, p2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/tg2;->b:Lcom/google/android/gms/internal/ads/qg2;

    invoke-interface {v5, v1}, Lcom/google/android/gms/internal/ads/rg2;->a(Lcom/google/android/gms/internal/ads/qg2;)Lcom/google/android/gms/internal/ads/f21;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/yf2;

    iget-object v3, v7, Lcom/google/android/gms/internal/ads/xf2;->d:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/yf2;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/f21;->n(Lcom/google/android/gms/internal/ads/yf2;)Lcom/google/android/gms/internal/ads/f21;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/f21;->d()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/google/android/gms/internal/ads/g21;

    .line 4
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/g21;->Q()Lcom/google/android/gms/internal/ads/xj2;

    .line 5
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/g21;->Q()Lcom/google/android/gms/internal/ads/xj2;

    .line 6
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/g21;->Q()Lcom/google/android/gms/internal/ads/xj2;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/xj2;->d:Lcom/google/android/gms/internal/ads/zzbdg;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzbdg;->v:Lcom/google/android/gms/internal/ads/zzbcx;

    if-nez v2, :cond_1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbdg;->A:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/g21;->Q()Lcom/google/android/gms/internal/ads/xj2;

    move-result-object v1

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/xj2;->d:Lcom/google/android/gms/internal/ads/zzbdg;

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/xj2;->f:Ljava/lang/String;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/xj2;->j:Lcom/google/android/gms/internal/ads/zzbdr;

    new-instance v4, Lcom/google/android/gms/internal/ads/wf2;

    iget-object v13, v7, Lcom/google/android/gms/internal/ads/xf2;->f:Ljava/util/concurrent/Executor;

    const/4 v15, 0x0

    move-object v8, v4

    move-object/from16 v9, p2

    move-object/from16 v10, p1

    .line 8
    invoke-direct/range {v8 .. v15}, Lcom/google/android/gms/internal/ads/wf2;-><init>(Lcom/google/android/gms/internal/ads/rg2;Lcom/google/android/gms/internal/ads/tg2;Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzbdr;Lcom/google/android/gms/internal/ads/rl2;)V

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/xf2;->b:Lcom/google/android/gms/internal/ads/sg2;

    check-cast v1, Lcom/google/android/gms/internal/ads/eg2;

    .line 9
    invoke-virtual {v1, v0, v5, v6}, Lcom/google/android/gms/internal/ads/eg2;->b(Lcom/google/android/gms/internal/ads/tg2;Lcom/google/android/gms/internal/ads/rg2;Lcom/google/android/gms/internal/ads/g21;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/a03;->E(Lcom/google/android/gms/internal/ads/r03;)Lcom/google/android/gms/internal/ads/a03;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/internal/ads/tf2;

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/tf2;-><init>(Lcom/google/android/gms/internal/ads/xf2;Lcom/google/android/gms/internal/ads/tg2;Lcom/google/android/gms/internal/ads/wf2;Lcom/google/android/gms/internal/ads/rg2;Lcom/google/android/gms/internal/ads/g21;)V

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/xf2;->f:Ljava/util/concurrent/Executor;

    .line 11
    invoke-static {v8, v9, v0}, Lcom/google/android/gms/internal/ads/k03;->i(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/uz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 12
    :cond_1
    :goto_0
    :try_start_1
    iput-object v6, v7, Lcom/google/android/gms/internal/ads/xf2;->e:Lcom/google/android/gms/internal/ads/g21;

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/xf2;->a:Lcom/google/android/gms/internal/ads/sg2;

    check-cast v1, Lcom/google/android/gms/internal/ads/ig2;

    .line 13
    invoke-virtual {v1, v0, v5, v6}, Lcom/google/android/gms/internal/ads/ig2;->c(Lcom/google/android/gms/internal/ads/tg2;Lcom/google/android/gms/internal/ads/rg2;Lcom/google/android/gms/internal/ads/g21;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final synthetic d(Lcom/google/android/gms/internal/ads/am2;)Lcom/google/android/gms/internal/ads/r03;
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/am2;->a:Lcom/google/android/gms/internal/ads/ql2;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/am2;->b:Lcom/google/android/gms/internal/ads/cm2;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/wf2;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/hn;->C()Lcom/google/android/gms/internal/ads/bn;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/an;->C()Lcom/google/android/gms/internal/ads/zm;

    move-result-object v2

    const/4 v3, 0x2

    .line 5
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zm;->t(I)Lcom/google/android/gms/internal/ads/zm;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/en;->D()Lcom/google/android/gms/internal/ads/en;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zm;->q(Lcom/google/android/gms/internal/ads/en;)Lcom/google/android/gms/internal/ads/zm;

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/bn;->q(Lcom/google/android/gms/internal/ads/zm;)Lcom/google/android/gms/internal/ads/bn;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/hn;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/am2;->a:Lcom/google/android/gms/internal/ads/ql2;

    .line 9
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/ql2;->a:Lcom/google/android/gms/internal/ads/g21;

    .line 10
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/g21;->o()Lcom/google/android/gms/internal/ads/b01;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/b01;->e()Lcom/google/android/gms/internal/ads/h81;

    move-result-object v2

    .line 12
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/h81;->d0(Lcom/google/android/gms/internal/ads/hn;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/am2;->a:Lcom/google/android/gms/internal/ads/ql2;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/wf2;->b:Lcom/google/android/gms/internal/ads/tg2;

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/xf2;->g(Lcom/google/android/gms/internal/ads/ql2;Lcom/google/android/gms/internal/ads/tg2;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1

    .line 14
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdym;

    const/4 v0, 0x1

    const-string v1, "Empty prefetch"

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdym;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public final bridge synthetic e()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/xf2;->b()Lcom/google/android/gms/internal/ads/g21;

    move-result-object v0

    return-object v0
.end method

.method final synthetic f(Lcom/google/android/gms/internal/ads/tg2;Lcom/google/android/gms/internal/ads/wf2;Lcom/google/android/gms/internal/ads/rg2;Lcom/google/android/gms/internal/ads/g21;Lcom/google/android/gms/internal/ads/cg2;)Lcom/google/android/gms/internal/ads/r03;
    .locals 9

    if-eqz p5, :cond_2

    .line 1
    iget-object v7, p5, Lcom/google/android/gms/internal/ads/cg2;->a:Lcom/google/android/gms/internal/ads/rl2;

    new-instance v8, Lcom/google/android/gms/internal/ads/wf2;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/wf2;->a:Lcom/google/android/gms/internal/ads/rg2;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/wf2;->b:Lcom/google/android/gms/internal/ads/tg2;

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/wf2;->c:Lcom/google/android/gms/internal/ads/zzbdg;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/wf2;->d:Ljava/lang/String;

    iget-object v5, p2, Lcom/google/android/gms/internal/ads/wf2;->e:Ljava/util/concurrent/Executor;

    iget-object v6, p2, Lcom/google/android/gms/internal/ads/wf2;->f:Lcom/google/android/gms/internal/ads/zzbdr;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/wf2;-><init>(Lcom/google/android/gms/internal/ads/rg2;Lcom/google/android/gms/internal/ads/tg2;Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzbdr;Lcom/google/android/gms/internal/ads/rl2;)V

    iget-object p2, p5, Lcom/google/android/gms/internal/ads/cg2;->c:Lcom/google/android/gms/internal/ads/ql2;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xf2;->e:Lcom/google/android/gms/internal/ads/g21;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/xf2;->c:Lcom/google/android/gms/internal/ads/dm2;

    .line 2
    invoke-virtual {p2, v8}, Lcom/google/android/gms/internal/ads/dm2;->c(Lcom/google/android/gms/internal/ads/cm2;)V

    iget-object p2, p5, Lcom/google/android/gms/internal/ads/cg2;->c:Lcom/google/android/gms/internal/ads/ql2;

    .line 3
    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/ads/xf2;->g(Lcom/google/android/gms/internal/ads/ql2;Lcom/google/android/gms/internal/ads/tg2;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/xf2;->c:Lcom/google/android/gms/internal/ads/dm2;

    .line 4
    invoke-virtual {p2, v8}, Lcom/google/android/gms/internal/ads/dm2;->d(Lcom/google/android/gms/internal/ads/cm2;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p2

    if-eqz p2, :cond_1

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xf2;->e:Lcom/google/android/gms/internal/ads/g21;

    new-instance p1, Lcom/google/android/gms/internal/ads/uf2;

    .line 5
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/uf2;-><init>(Lcom/google/android/gms/internal/ads/xf2;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/xf2;->f:Ljava/util/concurrent/Executor;

    invoke-static {p2, p1, p3}, Lcom/google/android/gms/internal/ads/k03;->i(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/uz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/xf2;->c:Lcom/google/android/gms/internal/ads/dm2;

    .line 6
    invoke-virtual {p2, v8}, Lcom/google/android/gms/internal/ads/dm2;->c(Lcom/google/android/gms/internal/ads/cm2;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/tg2;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/tg2;->b:Lcom/google/android/gms/internal/ads/qg2;

    iget-object p5, p5, Lcom/google/android/gms/internal/ads/cg2;->b:Lcom/google/android/gms/internal/ads/zzcbj;

    .line 7
    invoke-direct {p2, p1, p5}, Lcom/google/android/gms/internal/ads/tg2;-><init>(Lcom/google/android/gms/internal/ads/qg2;Lcom/google/android/gms/internal/ads/zzcbj;)V

    move-object p1, p2

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/xf2;->a:Lcom/google/android/gms/internal/ads/sg2;

    check-cast p2, Lcom/google/android/gms/internal/ads/ig2;

    .line 8
    invoke-virtual {p2, p1, p3, p4}, Lcom/google/android/gms/internal/ads/ig2;->c(Lcom/google/android/gms/internal/ads/tg2;Lcom/google/android/gms/internal/ads/rg2;Lcom/google/android/gms/internal/ads/g21;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/xf2;->e:Lcom/google/android/gms/internal/ads/g21;

    return-object p1
.end method
