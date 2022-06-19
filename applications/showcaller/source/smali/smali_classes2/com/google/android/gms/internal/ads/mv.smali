.class public final Lcom/google/android/gms/internal/ads/mv;
.super Lcom/google/android/gms/internal/ads/ee0;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ee0;-><init>()V

    return-void
.end method

.method private static F6(Lcom/google/android/gms/internal/ads/me0;)V
    .locals 2

    const-string v0, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ei0;->c(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/xh0;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/lv;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/lv;-><init>(Lcom/google/android/gms/internal/ads/me0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final E0(Z)V
    .locals 0

    return-void
.end method

.method public final I4(Lcom/google/android/gms/internal/ads/zzbdg;Lcom/google/android/gms/internal/ads/me0;)V
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/mv;->F6(Lcom/google/android/gms/internal/ads/me0;)V

    return-void
.end method

.method public final L3(Lcom/google/android/gms/internal/ads/zzbdg;Lcom/google/android/gms/internal/ads/me0;)V
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/mv;->F6(Lcom/google/android/gms/internal/ads/me0;)V

    return-void
.end method

.method public final M3(Lcom/google/android/gms/internal/ads/zzcdg;)V
    .locals 0

    return-void
.end method

.method public final T1(Lcom/google/android/gms/internal/ads/zt;)V
    .locals 0

    return-void
.end method

.method public final U(Lcom/google/android/gms/dynamic/a;)V
    .locals 0

    return-void
.end method

.method public final V0(Lcom/google/android/gms/dynamic/a;Z)V
    .locals 0

    return-void
.end method

.method public final f5(Lcom/google/android/gms/internal/ads/ie0;)V
    .locals 0

    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final h2(Lcom/google/android/gms/internal/ads/oe0;)V
    .locals 0

    return-void
.end method

.method public final i()Lcom/google/android/gms/internal/ads/ce0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final j()Lcom/google/android/gms/internal/ads/fu;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final t5(Lcom/google/android/gms/internal/ads/cu;)V
    .locals 0

    return-void
.end method

.method public final zzg()Landroid/os/Bundle;
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final zzi()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
