.class public final Lcom/google/android/gms/internal/ads/zzadv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.7.0"


# static fields
.field private static zzdfa:Lcom/google/android/gms/internal/ads/zzacx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzacx<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static zzdfb:Lcom/google/android/gms/internal/ads/zzacx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzacx<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static zzdfc:Lcom/google/android/gms/internal/ads/zzacx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzacx<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "gads:ad_loader:timeout_ms"

    const-wide/32 v1, 0xea60

    .line 2
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzacx;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzacx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzadv;->zzdfa:Lcom/google/android/gms/internal/ads/zzacx;

    const-string v0, "gads:rendering:timeout_ms"

    .line 4
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzacx;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzacx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzadv;->zzdfb:Lcom/google/android/gms/internal/ads/zzacx;

    const-string v0, "gads:resolve_future:default_timeout_ms"

    const-wide/16 v1, 0x7530

    .line 6
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzacx;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzacx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzadv;->zzdfc:Lcom/google/android/gms/internal/ads/zzacx;

    return-void
.end method
