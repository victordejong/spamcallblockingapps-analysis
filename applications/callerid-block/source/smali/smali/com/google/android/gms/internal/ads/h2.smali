.class final Lcom/google/android/gms/internal/ads/h2;
.super Lcom/google/android/gms/internal/ads/o;
.source ""


# instance fields
.field final synthetic b:Lcom/google/android/gms/internal/ads/i2;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/i2;Lcom/google/android/gms/internal/ads/f2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/h2;->b:Lcom/google/android/gms/internal/ads/i2;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/o;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final m2(Lcom/google/android/gms/internal/ads/zzys;I)V
    .locals 0

    const-string p1, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/po;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/io;->b:Landroid/os/Handler;

    new-instance p2, Lcom/google/android/gms/internal/ads/g2;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/g2;-><init>(Lcom/google/android/gms/internal/ads/h2;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final q0(Lcom/google/android/gms/internal/ads/zzys;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/h2;->m2(Lcom/google/android/gms/internal/ads/zzys;I)V

    return-void
.end method
