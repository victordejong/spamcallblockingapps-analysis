.class public abstract Lcom/google/android/gms/internal/ads/ejy;
.super Ljava/lang/Object;
.source "SourceFile"


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
.field private static final a:Lcom/google/android/gms/internal/ads/elf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    invoke-static {}, Lcom/google/android/gms/internal/ads/ejy;->c()Lcom/google/android/gms/internal/ads/elf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/ejy;->a:Lcom/google/android/gms/internal/ads/elf;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static c()Lcom/google/android/gms/internal/ads/elf;
    .locals 4

    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-class v1, Lcom/google/android/gms/internal/ads/ejj;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.google.android.gms.ads.internal.ClientApi"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 8
    instance-of v2, v1, Landroid/os/IBinder;

    if-nez v2, :cond_0

    const-string v1, "ClientApi class is not an instance of IBinder."

    .line 9
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/za;->zzez(Ljava/lang/String;)V

    return-object v0

    .line 11
    :cond_0
    check-cast v1, Landroid/os/IBinder;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const-string v2, "com.google.android.gms.ads.internal.client.IClientApi"

    .line 14
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 15
    instance-of v3, v2, Lcom/google/android/gms/internal/ads/elf;

    if-eqz v3, :cond_2

    .line 16
    check-cast v2, Lcom/google/android/gms/internal/ads/elf;

    return-object v2

    .line 17
    :cond_2
    new-instance v2, Lcom/google/android/gms/internal/ads/elh;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/elh;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    const-string v1, "Failed to instantiate ClientApi class."

    .line 20
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/za;->zzez(Ljava/lang/String;)V

    return-object v0
.end method

.method private final d()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 22
    sget-object v0, Lcom/google/android/gms/internal/ads/ejy;->a:Lcom/google/android/gms/internal/ads/elf;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "ClientApi class cannot be loaded."

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/za;->zzez(Ljava/lang/String;)V

    return-object v1

    .line 25
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/ejy;->a(Lcom/google/android/gms/internal/ads/elf;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "Cannot invoke local loader using ClientApi class."

    .line 27
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/za;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private final e()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 29
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ejy;->b()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Cannot invoke remote loader."

    .line 31
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final a(Landroid/content/Context;Z)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->a()Lcom/google/android/gms/internal/ads/yq;

    const v1, 0xbdfcb8

    .line 36
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/yq;->c(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p2, "Google Play Services is not available."

    .line 38
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/za;->zzdz(Ljava/lang/String;)V

    const/4 p2, 0x1

    :cond_0
    const-string v1, "com.google.android.gms.ads.dynamite"

    .line 41
    invoke-static {p1, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 43
    invoke-static {p1, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-le v2, v1, :cond_1

    const/4 p2, 0x1

    .line 46
    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/aq;->a(Landroid/content/Context;)V

    .line 47
    sget-object v1, Lcom/google/android/gms/internal/ads/cl;->a:Lcom/google/android/gms/internal/ads/bz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/bz;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 p2, 0x0

    goto :goto_0

    .line 49
    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/ads/cl;->b:Lcom/google/android/gms/internal/ads/bz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/bz;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p2, 0x1

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-eqz p2, :cond_4

    .line 53
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ejy;->d()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_9

    if-nez v1, :cond_9

    .line 55
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ejy;->e()Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    .line 56
    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ejy;->e()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_7

    .line 59
    sget-object v1, Lcom/google/android/gms/internal/ads/cu;->a:Lcom/google/android/gms/internal/ads/bz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/bz;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    .line 60
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->h()Ljava/util/Random;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-nez v1, :cond_6

    const/4 v2, 0x1

    :cond_6
    if-eqz v2, :cond_7

    .line 63
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "action"

    const-string v3, "dynamite_load"

    .line 64
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "is_missing"

    .line 65
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->a()Lcom/google/android/gms/internal/ads/yq;

    move-result-object v0

    .line 67
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->g()Lcom/google/android/gms/internal/ads/zzbar;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbar;->zzbrz:Ljava/lang/String;

    const-string v3, "gmob-apps"

    .line 68
    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/yq;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_7
    if-nez p2, :cond_8

    .line 70
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ejy;->d()Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    :cond_8
    move-object p1, p2

    :cond_9
    :goto_3
    if-nez p1, :cond_a

    .line 72
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ejy;->a()Ljava/lang/Object;

    move-result-object p1

    :cond_a
    return-object p1
.end method

.method protected abstract a(Lcom/google/android/gms/internal/ads/elf;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/elf;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected abstract b()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
