.class public final enum Lcom/google/android/gms/internal/ads/dkh;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/dkh;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzine:Lcom/google/android/gms/internal/ads/dkh;

.field public static final enum zzinf:Lcom/google/android/gms/internal/ads/dkh;

.field public static final enum zzing:Lcom/google/android/gms/internal/ads/dkh;

.field private static final synthetic zzinh:[Lcom/google/android/gms/internal/ads/dkh;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/dkh;

    const-string v1, "UNCOMPRESSED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dkh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dkh;->zzine:Lcom/google/android/gms/internal/ads/dkh;

    .line 4
    new-instance v1, Lcom/google/android/gms/internal/ads/dkh;

    const-string v3, "COMPRESSED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/dkh;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/ads/dkh;->zzinf:Lcom/google/android/gms/internal/ads/dkh;

    .line 5
    new-instance v3, Lcom/google/android/gms/internal/ads/dkh;

    const-string v5, "DO_NOT_USE_CRUNCHY_UNCOMPRESSED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/android/gms/internal/ads/dkh;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/gms/internal/ads/dkh;->zzing:Lcom/google/android/gms/internal/ads/dkh;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/android/gms/internal/ads/dkh;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 7
    sput-object v5, Lcom/google/android/gms/internal/ads/dkh;->zzinh:[Lcom/google/android/gms/internal/ads/dkh;

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

.method public static values()[Lcom/google/android/gms/internal/ads/dkh;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/dkh;->zzinh:[Lcom/google/android/gms/internal/ads/dkh;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/dkh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/dkh;

    return-object v0
.end method
