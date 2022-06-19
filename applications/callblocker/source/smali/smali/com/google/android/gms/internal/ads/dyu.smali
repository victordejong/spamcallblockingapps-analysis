.class abstract Lcom/google/android/gms/internal/ads/dyu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


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
.field private static final a:Lcom/google/android/gms/internal/ads/dzx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyu;->c()Lcom/google/android/gms/internal/ads/dzx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/dyu;->a:Lcom/google/android/gms/internal/ads/dzx;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static c()Lcom/google/android/gms/internal/ads/dzx;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 2
    :try_start_0
    const-class v1, Lcom/google/android/gms/internal/ads/dyl;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 4
    const-string/jumbo v2, "com.google.android.gms.ads.internal.ClientApi"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 8
    instance-of v2, v1, Landroid/os/IBinder;

    if-nez v2, :cond_0

    .line 9
    const-string/jumbo v1, "ClientApi class is not an instance of IBinder."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;)V

    move-object v1, v3

    .line 21
    :goto_0
    return-object v1

    .line 11
    :cond_0
    check-cast v1, Landroid/os/IBinder;

    .line 12
    if-nez v1, :cond_1

    move-object v1, v3

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const-string/jumbo v2, "com.google.android.gms.ads.internal.client.IClientApi"

    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 15
    instance-of v4, v2, Lcom/google/android/gms/internal/ads/dzx;

    if-eqz v4, :cond_2

    .line 16
    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/internal/ads/dzx;

    move-object v1, v0

    goto :goto_0

    .line 17
    :cond_2
    new-instance v2, Lcom/google/android/gms/internal/ads/dzz;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/dzz;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 18
    goto :goto_0

    .line 20
    :catch_0
    move-exception v1

    const-string/jumbo v1, "Failed to instantiate ClientApi class."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;)V

    move-object v1, v3

    .line 21
    goto :goto_0
.end method

.method private final d()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 22
    sget-object v1, Lcom/google/android/gms/internal/ads/dyu;->a:Lcom/google/android/gms/internal/ads/dzx;

    if-nez v1, :cond_0

    .line 23
    const-string/jumbo v1, "ClientApi class cannot be loaded."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;)V

    .line 28
    :goto_0
    return-object v0

    .line 25
    :cond_0
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/dyu;->a:Lcom/google/android/gms/internal/ads/dzx;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/dyu;->a(Lcom/google/android/gms/internal/ads/dzx;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 26
    :catch_0
    move-exception v1

    .line 27
    const-string/jumbo v2, "Cannot invoke local loader using ClientApi class."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/yb;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private final e()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 29
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dyu;->b()Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 32
    :goto_0
    return-object v0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    const-string/jumbo v1, "Cannot invoke remote loader."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    const/4 v0, 0x0

    goto :goto_0
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
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 33
    if-nez p2, :cond_4

    move v0, v2

    .line 34
    :goto_0
    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    .line 35
    const v1, 0xbdfcb8

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/xr;->c(Landroid/content/Context;I)Z

    move-result v1

    .line 36
    if-nez v1, :cond_0

    .line 37
    const-string/jumbo v0, "Google Play Services is not available."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->b(Ljava/lang/String;)V

    move v0, v5

    .line 40
    :cond_0
    const-string/jumbo v1, "com.google.android.gms.ads.dynamite"

    invoke-static {p1, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 42
    const-string/jumbo v3, "com.google.android.gms.ads.dynamite"

    invoke-static {p1, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 43
    if-le v1, v3, :cond_b

    move v1, v5

    .line 45
    :goto_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/edi;->a(Landroid/content/Context;)V

    .line 46
    sget-object v0, Lcom/google/android/gms/internal/ads/am;->a:Lcom/google/android/gms/internal/ads/ab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    .line 48
    :cond_1
    if-eqz v1, :cond_5

    .line 49
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dyu;->d()Ljava/lang/Object;

    move-result-object v0

    .line 50
    if-nez v0, :cond_2

    .line 51
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dyu;->e()Ljava/lang/Object;

    move-result-object v0

    .line 67
    :cond_2
    :goto_2
    if-nez v0, :cond_3

    .line 68
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dyu;->a()Ljava/lang/Object;

    move-result-object v0

    .line 69
    :cond_3
    return-object v0

    :cond_4
    move v0, v5

    .line 33
    goto :goto_0

    .line 52
    :cond_5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dyu;->e()Ljava/lang/Object;

    move-result-object v6

    .line 53
    if-nez v6, :cond_7

    move v1, v5

    .line 54
    :goto_3
    if-eqz v1, :cond_6

    .line 55
    sget-object v0, Lcom/google/android/gms/internal/ads/aw;->a:Lcom/google/android/gms/internal/ads/ab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    .line 56
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->h()Ljava/util/Random;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_8

    move v0, v5

    .line 57
    :goto_4
    if-eqz v0, :cond_6

    .line 59
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 60
    const-string/jumbo v0, "action"

    const-string/jumbo v3, "dynamite_load"

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string/jumbo v3, "is_missing"

    if-eqz v1, :cond_9

    move v0, v5

    :goto_5
    invoke-virtual {v4, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    move-result-object v0

    .line 63
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->g()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/yd;->a:Ljava/lang/String;

    const-string/jumbo v3, "gmob-apps"

    move-object v1, p1

    .line 64
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/xr;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 65
    :cond_6
    if-nez v6, :cond_a

    .line 66
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dyu;->d()Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_7
    move v1, v2

    .line 53
    goto :goto_3

    :cond_8
    move v0, v2

    .line 56
    goto :goto_4

    :cond_9
    move v0, v2

    .line 61
    goto :goto_5

    :cond_a
    move-object v0, v6

    goto :goto_2

    :cond_b
    move v1, v0

    goto/16 :goto_1
.end method

.method protected abstract a(Lcom/google/android/gms/internal/ads/dzx;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dzx;",
            ")TT;"
        }
    .end annotation
.end method

.method protected abstract b()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
