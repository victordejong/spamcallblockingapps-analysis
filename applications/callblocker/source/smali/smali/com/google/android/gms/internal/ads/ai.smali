.class public final Lcom/google/android/gms/internal/ads/ai;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# static fields
.field public static a:Lcom/google/android/gms/internal/ads/ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ab",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 1
    const-string/jumbo v0, "gads:device_info_caching_expiry_ms:expiry"

    const-wide/32 v2, 0x493e0

    .line 2
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/ab;->a(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/ab;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/ai;->a:Lcom/google/android/gms/internal/ads/ab;

    .line 3
    return-void
.end method
