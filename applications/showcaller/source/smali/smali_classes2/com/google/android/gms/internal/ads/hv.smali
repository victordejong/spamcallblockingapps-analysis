.class public final Lcom/google/android/gms/internal/ads/hv;
.super Lcom/google/android/gms/internal/ads/ss;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field private d:Lcom/google/android/gms/internal/ads/gs;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ss;-><init>()V

    return-void
.end method

.method static synthetic E6(Lcom/google/android/gms/internal/ads/hv;)Lcom/google/android/gms/internal/ads/gs;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/hv;->d:Lcom/google/android/gms/internal/ads/gs;

    return-object p0
.end method


# virtual methods
.method public final C4(Z)V
    .locals 0

    return-void
.end method

.method public final D()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final F4(Lcom/google/android/gms/internal/ads/xs;)V
    .locals 0

    return-void
.end method

.method public final H()Lcom/google/android/gms/internal/ads/gs;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final K()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final K2(Lcom/google/android/gms/internal/ads/at;)V
    .locals 0

    return-void
.end method

.method public final L0(Lcom/google/android/gms/internal/ads/zzbdl;)V
    .locals 0

    return-void
.end method

.method public final N5(Lcom/google/android/gms/internal/ads/zzbdr;)V
    .locals 0

    return-void
.end method

.method public final O5(Lcom/google/android/gms/internal/ads/zzbdg;Lcom/google/android/gms/internal/ads/js;)V
    .locals 0

    return-void
.end method

.method public final S1(Lcom/google/android/gms/internal/ads/it;)V
    .locals 0

    return-void
.end method

.method public final U2(Lcom/google/android/gms/internal/ads/et;)V
    .locals 0

    return-void
.end method

.method public final W3(Lcom/google/android/gms/dynamic/a;)V
    .locals 0

    return-void
.end method

.method public final X5(Lcom/google/android/gms/internal/ads/gs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hv;->d:Lcom/google/android/gms/internal/ads/gs;

    return-void
.end method

.method public final Y1(Lcom/google/android/gms/internal/ads/tb0;)V
    .locals 0

    return-void
.end method

.method public final b6(Lcom/google/android/gms/internal/ads/ud0;)V
    .locals 0

    return-void
.end method

.method public final e3(Lcom/google/android/gms/internal/ads/cu;)V
    .locals 0

    return-void
.end method

.method public final e6(Lcom/google/android/gms/internal/ads/gx;)V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final i4(Lcom/google/android/gms/internal/ads/yb0;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final j()V
    .locals 0

    return-void
.end method

.method public final k5(Lcom/google/android/gms/internal/ads/zzbdg;)Z
    .locals 1

    const-string p1, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->c(Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/ads/xh0;->a:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/gv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/gv;-><init>(Lcom/google/android/gms/internal/ads/hv;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public final l1(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final l3(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final l6(Lcom/google/android/gms/internal/ads/zzbis;)V
    .locals 0

    return-void
.end method

.method public final m()V
    .locals 0

    return-void
.end method

.method public final m6(Lcom/google/android/gms/internal/ads/nl;)V
    .locals 0

    return-void
.end method

.method public final o()V
    .locals 0

    return-void
.end method

.method public final p0()Lcom/google/android/gms/internal/ads/ju;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final s()Landroid/os/Bundle;
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final s0(Z)V
    .locals 0

    return-void
.end method

.method public final s5(Lcom/google/android/gms/internal/ads/zzbhg;)V
    .locals 0

    return-void
.end method

.method public final t()Lcom/google/android/gms/internal/ads/at;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final u()Lcom/google/android/gms/internal/ads/fu;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final v()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final v4(Lcom/google/android/gms/internal/ads/cs;)V
    .locals 0

    return-void
.end method

.method public final zzi()Lcom/google/android/gms/dynamic/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzt()V
    .locals 0

    return-void
.end method

.method public final zzu()Lcom/google/android/gms/internal/ads/zzbdl;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
