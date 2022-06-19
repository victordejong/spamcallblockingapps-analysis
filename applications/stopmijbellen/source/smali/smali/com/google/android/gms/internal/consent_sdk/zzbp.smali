.class public final enum Lcom/google/android/gms/internal/consent_sdk/zzbp;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/consent_sdk/zzbp;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/consent_sdk/zzbp;

.field public static final enum zzb:Lcom/google/android/gms/internal/consent_sdk/zzbp;

.field public static final enum zzc:Lcom/google/android/gms/internal/consent_sdk/zzbp;

.field public static final enum zzd:Lcom/google/android/gms/internal/consent_sdk/zzbp;

.field public static final enum zze:Lcom/google/android/gms/internal/consent_sdk/zzbp;

.field private static final synthetic zzf:[Lcom/google/android/gms/internal/consent_sdk/zzbp;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzbp;

    const-string v1, "DEBUG_PARAM_UNKNOWN"

    const/4 v2, 0x0

    .line 1
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/consent_sdk/zzbp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/consent_sdk/zzbp;->zza:Lcom/google/android/gms/internal/consent_sdk/zzbp;

    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzbp;

    const-string v3, "ALWAYS_SHOW"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/consent_sdk/zzbp;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/consent_sdk/zzbp;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzbp;

    new-instance v3, Lcom/google/android/gms/internal/consent_sdk/zzbp;

    const-string v5, "GEO_OVERRIDE_EEA"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v3, v5, v6}, Lcom/google/android/gms/internal/consent_sdk/zzbp;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/gms/internal/consent_sdk/zzbp;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzbp;

    new-instance v5, Lcom/google/android/gms/internal/consent_sdk/zzbp;

    const-string v7, "GEO_OVERRIDE_NON_EEA"

    const/4 v8, 0x3

    .line 4
    invoke-direct {v5, v7, v8}, Lcom/google/android/gms/internal/consent_sdk/zzbp;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/android/gms/internal/consent_sdk/zzbp;->zzd:Lcom/google/android/gms/internal/consent_sdk/zzbp;

    new-instance v7, Lcom/google/android/gms/internal/consent_sdk/zzbp;

    const-string v9, "PREVIEWING_DEBUG_MESSAGES"

    const/4 v10, 0x4

    .line 5
    invoke-direct {v7, v9, v10}, Lcom/google/android/gms/internal/consent_sdk/zzbp;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/android/gms/internal/consent_sdk/zzbp;->zze:Lcom/google/android/gms/internal/consent_sdk/zzbp;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/google/android/gms/internal/consent_sdk/zzbp;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/google/android/gms/internal/consent_sdk/zzbp;->zzf:[Lcom/google/android/gms/internal/consent_sdk/zzbp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/consent_sdk/zzbp;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzbp;->zzf:[Lcom/google/android/gms/internal/consent_sdk/zzbp;

    .line 1
    invoke-virtual {v0}, [Lcom/google/android/gms/internal/consent_sdk/zzbp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/consent_sdk/zzbp;

    return-object v0
.end method
