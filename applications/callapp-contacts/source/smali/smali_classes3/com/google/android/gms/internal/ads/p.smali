.class public final Lcom/google/android/gms/internal/ads/p;
.super Lcom/google/android/gms/internal/ads/up;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/up;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/ads/uy;)V
    .locals 2

    const-string v0, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    .line 19
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/za;->zzex(Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/google/android/gms/internal/ads/yq;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/o;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/o;-><init>(Lcom/google/android/gms/internal/ads/uy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/dynamic/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final a(Lcom/google/android/gms/dynamic/b;Z)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/emc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/emd;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/ur;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/uz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzaww;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzvq;Lcom/google/android/gms/internal/ads/uy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/p;->a(Lcom/google/android/gms/internal/ads/uy;)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzvq;Lcom/google/android/gms/internal/ads/uy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/p;->a(Lcom/google/android/gms/internal/ads/uy;)V

    return-void
.end method

.method public final b()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, ""

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/internal/ads/ul;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()Lcom/google/android/gms/internal/ads/emj;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
