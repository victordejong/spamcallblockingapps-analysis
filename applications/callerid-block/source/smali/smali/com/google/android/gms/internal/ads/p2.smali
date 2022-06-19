.class public final Lcom/google/android/gms/internal/ads/p2;
.super Lcom/google/android/gms/internal/ads/qk;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/qk;-><init>()V

    return-void
.end method

.method private static A6(Lcom/google/android/gms/internal/ads/yk;)V
    .locals 2

    const-string v0, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/po;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/io;->b:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/o2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/o2;-><init>(Lcom/google/android/gms/internal/ads/yk;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final E0(Z)V
    .locals 0

    return-void
.end method

.method public final H2(Lcom/google/android/gms/internal/ads/uk;)V
    .locals 0

    return-void
.end method

.method public final L3(Lcom/google/android/gms/internal/ads/g1;)V
    .locals 0

    return-void
.end method

.method public final R(Lcom/google/android/gms/dynamic/a;)V
    .locals 0

    return-void
.end method

.method public final X3(Lcom/google/android/gms/internal/ads/zk;)V
    .locals 0

    return-void
.end method

.method public final a1(Lcom/google/android/gms/internal/ads/zzaxz;)V
    .locals 0

    return-void
.end method

.method public final g()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final k()Lcom/google/android/gms/internal/ads/ok;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final l1(Lcom/google/android/gms/internal/ads/zzys;Lcom/google/android/gms/internal/ads/yk;)V
    .locals 0

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/p2;->A6(Lcom/google/android/gms/internal/ads/yk;)V

    return-void
.end method

.method public final m()Lcom/google/android/gms/internal/ads/j1;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final w1(Lcom/google/android/gms/dynamic/a;Z)V
    .locals 0

    return-void
.end method

.method public final w2(Lcom/google/android/gms/internal/ads/zzys;Lcom/google/android/gms/internal/ads/yk;)V
    .locals 0

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/p2;->A6(Lcom/google/android/gms/internal/ads/yk;)V

    return-void
.end method

.method public final w3(Lcom/google/android/gms/internal/ads/d1;)V
    .locals 0

    return-void
.end method
