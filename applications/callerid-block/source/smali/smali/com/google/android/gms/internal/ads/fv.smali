.class public abstract Lcom/google/android/gms/internal/ads/fv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/ty;


# static fields
.field private static a:Lcom/google/android/gms/internal/ads/fv;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "AppComponent.class"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/he;I)Lcom/google/android/gms/internal/ads/fv;
    .locals 0

    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/fv;->e(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/fv;->l()Lcom/google/android/gms/internal/ads/fp0;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/fp0;->a(Lcom/google/android/gms/internal/ads/he;)V

    return-object p0
.end method

.method public static e(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/fv;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/ads/fv;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/fv;->a:Lcom/google/android/gms/internal/ads/fv;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbq;

    const v1, 0xc91ed10

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbbq;-><init>(IIZZ)V

    new-instance p1, Lcom/google/android/gms/internal/ads/fw;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/fw;-><init>()V

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/fv;->f(Lcom/google/android/gms/internal/ads/zzbbq;Landroid/content/Context;Lcom/google/android/gms/internal/ads/tx;)Lcom/google/android/gms/internal/ads/fv;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized f(Lcom/google/android/gms/internal/ads/zzbbq;Landroid/content/Context;Lcom/google/android/gms/internal/ads/tx;)Lcom/google/android/gms/internal/ads/fv;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/ads/fv;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/fv;->a:Lcom/google/android/gms/internal/ads/fv;

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/gms/internal/ads/ax;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/ax;-><init>(Lcom/google/android/gms/internal/ads/gw;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/hv;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/hv;-><init>()V

    invoke-virtual {v3, p0}, Lcom/google/android/gms/internal/ads/hv;->a(Lcom/google/android/gms/internal/ads/zzbbq;)Lcom/google/android/gms/internal/ads/hv;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/hv;->b(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/hv;

    new-instance v4, Lcom/google/android/gms/internal/ads/iv;

    invoke-direct {v4, v3, v2}, Lcom/google/android/gms/internal/ads/iv;-><init>(Lcom/google/android/gms/internal/ads/hv;Lcom/google/android/gms/internal/ads/gv;)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/ax;->a(Lcom/google/android/gms/internal/ads/iv;)Lcom/google/android/gms/internal/ads/ax;

    new-instance v2, Lcom/google/android/gms/internal/ads/ux;

    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/ads/ux;-><init>(Lcom/google/android/gms/internal/ads/tx;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/ax;->b(Lcom/google/android/gms/internal/ads/ux;)Lcom/google/android/gms/internal/ads/ax;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ax;->c()Lcom/google/android/gms/internal/ads/fv;

    move-result-object p2

    sput-object p2, Lcom/google/android/gms/internal/ads/fv;->a:Lcom/google/android/gms/internal/ads/fv;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/m3;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->h()Lcom/google/android/gms/internal/ads/zn;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/google/android/gms/internal/ads/zn;->e(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbq;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->j()Lcom/google/android/gms/internal/ads/fv2;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/fv2;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->d()Lcom/google/android/gms/ads/internal/util/l1;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/internal/util/l1;->H(Landroid/content/Context;)Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->d()Lcom/google/android/gms/ads/internal/util/l1;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/internal/util/l1;->I(Landroid/content/Context;)Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->d()Lcom/google/android/gms/ads/internal/util/l1;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/internal/util/l1;->S(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/x0;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->g()Lcom/google/android/gms/internal/ads/st2;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/st2;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->d()Lcom/google/android/gms/ads/internal/util/l1;

    invoke-static {}, Lcom/google/android/gms/common/util/n;->k()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const-string v1, "AdMobOfflineBufferedPings.db"

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "notification"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    const-string v1, "offline_notification_channel"

    invoke-virtual {p2, v1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->y()Lcom/google/android/gms/ads/internal/util/t0;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/internal/util/t0;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/xm;->d(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/xm;

    sget-object p2, Lcom/google/android/gms/internal/ads/m3;->N3:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Lcom/google/android/gms/internal/ads/m3;->l0:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_2

    new-instance p2, Lcom/google/android/gms/internal/ads/bz0;

    new-instance v4, Lcom/google/android/gms/internal/ads/wv2;

    new-instance v1, Lcom/google/android/gms/internal/ads/aw2;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/aw2;-><init>(Landroid/content/Context;)V

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/wv2;-><init>(Lcom/google/android/gms/internal/ads/aw2;)V

    new-instance v5, Lcom/google/android/gms/internal/ads/jy0;

    new-instance v1, Lcom/google/android/gms/internal/ads/fy0;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/fy0;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/fv;->a:Lcom/google/android/gms/internal/ads/fv;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/fv;->j()Lcom/google/android/gms/internal/ads/sz1;

    move-result-object v2

    invoke-direct {v5, v1, v2}, Lcom/google/android/gms/internal/ads/jy0;-><init>(Lcom/google/android/gms/internal/ads/fy0;Lcom/google/android/gms/internal/ads/sz1;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->d()Lcom/google/android/gms/ads/internal/util/l1;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v1, Lcom/google/android/gms/internal/ads/fv;->a:Lcom/google/android/gms/internal/ads/fv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/fv;->g()Lcom/google/android/gms/internal/ads/aq1;

    move-result-object v7

    move-object v1, p2

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/bz0;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbq;Lcom/google/android/gms/internal/ads/wv2;Lcom/google/android/gms/internal/ads/jy0;Ljava/lang/String;Lcom/google/android/gms/internal/ads/aq1;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->h()Lcom/google/android/gms/internal/ads/zn;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zn;->l()Lcom/google/android/gms/ads/internal/util/a1;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/util/a1;->K()Z

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/bz0;->a(Z)V

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/ads/fv;->a:Lcom/google/android/gms/internal/ads/fv;
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
.method public abstract A()Lcom/google/android/gms/internal/ads/jm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/jm1<",
            "Lcom/google/android/gms/internal/ads/mn0;",
            ">;"
        }
    .end annotation
.end method

.method public abstract B()Lcom/google/android/gms/internal/ads/zt0;
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzawc;I)Lcom/google/android/gms/internal/ads/ae1;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/hf1;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/hf1;-><init>(Lcom/google/android/gms/internal/ads/zzawc;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/fv;->b(Lcom/google/android/gms/internal/ads/hf1;)Lcom/google/android/gms/internal/ads/ae1;

    move-result-object p1

    return-object p1
.end method

.method protected abstract b(Lcom/google/android/gms/internal/ads/hf1;)Lcom/google/android/gms/internal/ads/ae1;
.end method

.method public abstract c()Lcom/google/android/gms/internal/ads/qs0;
.end method

.method public abstract g()Lcom/google/android/gms/internal/ads/aq1;
.end method

.method public abstract h()Ljava/util/concurrent/Executor;
.end method

.method public abstract i()Ljava/util/concurrent/ScheduledExecutorService;
.end method

.method public abstract j()Lcom/google/android/gms/internal/ads/sz1;
.end method

.method public abstract k()Lcom/google/android/gms/internal/ads/ga0;
.end method

.method public abstract l()Lcom/google/android/gms/internal/ads/fp0;
.end method

.method public abstract m()Lcom/google/android/gms/internal/ads/by;
.end method

.method public abstract n()Lcom/google/android/gms/internal/ads/r20;
.end method

.method public abstract o()Lcom/google/android/gms/internal/ads/mh1;
.end method

.method public abstract p()Lcom/google/android/gms/internal/ads/v00;
.end method

.method public abstract q()Lcom/google/android/gms/internal/ads/g10;
.end method

.method public abstract r()Lcom/google/android/gms/internal/ads/cg1;
.end method

.method public abstract s()Lcom/google/android/gms/internal/ads/ig0;
.end method

.method public abstract t()Lcom/google/android/gms/internal/ads/gj1;
.end method

.method public abstract u()Lcom/google/android/gms/internal/ads/eh0;
.end method

.method public abstract v()Lcom/google/android/gms/internal/ads/zn0;
.end method

.method public abstract w()Lcom/google/android/gms/internal/ads/tk1;
.end method

.method public abstract x()Lcom/google/android/gms/ads/x/a/b;
.end method

.method public abstract y()Lcom/google/android/gms/ads/x/a/t;
.end method

.method public abstract z()Lcom/google/android/gms/internal/ads/rz0;
.end method
