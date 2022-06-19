.class public final Lcom/google/android/gms/internal/ads/ecf;
.super Lcom/google/android/gms/internal/ads/qx;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/rb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/qx;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/ecf;)Lcom/google/android/gms/internal/ads/rb;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ecf;->a:Lcom/google/android/gms/internal/ads/rb;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 5
    return-void
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;)V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dzr;)V
    .locals 0

    .prologue
    .line 10
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/qw;)V
    .locals 0

    .prologue
    .line 9
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/rb;)V
    .locals 0

    .prologue
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ecf;->a:Lcom/google/android/gms/internal/ads/rb;

    .line 8
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/rh;)V
    .locals 2

    .prologue
    .line 2
    const-string/jumbo v0, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/xr;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/ecg;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/ecg;-><init>(Lcom/google/android/gms/internal/ads/ecf;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public final b(Lcom/google/android/gms/dynamic/a;)V
    .locals 0

    .prologue
    .line 20
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    return v0
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 16
    return-void
.end method

.method public final c(Lcom/google/android/gms/dynamic/a;)V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    return-void
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 17
    return-void
.end method

.method public final d(Lcom/google/android/gms/dynamic/a;)V
    .locals 0

    .prologue
    .line 6
    return-void
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public final g()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 11
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public final i()Lcom/google/android/gms/internal/ads/eav;
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method
