.class public final Lcom/google/android/gms/internal/ads/qx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/nx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/nx<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "gads:device_info_caching_expiry_ms:expiry"

    const-wide/32 v1, 0x493e0

    .line 1
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/nx;->b(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/nx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/qx;->a:Lcom/google/android/gms/internal/ads/nx;

    return-void
.end method
