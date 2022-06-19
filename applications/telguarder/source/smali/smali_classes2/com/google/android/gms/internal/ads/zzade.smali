.class public final Lcom/google/android/gms/internal/ads/zzade;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.7.0"


# static fields
.field public static zzddd:Lcom/google/android/gms/internal/ads/zzacx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzacx<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static zzdde:Lcom/google/android/gms/internal/ads/zzacx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzacx<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static zzddf:Lcom/google/android/gms/internal/ads/zzacx;
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

    const-string v0, "gad:force_dynamite_loading_enabled"

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzacx;->zzg(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzacx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzade;->zzddd:Lcom/google/android/gms/internal/ads/zzacx;

    const-string v0, "gad:force_local_loading_enabled"

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzacx;->zzg(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzacx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzade;->zzdde:Lcom/google/android/gms/internal/ads/zzacx;

    const-string v0, "gads:sdk_csi_write_to_file"

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzacx;->zzg(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzacx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzade;->zzddf:Lcom/google/android/gms/internal/ads/zzacx;

    return-void
.end method
