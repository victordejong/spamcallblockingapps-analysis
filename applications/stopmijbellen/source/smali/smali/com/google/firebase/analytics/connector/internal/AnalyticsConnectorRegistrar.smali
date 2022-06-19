.class public Lcom/google/firebase/analytics/connector/internal/AnalyticsConnectorRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz4/g;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final lambda$getComponents$0$AnalyticsConnectorRegistrar(Lz4/d;)Lx4/a;
    .locals 7

    const-class v0, Lt4/c;

    .line 1
    invoke-interface {p0, v0}, Lz4/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt4/c;

    const-class v1, Landroid/content/Context;

    .line 2
    invoke-interface {p0, v1}, Lz4/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lu5/d;

    .line 3
    invoke-interface {p0, v2}, Lz4/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu5/d;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lx4/b;->c:Lx4/a;

    if-nez v2, :cond_2

    const-class v2, Lx4/b;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lx4/b;->c:Lx4/a;

    if-nez v3, :cond_1

    new-instance v3, Landroid/os/Bundle;

    const/4 v4, 0x1

    .line 8
    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(I)V

    .line 9
    invoke-virtual {v0}, Lt4/c;->g()Z

    move-result v4

    if-eqz v4, :cond_0

    const-class v4, Lt4/a;

    sget-object v5, Lx4/c;->a:Ljava/util/concurrent/Executor;

    .line 10
    sget-object v6, Lx4/d;->a:Lu5/b;

    invoke-interface {p0, v4, v5, v6}, Lu5/d;->a(Ljava/lang/Class;Ljava/util/concurrent/Executor;Lu5/b;)V

    const-string p0, "dataCollectionDefaultEnabled"

    .line 11
    invoke-virtual {v0}, Lt4/c;->f()Z

    move-result v0

    .line 12
    invoke-virtual {v3, p0, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    new-instance p0, Lx4/b;

    const/4 v0, 0x0

    .line 13
    invoke-static {v1, v0, v0, v0, v3}, Lcom/google/android/gms/internal/measurement/zzee;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/zzee;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzee;->zzb()Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    move-result-object v0

    .line 14
    invoke-direct {p0, v0}, Lx4/b;-><init>(Lcom/google/android/gms/measurement/api/AppMeasurementSdk;)V

    sput-object p0, Lx4/b;->c:Lx4/a;

    .line 15
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    sget-object p0, Lx4/b;->c:Lx4/a;

    return-object p0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lz4/c<",
            "*>;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lz4/c;

    const-class v1, Lx4/a;

    .line 1
    invoke-static {v1}, Lz4/c;->a(Ljava/lang/Class;)Lz4/c$b;

    move-result-object v1

    const-class v2, Lt4/c;

    .line 2
    new-instance v3, Lz4/m;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v3, v2, v4, v5}, Lz4/m;-><init>(Ljava/lang/Class;II)V

    .line 3
    invoke-virtual {v1, v3}, Lz4/c$b;->a(Lz4/m;)Lz4/c$b;

    const-class v2, Landroid/content/Context;

    .line 4
    new-instance v3, Lz4/m;

    invoke-direct {v3, v2, v4, v5}, Lz4/m;-><init>(Ljava/lang/Class;II)V

    .line 5
    invoke-virtual {v1, v3}, Lz4/c$b;->a(Lz4/m;)Lz4/c$b;

    const-class v2, Lu5/d;

    .line 6
    new-instance v3, Lz4/m;

    invoke-direct {v3, v2, v4, v5}, Lz4/m;-><init>(Ljava/lang/Class;II)V

    .line 7
    invoke-virtual {v1, v3}, Lz4/c$b;->a(Lz4/m;)Lz4/c$b;

    sget-object v2, Lg6/b;->h:Lz4/f;

    .line 8
    invoke-virtual {v1, v2}, Lz4/c$b;->d(Lz4/f;)Lz4/c$b;

    .line 9
    invoke-virtual {v1}, Lz4/c$b;->c()Lz4/c$b;

    .line 10
    invoke-virtual {v1}, Lz4/c$b;->b()Lz4/c;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "fire-analytics"

    const-string v2, "19.0.0"

    .line 11
    invoke-static {v1, v2}, Lp6/f;->a(Ljava/lang/String;Ljava/lang/String;)Lz4/c;

    move-result-object v1

    aput-object v1, v0, v4

    .line 12
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
