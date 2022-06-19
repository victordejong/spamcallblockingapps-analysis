.class public final enum Lcom/google/android/gms/internal/ads/dyp;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/ads/dyp;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/gms/internal/ads/dyp;

.field private static final enum b:Lcom/google/android/gms/internal/ads/dyp;

.field private static final enum c:Lcom/google/android/gms/internal/ads/dyp;

.field private static final enum d:Lcom/google/android/gms/internal/ads/dyp;

.field private static final synthetic e:[Lcom/google/android/gms/internal/ads/dyp;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/dyp;

    const-string/jumbo v1, "LOW"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dyp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dyp;->b:Lcom/google/android/gms/internal/ads/dyp;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/dyp;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/ads/dyp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dyp;->a:Lcom/google/android/gms/internal/ads/dyp;

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/dyp;

    const-string/jumbo v1, "HIGH"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/ads/dyp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dyp;->c:Lcom/google/android/gms/internal/ads/dyp;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/dyp;

    const-string/jumbo v1, "IMMEDIATE"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/internal/ads/dyp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dyp;->d:Lcom/google/android/gms/internal/ads/dyp;

    .line 7
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/dyp;

    sget-object v1, Lcom/google/android/gms/internal/ads/dyp;->b:Lcom/google/android/gms/internal/ads/dyp;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/dyp;->a:Lcom/google/android/gms/internal/ads/dyp;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/dyp;->c:Lcom/google/android/gms/internal/ads/dyp;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/ads/dyp;->d:Lcom/google/android/gms/internal/ads/dyp;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/gms/internal/ads/dyp;->e:[Lcom/google/android/gms/internal/ads/dyp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/dyp;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/dyp;->e:[Lcom/google/android/gms/internal/ads/dyp;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/dyp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/dyp;

    return-object v0
.end method
