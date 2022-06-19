.class public final enum Lcom/google/android/gms/internal/ads/zzacr;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzacr;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzdbv:Lcom/google/android/gms/internal/ads/zzacr;

.field public static final enum zzdbw:Lcom/google/android/gms/internal/ads/zzacr;

.field public static final enum zzdbx:Lcom/google/android/gms/internal/ads/zzacr;

.field public static final enum zzdby:Lcom/google/android/gms/internal/ads/zzacr;

.field public static final enum zzdbz:Lcom/google/android/gms/internal/ads/zzacr;

.field public static final enum zzdca:Lcom/google/android/gms/internal/ads/zzacr;

.field public static final enum zzdcb:Lcom/google/android/gms/internal/ads/zzacr;

.field public static final enum zzdcc:Lcom/google/android/gms/internal/ads/zzacr;

.field public static final enum zzdcd:Lcom/google/android/gms/internal/ads/zzacr;

.field private static final synthetic zzdce:[Lcom/google/android/gms/internal/ads/zzacr;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzacr;

    const-string v1, "PLATFORM_VERSION_TOO_LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzacr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzacr;->zzdbv:Lcom/google/android/gms/internal/ads/zzacr;

    .line 4
    new-instance v1, Lcom/google/android/gms/internal/ads/zzacr;

    const-string v3, "CONTEXT_NOT_AN_ACTIVITY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzacr;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzacr;->zzdbw:Lcom/google/android/gms/internal/ads/zzacr;

    .line 5
    new-instance v3, Lcom/google/android/gms/internal/ads/zzacr;

    const-string v5, "CONTEXT_NULL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzacr;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzacr;->zzdbx:Lcom/google/android/gms/internal/ads/zzacr;

    .line 6
    new-instance v5, Lcom/google/android/gms/internal/ads/zzacr;

    const-string v7, "CCT_NOT_SUPPORTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/android/gms/internal/ads/zzacr;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/android/gms/internal/ads/zzacr;->zzdby:Lcom/google/android/gms/internal/ads/zzacr;

    .line 7
    new-instance v7, Lcom/google/android/gms/internal/ads/zzacr;

    const-string v9, "CCT_READY_TO_OPEN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/android/gms/internal/ads/zzacr;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/android/gms/internal/ads/zzacr;->zzdbz:Lcom/google/android/gms/internal/ads/zzacr;

    .line 8
    new-instance v9, Lcom/google/android/gms/internal/ads/zzacr;

    const-string v11, "ACTIVITY_NOT_FOUND"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/google/android/gms/internal/ads/zzacr;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/google/android/gms/internal/ads/zzacr;->zzdca:Lcom/google/android/gms/internal/ads/zzacr;

    .line 9
    new-instance v11, Lcom/google/android/gms/internal/ads/zzacr;

    const-string v13, "EMPTY_URL"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/google/android/gms/internal/ads/zzacr;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/google/android/gms/internal/ads/zzacr;->zzdcb:Lcom/google/android/gms/internal/ads/zzacr;

    .line 10
    new-instance v13, Lcom/google/android/gms/internal/ads/zzacr;

    const-string v15, "UNKNOWN"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/google/android/gms/internal/ads/zzacr;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/google/android/gms/internal/ads/zzacr;->zzdcc:Lcom/google/android/gms/internal/ads/zzacr;

    .line 11
    new-instance v15, Lcom/google/android/gms/internal/ads/zzacr;

    const-string v14, "WRONG_EXP_SETUP"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/google/android/gms/internal/ads/zzacr;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/google/android/gms/internal/ads/zzacr;->zzdcd:Lcom/google/android/gms/internal/ads/zzacr;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/google/android/gms/internal/ads/zzacr;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    .line 13
    sput-object v14, Lcom/google/android/gms/internal/ads/zzacr;->zzdce:[Lcom/google/android/gms/internal/ads/zzacr;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzacr;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzacr;->zzdce:[Lcom/google/android/gms/internal/ads/zzacr;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzacr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzacr;

    return-object v0
.end method
