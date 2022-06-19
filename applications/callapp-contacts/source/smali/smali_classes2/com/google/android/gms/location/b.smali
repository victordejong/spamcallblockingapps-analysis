.class public final Lcom/google/android/gms/location/b;
.super Lcom/google/android/gms/common/api/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/f<",
        "Lcom/google/android/gms/common/api/a$d$c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/location/e;->a:Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/common/api/a$d;->f:Lcom/google/android/gms/common/api/a$d$c;

    new-instance v2, Lcom/google/android/gms/common/api/internal/a;

    invoke-direct {v2}, Lcom/google/android/gms/common/api/internal/a;-><init>()V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/common/api/f;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/internal/q;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 2
    sget-object v0, Lcom/google/android/gms/location/e;->a:Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/common/api/a$d;->f:Lcom/google/android/gms/common/api/a$d$c;

    new-instance v2, Lcom/google/android/gms/common/api/internal/a;

    invoke-direct {v2}, Lcom/google/android/gms/common/api/internal/a;-><init>()V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/common/api/f;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/internal/q;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/tasks/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/h<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/api/internal/s;->a()Lcom/google/android/gms/common/api/internal/s$a;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/location/av;

    invoke-direct {v1, p0}, Lcom/google/android/gms/location/av;-><init>(Lcom/google/android/gms/location/b;)V

    .line 1000
    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/s$a;->a:Lcom/google/android/gms/common/api/internal/p;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/s$a;->a()Lcom/google/android/gms/common/api/internal/s$a;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/s$a;->b()Lcom/google/android/gms/common/api/internal/s;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/location/b;->a(Lcom/google/android/gms/common/api/internal/s;)Lcom/google/android/gms/tasks/h;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/location/d;)Lcom/google/android/gms/tasks/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/d;",
            ")",
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/location/d;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/api/internal/j;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/i$a;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/b;->a(Lcom/google/android/gms/common/api/internal/i$a;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/t;->a(Lcom/google/android/gms/tasks/h;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    return-object p1
.end method

.method final synthetic a(Lcom/google/android/gms/internal/location/p;Lcom/google/android/gms/tasks/i;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/location/b;->f()Ljava/lang/String;

    move-result-object v0

    .line 4001
    invoke-virtual {p1}, Lcom/google/android/gms/internal/location/p;->getAvailableFeatures()[Lcom/google/android/gms/common/Feature;

    move-result-object v1

    .line 4002
    sget-object v2, Lcom/google/android/gms/location/au;->c:Lcom/google/android/gms/common/Feature;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/util/b;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/location/p;->a:Lcom/google/android/gms/internal/location/o;

    .line 4003
    iget-object v1, p1, Lcom/google/android/gms/internal/location/o;->a:Lcom/google/android/gms/internal/location/u;

    check-cast v1, Lcom/google/android/gms/internal/location/aj;

    iget-object v1, v1, Lcom/google/android/gms/internal/location/aj;->a:Lcom/google/android/gms/internal/location/ak;

    .line 6001
    invoke-virtual {v1}, Lcom/google/android/gms/internal/location/ak;->checkConnected()V

    .line 5001
    iget-object p1, p1, Lcom/google/android/gms/internal/location/o;->a:Lcom/google/android/gms/internal/location/u;

    check-cast p1, Lcom/google/android/gms/internal/location/aj;

    .line 5002
    invoke-virtual {p1}, Lcom/google/android/gms/internal/location/aj;->a()Lcom/google/android/gms/internal/location/h;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/location/h;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    goto :goto_0

    .line 4003
    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/location/p;->a:Lcom/google/android/gms/internal/location/o;

    .line 4004
    iget-object v0, p1, Lcom/google/android/gms/internal/location/o;->a:Lcom/google/android/gms/internal/location/u;

    check-cast v0, Lcom/google/android/gms/internal/location/aj;

    iget-object v0, v0, Lcom/google/android/gms/internal/location/aj;->a:Lcom/google/android/gms/internal/location/ak;

    .line 8001
    invoke-virtual {v0}, Lcom/google/android/gms/internal/location/ak;->checkConnected()V

    .line 7001
    iget-object p1, p1, Lcom/google/android/gms/internal/location/o;->a:Lcom/google/android/gms/internal/location/u;

    check-cast p1, Lcom/google/android/gms/internal/location/aj;

    .line 7002
    invoke-virtual {p1}, Lcom/google/android/gms/internal/location/aj;->a()Lcom/google/android/gms/internal/location/h;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/location/h;->b()Landroid/location/Location;

    move-result-object p1

    .line 2
    :goto_0
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/i;->a(Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic a(Lcom/google/android/gms/location/m;Lcom/google/android/gms/location/d;Lcom/google/android/gms/location/k;Lcom/google/android/gms/internal/location/zzba;Lcom/google/android/gms/common/api/internal/i;Lcom/google/android/gms/internal/location/p;Lcom/google/android/gms/tasks/i;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v6, Lcom/google/android/gms/location/j;

    new-instance v0, Lcom/google/android/gms/location/aw;

    .line 1
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/location/aw;-><init>(Lcom/google/android/gms/location/b;Lcom/google/android/gms/location/m;Lcom/google/android/gms/location/d;Lcom/google/android/gms/location/k;)V

    invoke-direct {v6, p7, v0}, Lcom/google/android/gms/location/j;-><init>(Lcom/google/android/gms/tasks/i;Lcom/google/android/gms/location/k;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/location/b;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/location/zzba;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/location/zzba;

    .line 3
    iget-object p1, p6, Lcom/google/android/gms/internal/location/p;->a:Lcom/google/android/gms/internal/location/o;

    .line 1001
    monitor-enter p1

    :try_start_0
    iget-object p2, p6, Lcom/google/android/gms/internal/location/p;->a:Lcom/google/android/gms/internal/location/o;

    .line 1002
    iget-object p3, p2, Lcom/google/android/gms/internal/location/o;->a:Lcom/google/android/gms/internal/location/u;

    check-cast p3, Lcom/google/android/gms/internal/location/aj;

    iget-object p3, p3, Lcom/google/android/gms/internal/location/aj;->a:Lcom/google/android/gms/internal/location/ak;

    .line 3001
    invoke-virtual {p3}, Lcom/google/android/gms/internal/location/ak;->checkConnected()V

    .line 4000
    iget-object p3, p5, Lcom/google/android/gms/common/api/internal/i;->b:Lcom/google/android/gms/common/api/internal/i$a;

    if-nez p3, :cond_0

    const/4 p3, 0x0

    move-object v5, p3

    goto :goto_0

    .line 2011
    :cond_0
    iget-object p6, p2, Lcom/google/android/gms/internal/location/o;->e:Ljava/util/Map;

    monitor-enter p6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p7, p2, Lcom/google/android/gms/internal/location/o;->e:Ljava/util/Map;

    .line 2003
    invoke-interface {p7, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lcom/google/android/gms/internal/location/k;

    if-nez p7, :cond_1

    new-instance p7, Lcom/google/android/gms/internal/location/k;

    .line 2004
    invoke-direct {p7, p5}, Lcom/google/android/gms/internal/location/k;-><init>(Lcom/google/android/gms/common/api/internal/i;)V

    :cond_1
    iget-object p5, p2, Lcom/google/android/gms/internal/location/o;->e:Ljava/util/Map;

    .line 2005
    invoke-interface {p5, p3, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2006
    monitor-exit p6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, p7

    :goto_0
    if-eqz v5, :cond_2

    .line 2002
    :try_start_2
    iget-object p2, p2, Lcom/google/android/gms/internal/location/o;->a:Lcom/google/android/gms/internal/location/u;

    check-cast p2, Lcom/google/android/gms/internal/location/aj;

    .line 2008
    invoke-virtual {p2}, Lcom/google/android/gms/internal/location/aj;->a()Lcom/google/android/gms/internal/location/h;

    move-result-object p2

    .line 2009
    new-instance p3, Lcom/google/android/gms/internal/location/zzbc;

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p3

    move-object v2, p4

    .line 2010
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/location/zzbc;-><init>(ILcom/google/android/gms/internal/location/zzba;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 2011
    invoke-interface {p2, p3}, Lcom/google/android/gms/internal/location/h;->a(Lcom/google/android/gms/internal/location/zzbc;)V

    .line 1003
    :cond_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p2

    .line 2007
    :try_start_3
    monitor-exit p6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p2

    :catchall_1
    move-exception p2

    .line 1003
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p2
.end method
