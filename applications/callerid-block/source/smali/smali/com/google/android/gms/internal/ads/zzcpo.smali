.class public final enum Lcom/google/android/gms/internal/ads/zzcpo;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzcpo;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/google/android/gms/internal/ads/zzcpo;

.field public static final enum c:Lcom/google/android/gms/internal/ads/zzcpo;

.field public static final enum d:Lcom/google/android/gms/internal/ads/zzcpo;

.field private static final synthetic e:[Lcom/google/android/gms/internal/ads/zzcpo;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcpo;

    const-string v1, "AD_REQUESTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcpo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcpo;->b:Lcom/google/android/gms/internal/ads/zzcpo;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcpo;

    const-string v3, "AD_LOADED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzcpo;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzcpo;->c:Lcom/google/android/gms/internal/ads/zzcpo;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcpo;

    const-string v5, "AD_LOAD_FAILED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzcpo;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzcpo;->d:Lcom/google/android/gms/internal/ads/zzcpo;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/android/gms/internal/ads/zzcpo;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/google/android/gms/internal/ads/zzcpo;->e:[Lcom/google/android/gms/internal/ads/zzcpo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzcpo;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcpo;->e:[Lcom/google/android/gms/internal/ads/zzcpo;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzcpo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzcpo;

    return-object v0
.end method
