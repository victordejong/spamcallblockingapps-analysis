.class final Lcom/google/android/gms/internal/ads/ev;
.super Lcom/google/android/gms/internal/ads/ls;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field final synthetic d:Lcom/google/android/gms/internal/ads/fv;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/fv;Lcom/google/android/gms/internal/ads/bv;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ev;->d:Lcom/google/android/gms/internal/ads/fv;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ls;-><init>()V

    return-void
.end method


# virtual methods
.method public final R4(Lcom/google/android/gms/internal/ads/zzbdg;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ev;->n3(Lcom/google/android/gms/internal/ads/zzbdg;I)V

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final n3(Lcom/google/android/gms/internal/ads/zzbdg;I)V
    .locals 0

    const-string p1, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->c(Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/ads/xh0;->a:Landroid/os/Handler;

    new-instance p2, Lcom/google/android/gms/internal/ads/cv;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/cv;-><init>(Lcom/google/android/gms/internal/ads/ev;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzg()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
