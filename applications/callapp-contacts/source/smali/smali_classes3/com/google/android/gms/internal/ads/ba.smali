.class public final enum Lcom/google/android/gms/internal/ads/ba;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/ba;",
        ">;"
    }
.end annotation


# static fields
.field private static final enum zzbd:Lcom/google/android/gms/internal/ads/ba;

.field public static final enum zzbe:Lcom/google/android/gms/internal/ads/ba;

.field private static final enum zzbf:Lcom/google/android/gms/internal/ads/ba;

.field private static final enum zzbg:Lcom/google/android/gms/internal/ads/ba;

.field private static final synthetic zzbh:[Lcom/google/android/gms/internal/ads/ba;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/ba;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ba;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/ba;->zzbd:Lcom/google/android/gms/internal/ads/ba;

    .line 4
    new-instance v1, Lcom/google/android/gms/internal/ads/ba;

    const-string v3, "NORMAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/ba;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/ads/ba;->zzbe:Lcom/google/android/gms/internal/ads/ba;

    .line 5
    new-instance v3, Lcom/google/android/gms/internal/ads/ba;

    const-string v5, "HIGH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/android/gms/internal/ads/ba;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/gms/internal/ads/ba;->zzbf:Lcom/google/android/gms/internal/ads/ba;

    .line 6
    new-instance v5, Lcom/google/android/gms/internal/ads/ba;

    const-string v7, "IMMEDIATE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/android/gms/internal/ads/ba;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/android/gms/internal/ads/ba;->zzbg:Lcom/google/android/gms/internal/ads/ba;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/android/gms/internal/ads/ba;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 8
    sput-object v7, Lcom/google/android/gms/internal/ads/ba;->zzbh:[Lcom/google/android/gms/internal/ads/ba;

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

.method public static values()[Lcom/google/android/gms/internal/ads/ba;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/ba;->zzbh:[Lcom/google/android/gms/internal/ads/ba;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/ba;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/ba;

    return-object v0
.end method
