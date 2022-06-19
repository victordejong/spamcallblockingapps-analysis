.class public final Lcom/google/android/gms/internal/ads/dxy;
.super Lcom/google/android/gms/dynamic/RemoteCreator;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/RemoteCreator",
        "<",
        "Lcom/google/android/gms/internal/ads/dzp;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    const-string/jumbo v0, "com.google.android.gms.ads.AdManagerCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/RemoteCreator;-><init>(Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/dyd;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ko;I)Lcom/google/android/gms/internal/ads/dzn;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 3
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/dxy;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dzp;

    const v5, 0xbfb13e0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    .line 6
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/dzp;->a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/dyd;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ko;II)Landroid/os/IBinder;

    move-result-object v1

    .line 8
    if-nez v1, :cond_0

    move-object v0, v7

    .line 17
    :goto_0
    return-object v0

    .line 10
    :cond_0
    const-string/jumbo v0, "com.google.android.gms.ads.internal.client.IAdManager"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 11
    instance-of v2, v0, Lcom/google/android/gms/internal/ads/dzn;

    if-eqz v2, :cond_1

    .line 12
    check-cast v0, Lcom/google/android/gms/internal/ads/dzn;

    goto :goto_0

    .line 13
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/dzq;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dzq;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    :goto_1
    const-string/jumbo v1, "Could not create remote AdManager."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v7

    .line 17
    goto :goto_0

    .line 15
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method protected final synthetic a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 18
    .line 20
    if-nez p1, :cond_0

    .line 21
    const/4 v0, 0x0

    .line 26
    :goto_0
    return-object v0

    .line 22
    :cond_0
    const-string/jumbo v0, "com.google.android.gms.ads.internal.client.IAdManagerCreator"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 23
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/dzp;

    if-eqz v1, :cond_1

    .line 24
    check-cast v0, Lcom/google/android/gms/internal/ads/dzp;

    goto :goto_0

    .line 25
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/dzs;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/dzs;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method
