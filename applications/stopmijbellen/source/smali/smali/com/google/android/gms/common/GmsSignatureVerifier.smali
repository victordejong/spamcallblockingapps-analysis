.class public Lcom/google/android/gms/common/GmsSignatureVerifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/common/zzz;

.field private static final zzb:Lcom/google/android/gms/common/zzz;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/common/zzx;

    invoke-direct {v0}, Lcom/google/android/gms/common/zzx;-><init>()V

    const-string v1, "com.google.android.gms"

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/zzx;->zzd(Ljava/lang/String;)Lcom/google/android/gms/common/zzx;

    const-wide/32 v1, 0xc2bd840

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/zzx;->zza(J)Lcom/google/android/gms/common/zzx;

    sget-object v1, Lcom/google/android/gms/common/zzm;->zzd:Lcom/google/android/gms/common/zzk;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/common/zzk;->zzf()[B

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/common/zzm;->zzb:Lcom/google/android/gms/common/zzk;

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/common/zzk;->zzf()[B

    move-result-object v3

    .line 6
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/common/zzag;->zzn(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzag;

    move-result-object v2

    .line 7
    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/zzx;->zzc(Ljava/util/List;)Lcom/google/android/gms/common/zzx;

    sget-object v2, Lcom/google/android/gms/common/zzm;->zzc:Lcom/google/android/gms/common/zzk;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/common/zzk;->zzf()[B

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/common/zzm;->zza:Lcom/google/android/gms/common/zzk;

    .line 9
    invoke-virtual {v4}, Lcom/google/android/gms/common/zzk;->zzf()[B

    move-result-object v4

    .line 10
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/common/zzag;->zzn(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzag;

    move-result-object v3

    .line 11
    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/zzx;->zzb(Ljava/util/List;)Lcom/google/android/gms/common/zzx;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/common/zzx;->zze()Lcom/google/android/gms/common/zzz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/GmsSignatureVerifier;->zza:Lcom/google/android/gms/common/zzz;

    new-instance v0, Lcom/google/android/gms/common/zzx;

    .line 13
    invoke-direct {v0}, Lcom/google/android/gms/common/zzx;-><init>()V

    const-string v3, "com.android.vending"

    .line 14
    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/zzx;->zzd(Ljava/lang/String;)Lcom/google/android/gms/common/zzx;

    const-wide/32 v3, 0x4e6e200

    .line 15
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/common/zzx;->zza(J)Lcom/google/android/gms/common/zzx;

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/common/zzk;->zzf()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/common/zzag;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/zzx;->zzc(Ljava/util/List;)Lcom/google/android/gms/common/zzx;

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/common/zzk;->zzf()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/common/zzag;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/zzx;->zzb(Ljava/util/List;)Lcom/google/android/gms/common/zzx;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/common/zzx;->zze()Lcom/google/android/gms/common/zzz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/GmsSignatureVerifier;->zzb:Lcom/google/android/gms/common/zzz;

    return-void
.end method
