.class public final Lcom/google/android/gms/internal/ads/zzadn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.7.0"


# static fields
.field public static zzcml:Lcom/google/android/gms/internal/ads/zzacx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzacx<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static zzdeg:Lcom/google/android/gms/internal/ads/zzacx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzacx<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static zzdeh:Lcom/google/android/gms/internal/ads/zzacx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzacx<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static zzdei:Lcom/google/android/gms/internal/ads/zzacx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzacx<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "gads:adapter_initialization:red_button"

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzacx;->zzg(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzacx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzadn;->zzdeg:Lcom/google/android/gms/internal/ads/zzacx;

    const-string v0, "gads:ad_serving:enabled"

    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzacx;->zzg(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzacx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzadn;->zzdeh:Lcom/google/android/gms/internal/ads/zzacx;

    const-string v0, "gads:adaptive_banner:fail_invalid_ad_size"

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzacx;->zzg(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzacx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzadn;->zzdei:Lcom/google/android/gms/internal/ads/zzacx;

    const-string v0, "gads:sdk_use_dynamic_module"

    .line 8
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzacx;->zzg(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzacx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzadn;->zzcml:Lcom/google/android/gms/internal/ads/zzacx;

    return-void
.end method
