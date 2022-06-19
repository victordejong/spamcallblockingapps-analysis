.class public final Lcom/google/android/gms/internal/consent_sdk/zzbu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public zza:Ljava/lang/String;

.field public zzb:Ljava/lang/Boolean;

.field public zzc:Ljava/lang/String;

.field public zzd:Lcom/google/android/gms/internal/consent_sdk/zzbq;

.field public zze:Ljava/lang/String;

.field public zzf:Ljava/lang/Boolean;

.field public zzg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public zzh:Lcom/google/android/gms/internal/consent_sdk/zzbs;

.field public zzi:Lcom/google/android/gms/internal/consent_sdk/zzbo;

.field public zzj:Lcom/google/android/gms/internal/consent_sdk/zzbt;

.field public zzk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/consent_sdk/zzbp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzg:Ljava/util/Map;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzk:Ljava/util/List;

    return-void
.end method
