.class public Lcom/google/android/gms/ads/internal/util/b;
.super Lcom/google/android/gms/ads/internal/util/j2;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/j2;-><init>()V

    return-void
.end method


# virtual methods
.method public final p(Landroid/content/Context;Landroid/telephony/TelephonyManager;)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->d()Lcom/google/android/gms/ads/internal/util/c2;

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/ads/internal/util/c2;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    return v0
.end method
