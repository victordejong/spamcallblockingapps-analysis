.class public final enum Lcom/google/android/gms/internal/ads/zzehz;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzehz;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzijs:Lcom/google/android/gms/internal/ads/zzehz;

.field public static final enum zzijt:Lcom/google/android/gms/internal/ads/zzehz;

.field public static final enum zziju:Lcom/google/android/gms/internal/ads/zzehz;

.field private static final synthetic zzijv:[Lcom/google/android/gms/internal/ads/zzehz;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/ads/zzehz;

    const-string v1, "NIST_P256"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzehz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzehz;->zzijs:Lcom/google/android/gms/internal/ads/zzehz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzehz;

    const-string v3, "NIST_P384"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzehz;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzehz;->zzijt:Lcom/google/android/gms/internal/ads/zzehz;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzehz;

    const-string v5, "NIST_P521"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzehz;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzehz;->zziju:Lcom/google/android/gms/internal/ads/zzehz;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/android/gms/internal/ads/zzehz;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/google/android/gms/internal/ads/zzehz;->zzijv:[Lcom/google/android/gms/internal/ads/zzehz;

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

.method public static values()[Lcom/google/android/gms/internal/ads/zzehz;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzehz;->zzijv:[Lcom/google/android/gms/internal/ads/zzehz;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzehz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzehz;

    return-object v0
.end method
