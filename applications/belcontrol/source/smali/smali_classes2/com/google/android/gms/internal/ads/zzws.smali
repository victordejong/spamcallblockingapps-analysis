.class public abstract Lcom/google/android/gms/internal/ads/zzws;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final zzcju:Lcom/google/android/gms/internal/ads/zzxy;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzws;->zzqw()Lcom/google/android/gms/internal/ads/zzxy;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzws;->zzcju:Lcom/google/android/gms/internal/ads/zzxy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static zzqw()Lcom/google/android/gms/internal/ads/zzxy;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lcom/google/android/gms/internal/ads/zzwc;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.google.android.gms.ads.internal.ClientApi"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/os/IBinder;

    if-nez v2, :cond_0

    const-string v1, "ClientApi class is not an instance of IBinder."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzazk;->zzex(Ljava/lang/String;)V

    return-object v0

    :cond_0
    check-cast v1, Landroid/os/IBinder;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const-string v2, "com.google.android.gms.ads.internal.client.IClientApi"

    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/ads/zzxy;

    if-eqz v3, :cond_2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzxy;

    return-object v2

    :cond_2
    new-instance v2, Lcom/google/android/gms/internal/ads/zzya;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzya;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    const-string v1, "Failed to instantiate ClientApi class."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzazk;->zzex(Ljava/lang/String;)V

    return-object v0
.end method

.method private final zzqx()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzws;->zzcju:Lcom/google/android/gms/internal/ads/zzxy;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "ClientApi class cannot be loaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzex(Ljava/lang/String;)V

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzws;->zza(Lcom/google/android/gms/internal/ads/zzxy;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "Cannot invoke local loader using ClientApi class."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private final zzqy()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzws;->zzqk()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Cannot invoke remote loader."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public abstract zza(Lcom/google/android/gms/internal/ads/zzxy;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzxy;",
            ")TT;"
        }
    .end annotation
.end method

.method public final zzd(Landroid/content/Context;Z)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    if-nez p2, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqn()Lcom/google/android/gms/internal/ads/zzaza;

    const v2, 0xbdfcb8

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/zzaza;->zzf(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_1

    const-string p2, "Google Play Services is not available."

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzazk;->zzdy(Ljava/lang/String;)V

    const/4 p2, 0x1

    :cond_1
    const-string v2, "com.google.android.gms.ads.dynamite"

    invoke-static {p1, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {p1, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->getRemoteVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-le v3, v2, :cond_2

    const/4 p2, 0x1

    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzabp;->initialize(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzade;->zzddd:Lcom/google/android/gms/internal/ads/zzacx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzacx;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 p2, 0x0

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/google/android/gms/internal/ads/zzade;->zzdde:Lcom/google/android/gms/internal/ads/zzacx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzacx;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 p2, 0x1

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v2, 0x0

    :goto_2
    if-eqz p2, :cond_5

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzws;->zzqx()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_a

    if-nez v2, :cond_a

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzws;->zzqy()Ljava/lang/Object;

    move-result-object p1

    goto :goto_4

    :cond_5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzws;->zzqy()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_6

    const/4 v2, 0x1

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_8

    sget-object v3, Lcom/google/android/gms/internal/ads/zzadr;->zzdeq:Lcom/google/android/gms/internal/ads/zzacx;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzacx;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqu()Ljava/util/Random;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    if-nez v3, :cond_7

    const/4 v0, 0x1

    :cond_7
    if-eqz v0, :cond_8

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v0, "action"

    const-string v1, "dynamite_load"

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "is_missing"

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqn()Lcom/google/android/gms/internal/ads/zzaza;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqt()Lcom/google/android/gms/internal/ads/zzazn;

    move-result-object v0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzazn;->zzbrp:Ljava/lang/String;

    const/4 v8, 0x1

    const-string v6, "gmob-apps"

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzaza;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    :cond_8
    if-nez p2, :cond_9

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzws;->zzqx()Ljava/lang/Object;

    move-result-object p1

    goto :goto_4

    :cond_9
    move-object p1, p2

    :cond_a
    :goto_4
    if-nez p1, :cond_b

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzws;->zzqj()Ljava/lang/Object;

    move-result-object p1

    :cond_b
    return-object p1
.end method

.method public abstract zzqj()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract zzqk()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
