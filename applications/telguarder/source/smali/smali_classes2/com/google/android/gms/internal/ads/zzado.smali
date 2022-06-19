.class public final Lcom/google/android/gms/internal/ads/zzado;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.7.0"


# static fields
.field private static zzdej:Lcom/google/android/gms/internal/ads/zzacx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzacx<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static zzdek:Lcom/google/android/gms/internal/ads/zzacx;
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

    const-string v0, "gads:safe_browsing:api_key"

    const-string v1, "AIzaSyDRKQ9d6kfsoZT2lUnZcZnBYvH69HExNPE"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzacx;->zzh(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzacx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzado;->zzdej:Lcom/google/android/gms/internal/ads/zzacx;

    const-string v0, "gads:safe_browsing:debug"

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzacx;->zzg(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzacx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzado;->zzdek:Lcom/google/android/gms/internal/ads/zzacx;

    return-void
.end method
