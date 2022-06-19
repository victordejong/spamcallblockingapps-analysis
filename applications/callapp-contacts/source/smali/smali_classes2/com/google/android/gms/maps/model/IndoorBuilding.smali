.class public final Lcom/google/android/gms/maps/model/IndoorBuilding;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/model/IndoorBuilding$zza;
    }
.end annotation


# instance fields
.field private final zzdd:Lcom/google/android/gms/internal/e/n;

.field private final zzde:Lcom/google/android/gms/maps/model/IndoorBuilding$zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/e/n;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/maps/model/IndoorBuilding$zza;->zzdf:Lcom/google/android/gms/maps/model/IndoorBuilding$zza;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/maps/model/IndoorBuilding;-><init>(Lcom/google/android/gms/internal/e/n;Lcom/google/android/gms/maps/model/IndoorBuilding$zza;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/e/n;Lcom/google/android/gms/maps/model/IndoorBuilding$zza;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "delegate"

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/e/n;

    iput-object p1, p0, Lcom/google/android/gms/maps/model/IndoorBuilding;->zzdd:Lcom/google/android/gms/internal/e/n;

    const-string p1, "shim"

    .line 5
    invoke-static {p2, p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/model/IndoorBuilding$zza;

    iput-object p1, p0, Lcom/google/android/gms/maps/model/IndoorBuilding;->zzde:Lcom/google/android/gms/maps/model/IndoorBuilding$zza;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 24
    instance-of p1, p1, Lcom/google/android/gms/maps/model/IndoorBuilding;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 26
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/model/IndoorBuilding;->zzdd:Lcom/google/android/gms/internal/e/n;

    invoke-interface {p1}, Lcom/google/android/gms/internal/e/n;->e()Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 28
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final getActiveLevelIndex()I
    .locals 2

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorBuilding;->zzdd:Lcom/google/android/gms/internal/e/n;

    invoke-interface {v0}, Lcom/google/android/gms/internal/e/n;->a()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 12
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getDefaultLevelIndex()I
    .locals 2

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorBuilding;->zzdd:Lcom/google/android/gms/internal/e/n;

    invoke-interface {v0}, Lcom/google/android/gms/internal/e/n;->b()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getLevels()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/IndoorLevel;",
            ">;"
        }
    .end annotation

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorBuilding;->zzdd:Lcom/google/android/gms/internal/e/n;

    invoke-interface {v0}, Lcom/google/android/gms/internal/e/n;->c()Ljava/util/List;

    move-result-object v0

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 16
    invoke-static {v2}, Lcom/google/android/gms/maps/model/IndoorBuilding$zza;->zza(Landroid/os/IBinder;)Lcom/google/android/gms/internal/e/o;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/maps/model/IndoorBuilding$zza;->zza(Lcom/google/android/gms/internal/e/o;)Lcom/google/android/gms/maps/model/IndoorLevel;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    .line 20
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final hashCode()I
    .locals 2

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorBuilding;->zzdd:Lcom/google/android/gms/internal/e/n;

    invoke-interface {v0}, Lcom/google/android/gms/internal/e/n;->f()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 31
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isUnderground()Z
    .locals 2

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorBuilding;->zzdd:Lcom/google/android/gms/internal/e/n;

    invoke-interface {v0}, Lcom/google/android/gms/internal/e/n;->d()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 23
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
