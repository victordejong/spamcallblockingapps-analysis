.class public final Lcom/google/android/gms/internal/ads/br;
.super Lcom/google/android/gms/ads/b/c$a;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bn;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/ads/b/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/bn;)V
    .locals 5

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/b/c$a;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/br;->b:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/br;->a:Lcom/google/android/gms/internal/ads/bn;

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/br;->a:Lcom/google/android/gms/internal/ads/bn;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/bn;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/br;->c:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    :goto_0
    :try_start_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/bn;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 11
    instance-of v2, v1, Landroid/os/IBinder;

    if-eqz v2, :cond_3

    .line 12
    check-cast v1, Landroid/os/IBinder;

    .line 13
    if-eqz v1, :cond_3

    .line 14
    const-string/jumbo v2, "com.google.android.gms.ads.internal.formats.client.INativeAdImage"

    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 15
    instance-of v4, v2, Lcom/google/android/gms/internal/ads/bu;

    if-eqz v4, :cond_2

    .line 16
    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/internal/ads/bu;

    move-object v1, v0

    .line 21
    :goto_2
    if-eqz v1, :cond_0

    .line 22
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/br;->b:Ljava/util/List;

    new-instance v4, Lcom/google/android/gms/internal/ads/bz;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/bz;-><init>(Lcom/google/android/gms/internal/ads/bu;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 25
    :catch_0
    move-exception v1

    .line 26
    const-string/jumbo v2, ""

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    :cond_1
    return-void

    .line 6
    :catch_1
    move-exception v1

    .line 7
    const-string/jumbo v2, ""

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/br;->c:Ljava/lang/String;

    goto :goto_0

    .line 17
    :cond_2
    :try_start_2
    new-instance v2, Lcom/google/android/gms/internal/ads/bw;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/bw;-><init>(Landroid/os/IBinder;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 18
    goto :goto_2

    .line 19
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method
