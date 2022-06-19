.class public final Lcom/google/android/gms/internal/location/p;
.super Lcom/google/android/gms/internal/location/ak;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/location/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/g$a;Lcom/google/android/gms/common/api/g$b;Ljava/lang/String;Lcom/google/android/gms/common/internal/e;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/location/ak;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/g$a;Lcom/google/android/gms/common/api/g$b;Ljava/lang/String;Lcom/google/android/gms/common/internal/e;)V

    new-instance p2, Lcom/google/android/gms/internal/location/o;

    iget-object p3, p0, Lcom/google/android/gms/internal/location/p;->b:Lcom/google/android/gms/internal/location/u;

    .line 2
    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/location/o;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/location/u;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/location/p;->a:Lcom/google/android/gms/internal/location/o;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/internal/i$a;Lcom/google/android/gms/internal/location/f;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/i$a<",
            "Lcom/google/android/gms/location/d;",
            ">;",
            "Lcom/google/android/gms/internal/location/f;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/location/p;->a:Lcom/google/android/gms/internal/location/o;

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/location/o;->a:Lcom/google/android/gms/internal/location/u;

    check-cast v1, Lcom/google/android/gms/internal/location/aj;

    iget-object v1, v1, Lcom/google/android/gms/internal/location/aj;->a:Lcom/google/android/gms/internal/location/ak;

    .line 6001
    invoke-virtual {v1}, Lcom/google/android/gms/internal/location/ak;->checkConnected()V

    const-string v1, "Invalid null listener key"

    .line 5002
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/android/gms/internal/location/o;->e:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/google/android/gms/internal/location/o;->e:Ljava/util/Map;

    .line 5003
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/location/k;

    if-eqz p1, :cond_0

    .line 5004
    invoke-virtual {p1}, Lcom/google/android/gms/internal/location/k;->a()V

    iget-object v0, v0, Lcom/google/android/gms/internal/location/o;->a:Lcom/google/android/gms/internal/location/u;

    check-cast v0, Lcom/google/android/gms/internal/location/aj;

    .line 5005
    invoke-virtual {v0}, Lcom/google/android/gms/internal/location/aj;->a()Lcom/google/android/gms/internal/location/h;

    move-result-object v0

    .line 5006
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/location/zzbc;->zzc(Lcom/google/android/gms/location/t;Lcom/google/android/gms/internal/location/f;)Lcom/google/android/gms/internal/location/zzbc;

    move-result-object p1

    .line 5007
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/location/h;->a(Lcom/google/android/gms/internal/location/zzbc;)V

    .line 5008
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final disconnect()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/location/p;->a:Lcom/google/android/gms/internal/location/o;

    .line 1
    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/p;->isConnected()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v1, :cond_6

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/location/p;->a:Lcom/google/android/gms/internal/location/o;

    .line 3
    iget-object v2, v1, Lcom/google/android/gms/internal/location/o;->c:Ljava/util/Map;

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-object v3, v1, Lcom/google/android/gms/internal/location/o;->c:Ljava/util/Map;

    .line 1001
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/location/n;

    if-eqz v4, :cond_0

    iget-object v6, v1, Lcom/google/android/gms/internal/location/o;->a:Lcom/google/android/gms/internal/location/u;

    check-cast v6, Lcom/google/android/gms/internal/location/aj;

    .line 1002
    invoke-virtual {v6}, Lcom/google/android/gms/internal/location/aj;->a()Lcom/google/android/gms/internal/location/h;

    move-result-object v6

    .line 1003
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/location/zzbc;->zza(Lcom/google/android/gms/location/w;Lcom/google/android/gms/internal/location/f;)Lcom/google/android/gms/internal/location/zzbc;

    move-result-object v4

    .line 1004
    invoke-interface {v6, v4}, Lcom/google/android/gms/internal/location/h;->a(Lcom/google/android/gms/internal/location/zzbc;)V

    goto :goto_0

    :cond_1
    iget-object v3, v1, Lcom/google/android/gms/internal/location/o;->c:Ljava/util/Map;

    .line 1005
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 1006
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v2, v1, Lcom/google/android/gms/internal/location/o;->e:Ljava/util/Map;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    iget-object v3, v1, Lcom/google/android/gms/internal/location/o;->e:Ljava/util/Map;

    .line 1007
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/location/k;

    if-eqz v4, :cond_2

    iget-object v6, v1, Lcom/google/android/gms/internal/location/o;->a:Lcom/google/android/gms/internal/location/u;

    check-cast v6, Lcom/google/android/gms/internal/location/aj;

    .line 1008
    invoke-virtual {v6}, Lcom/google/android/gms/internal/location/aj;->a()Lcom/google/android/gms/internal/location/h;

    move-result-object v6

    .line 1009
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/location/zzbc;->zzc(Lcom/google/android/gms/location/t;Lcom/google/android/gms/internal/location/f;)Lcom/google/android/gms/internal/location/zzbc;

    move-result-object v4

    .line 1010
    invoke-interface {v6, v4}, Lcom/google/android/gms/internal/location/h;->a(Lcom/google/android/gms/internal/location/zzbc;)V

    goto :goto_1

    :cond_3
    iget-object v3, v1, Lcom/google/android/gms/internal/location/o;->e:Ljava/util/Map;

    .line 1011
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 1012
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v2, v1, Lcom/google/android/gms/internal/location/o;->d:Ljava/util/Map;

    monitor-enter v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    iget-object v3, v1, Lcom/google/android/gms/internal/location/o;->d:Ljava/util/Map;

    .line 1013
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/location/l;

    if-eqz v4, :cond_4

    iget-object v6, v1, Lcom/google/android/gms/internal/location/o;->a:Lcom/google/android/gms/internal/location/u;

    check-cast v6, Lcom/google/android/gms/internal/location/aj;

    .line 1014
    invoke-virtual {v6}, Lcom/google/android/gms/internal/location/aj;->a()Lcom/google/android/gms/internal/location/h;

    move-result-object v6

    .line 1015
    new-instance v7, Lcom/google/android/gms/internal/location/zzl;

    const/4 v8, 0x2

    .line 1016
    invoke-direct {v7, v8, v5, v4, v5}, Lcom/google/android/gms/internal/location/zzl;-><init>(ILcom/google/android/gms/internal/location/zzj;Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 1017
    invoke-interface {v6, v7}, Lcom/google/android/gms/internal/location/h;->a(Lcom/google/android/gms/internal/location/zzl;)V

    goto :goto_2

    :cond_5
    iget-object v1, v1, Lcom/google/android/gms/internal/location/o;->d:Ljava/util/Map;

    .line 1018
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1019
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3
    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/internal/location/p;->a:Lcom/google/android/gms/internal/location/o;

    .line 4
    iget-boolean v2, v1, Lcom/google/android/gms/internal/location/o;->b:Z

    if-eqz v2, :cond_6

    .line 2001
    iget-object v2, v1, Lcom/google/android/gms/internal/location/o;->a:Lcom/google/android/gms/internal/location/u;

    check-cast v2, Lcom/google/android/gms/internal/location/aj;

    iget-object v2, v2, Lcom/google/android/gms/internal/location/aj;->a:Lcom/google/android/gms/internal/location/ak;

    .line 4001
    invoke-virtual {v2}, Lcom/google/android/gms/internal/location/ak;->checkConnected()V

    .line 3001
    iget-object v2, v1, Lcom/google/android/gms/internal/location/o;->a:Lcom/google/android/gms/internal/location/u;

    check-cast v2, Lcom/google/android/gms/internal/location/aj;

    .line 3002
    invoke-virtual {v2}, Lcom/google/android/gms/internal/location/aj;->a()Lcom/google/android/gms/internal/location/h;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/location/h;->a(Z)V

    iput-boolean v3, v1, Lcom/google/android/gms/internal/location/o;->b:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_0
    move-exception v1

    .line 1019
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_1
    move-exception v1

    .line 1012
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_2
    move-exception v1

    .line 1006
    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :catch_0
    move-exception v1

    :try_start_e
    const-string v2, "LocationClientImpl"

    const-string v3, "Client disconnected before listeners could be cleaned up"

    .line 5
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    :cond_6
    :goto_3
    invoke-super {p0}, Lcom/google/android/gms/internal/location/ak;->disconnect()V

    .line 7
    monitor-exit v0

    return-void

    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    throw v1
.end method

.method public final usesClientTelemetry()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
