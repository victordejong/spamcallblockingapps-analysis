.class public final Lcom/google/android/gms/internal/ads/zzbmw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzbml;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbml<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzbml;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbml<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzc:Lcom/google/android/gms/internal/ads/zzbml;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbml<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzd:Lcom/google/android/gms/internal/ads/zzbml;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbml<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final zze:Lcom/google/android/gms/internal/ads/zzbml;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbml<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzf:Lcom/google/android/gms/internal/ads/zzbml;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbml<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzg:Lcom/google/android/gms/internal/ads/zzbml;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbml<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzh:Lcom/google/android/gms/internal/ads/zzbml;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbml<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzi:Lcom/google/android/gms/internal/ads/zzbml;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbml<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzj:Lcom/google/android/gms/internal/ads/zzbml;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbml<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzk:Lcom/google/android/gms/internal/ads/zzbml;
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
    .locals 4

    const-string v0, "gads:gma_attestation:click:macro_string"

    const-string v1, "@click_attok@"

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbml;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbml;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbmw;->zza:Lcom/google/android/gms/internal/ads/zzbml;

    const-string v0, "gads:gma_attestation:click:query_param"

    const-string v1, "attok"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbml;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbml;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbmw;->zzb:Lcom/google/android/gms/internal/ads/zzbml;

    const-string v0, "gads:gma_attestation:click:timeout"

    const-wide/16 v1, 0x7d0

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbml;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzbml;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbmw;->zzc:Lcom/google/android/gms/internal/ads/zzbml;

    const-string v0, "gads:gma_attestation:click:enable"

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbml;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbml;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbmw;->zzd:Lcom/google/android/gms/internal/ads/zzbml;

    const-string v0, "gads:gma_attestation:click:enable_dynamite_version"

    const-wide/16 v2, -0x1

    .line 3
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzbml;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzbml;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbmw;->zze:Lcom/google/android/gms/internal/ads/zzbml;

    const-string v0, "gads:gma_attestation:click:qualification:enable"

    const/4 v2, 0x1

    .line 4
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzbml;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbml;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbmw;->zzf:Lcom/google/android/gms/internal/ads/zzbml;

    const-string v0, "gads:gma_attestation:click_v2:enable"

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbml;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbml;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbmw;->zzg:Lcom/google/android/gms/internal/ads/zzbml;

    const-string v0, "gads:gma_attestation:impression:enable"

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbml;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbml;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbmw;->zzh:Lcom/google/android/gms/internal/ads/zzbml;

    const-string v0, "gads:gma_attestation:request:enable_javascript"

    .line 7
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbml;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbml;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbmw;->zzi:Lcom/google/android/gms/internal/ads/zzbml;

    const-string v0, "gads:gma_attestation:request:enable"

    .line 8
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbml;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbml;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbmw;->zzj:Lcom/google/android/gms/internal/ads/zzbml;

    const-string v0, "gads:gma_attestation:click:report_error"

    .line 9
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzbml;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbml;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbmw;->zzk:Lcom/google/android/gms/internal/ads/zzbml;

    return-void
.end method
