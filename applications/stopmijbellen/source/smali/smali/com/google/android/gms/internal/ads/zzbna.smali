.class public final Lcom/google/android/gms/internal/ads/zzbna;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzbml;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbml<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzbml;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbml<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "gads:ad_key_enabled"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbml;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbml;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbna;->zza:Lcom/google/android/gms/internal/ads/zzbml;

    const-string v0, "gads:adshield:enable_adshield_instrumentation"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbml;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbml;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbna;->zzb:Lcom/google/android/gms/internal/ads/zzbml;

    return-void
.end method
