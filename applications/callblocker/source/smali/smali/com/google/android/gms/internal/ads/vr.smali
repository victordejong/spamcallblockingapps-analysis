.class public Lcom/google/android/gms/internal/ads/vr;
.super Lcom/google/android/gms/internal/ads/vs;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/vs;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Lcom/google/android/gms/internal/ads/dxf;
    .locals 1

    .prologue
    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    const-string/jumbo v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/ve;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/dxf;->b:Lcom/google/android/gms/internal/ads/dxf;

    .line 5
    :goto_0
    return-object v0

    .line 4
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/dxf;->a:Lcom/google/android/gms/internal/ads/dxf;

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/dxf;->a:Lcom/google/android/gms/internal/ads/dxf;

    goto :goto_0
.end method
