.class public final enum Lcom/google/android/gms/internal/ads/zzffr;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzffr;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/ads/zzffr;

.field public static final enum zzb:Lcom/google/android/gms/internal/ads/zzffr;

.field public static final enum zzc:Lcom/google/android/gms/internal/ads/zzffr;

.field private static final synthetic zzd:[Lcom/google/android/gms/internal/ads/zzffr;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzffr;

    const-string v1, "Rewarded"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzffr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzffr;->zza:Lcom/google/android/gms/internal/ads/zzffr;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzffr;

    const-string v3, "Interstitial"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzffr;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzffr;->zzb:Lcom/google/android/gms/internal/ads/zzffr;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzffr;

    const-string v5, "AppOpen"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzffr;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzffr;->zzc:Lcom/google/android/gms/internal/ads/zzffr;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/android/gms/internal/ads/zzffr;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/google/android/gms/internal/ads/zzffr;->zzd:[Lcom/google/android/gms/internal/ads/zzffr;

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

.method public static values()[Lcom/google/android/gms/internal/ads/zzffr;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzffr;->zzd:[Lcom/google/android/gms/internal/ads/zzffr;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzffr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzffr;

    return-object v0
.end method
