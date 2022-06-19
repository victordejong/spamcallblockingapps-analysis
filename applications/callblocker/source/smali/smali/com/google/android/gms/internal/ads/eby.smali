.class final Lcom/google/android/gms/internal/ads/eby;
.super Lcom/google/android/gms/internal/ads/dze;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/ebw;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/ebw;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eby;->a:Lcom/google/android/gms/internal/ads/ebw;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dze;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/ebw;Lcom/google/android/gms/internal/ads/ebz;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/eby;-><init>(Lcom/google/android/gms/internal/ads/ebw;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/dya;)V
    .locals 1

    .prologue
    .line 5
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/eby;->a(Lcom/google/android/gms/internal/ads/dya;I)V

    .line 6
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dya;I)V
    .locals 2

    .prologue
    .line 7
    const-string/jumbo v0, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;)V

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/xr;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/ecb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/ecb;-><init>(Lcom/google/android/gms/internal/ads/eby;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 2
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4
    const/4 v0, 0x0

    return-object v0
.end method
