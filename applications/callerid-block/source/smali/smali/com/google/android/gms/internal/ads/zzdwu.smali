.class public final enum Lcom/google/android/gms/internal/ads/zzdwu;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzdwu;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/google/android/gms/internal/ads/zzdwu;

.field public static final enum c:Lcom/google/android/gms/internal/ads/zzdwu;

.field public static final enum d:Lcom/google/android/gms/internal/ads/zzdwu;

.field public static final enum e:Lcom/google/android/gms/internal/ads/zzdwu;

.field private static final synthetic f:[Lcom/google/android/gms/internal/ads/zzdwu;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdwu;

    const-string v1, "VIDEO_CONTROLS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdwu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdwu;->b:Lcom/google/android/gms/internal/ads/zzdwu;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdwu;

    const-string v3, "CLOSE_AD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzdwu;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzdwu;->c:Lcom/google/android/gms/internal/ads/zzdwu;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdwu;

    const-string v5, "NOT_VISIBLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzdwu;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzdwu;->d:Lcom/google/android/gms/internal/ads/zzdwu;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzdwu;

    const-string v7, "OTHER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/android/gms/internal/ads/zzdwu;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/android/gms/internal/ads/zzdwu;->e:Lcom/google/android/gms/internal/ads/zzdwu;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/android/gms/internal/ads/zzdwu;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/google/android/gms/internal/ads/zzdwu;->f:[Lcom/google/android/gms/internal/ads/zzdwu;

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

.method public static values()[Lcom/google/android/gms/internal/ads/zzdwu;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdwu;->f:[Lcom/google/android/gms/internal/ads/zzdwu;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzdwu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzdwu;

    return-object v0
.end method
