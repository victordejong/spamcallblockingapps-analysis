.class public abstract Lcom/google/android/gms/internal/ads/sp0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/lt0;


# static fields
.field private static a:Lcom/google/android/gms/internal/ads/sp0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/s70;I)Lcom/google/android/gms/internal/ads/sp0;
    .locals 0

    .line 1
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/sp0;->e(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/sp0;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/sp0;->l()Lcom/google/android/gms/internal/ads/ol1;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/ol1;->a(Lcom/google/android/gms/internal/ads/s70;)V

    return-object p0
.end method

.method public static e(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/sp0;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/sp0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/sp0;->a:Lcom/google/android/gms/internal/ads/sp0;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    .line 2
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcgz;

    const v1, 0xcbe6bb0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcgz;-><init>(IIZZ)V

    new-instance p1, Lcom/google/android/gms/internal/ads/sq0;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/sq0;-><init>()V

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/sp0;->f(Lcom/google/android/gms/internal/ads/zzcgz;Landroid/content/Context;Lcom/google/android/gms/internal/ads/gs0;)Lcom/google/android/gms/internal/ads/sp0;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized f(Lcom/google/android/gms/internal/ads/zzcgz;Landroid/content/Context;Lcom/google/android/gms/internal/ads/gs0;)Lcom/google/android/gms/internal/ads/sp0;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/ads/sp0;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/sp0;->a:Lcom/google/android/gms/internal/ads/sp0;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/jr0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/jr0;-><init>(Lcom/google/android/gms/internal/ads/wr0;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/tp0;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/tp0;-><init>()V

    invoke-virtual {v3, p0}, Lcom/google/android/gms/internal/ads/tp0;->d(Lcom/google/android/gms/internal/ads/zzcgz;)Lcom/google/android/gms/internal/ads/tp0;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/tp0;->e(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/tp0;

    new-instance v4, Lcom/google/android/gms/internal/ads/vp0;

    .line 2
    invoke-direct {v4, v3, v2}, Lcom/google/android/gms/internal/ads/vp0;-><init>(Lcom/google/android/gms/internal/ads/tp0;Lcom/google/android/gms/internal/ads/up0;)V

    .line 3
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/jr0;->a(Lcom/google/android/gms/internal/ads/vp0;)Lcom/google/android/gms/internal/ads/jr0;

    new-instance v2, Lcom/google/android/gms/internal/ads/hs0;

    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/ads/hs0;-><init>(Lcom/google/android/gms/internal/ads/gs0;)V

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/jr0;->b(Lcom/google/android/gms/internal/ads/hs0;)Lcom/google/android/gms/internal/ads/jr0;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/jr0;->c()Lcom/google/android/gms/internal/ads/sp0;

    move-result-object p2

    sput-object p2, Lcom/google/android/gms/internal/ads/sp0;->a:Lcom/google/android/gms/internal/ads/sp0;

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/kw;->a(Landroid/content/Context;)V

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->h()Lcom/google/android/gms/internal/ads/ph0;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/google/android/gms/internal/ads/ph0;->i(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;)V

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->j()Lcom/google/android/gms/internal/ads/yl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/yl;->d(Landroid/content/Context;)V

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->d()Lcom/google/android/gms/ads/internal/util/c2;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/internal/util/c2;->N(Landroid/content/Context;)Z

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->d()Lcom/google/android/gms/ads/internal/util/c2;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/internal/util/c2;->O(Landroid/content/Context;)Z

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->d()Lcom/google/android/gms/ads/internal/util/c2;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/internal/util/c2;->Y(Landroid/content/Context;)V

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/n1;->a(Landroid/content/Context;)V

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->g()Lcom/google/android/gms/internal/ads/kk;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/kk;->a(Landroid/content/Context;)V

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->y()Lcom/google/android/gms/ads/internal/util/k1;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/internal/util/k1;->a(Landroid/content/Context;)V

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/mg0;->d(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/mg0;

    sget-object p2, Lcom/google/android/gms/internal/ads/kw;->x4:Lcom/google/android/gms/internal/ads/cw;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p2

    .line 17
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/google/android/gms/internal/ads/kw;->p0:Lcom/google/android/gms/internal/ads/cw;

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p2

    .line 19
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Lcom/google/android/gms/internal/ads/vv1;

    new-instance v4, Lcom/google/android/gms/internal/ads/pm;

    new-instance v1, Lcom/google/android/gms/internal/ads/tm;

    .line 20
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/tm;-><init>(Landroid/content/Context;)V

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/pm;-><init>(Lcom/google/android/gms/internal/ads/tm;)V

    new-instance v5, Lcom/google/android/gms/internal/ads/cv1;

    new-instance v1, Lcom/google/android/gms/internal/ads/yu1;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/yu1;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/sp0;->a:Lcom/google/android/gms/internal/ads/sp0;

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/sp0;->j()Lcom/google/android/gms/internal/ads/s03;

    move-result-object v2

    invoke-direct {v5, v1, v2}, Lcom/google/android/gms/internal/ads/cv1;-><init>(Lcom/google/android/gms/internal/ads/yu1;Lcom/google/android/gms/internal/ads/s03;)V

    .line 22
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->d()Lcom/google/android/gms/ads/internal/util/c2;

    .line 23
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v1, Lcom/google/android/gms/internal/ads/sp0;->a:Lcom/google/android/gms/internal/ads/sp0;

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/sp0;->g()Lcom/google/android/gms/internal/ads/jo2;

    move-result-object v7

    move-object v1, p2

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/vv1;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/internal/ads/pm;Lcom/google/android/gms/internal/ads/cv1;Ljava/lang/String;Lcom/google/android/gms/internal/ads/jo2;)V

    .line 25
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->h()Lcom/google/android/gms/internal/ads/ph0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ph0;->p()Lcom/google/android/gms/ads/internal/util/q1;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/util/q1;->t()Z

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/vv1;->a(Z)V

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/sp0;->a:Lcom/google/android/gms/internal/ads/sp0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public abstract A()Lcom/google/android/gms/internal/ads/lw1;
.end method

.method public abstract B()Lcom/google/android/gms/internal/ads/pk2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/pk2<",
            "Lcom/google/android/gms/internal/ads/qj1;",
            ">;"
        }
    .end annotation
.end method

.method public abstract C()Lcom/google/android/gms/internal/ads/lq1;
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzcbj;I)Lcom/google/android/gms/internal/ads/pb2;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/xc2;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/xc2;-><init>(Lcom/google/android/gms/internal/ads/zzcbj;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/sp0;->b(Lcom/google/android/gms/internal/ads/xc2;)Lcom/google/android/gms/internal/ads/pb2;

    move-result-object p1

    return-object p1
.end method

.method protected abstract b(Lcom/google/android/gms/internal/ads/xc2;)Lcom/google/android/gms/internal/ads/pb2;
.end method

.method public abstract c()Lcom/google/android/gms/internal/ads/ap1;
.end method

.method public abstract g()Lcom/google/android/gms/internal/ads/jo2;
.end method

.method public abstract h()Ljava/util/concurrent/Executor;
.end method

.method public abstract i()Ljava/util/concurrent/ScheduledExecutorService;
.end method

.method public abstract j()Lcom/google/android/gms/internal/ads/s03;
.end method

.method public abstract k()Lcom/google/android/gms/internal/ads/o51;
.end method

.method public abstract l()Lcom/google/android/gms/internal/ads/ol1;
.end method

.method public abstract m()Lcom/google/android/gms/internal/ads/rs0;
.end method

.method public abstract n()Lcom/google/android/gms/internal/ads/ux0;
.end method

.method public abstract o()Lcom/google/android/gms/internal/ads/of2;
.end method

.method public abstract p()Lcom/google/android/gms/internal/ads/yv0;
.end method

.method public abstract q()Lcom/google/android/gms/internal/ads/jw0;
.end method

.method public abstract r()Lcom/google/android/gms/internal/ads/yd2;
.end method

.method public abstract s()Lcom/google/android/gms/internal/ads/ic1;
.end method

.method public abstract t()Lcom/google/android/gms/internal/ads/ih2;
.end method

.method public abstract u()Lcom/google/android/gms/internal/ads/ed1;
.end method

.method public abstract v()Lcom/google/android/gms/internal/ads/jk1;
.end method

.method public abstract w()Lcom/google/android/gms/internal/ads/xi2;
.end method

.method public abstract x()Lcom/google/android/gms/ads/nonagon/signalgeneration/o;
.end method

.method public abstract y()Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;
.end method

.method public abstract z()Lcom/google/android/gms/ads/nonagon/signalgeneration/k;
.end method
