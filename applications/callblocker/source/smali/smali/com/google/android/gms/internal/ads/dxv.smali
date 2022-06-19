.class public final Lcom/google/android/gms/internal/ads/dxv;
.super Lcom/google/android/gms/dynamic/RemoteCreator;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/RemoteCreator",
        "<",
        "Lcom/google/android/gms/internal/ads/dzl;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    const-string/jumbo v0, "com.google.android.gms.ads.AdLoaderBuilderCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/RemoteCreator;-><init>(Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ko;)Lcom/google/android/gms/internal/ads/dzg;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v2

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/dxv;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dzl;

    const v3, 0xbfb13e0

    .line 6
    invoke-interface {v0, v2, p2, p3, v3}, Lcom/google/android/gms/internal/ads/dzl;->a(Lcom/google/android/gms/dynamic/a;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ko;I)Landroid/os/IBinder;

    move-result-object v2

    .line 8
    if-nez v2, :cond_0

    move-object v0, v1

    .line 17
    :goto_0
    return-object v0

    .line 10
    :cond_0
    const-string/jumbo v0, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 11
    instance-of v3, v0, Lcom/google/android/gms/internal/ads/dzg;

    if-eqz v3, :cond_1

    .line 12
    check-cast v0, Lcom/google/android/gms/internal/ads/dzg;

    goto :goto_0

    .line 13
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/dzi;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dzi;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    :goto_1
    const-string/jumbo v2, "Could not create remote builder for AdLoader."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/yb;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

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
    const-string/jumbo v0, "com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 23
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/dzl;

    if-eqz v1, :cond_1

    .line 24
    check-cast v0, Lcom/google/android/gms/internal/ads/dzl;

    goto :goto_0

    .line 25
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/dzk;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/dzk;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method
