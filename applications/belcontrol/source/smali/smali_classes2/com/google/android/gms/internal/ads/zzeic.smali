.class public final enum Lcom/google/android/gms/internal/ads/zzeic;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzeic;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzikb:Lcom/google/android/gms/internal/ads/zzeic;

.field public static final enum zzikc:Lcom/google/android/gms/internal/ads/zzeic;

.field public static final enum zzikd:Lcom/google/android/gms/internal/ads/zzeic;

.field private static final synthetic zzike:[Lcom/google/android/gms/internal/ads/zzeic;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeic;

    const-string v1, "UNCOMPRESSED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzeic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeic;->zzikb:Lcom/google/android/gms/internal/ads/zzeic;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeic;

    const-string v3, "COMPRESSED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzeic;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzeic;->zzikc:Lcom/google/android/gms/internal/ads/zzeic;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzeic;

    const-string v5, "DO_NOT_USE_CRUNCHY_UNCOMPRESSED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzeic;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzeic;->zzikd:Lcom/google/android/gms/internal/ads/zzeic;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/android/gms/internal/ads/zzeic;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/google/android/gms/internal/ads/zzeic;->zzike:[Lcom/google/android/gms/internal/ads/zzeic;

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

.method public static values()[Lcom/google/android/gms/internal/ads/zzeic;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzeic;->zzike:[Lcom/google/android/gms/internal/ads/zzeic;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzeic;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzeic;

    return-object v0
.end method
